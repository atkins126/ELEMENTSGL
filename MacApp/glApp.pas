namespace MacApp;
interface
uses
  rtl,
  GlHelper,

  OpenGL;

type
  GLAPPMaterial = class(Appinterface)
  private
    FLightingShader: Shader;

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

    FmodelRotation : Single;


    FRemObjectsVAO: array of VertexArray;

  public
    method initialize : Boolean;
    method Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);
  end;

implementation


method GLAPPMaterial.initialize: Boolean;

begin
   { Build and compile our shader programs }
  FLightingShader := new Shader('materials.vs', 'materials.fs');
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

  { Define layout of the attributes in the Lighting shader }
  var fVertexLayout := new VertexLayout(FLightingShader._GetHandle)
  .Add('position', 3)
  .Add('normal', 3)
  .Add('texture', 2, false, true);

  var s := new ShapeReader();
  var lShape :=  s.load(Asset.getFullname('remobjects1.shape'));

  if lShape <> nil then
    FRemObjectsVAO := lShape.getVecArray(fVertexLayout);




end;

method GLAPPMaterial.Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);

var
  Model, Projection, Translate, Scale: TMatrix4;
  View : TMatrix4;
  NormalMatrix: TMatrix3;
  LightColor, DiffuseColor, AmbientColor: TVector3;


begin

  var  LIGHT_POS := TVector3.Vector3(0.2, 0.2, 4.0);
  var  VIEW_POS := TVector3.Vector3(0.2, 0.0, 3.0);


  glFrontFace(GL_CW);

  { Clear the color and depth buffer }
  glClearColor(0.3, 0.3, 0.3, 1.0);
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
         { Enable depth testing }
  glEnable(GL_DEPTH_TEST);
  glCullFace(GL_BACK);
  glEnable(GL_CULL_FACE);

  glShadeModel(GL_SMOOTH);
  glPolygonMode(GL_FRONT_AND_BACK, GL_FILL); // GL_LINE  // GL_POINT //GL_FILL

  { Use corresponding shader when setting uniforms/drawing objects }
  FLightingShader.Use;
  glUniform3f(FUniformLightPosition, LIGHT_POS.X, LIGHT_POS.Y, LIGHT_POS.Z);
  glUniform3f(FUniformViewPos,VIEW_POS.X, VIEW_POS.Y, VIEW_POS.Z);
  { Set light properties }
  //LightColor.R := Math.Sin(ATotalTimeSec * 2.0);
  //LightColor.G := Math.Sin(ATotalTimeSec * 0.2);
  //LightColor.B := Math.Sin(ATotalTimeSec * 1.3);

  LightColor.R := 1;
  LightColor.G := 0;
  LightColor.B :=0;
   // LightColor.SetNormalized;

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


  { Pass matrices to shader }


  const V : Single = 1.0;
  View.InitOrthoOffCenterRH(-V, V, V, -V, V, -V);
  Projection.Init;

  Projection.InitRotationYawPitchRoll(Radians(5), Radians(5), 0);


  glUniformMatrix4fv(FUniformContainerView, 1, GL_FALSE,  View.getPglMatrix4f);
  glUniformMatrix4fv(FUniformContainerProjection, 1, GL_FALSE, Projection.getPglMatrix4f);

  { Create Model matrix and calculate Normal Matrix }
  Model.Init;
  NormalMatrix.Init(Model);
  NormalMatrix := NormalMatrix.Inverse.Transpose;


  Model.InitRotationYawPitchRoll(Radians(-FmodelRotation), Radians(0), Radians(0));



  Translate.InitTranslation(-0.4,0,0.0);
  Model := Model * Translate;

  { Draw the container }

  glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);
  glUniformMatrix3fv(FUniformContainerNormalMatrix, 1, GL_FALSE,NormalMatrix.getPglMatrix3f);




  if FRemObjectsVAO <> nil then
    for lVoa in FRemObjectsVAO do  lVoa.Render;


  Model.InitRotationYawPitchRoll(Radians(FmodelRotation), Radians(0), Radians(0));
  //var rx : TMatrix4;
  Translate.InitTranslation(0.4,0,0.0);
  Model := Model * Translate;
  Scale.InitScaling(0.8);
  Model := Scale * Model;

  glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);

  if FRemObjectsVAO <> nil then
    for lVoa in FRemObjectsVAO do  lVoa.Render;



  if FmodelRotation >= 360 then
    FmodelRotation := 0;
  FmodelRotation := FmodelRotation + 1.0;


end;


end.