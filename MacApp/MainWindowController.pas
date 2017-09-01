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
    [IBOutlet]
    var TimeLabel : NSToolbarItem;

    method init: instancetype; override;
    method windowDidLoad; override;

    [IBAction]
    method pressFillButton(sender: id);
    [IBAction]
    method pressAppButton(sender: id);

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
    TimeLabel.label := 'Example 1';

    var app := new GLAPP();

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

method MainWindowController.pressFillButton(sender: id);
begin
  ViewGL.app.ChangeFillmode;
end;

method MainWindowController.pressAppButton(sender: id);
begin
  var tag := NSToolbarItem(sender).tag;
  var App : Appinterface := nil;
  case tag of
    0 : App := new GLAPP();
    1 : App := new GLAPP2();
    2 : App := new GLAPPMaterial();
  end;

  TimeLabel.label := 'Example '+(tag+1).ToString;

  if App <> nil then
  begin
    App.Initialize;
    ViewGL.app := App;
  end;

end;



end.