namespace TestOgl;
uses
  rtl,
  OpenGl;


type

  Program = class
  private class var
    fApp : BaseApp;


  public

    class method Main(args: array of String): Int32;
    begin
  // Warning these Example needs the latest Island.rtl Sources because of a bug in Fileexists
// August 14, 2017 SHA : 7f9d406b2083b26c5e391a4b67f2f6feec0a60d8
      try
  // Base path for Examples there must be a shader path in ......
        Asset.initialize('D:\Test');
       
        if glWindow.Initialize then
        begin
          fapp := new GLAPP();
          glWindow.Run(fapp);
        end;

      except
        on e : exception do
        begin
          writeln(e.message);
          writeLn('Press Enter to Close');
          readLn;
        end;
      end;
      result := 0;

    end;

  end;

end.