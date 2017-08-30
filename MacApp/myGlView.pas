namespace MacApp;

interface
uses
  AppKit,
  OpenGL,
  GlHelper,
  Foundation;

  [IBObject]
type Gl_View = public class(NSOpenGLView)
private
    fApp: Appinterface;
  fwx  : GLint;
  fwy  : GLint;
  fww :   GLsizei;
  fwh : GLsizei;


  ftime : Double := 0.1;
public

// Overrides from NSVIEW
  method drawRect(dirtyRect: NSRect); override;

//  method keyUp(&event: not nullable NSEvent); override;

 // Overrides from NSOpenGLView
  method reshape; override;

  method update; override;
  method prepareOpenGL; override;
  method clearGLContext; override;


// Own Methods and Properties
method Repaint;


  property app : Appinterface read fApp write fApp;
end;

implementation


method Gl_View.drawRect(dirtyRect: NSRect);
begin

 Repaint;

end;

method Gl_View.reshape;
begin
  inherited;
  fwx :=  GLint(NSMinX(bounds));
  fwy  :=  GLint(NSMinY(bounds));
  fww :=  GLsizei(NSWidth(bounds));
  fwh := GLsizei(NSHeight(bounds));
  glViewport(fwx, fwy, fww, fwh); // Map OpenGL projection plane to NSWindow

end;

method Gl_View.update;
begin
  inherited;
end;

method Gl_View.prepareOpenGL;
begin
  inherited;
end;

method Gl_View.clearGLContext;
begin
  inherited;
end;

method Gl_View.Repaint;
begin
 // glLoadIdentity;
//  glViewport(fwx, fwy, fww, fwh); // Map OpenGL projection plane to NSWindow
{ Clear the color and depth buffer }
  glClearColor(0.3, 0.3, 0.3, 1.0);
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
 { Enable depth testing }
  glEnable(GL_DEPTH_TEST);
  if fApp <> nil then fApp.update(fww, fwh, ftime);
  ftime := ftime + 0.01;
  if ftime > 4 then ftime := 0.1;


  glFlush();
  openGLContext.flushBuffer;
end;

//method Gl_View.keyUp(&event: not nullable NSEvent);
//begin
  //if &event.keyCode = $35 then window.close;
//end;




end.