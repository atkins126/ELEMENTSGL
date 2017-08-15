namespace TestOgl;

interface

uses
    rtl,
    RemObjects.Elements.RTL;

type
    Asset = public class
    private
        class var fappPath : String;
    public
        class method initialize(const lappPath : string);
       // Loads the Content from aFilename as String
        class method loadFile(const aFilename : String) :  String;
        class method loadFileBytes(const aFilename : String) : Array of Byte;
   
    end;

implementation

class method Asset.loadFile(const aFilename: String): String;
begin
    var  lName := Path.Combine(fappPath, aFilename);
    if lName.FileExists then   
        exit File.ReadText(lName) else exit nil;
end;

class method Asset.loadFileBytes(const aFilename: String): Array of Byte;
begin  
    var lName := Path.Combine(fappPath, aFilename);
    if lName.FileExists then
    exit File.ReadBytes(lName) else exit nil;
end;

class method Asset.initialize(const lappPath : string);
begin
    fappPath := lappPath;
end;


end.