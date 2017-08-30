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
//
begin
  result := nil;
  if aFilename.FileExists then
  begin


    var fMem := new TMemoryStream();
    fMem.LoadFromFile(aFilename);
    fMem.Position := 0;
    var Version : Integer;
    fMem.Seek(fMem.ReadData(var Version), TSeekOrigin.soCurrent);


    if Version = 1 then
    begin
      var i, j : Int32;
      var Faces : Integer;

      // Start Points
      fMem.Seek(fMem.ReadData(var Faces), TSeekOrigin.soCurrent);

      result := new Shape(Faces);

      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp :  array of TVector3;

        fMem.Seek(fMem.ReadData(var fCountVecs), TSeekOrigin.soCurrent);
        temp := new  TVector3[fCountVecs];

        for  j := 0 to fCountVecs-1 do
          fMem.Seek(fMem.Read(var temp[j], 12),TSeekOrigin.soCurrent);

        result.addFaceVecs(i, temp);


      end;

      if fMem.Position >= fMem.Size then exit nil;
      // Start Normals
      fMem.Seek(fMem.ReadData(var Faces), TSeekOrigin.soCurrent);
      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp :  array of TVector3;

        fMem.Seek(fMem.ReadData(var fCountVecs), TSeekOrigin.soCurrent);
        temp := new TVector3[fCountVecs];
        for  j := 0 to fCountVecs-1 do
          fMem.Seek(fMem.Read(var temp[j], 12),TSeekOrigin.soCurrent);


        result.addNormales(i, temp);
      end;

   // Start Indexes
      fMem.Seek(fMem.ReadData(var Faces), TSeekOrigin.soCurrent);
      for  i := 0 to Faces-1 do
        begin
        Var fCountVecs : Int32;
        var temp : Array of Integer;

        fMem.Seek(fMem.ReadData(var fCountVecs), TSeekOrigin.soCurrent);
        temp := new Integer[fCountVecs];
        for  j := 0 to fCountVecs-1 do
          fMem.Seek(fMem.ReadData(var temp[j]),TSeekOrigin.soCurrent);

        result.addIndexes(i, temp);
      end;
    end;

  end;
end;

end.