namespace MacApp;

interface

uses
  AppKit,
  GlHelper,
  Foundation;

type
  [IBObject]
  MainWindowController = public class(NSWindowController)
  private
    ftimer: NSTimer;
  protected
  public
    [IBOutlet]
    var ViewGL: Gl_View;

    method init: instancetype; override;
    method windowDidLoad; override;
  end;

implementation

method MainWindowController.init: instancetype;
begin
  self := inherited initWithWindowNibName('MainWindowController');
  if self <> nil then
  begin


  end;

  result := self;
end;

method MainWindowController.windowDidLoad;
begin
  inherited;// windowDidLoad();
  if ViewGL <> nil then
  begin
    // One of the 3 app should be activ!!!
    //var app := new GLAPP();
   // var app := new GLAPP2();
    var app := new GLAPPMaterial();
    app.initialize;
    ViewGL.app := app;
    ftimer :=  NSTimer.timerWithTimeInterval(1.0 / 60.0) repeats(true) &block(method (aTimer : NSTimer)
    begin
      ViewGL.Repaint;
    end
    );
    RunLoop.mainRunLoop.addTimer(ftimer) forMode(NSDefaultRunLoopMode);
  end;
end;



end.