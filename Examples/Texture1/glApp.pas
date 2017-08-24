namespace Texture1;
interface
uses
  rtl,
  STB,
  GlHelper,
  OpenGl;

type
  GLAPP = class
  private
   // fTexture : Texture;
    shader : Shader;
    fVertexArray : VertexArray;

    FTexture1: GLuint;
    FTexture2: GLuint;
    FUniformOurTexture1: GLint;
    FUniformOurTexture2: GLint;

  public
    method initialize : boolean; 
    method Update(width, height : integer); 
  end;

implementation


method GLAPP.initialize: Boolean;

const
  { Each vertex consists of a 3-element position and 3-element color. }
  VERTICES: array  of Single = [
 
    // Positions       // Texture Coords
     0.5,  0.5, 0.0,   1.0, 1.0,  // Top Right
     0.5, -0.5, 0.0,   1.0, 0.0,  // Bottom Right
    -0.5, -0.5, 0.0,   0.0, 0.0,  // Bottom Left
    -0.5,  0.5, 0.0,   0.0, 1.0]; // Top Left

    const
  { The indices define a single triangle }
      INDICES: array of Uint16 = [0, 1, 3, 1,2,3];

      Var VertexLayout : VertexLayout;
      lWidth, lHeight, lComponents: Integer;
      lRgb : Integer;
      Image, Image2 : Pointer;
begin
    shader := new Shader('shaders\texture.vs', 'shaders\texture.fs');
    FUniformOurTexture1 := shader.GetUniformLocation('ourTexture1');
    FUniformOurTexture2 := shader.GetUniformLocation('ourTexture2');
   


 { Define layout of the attributes in the shader program. The shader program
    contains 2 attributes called "position" and "color". Both attributes are of
    type "vec3" and thus contain 3 floating-point values. }
    VertexLayout := new VertexLayout(shader._GetHandle)
   .Add('position', 3)
    .Add('texCoord', 2);

  { Create the vertex array }
    FVertexArray := new VertexArray(VertexLayout, VERTICES, INDICES);


 { Texture 1
    ========= }
    glGenTextures(1, @FTexture1);
  
    glBindTexture(GL_TEXTURE_2D, FTexture1);
  { All upcoming GL_TEXTURE_2D operations now have effect on our texture object }

  { Set our texture parameters }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  { Set texture filtering }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

  { Load, create texture and generate mipmaps }
    var Data :=  Asset.loadFileBytes('textures\container.jpg');
    Assert(Assigned(Data));
    if length(Data) > 0 then
    begin
   
        Image := stbi_load_from_memory(@Data[0], Length(Data), var lWidth, var lHeight, var lComponents, 3);
        lRgb := if lComponents = 3 then GL_RGB else GL_RGBA;
        glTexImage2D(GL_TEXTURE_2D, 0, lRgb, lWidth, lHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, Image);
        glGenerateMipmap(GL_TEXTURE_2D);
        stbi_image_free(Image);
        glBindTexture(GL_TEXTURE_2D, 0);
        glErrorCheck;
    end;
{ Texture 2
    ========= }
    glGenTextures(1, @FTexture2);
  
    glBindTexture(GL_TEXTURE_2D, FTexture2);
  { All upcoming GL_TEXTURE_2D operations now have effect on our texture object }

  { Set our texture parameters }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  { Set texture filtering }
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

  { Load, create texture and generate mipmaps }
   // var Data2 := Asset.loadFileBytes('textures\awesomeface.png');
    var Data2 := Asset.loadFileBytes('textures\coral.png');
    Assert(Assigned(Data2));
    if length(Data2) > 0 then
    begin
    
        Image2 := stbi_load_from_memory(@Data2[0], Length(Data2), var lWidth, var lHeight, var lComponents, 3);
// Assert(Assigned(Image));
        lRgb := if lComponents = 3 then GL_RGB else GL_RGBA;  
        glTexImage2D(GL_TEXTURE_2D, 0, lRgb , lWidth, lHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, Image2);
        glGenerateMipmap(GL_TEXTURE_2D);
        stbi_image_free(Image2);
        glBindTexture(GL_TEXTURE_2D, 0);
        glErrorCheck;
    end;
 

  result := true;
end;

method GLAPP.Update(width, height : integer);
begin
 
 
{ Define the viewport dimensions }
  glViewport(0, 0, Width, Height);

  { Clear the color buffer }
  glClearColor(0.2, 0.3, 0.3, 1.0);
  glClear(GL_COLOR_BUFFER_BIT);

  shader.Use;

  { Bind Textures using texture units }
  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, FTexture1);
  glUniform1i(FUniformOurTexture1, 0);
  glActiveTexture(GL_TEXTURE1);
  glBindTexture(GL_TEXTURE_2D, FTexture2);
  glUniform1i(FUniformOurTexture2, 1);

  { Draw the rectangle }
  FVertexArray.Render;
 
 
end;


end.