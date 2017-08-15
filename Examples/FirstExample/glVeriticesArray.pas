namespace TestOgl;

interface
uses //rtl,
  OpenGl;


type
  TVertexArray = class
    {$REGION 'Internal Declarations'}


  private
    class var
      FSupportsVAO: Boolean;
      FInitialized: Boolean;
   

  private
    FVertexBuffer: GLuint;
    FIndexBuffer: GLuint;
    FVertexArray: GLuint;
    FAttributes: array of TAttribute;
    FStride: Integer;
    FIndexCount: Integer;
    FRenderStarted: Boolean;

  private
    class method Initialize;


  private

    method BeginRender;
    method EndRender;
  public
    
    method Render;
   
  public
    class constructor;
    {$ENDREGION 'Internal Declarations'}

  public
    { Creates a vertex array.

      Parameters:
      ALayout: the layout of the vertices in the array.
      AVertices: data containing the vertices in the given layout.
      ASizeOfVertices: size of the AVertices vertex data.
      AIndices: array of indices to the vertices defining the triangles.
      Must contain a multiple of 3 elements. }
    constructor (const ALayout: TVertexLayout; const AVertices : Array of single;  const AIndices : Array of Uint16);

    finalizer;
  end;




implementation

class constructor TVertexArray;
begin

end;

class method TVertexArray.Initialize;
begin
  FSupportsVAO := Assigned(glGenVertexArrays);
  FSupportsVAO := FSupportsVAO and  Assigned(glBindVertexArray) and Assigned(glDeleteVertexArrays);
  FInitialized := True;
  // Disable for Testing......
 // FSupportsVAO := false;
  {$IF DEBUG}  Writeln('VOA SUPPORT '+FSupportsVAO.ToString); {$ENDIF}

end;

method TVertexArray.Render;
begin
  if (not FRenderStarted) then
  begin
    BeginRender;
    glDrawElements(GL_TRIANGLES, FIndexCount, GL_UNSIGNED_SHORT, nil);
    glErrorCheck;
    EndRender;
  end
  else
    glDrawElements(GL_TRIANGLES, FIndexCount, GL_UNSIGNED_SHORT, nil);
end;

method TVertexArray.BeginRender;
var
  I: Integer;
begin
  if (FRenderStarted) then
    Exit;

  if (FSupportsVAO) then
    { When VAO's are supported, we simple need to bind it... }
    glBindVertexArray(FVertexArray)
  else
  begin
      { Otherwise, we need to manually bind the VBO and EBO and configure and
        enable the attributes. }
    glBindBuffer(GL_ARRAY_BUFFER, FVertexBuffer);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, FIndexBuffer);

    for I := 0 to Length(FAttributes) - 1 do
      begin
      glVertexAttribPointer(FAttributes[I].Location, FAttributes[I].Size, GL_FLOAT, glBoolean(FAttributes[I].Normalized), FStride, Pointer(FAttributes[I].Offset));
      glEnableVertexAttribArray(FAttributes[I].Location);
    end;
  end;

  FRenderStarted := True;
end;

method TVertexArray.EndRender;
var
  I: Integer;
begin
  if (not FRenderStarted) then
    Exit;

  FRenderStarted := False;

  if (FSupportsVAO) then
    { When VAO's are supported, we simple unbind it... }
    glBindVertexArray(0)
  else
  begin
      { Otherwise, we need to manually unbind the VBO and EBO and disable the
        attributes. }
    for I := 0 to Length(FAttributes) - 1 do
      glDisableVertexAttribArray(FAttributes[I].Location);

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  end;
  glErrorCheck;
end;

finalizer TVertexArray;
begin
  if (FSupportsVAO) then
    glDeleteVertexArrays(1, @FVertexArray);
  glDeleteBuffers(1, @FIndexBuffer);
  glDeleteBuffers(1, @FVertexBuffer);

end;

constructor TVertexArray(const ALayout: TVertexLayout; const AVertices: array of Single; const AIndices: array of Uint16 );
var i : integer;
begin
  inherited ();
  if (not FInitialized) then
    Initialize;

  FIndexCount := length(AIndices);

   { Create vertex buffer and index buffer. }
  glGenBuffers(1, @FVertexBuffer);
  glGenBuffers(1, @FIndexBuffer);

  if (FSupportsVAO) then
  begin
    glGenVertexArrays(1, @FVertexArray);
    glBindVertexArray(FVertexArray);
    glErrorCheck;
  end;

  glBindBuffer(GL_ARRAY_BUFFER, FVertexBuffer);
  glBufferData(GL_ARRAY_BUFFER, length(AVertices) * sizeof(single), @AVertices[0], GL_STATIC_DRAW);

  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, FIndexBuffer);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, FIndexCount * SizeOf(UInt16), @AIndices[0], GL_STATIC_DRAW);

  if (FSupportsVAO) then
  begin
       { We can configure the attributes as part of the VAO }
    for I := 0 to ALayout.AttribCount - 1 do
      begin
      glVertexAttribPointer(ALayout.Attributes[I].Location, ALayout.Attributes[I].Size,
      GL_FLOAT, GlBoolean(ALayout.Attributes[I].Normalized), ALayout.Stride,
      Pointer(ALayout.Attributes[I].Offset));
      glEnableVertexAttribArray(ALayout.Attributes[I].Location);
    end;
    glErrorCheck;

       { We can unbind the vertex buffer now since it is registered with the VAO.
         We cannot unbind the index buffer though. }
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
  end
  else
  begin
       { VAO's are not supported. We need to keep track of the attributes
         manually }
    FAttributes := new TAttribute[ALayout.AttribCount];
  //  SetLength(FAttributes, ALayout.FAttributeCount);
    for i := 0 to ALayout.AttribCount-1 do
      FAttributes[i]  := ALayout.Attributes[i];

    FStride := ALayout.Stride;
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  end;
  glErrorCheck;
end;


end.