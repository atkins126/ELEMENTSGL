namespace MacApp;

interface
uses
  GlHelper,
  RemObjects.Elements.RTL,
  RemObjects.Elements.RTL.Delphi;

type
  ShapeReader = class
  public
    constructor ();

    method load(const aFilename: String) : Shape;

  end;
implementation

constructor ShapeReader();
begin
  inherited ();
end;

method ShapeReader.load(const aFilename: String): Shape;
{$DEFINE FIXSTREAM} //Disable if DelphiLib Streams are fixed
begin
  result := nil;
  if aFilename.FileExists then
  begin


    var fMem := new TMemoryStream();
    fMem.LoadFromFile(aFilename);
    fMem.Position := 0;
    var Version : Integer;
    {$IF FIXSTREAM}fMem.Seek({$ENDIF}
    fMem.ReadData(var Version)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
    ;


    if Version = 1 then
    begin
      var i : Int32;
      var Faces : Integer;

      // Start Points


 {$IF FIXSTREAM}fMem.Seek({$ENDIF}
 fMem.ReadData(var Faces)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
      ;

      result := new Shape(Faces);

      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp :  array of TVector3;


  {$IF FIXSTREAM}fMem.Seek({$ENDIF}
  fMem.ReadData(var fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;


        temp := new  TVector3[fCountVecs];


  {$IF FIXSTREAM}fMem.Seek({$ENDIF}
  fMem.Read(var temp[0], 12*fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;
        result.addFaceVecs(i, temp);
      end;

      if fMem.Position >= fMem.Size then exit nil;
      // Start Normals

   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.ReadData(var Faces)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
      ;
      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp :  array of TVector3;
   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.ReadData(var fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;

        temp := new TVector3[fCountVecs];


   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.Read(var temp[0], 12*fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;
        result.addNormales(i, temp);
      end;

   // Start Indexes

   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.ReadData(var Faces)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
      ;

      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp : Array of Integer;


   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.ReadData(var fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;


        temp := new Integer[fCountVecs];


   {$IF FIXSTREAM}fMem.Seek({$ENDIF}
   fMem.Read(var temp[0], 4*fCountVecs)
    {$IF FIXSTREAM}, TSeekOrigin.soCurrent){$ENDIF}
        ;
        result.addIndexes(i, temp);
      end;
    end;

  end;
end;

end.