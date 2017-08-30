﻿namespace MacApp;

interface
uses
  rtl,
  GlHelper,
  OpenGL;

type  Appinterface = public interface
  method update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);
end;

type
  GLAPP = class(Appinterface)
  private
    shader : Shader;
    fVertexArray : VertexArray;


  public
    method initialize : Boolean;
    method Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);
  end;

implementation


method GLAPP.initialize: Boolean;

const
  { Each vertex consists of a 3-element position and 3-element color. }
  VERTICES: array  of Single = [
    // Positions      // Colors
  0.5, -0.5, 0.0,   1.0, 0.0, 0.0,  // Bottom Right
   -0.5, -0.5, 0.0,   0.0, 1.0, 0.0,  // Bottom Left
    0.0,  0.5, 0.0,   0.30, 0.3, 1.0];

    const
  { The indices define a single triangle }
      INDICES: array of UInt16 = [0, 2, 1];

      Var VertexLayout : VertexLayout;

begin

    shader := new Shader('basic.vs', 'basic.fs');

 { Define layout of the attributes in the shader program. The shader program
    contains 2 attributes called "position" and "color". Both attributes are of
    type "vec3" and thus contain 3 floating-point values. }
  VertexLayout := new VertexLayout(shader._GetHandle)
  .Add('position', 3)
  .Add('color', 3);



  { Create the vertex array }
  fVertexArray := new VertexArray(VertexLayout, VERTICES, INDICES);
  result := true;
end;

method GLAPP.Update(width, Height : Integer; const ATotalTimeSec : Double := 0.3);
begin


  { Define the viewport dimensions }

//  glViewport(0, 0, width, Height);

  { Clear the color buffer }
 // glClearColor(0.2, 0.3, 0.3, 1.0);
 // glClear(GL_COLOR_BUFFER_BIT);

  { Draw the triangle }
  shader.Use;
  fVertexArray.Render;

end;


end.