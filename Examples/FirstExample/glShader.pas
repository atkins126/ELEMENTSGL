namespace TestOgl;
{$GLOBALS ON}
interface
uses
  rtl,
  RemObjects.Elements.System,
  //RemObjects.Elements.RTL,
  OpenGl;

type

  TShader = public class
    {$REGION 'Internal Declarations'}
  private
    FProgram: GLuint;

  private
    class method CreateShader(const AShaderPath: string; const AShaderType: GLenum): GLuint;

  public
    { IShader }
    method _GetHandle: GLuint;
    method Use;

    method GetUniformLocation(const AName: string): Integer;
    {$ENDREGION 'Internal Declarations'}

  public
    { Creates a shader.

      Parameters:
      AVertexShaderPath: path into the assets.zip file containing the vertex
      shader (eg. 'shaders/MyShader.vs').
      AFragmentShaderPath: path into the assets.zip file containing the
      fragment shader (eg. 'shaders/MyShader.fs'). }
    constructor (const AVertexShaderPath, AFragmentShaderPath: string);
    finalizer ;
  end;
  {$IF DEBUG}
  method glErrorCheck;
 {$ELSE}
    method glErrorCheck; inline; empty;
 {$ENDIF}

implementation
  {$IF DEBUG}
method glErrorCheck;
var
  Error: GLenum;
begin
  if assigned(glGetError) then
begin
  Error := glGetError();
  if (Error <> GL_NO_ERROR) then
    begin
      repeat until glGetError() = GL_NO_ERROR;
    //Writeln(String.format('OpenGL Error: {0}', [Error]));
      raise new Exception(String.format('OpenGL Error: {0}', [Error]));
    end;
  end
  else Writeln('glGetError not Bound!!!');
end;
{$ENDIF}

{$REGION 'Internal Declarations'}

class method TShader.CreateShader(const AShaderPath: String; const AShaderType: GLenum): GLuint;
var
  Source: String;
  SourcePtr: LPCSTR;
  Status, LogLength, ShaderLength: GLint;
  Log: Array of AnsiChar;
  Msg: string;

begin
  try
    Source := Asset.loadFile(AShaderPath);
    if String.IsNullOrEmpty(Source) then exit;
    writeln('Source Found for '+AShaderPath);

    Result := glCreateShader(AShaderType);
    Writeln('Shader erzeugt '+result.ToString);
    Assert(Result <> 0);
    glErrorCheck;


  {$IFNDEF MOBILE}
  { Desktop OpenGL doesn't recognize precision specifiers }
  if (AShaderType = GL_FRAGMENT_SHADER) then
    Source := '#define lowp'#10 + '#define mediump'#10 + '#define highp'#10 + Source;
  {$ENDIF}
    Var ShaderChars :=  PlatformString(Source).ToAnsiChars;
    SourcePtr := @ShaderChars[0];
    ShaderLength := ShaderChars.length;
    glShaderSource(Result, 1, @SourcePtr, @Shaderlength);
    glErrorCheck;

    glCompileShader(Result);
    glErrorCheck;

    Status := Integer(GL_FALSE);
    glGetShaderiv(Result, GL_COMPILE_STATUS, @Status);
    Writeln('Status Compile '+Status.ToString);
    if (Status <> integer(GL_TRUE)) then
    begin
      glGetShaderiv(Result, GL_INFO_LOG_LENGTH, @LogLength);
      if (LogLength > 0) then
      begin
        Log := new  AnsiChar[LogLength];

        glGetShaderInfoLog(Result, LogLength, @LogLength, @Log[0]);
        Msg :=  String.FromPAnsiChars(@Log[0], LogLength);

        raise new Exception('CreateShader Exception '+Msg);
      end;
    end;
  except
    on e : exception do writeLn(e.Message);
  end;
end;

method TShader._GetHandle: GLuint;
begin
  Result := FProgram;
end;

method TShader.Use;
begin
  glUseProgram(FProgram);
end;

method TShader.GetUniformLocation(const AName: String): Integer;
begin
  Result := glGetUniformLocation(FProgram, AName.ToAnsiChars);
end;


{$ENDREGION}

constructor TShader(const AVertexShaderPath: String; const AFragmentShaderPath: String);
var
  Status, LogLength: GLint;
  VertexShader, FragmentShader: GLuint;
  Log: array of AnsiChar;
  Msg: string;
begin
  
  FragmentShader := 0;
  VertexShader := CreateShader(AVertexShaderPath, GL_VERTEX_SHADER);
  try
    FragmentShader := CreateShader(AFragmentShaderPath, GL_FRAGMENT_SHADER);
    FProgram := glCreateProgram();

    glAttachShader(FProgram, VertexShader);
    glErrorCheck;

    glAttachShader(FProgram, FragmentShader);
    glErrorCheck;

    glLinkProgram(FProgram);
    glGetProgramiv(FProgram, GL_LINK_STATUS, @Status);

    if (Status <> Integer(GL_TRUE)) then
    begin
      glGetProgramiv(FProgram, GL_INFO_LOG_LENGTH, @LogLength);
      if (LogLength > 0) then
      begin
        Log := new  AnsiChar[LogLength];

        glGetProgramInfoLog(FProgram, LogLength, @LogLength, @Log[0]);
        Msg :=  String.FromPAnsiChars(@Log[0], LogLength);
        raise new Exception('CreateProgram Exception '+Msg);
      end;
    end;
    glErrorCheck;
  finally
    if (FragmentShader <> 0) then
      glDeleteShader(FragmentShader);

    if (VertexShader <> 0) then
      glDeleteShader(VertexShader);
  end;
end;

finalizer TShader;
begin
  glUseProgram(0);
  if (FProgram <> 0) then
    glDeleteProgram(FProgram);
end;

end.