namespace Materials;
interface
uses
  rtl,
  GlHelper,
  GLFW,
  OpenGl;

type
  GLAPP = class
  private
    FCamera: Camera;
    FLightingShader: Shader;
    FLampShader: Shader;
    FContainerVAO: VertexArray;
    FLampVAO: VertexArray;
    FUniformViewPos: GLint;
    FUniformLightPosition: GLint;
    FUniformLightAmbient: GLint;
    FUniformLightDiffuse: GLint;
    FUniformLightSpecular: GLint;
    FUniformMaterialAmbient: GLint;
    FUniformMaterialDiffuse: GLint;
    FUniformMaterialSpecular: GLint;
    FUniformMaterialShininess: GLint;
    FUniformContainerModel: GLint;
    FUniformContainerView: GLint;
    FUniformContainerProjection: GLint;
    FUniformContainerNormalMatrix: GLint;
    FUniformLampModel: GLint;
    FUniformLampView: GLint;
    FUniformLampProjection: GLint;

  public
    method initialize : boolean;
    method Update(width, Height : integer; const ADeltaTimeSec, ATotalTimeSec: Double);
  end;

implementation


method GLAPP.initialize: Boolean;

const
  CONTAINER_VERTICES: array of Single = [
    // Positions      // Normals
  -0.5, -0.5, -0.5,  0.0,  0.0, -1.0,
      0.5, -0.5, -0.5,  0.0,  0.0, -1.0,
      0.5,  0.5, -0.5,  0.0,  0.0, -1.0,
     -0.5,  0.5, -0.5,  0.0,  0.0, -1.0,

     -0.5, -0.5,  0.5,  0.0,  0.0,  1.0,
      0.5, -0.5,  0.5,  0.0,  0.0,  1.0,
      0.5,  0.5,  0.5,  0.0,  0.0,  1.0,
     -0.5,  0.5,  0.5,  0.0,  0.0,  1.0,

     -0.5,  0.5,  0.5, -1.0,  0.0,  0.0,
     -0.5,  0.5, -0.5, -1.0,  0.0,  0.0,
     -0.5, -0.5, -0.5, -1.0,  0.0,  0.0,
     -0.5, -0.5,  0.5, -1.0,  0.0,  0.0,

      0.5,  0.5,  0.5,  1.0,  0.0,  0.0,
      0.5,  0.5, -0.5,  1.0,  0.0,  0.0,
      0.5, -0.5, -0.5,  1.0,  0.0,  0.0,
      0.5, -0.5,  0.5,  1.0,  0.0,  0.0,

     -0.5, -0.5, -0.5,  0.0, -1.0,  0.0,
      0.5, -0.5, -0.5,  0.0, -1.0,  0.0,
      0.5, -0.5,  0.5,  0.0, -1.0,  0.0,
     -0.5, -0.5,  0.5,  0.0, -1.0,  0.0,

     -0.5,  0.5, -0.5,  0.0,  1.0,  0.0,
      0.5,  0.5, -0.5,  0.0,  1.0,  0.0,
      0.5,  0.5,  0.5,  0.0,  1.0,  0.0,
     -0.5,  0.5,  0.5,  0.0,  1.0,  0.0];


  { Each lamp vertex consists of a 3-element position.
    Each group of 4 vertices defines a side of a cube. }
     LAMP_VERTICES: array  of Single = [
    // Positions
     -0.5, -0.5, -0.5,
        0.5, -0.5, -0.5,
        0.5,  0.5, -0.5,
       -0.5,  0.5, -0.5,

       -0.5, -0.5,  0.5,
        0.5, -0.5,  0.5,
        0.5,  0.5,  0.5,
       -0.5,  0.5,  0.5,

       -0.5,  0.5,  0.5,
       -0.5,  0.5, -0.5,
       -0.5, -0.5, -0.5,
       -0.5, -0.5,  0.5,

        0.5,  0.5,  0.5,
        0.5,  0.5, -0.5,
        0.5, -0.5, -0.5,
        0.5, -0.5,  0.5,

       -0.5, -0.5, -0.5,
        0.5, -0.5, -0.5,
        0.5, -0.5,  0.5,
       -0.5, -0.5,  0.5,

       -0.5,  0.5, -0.5,
        0.5,  0.5, -0.5,
        0.5,  0.5,  0.5,
       -0.5,  0.5,  0.5];

       const
  { The indices define 2 triangles per cube face, 6 faces total }
         INDICES: array  of UInt16 = [
         0,  1,  2,   2,  3,  0,
            4,  5,  6,   6,  7,  4,
            8,  9, 10,  10, 11,  8,
           12, 13, 14,  14, 15, 12,
           16, 17, 18,  18, 19, 16,
           20, 21, 22,  22, 23, 20
           ];

begin

  { Create camera }
    FCamera := new Camera(640, 480, TVector3.get(0.0, 0.0, 3));

  { Build and compile our shader programs }
    FLightingShader := new Shader('shaders\materials.vs', 'shaders\materials.fs');
    FUniformViewPos := FLightingShader.GetUniformLocation('viewPos');
    FUniformLightPosition := FLightingShader.GetUniformLocation('light.position');
    FUniformLightAmbient := FLightingShader.GetUniformLocation('light.ambient');
    FUniformLightDiffuse := FLightingShader.GetUniformLocation('light.diffuse');
    FUniformLightSpecular := FLightingShader.GetUniformLocation('light.specular');
    FUniformMaterialAmbient := FLightingShader.GetUniformLocation('material.ambient');
    FUniformMaterialDiffuse := FLightingShader.GetUniformLocation('material.diffuse');
    FUniformMaterialSpecular := FLightingShader.GetUniformLocation('material.specular');
    FUniformMaterialShininess := FLightingShader.GetUniformLocation('material.shininess');
    FUniformContainerModel := FLightingShader.GetUniformLocation('model');
    FUniformContainerView := FLightingShader.GetUniformLocation('view');
    FUniformContainerProjection := FLightingShader.GetUniformLocation('projection');
    FUniformContainerNormalMatrix := FLightingShader.GetUniformLocation('normalMatrix');

    FLampShader := new Shader('shaders\lamp.vs', 'shaders\lamp.fs');
    FUniformLampModel := FLampShader.GetUniformLocation('model');
    FUniformLampView := FLampShader.GetUniformLocation('view');
    FUniformLampProjection := FLampShader.GetUniformLocation('projection');

  { Define layout of the attributes in the Lighting shader }
    var fVertexLayout := new VertexLayout(FLightingShader._GetHandle)
    .Add('position', 3)
    .Add('normal', 3);

  { Create the vertex array for the container. }
    FContainerVAO := new VertexArray(fVertexLayout,
    CONTAINER_VERTICES,  INDICES);

  { Define layout of the attributes in the Lamp shader }
    fVertexLayout := new VertexLayout(FLampShader._GetHandle)
    .Add('position', 3);

  { Create the vertex array for the lamp. }
    FLampVAO := new VertexArray(fVertexLayout,
    LAMP_VERTICES,  INDICES);

end;

method GLAPP.Update(width, Height : integer; const ADeltaTimeSec, ATotalTimeSec: Double);

var
  Model, Projection, Translate, Scale: TMatrix4;
  View : TMatrix4;
  NormalMatrix: TMatrix3;
  LightColor, DiffuseColor, AmbientColor: TVector3;


begin

    var  LIGHT_POS := TVector3.get(1.2, 1.0, 2.0);
  //  FCamera.HandleInput(10);

  { Define the viewport dimensions }
    glViewport(0, 0, Width, Height);

  { Clear the color and depth buffer }
    glClearColor(0.3, 0.3, 0.3, 1.0);
    glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
         { Enable depth testing }
    glEnable(GL_DEPTH_TEST);

  { Use corresponding shader when setting uniforms/drawing objects }
    FLightingShader.Use;
    glUniform3f(FUniformLightPosition, LIGHT_POS.X, LIGHT_POS.Y, LIGHT_POS.Z);
    glUniform3f(FUniformViewPos, FCamera.Position.X, FCamera.Position.Y, FCamera.Position.Z);

  { Set light properties }
    LightColor.R := Math.Sin(ATotalTimeSec * 2.0);
    LightColor.G := Math.Sin(ATotalTimeSec * 0.7);
    LightColor.B := Math.Sin(ATotalTimeSec * 1.3);
    DiffuseColor := LightColor * 0.5;   // Decrease the influence
    AmbientColor := DiffuseColor * 0.7; // Low influence
    glUniform3f(FUniformLightAmbient, AmbientColor.R, AmbientColor.G, AmbientColor.B);
    glUniform3f(FUniformLightDiffuse, DiffuseColor.R, DiffuseColor.G, DiffuseColor.B);
    glUniform3f(FUniformLightSpecular, 1.0, 1.0, 1.0);

  { Set material properties }
    glUniform3f(FUniformMaterialAmbient,   1.0, 0.5, 0.31);
    glUniform3f(FUniformMaterialDiffuse,   1.0, 0.5, 0.31);
    glUniform3f(FUniformMaterialSpecular,  0.5, 0.5, 0.5); // Specular doesn't have full effect on this object's material
    glUniform1f(FUniformMaterialShininess, 32.0);

  { Create camera transformation }

    Projection.InitPerspectiveForRH(GLMath.Radians(FCamera.Zoom), Width / Height, 0.1, 100.0);

  { Pass matrices to shader }

    View := FCamera.ViewMatrix;

    glUniformMatrix4fv(FUniformContainerView, 1, GL_FALSE,  View.getPglMatrix4f);
    glUniformMatrix4fv(FUniformContainerProjection, 1, GL_FALSE, Projection.getPglMatrix4f);

  { Create Model matrix and calculate Normal Matrix }
    Model.Init;
    NormalMatrix.Init(Model);
    NormalMatrix := NormalMatrix.Inverse.Transpose;

  { Draw the container }

    glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);
    glUniformMatrix3fv(FUniformContainerNormalMatrix, 1, GL_FALSE,NormalMatrix.getPglMatrix3f);
    FContainerVAO.Render;

  { Also draw the lamp object }
    FLampShader.Use;
    glUniformMatrix4fv(FUniformLampView, 1, GL_FALSE,  View.getPglMatrix4f);

    glUniformMatrix4fv(FUniformLampProjection, 1, GL_FALSE, Projection.getPglMatrix4f);

    Translate.InitTranslation(LIGHT_POS);
    Scale.InitScaling(0.2); { Make it a smaller cube }
    Model := Scale * Translate;


    glUniformMatrix4fv(FUniformLampModel, 1, GL_FALSE, Model.getPglMatrix4f);

    FLampVAO.Render;

end;


end.