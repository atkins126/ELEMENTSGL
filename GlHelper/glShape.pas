namespace GlHelper;

interface
 type

 ShapeVec = public record
  vec : TVector3;
  normal : TVector3;
  texture : TVector2;
 end;

 ShapeVecArray = public array of ShapeVec;
 IntArray = public array of UInt16;

  Shape = public class
  private
   faces : array of ShapeVecArray;
   faceindexes : array of IntArray;
   fmin, fmax : TVector3;
   method fixcenter;
   method checkMaxsize(Values : array of TVector3);
  public
    constructor (facecount : Integer);
    method addFaceVecs(const &index : Integer; const Values : array of TVector3);
    method addNormales(const &index : Integer; const Values : array of TVector3);
    method addTexture(const &index : Integer; const Values : array of TVector2);
    method addIndexes(const &index : Integer; const Values : array of Integer);

    method getVecArray(const Layout : VertexLayout) : array of VertexArray;
  end;


implementation

constructor Shape(facecount: Integer);
begin
  inherited ();
  faces := new ShapeVecArray[facecount];
  faceindexes := new IntArray[facecount];
end;

method Shape.addFaceVecs(const &index: Integer; const Values: array of TVector3);
require
 (&index >= 0) and (&index < length(faces));
begin
  var i : Integer;
  faces[&index] := new ShapeVec[Values.length];
  for i := 0 to Values.length - 1 do
    faces[&index][i].vec := Values[i];

    if &index = 0 then
      begin
        fmin := Values[0];
        fmax := fmin;
      end;
   checkMaxsize(Values);

end;

method Shape.addNormales(const &index: Integer; const Values: array of TVector3);
require
  Values.length = faces[&index].length;
begin
  var i : Integer;
  for i := 0 to Values.length - 1 do
    faces[&index][i].normal := Values[i];
end;

method Shape.addTexture(const &index: Integer; const Values: array of TVector2);
require
  length(Values) = length(faces[&index]);
begin
  var i : Integer;
  for i := 0 to length(Values) - 1 do
    faces[&index][i].texture := Values[i];
end;

method Shape.addIndexes(const &index: Integer; const Values: array of Integer);
require
 (&index >= 0) and (&index < length(faceindexes));
begin
  var i : Integer;
  faceindexes[&index] := new UInt16[length(Values)];
  for i := 0 to Values.length - 1 do
    faceindexes[&index][i] := Values[i];
end;

method Shape.getVecArray(const Layout: VertexLayout): array of VertexArray;
begin
  const m = 150;
  fixcenter;

  var i : Integer;

  result := new VertexArray[faces.length];
  for i := 0 to faces.length-1 do

    begin
      result[i] := new VertexArray(
      Layout,faces[i].length * sizeOf(ShapeVec), faceindexes[i].length,
      @faces[i][0].vec.X, @faceindexes[i][0]);
    end;


end;

method Shape.checkMaxsize(Values: array of TVector3);
begin
  for t in Values do
    begin
      fmin.X := Math.Min(fmin.X, t.X);
      fmin.Y := Math.Min(fmin.Y, t.Y);
      fmin.Z := Math.Min(fmin.Z, t.Z);

    fmax.X := Math.Max(fmax.X, t.X);
    fmax.Y := Math.Max(fmax.Y, t.Y);
    fmax.Z := Math.Max(fmax.Z, t.Z);
    end;
end;

method Shape.fixcenter;
begin
  var i, j : Integer;
  var Midpoint : TVector3 := ((fmax - fmin) / 2) + fmin;


  for i := 0 to faces.length-1 do
    for j := 0 to faces[i].length-1  do
      begin
        var s : ShapeVec := faces[i,j];
        s.vec := s.vec-Midpoint;
        faces[i,j] := s; //faces[i,j].v-Midpoint;
      end;

end;

end.