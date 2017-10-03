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

    FTexture1: Texture;
    FTexture2: Texture;
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


  FTexture1 := new Texture('textures\container.jpg');
  FTexture2 := new Texture('textures\coral.jpg');
 // FTexture2 := new Texture('textures\container.jpg');



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
  glBindTexture(GL_TEXTURE_2D, FTexture1.Id);
  glUniform1i(FUniformOurTexture1, 0);
  glActiveTexture(GL_TEXTURE1);
  glBindTexture(GL_TEXTURE_2D, FTexture2.Id);
  glUniform1i(FUniformOurTexture2, 1);

  { Draw the rectangle }
  FVertexArray.Render;


end;


end.