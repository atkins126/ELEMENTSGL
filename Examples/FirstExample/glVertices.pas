namespace TestOgl;

interface
{$GLOBALS ON}
uses
    OpenGl,  
    RemObjects.Elements.System;
    
    const
        MAX_ATTRIBUTES = 8;

type
    TAttribute =  public record
        Location: Byte;
        Size: Byte;
        Normalized: Byte;
        Offset: Byte;
    end;

    TVertexLayout =  public class
 {$REGION 'Internal Declarations'}
    private
   
            FProgram: GLuint;
            FAttributeCount: Byte;
            FStride: Byte;
            FAttributes: array [0 .. MAX_ATTRIBUTES - 1] of TAttribute;

        method getAttribute(const index : integer): TAttribute;


    {$ENDREGION 'Internal Declarations'}

    public
    { Starts the definition of the vertex layout. You need to call this method
      before calling Add.

      Parameters:
      AProgram: the shader that uses this vertex layout. Should not  be 0.}



        constructor (const aProgram: GLuint);

    { Adds a vertex attribute to the layout.

      Parameters:
      AName: the name of the attribute as it appears in the shader.
      ACount: number of floating-point values for the attribute. For example,
      a 3D position contains 3 values and a 2D texture coordinate contains
      2 values.
      ANormalized: (optional) if set to True, values will be normalized from a
      0-255 range to 0.0 - 0.1 in the shader. Defaults to False.
      AOptional: (optional) if set to True, the attribute is ignored if it
      doesn't exist in the shader. Otherwise, an exception is raised if the
      attribute is not found.

      Returns:
      This instance, for use in a fluent API. }
        method &Add(const AName: string; const ACount: Integer;
        const ANormalized: Boolean := False; const AOptional: Boolean := False): TVertexLayout;

// Properties
        property AttribCount : Byte read FAttributeCount;
        property Stride : Byte read FStride;
        property Attributes[index : integer] : TAttribute read getAttribute;
    end;



implementation


constructor TVertexLayout(const aProgram: GLuint);
require
    aProgram > 0;
begin
    inherited ();
    FProgram := aProgram;
end;

method TVertexLayout.&Add(const AName: string; const ACount: Integer; const ANormalized: Boolean := false; const AOptional: Boolean := false): TVertexLayout;
var
    Location, lStride: Integer;
begin
    if (FAttributeCount = MAX_ATTRIBUTES) then
        raise new Exception('Too many attributes in vertex layout');

    lStride := FStride + (ACount * SizeOf(Single));
    if (lStride >= 256) then
        raise new Exception('Vertex layout too big');

    Location := glGetAttribLocation(FProgram, @AName.ToAnsiChars(true)[0]);
    if (Location < 0) and (not AOptional) then
        raise new Exception(String.format('Attribute "{0}" not found in shader', [AName]));

    if (Location >= 0) then
    begin
        Assert(Location <= 255);
        FAttributes[FAttributeCount].Location := Location;
        FAttributes[FAttributeCount].Size := ACount;
        FAttributes[FAttributeCount].Normalized := Ord(ANormalized);
        FAttributes[FAttributeCount].Offset := FStride;
        Inc(FAttributeCount);
    end;

    FStride := lStride;
    Result := Self;
end;



{$REGION 'Internal Declarations'}

method TVertexLayout.getAttribute(const &index: Integer): TAttribute;
require
    &index >= 0;
    &index < FAttributeCount;
begin
    exit Fattributes[&index];
end;
{$ENDREGION}



end.