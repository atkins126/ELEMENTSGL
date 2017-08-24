namespace GlHelper;
{..$GLOBALS ON}
interface
uses
  rtl,
  {$IF ISLAND AND WINDOWS}
  stb,
  {$ELSEIF TOFFEE}

  Foundation,
  CoreGraphics,
  {$ENDIF}
  RemObjects.Elements.RTL,
  OpenGL;
// namespace expected
type
  { The kind of a TTexture map }
  TextureKind  = public (Diffuse, Specular, Normal, Height);

type
  { Represents a texture (map) as used by a TMesh }
  Texture = public class
    {$REGION 'Internal Declarations'}
  private
    FId: GLuint;
    FKind: TextureKind;


    method  IsPowerOfTwo(const AValue: Cardinal): Boolean; inline;
{$IF TOFFEE}
    method LoadCoreImage(const fullname : String) : Boolean;
{$ENDIF}


    {$ENDREGION 'Internal Declarations'}

  public
    { Loads the texture from a file in assets.zip.

      Parameters:
      APath: path into the assets.zip file containing the image file
      (eg. 'models/MyModelTexture.jpg').
      AKind: the kind of texture this is. }
    method Load(const APath: String; const AKind: TextureKind := TextureKind.Normal);

    { OpenGL id of texture }
    property Id: GLuint read FId;

    { Kind of texture }
    property Kind: TextureKind read FKind;
  end;
implementation

method  Texture.IsPowerOfTwo(const AValue: Cardinal): Boolean;
begin
  { https://graphics.stanford.edu/~seander/bithacks.html#DetermineIfPowerOf2 }
  Result := ((AValue and (AValue - 1)) = 0);
end;

method Texture.Load(const APath: String; const AKind: TextureKind := TextureKind.Normal);
var

  Width, Height, Components: Integer;

  Data: Array of Byte;
  Image: Pointer;
  SupportsMipmaps: Boolean;
begin
  FKind := AKind;

  { Generate OpenGL texture }
  glGenTextures(1, @FId);
  glBindTexture(GL_TEXTURE_2D, FId);

  { Load texture }
  Data := Asset.loadFileBytes(APath);
  if Data <> nil then
  begin
      {$IF ISLAND AND WINDOWS}
        Image := stbi_load_from_memory(@Data[0], length(Data), var  Width, var Height, var Components, 3);
        assert(assigned(Image));
        {$ELSEIF TOFFEE}
         LoadCoreImage(Asset.getFullname(APath));
        {$ELSE}
        Image := Data;
        {$WARNING 'Width and Height is not set'}
       {$ENDIF}

     { Set texture data }
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, Width, Height, 0, GL_RGB, GL_UNSIGNED_BYTE, Image);

     { Generate mipmaps if possible. With OpenGL ES, mipmaps are only supported
       if both dimensions are a power of two. }
    SupportsMipmaps := IsPowerOfTwo(Width) and IsPowerOfTwo(Height);
    if (SupportsMipmaps) then
      glGenerateMipmap(GL_TEXTURE_2D);

     { Set texture parameters }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    if (SupportsMipmaps) then
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR)
    else
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);

     { Free original image }
     {$IF ISLAND AND WINDOWS}
        stbi_image_free(Image);
     {$ENDIF}

     { Unbind }
    glBindTexture(GL_TEXTURE_2D, 0);
    glErrorCheck;
  end;
end;

{$REGION 'Internal Declarations'}
{$IF TOFFEE}
method Texture.LoadCoreImage(const fullname : String) : Boolean;
begin
  if fullname.FileExists then
  begin
    var dataProvider := CGDataProviderCreateWithFilename(glStringHelper.toPansichar(fullname));
    if dataProvider = nil then exit false;
    var image := CGImageCreateWithPNGDataProvider(
    dataProvider,
    nil,
    false,
    CGColorRenderingIntent.CGRenderingIntentDefault
    );
   // var imageData := image.dataProvider.data;
  end
  else exit false;
end;
{$ENDIF}
{$ENDREGION}

end.