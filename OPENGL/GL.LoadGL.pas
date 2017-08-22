{
 OpenGL 4.5 - Headertranslation

used for Remobjects Elements Island Plattforms

Converted and maintained by :
https://github.com/ProHolz/ELEMENTSGL

  ==================
 Initial release 08/15/2017


 ======================================
 These is a translation form
https://bitbucket.org/saschawillems/dglopengl
Originale Headers:

 ============================================================================

       OpenGL 4.5 - Headertranslation


       Supported environments and targets :
        - (Win32) Delphi 6 and up
        - (Win32, Win64) Delphi XE2
        - (Win32, Win64, Linux, MacOSX) FreePascal (1.9.3 and up)

==============================================================================


       Copyright (C) DGL-OpenGL-Portteam
       All Rights Reserved

       Obtained through:
       Bitbucket source repository - https://bitbucket.org/saschawillems/dglopengl
       Delphi OpenGL Community(DGL) - www.delphigl.com

       Converted and maintained by DGL's OpenGL-Portteam :
         - Sascha Willems             - http://www.saschawillems.de
         - Steffen Xonna (Lossy eX)   - http://www.dev-center.de
       Additional input :
         - Andrey Gruzdev (Mac OS X patch for XE2 / FPC)
         - Lars Middendorf
         - Martin Waldegger (Mars)
         - Benjamin Rosseaux (BeRo)   - http://www.0ok.de
       Additional thanks:
           sigsegv (libdl.so)

==============================================================================

  You may retrieve the latest version of this file at the Delphi OpenGL
  Community home page, located at http://www.delphigl.com/

  This Source Code Form is subject to the terms of the Mozilla Public License,
  v. 2.0. If a copy of the MPL was not distributed with this file,
}

namespace OpenGl;
{$GLOBALS ON}

interface
uses
    rtl,
    RemObjects.Elements.system;

    var
        GL_LibHandle: GLHMODULE := GLNULLMODULE;
        GLU_LibHandle: GLHMODULE := GLNULLMODULE;

        LastPixelFormat: Integer;
        ExtensionsRead: Boolean;
        ImplementationRead: Boolean;
 LoadProc : GLfwLoadProc; 

type
    TRCOptions = set of (opDoubleBuffered, opGDI, opStereo);


    const
{$IF ISLAND AND WINDOWS}
  OPENGL_LIBNAME = 'OpenGL32.dll';
  GLU_LIBNAME = 'GLU32.dll';
{$ELSE}
  {$IFDEF darwin}
    OPENGL_LIBNAME = 'libGL.dylib';
    GLU_LIBNAME = 'libGLU.dylib';
  {$ELSE}
    OPENGL_LIBNAME = 'libGL.so.1';
    GLU_LIBNAME = 'libGLU.so.1';
  {$ENDIF}
{$ENDIF}

  method dglGetProcAddress(ProcName: String; LibHandle: GLHMODULE := GLNULLMODULE; StaticLink : Boolean := false ): ^Void;
  method dglLoadLibrary(const Name: String): GLHMODULE;
  method dglFreeLibrary(LibHandle: GLHMODULE): Boolean;
  method TrimAndSplitVersionString( Buffer: String; var Max, Min: Integer) : Boolean;

  method InitOpenGL(LibName: String := ''; GLULibName: String := ''): Boolean;

{$IF ISLAND and WINDOWS}
method CreateRenderingContext(DC: HDC; Options: TRCOptions; ColorBits, ZBits, StencilBits, AccumBits, AuxBuffers: Integer; Layer: Integer): HGLRC;
method ActivateRenderingContext(DC: HDC; RC: HGLRC; loadext: boolean := true);
method DeactivateRenderingContext;
method DestroyRenderingContext(RC: HGLRC);
{$ENDIF}
implementation



method TrimAndSplitVersionString( Buffer: String; var Max, Min: Integer): boolean;
    // Peels out the X.Y form from the given Buffer which must contain a version string like "text Minor.Major.Build text"
    // at least however "Major.Minor".
var
    Separator: Integer;

begin
    result := false;
    try
//      // There must be at least one dot to separate major and minor version number.
        max := -1;
        Min := -1;
        Separator :=  Buffer.IndexOf('.');
//      // At least one number must be before and one after the dot.
        if (Separator > 0) and (Separator < Buffer.Length) then
       //  if (Buffer.Chars[Separator-1] in ['0'..'9']) then
     // if (Buffer.Chars[Separator + 1] in ['0'..'9']) then
            if (Buffer[Separator + 1] in ['0'..'9']) then
            begin
//        // OK, it's a valid version string. Now remove unnecessary parts.
                Dec(Separator);
//        // Find last non-numeric character before version number.
//        while (Separator > 0) and (Buffer.Chars[Separator-1] in ['0'..'9']) do
                while (Separator > 0) and (Buffer[Separator-1] in ['0'..'9']) do
                    Dec(Separator);
//        // Delete leading characters which do not belong to the version string.
                if Separator > 0 then
                    Buffer := Buffer.Remove(0, Separator);
                Separator :=  Buffer.IndexOf('.')+1;

//        // Find first non-numeric character after version number
                while (Separator < Buffer.Length) and (Buffer[Separator] in ['0'..'9']) do
                    Inc(Separator);
//        // delete trailing characters not belonging to the version string
                Buffer := Buffer.Remove(Separator, Buffer.length-Separator);
//        // Now translate the numbers.
//        Separator := Pos('.', Buffer); // This is necessary because the buffer length might have changed.
                Separator :=  Buffer.IndexOf('.');

                result :=  Integer.TryParse( Buffer.Substring( 0, Separator), out Max) and
                           Integer.tryParse( Buffer.Substring( Separator + 1, 1), out Min);
            end;

    except
        Min := 0;
            Max := 0;
    end;
end;


method dglGetProcAddress(ProcName: String; LibHandle: GLHMODULE := GLNULLMODULE; StaticLink : Boolean := false ): ^Void;
begin
if Assigned(LoadProc) then
    begin
        exit  LoadProc(@ProcName.ToAnsiChars(true)[0]);
    end;

    if LibHandle = GLNULLMODULE then
        LibHandle := GL_LibHandle;

  {$IF ISLAND AND WINDOWS}
 Var Buff := ProcName.ToAnsiChars(true);
    Result := Pointer(GetProcAddress(HMODULE(LibHandle), LPCSTR(@Buff[0])));

    if result <> nil then
        exit;

    if wglGetProcAddress <> nil then
      Result := Pointer(wglGetProcAddress(LPCSTR(@Buff[0])));
  {$ENDIF}

    {$IF ISLAND AND LINUX}

    if not StaticLink then begin
        if Assigned(glXGetProcAddress)  then
            Result := glXGetProcAddress(ProcName);

        if result <> nil then
            exit;

        if Assigned(glXGetProcAddressARB)  then
            Result := glXGetProcAddressARB(ProcName);


    end;
{$ENDIF}
end;


method dglLoadLibrary(const Name: String): GLHMODULE;
begin
  {$IFDEF ISLAND AND WINDOWS}
Var Buff := Name.ToCharArray(true);
    Result :=  GLHMODULE( LoadLibrary(LPCWSTR(@Buff[0])));
  {$ENDIF}


  {$IFDEF ISLAND AND LINUX}
  Result := dlopen(@Name.ToAnsiChars[0], RTLD_LAZY);
  {$ENDIF}

  {$IFDEF DGL_MAC}
  {$IFDEF OPENGL_FRAMEWORK}
  Result := RTLD_DEFAULT;
  {$ELSE}
  Result := Pointer(LoadLibrary(Name));
  {$ENDIF}
  {$ENDIF}
end;


method dglFreeLibrary(LibHandle: GLHMODULE): Boolean;
begin
    if LibHandle = GLNULLMODULE then
        Result := False
    else
    {$IFDEF ISLAND AND WINDOWS}
    Result := FreeLibrary(HMODULE(LibHandle));
    {$ENDIF}

    {$IFDEF ISLAND AND LINUX}
    Result := dlclose(LibHandle) = 0;
    {$ENDIF}

    {$IFDEF DGL_MAC}
    {$IFDEF OPENGL_FRAMEWORK}
  Result := true;
  {$ELSE}
    Result := FreeLibrary(HMODULE(LibHandle));
    {$ENDIF}
  {$ENDIF}
end;

method InitOpenGL(LibName: String := ''; GLULibName: String := ''): Boolean;
begin
    Result := False;

  // free opened libraries
    if GL_LibHandle <> GLNULLMODULE then
        dglFreeLibrary(GL_LibHandle);

    if GLU_LibHandle <> GLNULLMODULE then
        dglFreeLibrary(GLU_LibHandle);
    if LibName.Length = 0  then LibName := OPENGL_LIBNAME;
    if GLULibName.Length = 0  then GLULibName := GLU_LIBNAME;

  // load library
    GL_LibHandle := dglLoadLibrary(LibName);
    GLU_LibHandle := dglLoadLibrary(GLULibName);

  // load GL functions
    if (GL_LibHandle <> GLNULLMODULE) then begin
    {$IFDEF ISLAND AND WINDOWS}
  wglCopyContext := twglCopyContext(dglGetProcAddress('wglCopyContext'));
  wglCreateLayerContext := twglCreateLayerContext(dglGetProcAddress('wglCreateLayerContext'));
  wglCreateContext := twglCreateContext(dglGetProcAddress('wglCreateContext'));
  wglDeleteContext := twglDeleteContext(dglGetProcAddress('wglDeleteContext'));
  wglDescribeLayerPlane := twglDescribeLayerPlane(dglGetProcAddress('wglDescribeLayerPlane'));
  wglGetCurrentContext := twglGetCurrentContext(dglGetProcAddress('wglGetCurrentContext'));
  wglGetCurrentDC := twglGetCurrentDC(dglGetProcAddress('wglGetCurrentDC'));
  wglGetLayerPaletteEntries := twglGetLayerPaletteEntries(dglGetProcAddress('wglGetLayerPaletteEntries'));
  wglGetProcAddress := twglGetProcAddress(dglGetProcAddress('wglGetProcAddress'));
  wglMakeCurrent := twglMakeCurrent(dglGetProcAddress('wglMakeCurrent'));
  wglRealizeLayerPalette := twglRealizeLayerPalette(dglGetProcAddress('wglRealizeLayerPalette'));
  wglSetLayerPaletteEntries := twglSetLayerPaletteEntries(dglGetProcAddress('wglSetLayerPaletteEntries'));
  wglShareLists := twglShareLists(dglGetProcAddress('wglShareLists'));
  wglSwapLayerBuffers := twglSwapLayerBuffers(dglGetProcAddress('wglSwapLayerBuffers'));
  wglSwapMultipleBuffers := twglSwapMultipleBuffers(dglGetProcAddress('wglSwapMultipleBuffers'));
  wglUseFontBitmapsA := twglUseFontBitmapsA(dglGetProcAddress('wglUseFontBitmapsA'));
  wglUseFontOutlinesA := twglUseFontOutlinesA(dglGetProcAddress('wglUseFontOutlinesA'));
  wglUseFontBitmapsW := twglUseFontBitmapsW(dglGetProcAddress('wglUseFontBitmapsW'));
  wglUseFontOutlinesW := twglUseFontOutlinesW(dglGetProcAddress('wglUseFontOutlinesW'));
  wglUseFontBitmaps := twglUseFontBitmaps(dglGetProcAddress('wglUseFontBitmapsA'));
  wglUseFontOutlines := twglUseFontOutlines(dglGetProcAddress('wglUseFontOutlinesA'));
    {$ENDIF}


        Result := True;
    end;

  // load GLU functions
    if GLU_LibHandle <> GLNULLMODULE then begin
    // GLU ========================================================================
        gluBeginCurve := tgluBeginCurve(dglGetProcAddress('gluBeginCurve', GLU_LibHandle));
        gluBeginPolygon := tgluBeginPolygon(dglGetProcAddress('gluBeginPolygon', GLU_LibHandle ));
        gluBeginSurface := tgluBeginSurface(dglGetProcAddress('gluBeginSurface', GLU_LibHandle));
        gluBeginTrim := tgluBeginTrim(dglGetProcAddress('gluBeginTrim', GLU_LibHandle ));
        gluBuild1DMipmaps := tgluBuild1DMipmaps(dglGetProcAddress('gluBuild1DMipmaps', GLU_LibHandle , True));
        gluBuild2DMipmaps := tgluBuild2DMipmaps(dglGetProcAddress('gluBuild2DMipmaps', GLU_LibHandle , True));
        gluCylinder := tgluCylinder(dglGetProcAddress('gluCylinder', GLU_LibHandle , True));
        gluDeleteNurbsRenderer := tgluDeleteNurbsRenderer(dglGetProcAddress('gluDeleteNurbsRenderer', GLU_LibHandle , True));
        gluDeleteQuadric := tgluDeleteQuadric(dglGetProcAddress('gluDeleteQuadric', GLU_LibHandle , True));
        gluDeleteTess := tgluDeleteTess(dglGetProcAddress('gluDeleteTess', GLU_LibHandle , True));
        gluDisk := tgluDisk(dglGetProcAddress('gluDisk', GLU_LibHandle , True));
        gluEndCurve := tgluEndCurve(dglGetProcAddress('gluEndCurve', GLU_LibHandle , True));
        gluEndPolygon := tgluEndPolygon(dglGetProcAddress('gluEndPolygon', GLU_LibHandle , True));
        gluEndSurface := tgluEndSurface(dglGetProcAddress('gluEndSurface', GLU_LibHandle , True));
        gluEndTrim := tgluEndTrim(dglGetProcAddress('gluEndTrim', GLU_LibHandle , True));
        gluErrorString := tgluErrorString(dglGetProcAddress('gluErrorString', GLU_LibHandle , True));
        gluGetNurbsProperty := tgluGetNurbsProperty(dglGetProcAddress('gluGetNurbsProperty', GLU_LibHandle , True));
        gluGetString := tgluGetString(dglGetProcAddress('gluGetString', GLU_LibHandle , True));
        gluGetTessProperty := tgluGetTessProperty(dglGetProcAddress('gluGetTessProperty', GLU_LibHandle , True));
        gluLoadSamplingMatrices := tgluLoadSamplingMatrices(dglGetProcAddress('gluLoadSamplingMatrices', GLU_LibHandle , True));
        gluLookAt := tgluLookAt(dglGetProcAddress('gluLookAt', GLU_LibHandle , True));
        gluNewNurbsRenderer := tgluNewNurbsRenderer(dglGetProcAddress('gluNewNurbsRenderer', GLU_LibHandle , True));
        gluNewQuadric := tgluNewQuadric(dglGetProcAddress('gluNewQuadric', GLU_LibHandle , True));
        gluNewTess := tgluNewTess(dglGetProcAddress('gluNewTess', GLU_LibHandle , True));
        gluNextContour := tgluNextContour(dglGetProcAddress('gluNextContour', GLU_LibHandle , True));
        gluNurbsCallback := tgluNurbsCallback(dglGetProcAddress('gluNurbsCallback', GLU_LibHandle , True));
        gluNurbsCurve := tgluNurbsCurve(dglGetProcAddress('gluNurbsCurve', GLU_LibHandle , True));
        gluNurbsProperty := tgluNurbsProperty(dglGetProcAddress('gluNurbsProperty', GLU_LibHandle , True));
        gluNurbsSurface := tgluNurbsSurface(dglGetProcAddress('gluNurbsSurface', GLU_LibHandle , True));
        gluOrtho2D := tgluOrtho2D(dglGetProcAddress('gluOrtho2D', GLU_LibHandle , True));
        gluPartialDisk := tgluPartialDisk(dglGetProcAddress('gluPartialDisk', GLU_LibHandle , True));
        gluPerspective := tgluPerspective(dglGetProcAddress('gluPerspective', GLU_LibHandle , True));
        gluPickMatrix := tgluPickMatrix(dglGetProcAddress('gluPickMatrix', GLU_LibHandle , True));
        gluProject := tgluProject(dglGetProcAddress('gluProject', GLU_LibHandle , True));
        gluPwlCurve := tgluPwlCurve(dglGetProcAddress('gluPwlCurve', GLU_LibHandle , True));
        gluQuadricCallback := tgluQuadricCallback(dglGetProcAddress('gluQuadricCallback', GLU_LibHandle , True));
        gluQuadricDrawStyle := tgluQuadricDrawStyle(dglGetProcAddress('gluQuadricDrawStyle', GLU_LibHandle , True));
        gluQuadricNormals := tgluQuadricNormals(dglGetProcAddress('gluQuadricNormals', GLU_LibHandle , True));
        gluQuadricOrientation := tgluQuadricOrientation(dglGetProcAddress('gluQuadricOrientation', GLU_LibHandle , True));
        gluQuadricTexture := tgluQuadricTexture(dglGetProcAddress('gluQuadricTexture', GLU_LibHandle , True));
        gluScaleImage := tgluScaleImage(dglGetProcAddress('gluScaleImage', GLU_LibHandle , True));
        gluSphere := tgluSphere(dglGetProcAddress('gluSphere', GLU_LibHandle , True));
        gluTessBeginContour := tgluTessBeginContour(dglGetProcAddress('gluTessBeginContour', GLU_LibHandle , True));
        gluTessBeginPolygon := tgluTessBeginPolygon(dglGetProcAddress('gluTessBeginPolygon', GLU_LibHandle , True));
        gluTessCallback := tgluTessCallback(dglGetProcAddress('gluTessCallback', GLU_LibHandle , True));
        gluTessEndContour := tgluTessEndContour(dglGetProcAddress('gluTessEndContour', GLU_LibHandle , True));
        gluTessEndPolygon := tgluTessEndPolygon(dglGetProcAddress('gluTessEndPolygon', GLU_LibHandle , True));
        gluTessNormal := tgluTessNormal(dglGetProcAddress('gluTessNormal', GLU_LibHandle , True));
        gluTessProperty := tgluTessProperty(dglGetProcAddress('gluTessProperty', GLU_LibHandle , True));
        gluTessVertex := tgluTessVertex(dglGetProcAddress('gluTessVertex', GLU_LibHandle , True));
        gluUnProject := tgluUnProject(dglGetProcAddress('gluUnProject', GLU_LibHandle , True));
    end;
end;

{$IFDEF ISLAND AND WINDOWS}
method CreateRenderingContext(DC: HDC; Options: TRCOptions; ColorBits, ZBits, StencilBits, AccumBits, AuxBuffers: Integer; Layer: Integer): HGLRC;
const
  OBJ_MEMDC = 10;
  OBJ_ENHMETADC = 12;
  OBJ_METADC = 4;
  PFD_DOUBLEBUFFER = $00000001;
  PFD_STEREO = $00000002;
  PFD_DRAW_TO_WINDOW = $00000004;
  PFD_DRAW_TO_BITMAP = $00000008;
  PFD_SUPPORT_GDI = $00000010;
  PFD_SUPPORT_OPENGL = $00000020;
  PFD_TYPE_RGBA = 0;
  PFD_MAIN_PLANE = 0;
  PFD_OVERLAY_PLANE = 1;
  PFD_UNDERLAY_PLANE = LongWord(-1);


var
  PFDescriptor: PixelFormatDescriptor;
  PixelFormat: Integer;
  AType: DWORD;
begin
  if GL_LibHandle = GLNULLMODULE then
    InitOpenGL;

  PFDescriptor := &default(PixelFormatDescriptor);
  //memset(@PFDescriptor, SizeOf(PFDescriptor), 0);

  with pfd := PFDescriptor do
  begin
    pfd.nSize := SizeOf(PFDescriptor);
    pfd.nVersion := 1;
    pfd.dwFlags := PFD_SUPPORT_OPENGL;

    AType := GetObjectType(DC);

    if AType = 0 then
      RaiseLastOSError;

    if AType in  [OBJ_MEMDC, OBJ_METADC, OBJ_ENHMETADC] then
      pfd.dwFlags := pfd.dwFlags or PFD_DRAW_TO_BITMAP
    else
      pfd.dwFlags := pfd.dwFlags or PFD_DRAW_TO_WINDOW;

    if TRCOptions.opDoubleBuffered in Options then
      pfd.dwFlags := pfd.dwFlags or PFD_DOUBLEBUFFER;

    if TRCOptions.opGDI in Options then
      pfd.dwFlags := pfd.dwFlags or PFD_SUPPORT_GDI;

    if TRCOptions.opStereo in Options then
      pfd.dwFlags := pfd.dwFlags or PFD_STEREO;

    pfd.iPixelType := PFD_TYPE_RGBA;
    pfd.cColorBits := ColorBits;
    pfd.cDepthBits := zBits;
    pfd.cStencilBits := StencilBits;
    pfd.cAccumBits := AccumBits;
    pfd.cAuxBuffers := AuxBuffers;

    if Layer = 0 then
      pfd.iLayerType := PFD_MAIN_PLANE
    else
    if Layer > 0 then
      pfd.iLayerType := PFD_OVERLAY_PLANE
    else
      pfd.iLayerType := Byte(PFD_UNDERLAY_PLANE);
  end;

  PixelFormat := ChoosePixelFormat(DC, @PFDescriptor);

  if PixelFormat = 0 then
    RaiseLastOSError;

  if GetPixelFormat(DC) <> PixelFormat then
    if not SetPixelFormat(DC, PixelFormat, @PFDescriptor) then
      RaiseLastOSError;

  DescribePixelFormat(DC, PixelFormat, SizeOf(PFDescriptor), @PFDescriptor);

  Result := wglCreateContext(DC);

  if Result = Nil then
    RaiseLastOSError
  else
    LastPixelFormat := 0;
end;

method ActivateRenderingContext(DC: HDC; RC: HGLRC; loadext: boolean := true);
begin
  Assert((DC <> nil), 'DC must not be 0');
  Assert((RC <> nil), 'RC must not be 0');

  wglMakeCurrent(DC, RC);


  Gl.ReadImplementationProperties;

  if (loadext) then
    GL.ReadExtensions
    else  GL.ReadOpenGLCore;

end;

method DeactivateRenderingContext;
begin
  wglMakeCurrent(nil, nil);
end;

method DestroyRenderingContext(RC: HGLRC);
begin
  wglDeleteContext(RC);
end;
{$ENDIF}
end.