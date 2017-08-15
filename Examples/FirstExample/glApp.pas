namespace TestOgl;
interface
uses
  rtl,
  OpenGl;

type
  GLAPP = class(BaseApp)
  private
    fProgram : TShader;
    fVertexArray : TVertexArray;
    fWindowDC : HDC;
    property RC : HGLRC read write;

  public
    method initialize(aWnd : HWnd; awidth, aHeight : integer) : boolean; override;
    method Update; override;
  end;

implementation


method GLAPP.initialize(aWnd: HWND; awidth, aHeight : integer): Boolean;

const
  { Each vertex consists of a 3-element position and 3-element color. }
  VERTICES: array  of Single = [
    // Positions      // Colors
  0.5, -0.5, 0.0,   1.0, 0.0, 0.0,  // Bottom Right
   -0.5, -0.5, 0.0,   0.0, 1.0, 0.0,  // Bottom Left
    0.0,  0.5, 0.0,   0.30, 0.3, 1.0,
    0.3,  0.5, 0.0,   0.0, 0.0, 1.0]; // Top

    const
  { The indices define a single triangle }
      INDICES: array of Uint16 = [0, 3, 2, 2,1,0];

      Var VertexLayout : TVertexLayout;

begin
  inherited;

  fWindowDC := GetDC(hwnd);
  InitOpenGL;
  RC := CreateRenderingContext(fWindowDC, [],32, 32, 0, 0, 0, 0);
  ActivateRenderingContext(fWindowDC, RC, true);

    fProgram := new TShader('shaders\basic.vs', 'shaders\basic.fs');
 // fProgram := new TShader('basic', 'basic');

 { Define layout of the attributes in the shader program. The shader program
    contains 2 attributes called "position" and "color". Both attributes are of
    type "vec3" and thus contain 3 floating-point values. }
  VertexLayout := new TVertexLayout(fProgram._GetHandle)
  .Add('position', 3)
  .Add('color', 3);

  Writeln('Vertexlyaout created');

  { Create the vertex array }
  FVertexArray := new TVertexArray(VertexLayout, VERTICES, INDICES);
  result := true;
end;

method GLAPP.Update;
begin
  inherited;
  ActivateRenderingContext(fWindowDC, RC, false);
  { Define the viewport dimensions }

  glViewport(0, 0, Width, Height);

  { Clear the color buffer }
  glClearColor(0.2, 0.3, 0.3, 1.0);
  glClear(GL_COLOR_BUFFER_BIT);

  { Draw the triangle }
  fProgram.Use;
  FVertexArray.Render;
  SwapBuffers(FWindowDC);
  DeactivateRenderingContext;
end;


end.