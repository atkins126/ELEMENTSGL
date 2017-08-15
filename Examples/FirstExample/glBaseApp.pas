namespace TestOgl;

interface
uses rtl;
type
  BaseApp = public class
  private
    fHwnd : HWND;
  protected
    property hwnd : HWND read fHwnd write fHwnd;
  public
    constructor ();
    method MouseMove(const X, Y : integer);
    method Sizechange(const awidth, aHeight : integer); virtual;

    method initialize(aWnd : HWnd; awidth, aHeight : integer) : boolean; virtual;
    method Update; virtual;
    method ShutDown; virtual; empty;
    property Width : Integer read write;
    property Height : Integer read write;
  end;

implementation

method BaseApp.MouseMove(const X, Y : integer);
begin
        // writeLn(String.Format('Move {0}, {1}',[X, Y]));
end;

method BaseApp.Update;
begin
 // writeLn('Update called');
end;

constructor BaseApp();
begin
  inherited;
  writeLn('Create APP');

end;

method BaseApp.initialize(aWnd : HWnd; awidth, aHeight : integer) : boolean;
begin
  Width := awidth;
  Height := aHeight;
  Hwnd := aWnd;
  result := true;
end;

method BaseApp.Sizechange(const awidth: Integer; const aHeight: Integer);
begin
  Width := aWidth;
  Height := aHeight;
 //  writeLn(String.Format('Size {0}, {1}',[aHeight, awidth]));
end;

end.