namespace TestOgl;
interface

uses
  rtl;

type
  glWindow = public class
  private class var
    szTitle: LPCWSTR := 'RemObjects Elements — Island Windows Sample';
    szWindowClass: LPCWSTR := 'IslandWindowsSample';
    fWindow : HWND;
    fApp : BaseApp;
    [CallingConvention(CallingConvention.Stdcall)]
    class method WndProc(hWnd: HWND; message: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
    class method GetPointFromLParam(const ALParam: LPARAM): POINT;

  protected
    class method RegisterWindowClass : Boolean;
    class property Terminated : Boolean read write;

    class method wmSize(const p : POINT);
    class method wmPaint();



  public
    class method Initialize : Boolean;
    class method Run(const aApp : BaseApp);

  end;
implementation

class method glWindow.RegisterWindowClass : boolean;
begin
  result := false;
      // Set up and Register the Windows Class
      //

  var lWindowClass: WNDCLASSEX;
  lWindowClass.cbSize := sizeOf(WNDCLASSEX);
  lWindowClass.style := CS_HREDRAW or CS_VREDRAW;
  lWindowClass.lpfnWndProc := @WndProc;
  lWindowClass.cbClsExtra := 0;
  lWindowClass.cbWndExtra := 0;
  lWindowClass.hInstance := rtl.GetModuleHandleW(nil);
  lWindowClass.hIcon := LoadIcon(lWindowClass.hInstance, LPCWSTR(IDI_APPLICATION));
  lWindowClass.hCursor := LoadCursor(nil, LPCWSTR(IDC_ARROW));
  lWindowClass.hbrBackground := ^Void(COLOR_WINDOW + 1);
  lWindowClass.lpszMenuName := nil;
  lWindowClass.lpszClassName := szWindowClass;

  if RegisterClassEx(@lWindowClass) = 0 then begin
    MessageBox(nil, 'Call to RegisterClassEx failed', szTitle, 0);
    exit false;
  end
  else begin
    result := true;
  end;
end;

class method glWindow.WndProc(hWnd: HWND; message: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
Var P : POINT;
begin

  case message of
//        WM_COMMAND:
//          if (wParam = BN_CLICKED) and (lParam = rtl.LPARAM(fButton)) then begin
//            MessageBox(hWnd, 'You clicked, hello there!', szTitle, 0);
//          end;

   WM_SIZE :
    begin
     //result := DefWindowProc(hWnd, message, wParam, lParam);
       wmSize(GetPointFromLParam(lParam));
     //exit result;
   end;

    WM_MOUSEMOVE:
    begin
      P := GetPointFromLParam(LParam);

      if assigned(fapp) then
        fApp.MouseMove(P.X, P.Y);
    end;
    WM_PAINT:
    begin
      wmPaint;
      exit 0;
    end;

    WM_ERASEBKGND:
    begin
        if assigned(fapp) then exit 1;
    end;

    WM_QUIT,
    WM_CLOSE: begin
    Terminated := True;
    PostQuitMessage(0);
    end;
  end;
  result := DefWindowProc(hWnd, message, wParam, lParam);

end;

class method glWindow.GetPointFromLParam(const ALParam: LPARAM): POINT;
begin
 { Extracts the X and Y coordinates from a Windows message }
  Result.X := Int16(ALParam and $FFFF);
  Result.Y := Int16(ALParam shr 16);
end;


{

 DWORD dwStyle   = WS_OVERLAPPED | WS_THICKFRAME | WS_BORDER |
                                WS_DLGFRAME | WS_SYSMENU | WS_MINIMIZEBOX; // WS_DLGFRAME |

}

class method glWindow.Initialize: Boolean;
const
  STYLE = WS_OVERLAPPED or WS_CAPTION or WS_SYSMENU  or WS_BORDER or WS_THICKFRAME or WS_MAXIMIZEBOX;
  STYLE_EX = CS_OWNDC;
begin
  result := false;
  Terminated := false;
// fApp := aApp;
  if RegisterWindowClass then begin
    fWindow := CreateWindowExW(STYLE_EX,
    szWindowClass,
    szTitle,
    STYLE,//WS_OVERLAPPED or WS_CAPTION or WS_SYSMENU,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    800, 600,
    nil,
    nil,
    rtl.GetModuleHandleW(nil),
    nil);
    if fWindow = nil then begin
      MessageBox(nil, 'Call to CreateWindowExW failed', szTitle, 0);
      exit false;
    end;
    result := true;

    ShowWindow(fWindow, SW_SHOW);
    UpdateWindow(fWindow);

  end;
end;

class method glWindow.Run(const aApp: BaseApp);
var lMsg: MSG;

begin
  fApp := aAPP;
  if fApp.initialize(fWindow, 800, 600) then
  begin
    InvalidateRect(fwindow, nil, false);
    //UpdateWindow(fWindow);
    while (not Terminated) do
    begin
      while (PeekMessage(@lMsg, nil, 0, 0, PM_REMOVE)) do
      begin
        TranslateMessage(@lMsg);
        DispatchMessage(@lMsg);
      end;


    { Update app and render frame to back buffer }
      InvalidateRect(fwindow, nil, false);
      UpdateWindow(fWindow);
      //fapp.Update;

    { Swap backbuffer to front to display it }
       // SwapBuffers(FWindowDC);
    end;
   // while GetMessage()

    fapp.ShutDown;
  end;

end;

class method glWindow.wmSize(const p: POINT);
begin
  if assigned(Fapp) then Fapp.SizeChange(p.x, p.y);
end;

class method glWindow.wmPaint;
begin

  var  hdc : HDC;
  var  ps : PAINTSTRUCT;
  hdc := BeginPaint( fWindow, @ps );

                // don't draw here.  would be waaay too slow.
                // draw in the draw() function instead.
  EndPaint( fWindow, @ps );
  ReleaseDC(fWindow, hdc);
  if assigned(fApp) then fApp.Update;
 //
end;

end.