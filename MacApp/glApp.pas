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
    FRemObjectsVAO: array of VertexArray;
    FBox :  VertexArray;

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
    FLightColor : TVector3;
    FFilled : Boolean := true;

    Finitilalized : Boolean;
  private
    method UpdateDrawSettings;
    method UpdateViewAndProjection(const width, Height : Single);
    method UpdateLight(const LightColor : TVector3);

  public
    method initialize : Boolean;
    method Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);
    method ChangeFillmode;

  end;

implementation


method GLAPPMaterial.initialize: Boolean;
const

  BOX_VERTICES: array  of Single = [
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


  { The indices define 2 triangles per cube face, 6 faces total }
  INDICES: array  of UInt16 = [
     0,  1,  2,   2,  3,  0,
     4,  5,  6,   6,  7,  4,
     8,  9, 10,  10, 11,  8,
    12, 13, 14,  14, 15, 12,
    16, 17, 18,  18, 19, 16,
    20, 21, 22,  22, 23, 20];
begin
  Finitilalized := true;

 {Setup Color}
  FLightColor.R := 1;
  FLightColor.G := 0;
  FLightColor.B :=0;

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
  FLightingShader.Use;
  { Define layout of the attributes in the Lighting shader }
  var fVertexLayout := new VertexLayout(FLightingShader._GetHandle)
  .Add('position', 3)
  .Add('normal', 3)
  .Add('texture', 2, false, true); // Ignore the texture Coords if not found in the Shader

  var s := new ShapeReader();
  var lShape :=  s.load(Asset.getFullname('remobjects1.Shape'));

  if lShape <> nil then
    FRemObjectsVAO := lShape.getVecArray(fVertexLayout);

  fVertexLayout := new VertexLayout(FLightingShader._GetHandle)
  .Add('position', 3)
  .Add('normal', 3);

    FBox := new VertexArray(fVertexLayout, BOX_VERTICES, INDICES);

end;


method GLAPPMaterial.UpdateLight(const LightColor : TVector3);
var
  DiffuseColor, AmbientColor: TVector3;

  NormalMatrix: TMatrix3;
begin
  var  LIGHT_POS := TVector3.Vector3(0.2, 0.2, 8.0);
  var  VIEW_POS := TVector3.Vector3(0.2, 0.0, 3.0);

  glUniform3f(FUniformLightPosition, LIGHT_POS.X, LIGHT_POS.Y, LIGHT_POS.Z);
  glUniform3f(FUniformViewPos,VIEW_POS.X, VIEW_POS.Y, VIEW_POS.Z);

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

 { Create and calculate Normal Matrix }

  NormalMatrix.Init;
  NormalMatrix := NormalMatrix.Inverse.Transpose;
  glUniformMatrix3fv(FUniformContainerNormalMatrix, 1, GL_FALSE,NormalMatrix.getPglMatrix3f);


end;

method GLAPPMaterial.UpdateDrawSettings;

begin

  { Clear the color and depth buffer }
  glClearColor(0.3, 0.3, 0.3, 1.0);
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
 { Enable depth testing }
  glEnable(GL_DEPTH_TEST);
  glCullFace(GL_BACK);
  //glEnable(GL_CULL_FACE);
  glFrontFace(GL_CCW);

  glShadeModel(GL_SMOOTH);
 // glPolygonMode(GL_FRONT, GL_LINE); // GL_LINE  // GL_POINT //GL_FILL
 if FFilled then
  glPolygonMode(GL_FRONT_AND_BACK, GL_FILL) // GL_LINE  // GL_POINT //GL_FILL
  else
   glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
end;


method GLAPPMaterial.UpdateViewAndProjection(const width, Height : Single);
var Projection, View : TMatrix4;
begin
  {$DEFINE ORTHO}
  {$IF ORTHO}
  const V : Single = 2.0;
  var rot : Single := 345;

  var lAspect : Single :=  (Height / width);
{ORTHOGNAL VIEW}
  Projection.InitOrthoOffCenterLH(-V, V*lAspect, V, -V*lAspect, V, -V);

  rot := FmodelRotation;
  View.InitRotationYawPitchRoll(Radians(-rot), Radians(rot), Radians(-rot));
 {$ELSE}
 {Perspective}

  var camera := new Camera(Integer(width), Integer(Height),TVector3.Vector3(-0.5, -1, 4), TVector3.Vector3(0,1,0));

  View := camera.ViewMatrix;
  camera.Zoom := 70;
  Projection.InitPerspectiveFovRH(Radians(camera.Zoom), width / Height, 0.1, 100.0);
  {$ENDIF}

 { Pass matrices to shader }
  glUniformMatrix4fv(FUniformContainerView, 1, GL_FALSE,  View.getPglMatrix4f);
  glUniformMatrix4fv(FUniformContainerProjection, 1, GL_FALSE, Projection.getPglMatrix4f);
end;

method GLAPPMaterial.Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);

var
  Model,  Translate, Scale: TMatrix4;

begin
  if not Finitilalized then initialize;
  { Use corresponding shader when setting uniforms/drawing objects }
  FLightingShader.Use;

  {Set the defaults and clear the Buffer}
  UpdateDrawSettings;
  {Prepare the Ligthing}
  UpdateLight(FLightColor);

  UpdateViewAndProjection(width, Height);


  { Draw the container 1. Time }
  Model.InitRotationYawPitchRoll(Radians(-FmodelRotation), Radians(0), Radians(0));
 // Model.Init;
  Translate.InitTranslation(-0.40,0,1.10);
  Model :=  Model * Translate ;

  glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);

  for lVoa in FRemObjectsVAO do  lVoa.Render;


 { Draw the container 2. Time }
  Model.InitRotationYawPitchRoll(Radians(FmodelRotation), Radians(0), Radians(0));
  //var rx : TMatrix4;
  Translate.InitTranslation(0.4,0,1.10);

  Scale.InitScaling(0.8, 0.8, 1.0);
  Model := Scale * Model * Translate;

  glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);

    for lVoa in FRemObjectsVAO do  lVoa.Render;


{Draw the Box}
  Model.InitScaling(2);
  glUniformMatrix4fv(FUniformContainerModel, 1, GL_FALSE, Model.getPglMatrix4f);

 // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); // GL_LINE  // GL_POINT //GL_FILL
  var boxcol := TVector3.Vector3(0,0.8,0.2);
  UpdateLight(boxcol);

  FBox.Render;


{Change the Rotation in every step}
  if FmodelRotation >= 359 then
    FmodelRotation := 0 else
  FmodelRotation := FmodelRotation + 1.0;

end;

method GLAPPMaterial.ChangeFillmode;
begin
  FFilled := not FFilled;
end;



end.