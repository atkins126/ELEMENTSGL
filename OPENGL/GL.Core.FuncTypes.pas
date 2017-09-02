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
{$IF ISLAND}
type
{$REGION 'GL '}
  // GLUQuadricCallback
 [CallingConvention(PlatformConvention)]
  TGLUQuadricErrorProc = public method(errorCode: GLenum);
  // GLUTessCallback
 [CallingConvention(PlatformConvention)]
  TGLUTessBeginProc = public method(AType: GLenum);
 [CallingConvention(PlatformConvention)]
  TGLUTessEdgeFlagProc = public method(Flag: GLboolean);
 [CallingConvention(PlatformConvention)]
  TGLUTessVertexProc = public method(VertexData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessEndProc = public method  ;
 [CallingConvention(PlatformConvention)]
  TGLUTessErrorProc = public method(ErrNo: GLenum);
 [CallingConvention(PlatformConvention)]
  TGLUTessCombineProc = public method(Coords: TGLArrayd3; VertexData: TGLArrayp4; Weight: TGLArrayf4; OutData: PPointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessBeginDataProc = public method(AType: GLenum; UserData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessEdgeFlagDataProc = public method(Flag: GLboolean; UserData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessVertexDataProc = public method(VertexData: Pointer; UserData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessEndDataProc = public method(UserData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessErrorDataProc = public method(ErrNo: GLenum; UserData: Pointer);
 [CallingConvention(PlatformConvention)]
  TGLUTessCombineDataProc = public method(Coords: TGLArrayd3; VertexData: TGLArrayp4; Weight: TGLArrayf4; OutData: PPointer; UserData: Pointer);
  // GLUNurbsCallback
 [CallingConvention(PlatformConvention)]
  TGLUNurbsErrorProc = public method(ErrorCode: GLenum);


type
// GL_ARB_compute_variable_group_size
 [CallingConvention(PlatformConvention)]
  TglDispatchComputeGroupSizeARB = public method(num_groups_x : GLuint; num_groups_y : GLuint; num_groups_z : GLuint; group_size_x : GLuint; group_size_y : GLuint; group_size_z : GLuint); // stdcall;
  // GL_ARB_debug_output
 [CallingConvention(PlatformConvention)]
  TglDebugProcARB = public method(source: GLenum; type_: GLenum; id: GLuint; severity: GLenum; length: GLsizei; const message_: PGLchar; userParam: PGLvoid); // stdcall;
  // GL_AMD_debug_output
 [CallingConvention(PlatformConvention)]
  TglDebugProcAMD = public method(id: GLuint; category: GLenum; severity: GLenum; length: GLsizei; const message_: PGLchar; userParam: PGLvoid); // stdcall;
  // GL_KHR_debug (4.3)
 [CallingConvention(PlatformConvention)]
  TglDebugProc = public method(source : GLenum; type_ : GLenum; id : GLuint; severity : GLuint; length : GLsizei; const message_ : PGLchar; userParam : PGLvoid); // stdcall;



type
  // GL_VERSION_1_0
{$REGION 'GL_VERSION_1_0'}
 [CallingConvention(PlatformConvention)]
  TglCullFace = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglFrontFace = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglHint = public method(target: GLenum; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglLineWidth = public method(width: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointSize = public method(size: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPolygonMode = public method(face: GLenum; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglScissor = public method(x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexParameterf = public method(target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexParameterfv = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexParameteri = public method(target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglTexParameteriv = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTexImage1D = public method(target: GLenum; level: GLint; internalformat: GLint; width: GLsizei; border: GLint; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexImage2D = public method(target: GLenum; level: GLint; internalformat: GLint; width: GLsizei; height: GLsizei; border: GLint; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglDrawBuffer = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglClear = public method(mask: GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglClearColor = public method(red: GLclampf; green: GLclampf; blue: GLclampf; alpha: GLclampf);
 [CallingConvention(PlatformConvention)]
  TglClearStencil = public method(s: GLint);
 [CallingConvention(PlatformConvention)]
  TglClearDepth = public method(depth: GLclampd);
 [CallingConvention(PlatformConvention)]
  TglStencilMask = public method(mask: GLuint);
 [CallingConvention(PlatformConvention)]
  TglColorMask = public method(red: GLboolean; green: GLboolean; blue: GLboolean; alpha: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglDepthMask = public method(flag: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglDisable = public method(cap: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEnable = public method(cap: GLenum);
 [CallingConvention(PlatformConvention)]
  TglFinish = public method  ();
 [CallingConvention(PlatformConvention)]
  TglFlush = public method  ();
 [CallingConvention(PlatformConvention)]
  TglBlendFunc = public method(sfactor: GLenum; dfactor: GLenum);
 [CallingConvention(PlatformConvention)]
  TglLogicOp = public method(opcode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglStencilFunc = public method(func: GLenum; ref: GLint; mask: GLuint);
 [CallingConvention(PlatformConvention)]
  TglStencilOp = public method(fail: GLenum; zfail: GLenum; zpass: GLenum);
 [CallingConvention(PlatformConvention)]
  TglDepthFunc = public method(func: GLenum);
 [CallingConvention(PlatformConvention)]
  TglPixelStoref = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPixelStorei = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglReadBuffer = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglReadPixels = public method(x: GLint; y: GLint; width: GLsizei; height: GLsizei; format: GLenum; _type: GLenum; pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetBooleanv = public method(pname: GLenum; params_: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetDoublev = public method(pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetError = public method(): GLenum;
 [CallingConvention(PlatformConvention)]
  TglGetFloatv = public method(pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetIntegerv = public method(pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetString = public method(name: GLenum): PAnsiChar;
 [CallingConvention(PlatformConvention)]
  TglGetTexImage = public method(target: GLenum; level: GLint; format: GLenum; _type: GLenum; pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameteriv = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterfv = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetTexLevelParameterfv = public method(target: GLenum; level: GLint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetTexLevelParameteriv = public method(target: GLenum; level: GLint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglIsEnabled = public method(cap: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglDepthRange = public method(zNear: GLclampd; zFar: GLclampd);
 [CallingConvention(PlatformConvention)]
  TglViewport = public method(x: GLint; y: GLint; width: GLsizei; height: GLsizei);
{$ENDREGION}
  // GL_VERSION_1_1
{$REGION 'GL_VERSION_1_1'}
 [CallingConvention(PlatformConvention)]
  TglDrawArrays = public method(mode: GLenum; first: GLint; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawElements = public method(mode: GLenum; count: GLsizei; _type: GLenum; const indices: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetPointerv = public method(pname: GLenum; params_: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPolygonOffset = public method(factor: GLfloat; units: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglCopyTexImage1D = public method(target: GLenum; level: GLint; internalFormat: GLenum; x: GLint; y: GLint; width: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTexImage2D = public method(target: GLenum; level: GLint; internalFormat: GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage1D = public method(target: GLenum; level: GLint; xoffset: GLint; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage2D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage1D = public method(target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage2D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglBindTexture = public method(target: GLenum; texture: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteTextures = public method(n: GLsizei; const textures: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenTextures = public method(n: GLsizei; textures: PGLuint);

{$ENDREGION}

  // GL_VERSION_1_2
{$REGION 'GL_VERSION_1_2'}
[CallingConvention(PlatformConvention)]
  TglBlendColor = public method(red: GLclampf; green: GLclampf; blue: GLclampf; alpha: GLclampf);
 [CallingConvention(PlatformConvention)]
  TglBlendEquation = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElements = public method(mode: GLenum; start: GLuint; _end: GLuint; count: GLsizei; _type: GLenum; const indices: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexImage3D = public method(target: GLenum; level: GLint; internalformat: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage3D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage3D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);

{$ENDREGION}
  // GL_VERSION_1_3
{$REGION 'GL_VERSION_1_3'}
 [CallingConvention(PlatformConvention)]
  TglActiveTexture = public method(texture: GLenum);
 [CallingConvention(PlatformConvention)]
  TglSampleCoverage = public method(value: GLclampf; invert: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage3D = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage2D = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage1D = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage3D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage2D = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage1D = public method(target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedTexImage = public method(target: GLenum; level: GLint; img: PGLvoid);

{$ENDREGION}
// GL_VERSION_1_4
{$REGION 'GL_VERSION_1_4'}
[CallingConvention(PlatformConvention)]
  TglBlendFuncSeparate = public method(sfactorRGB: GLenum; dfactorRGB: GLenum; sfactorAlpha: GLenum; dfactorAlpha: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawArrays = public method(mode: GLenum; const first: PGLint; const count: PGLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawElements = public method(mode: GLenum; const count: PGLsizei; _type: GLenum; const indices: PGLvoid; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglPointParameterf = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointParameterfv = public method(pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointParameteri = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglPointParameteriv = public method(pname: GLenum; const params_: PGLint);

{$ENDREGION}
  // GL_VERSION_1_5
{$REGION 'GL_VERSION_1_5'}
[CallingConvention(PlatformConvention)]
  TglGenQueries = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteQueries = public method(n: GLsizei; const ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsQuery = public method(id: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TglBeginQuery = public method(target: GLenum; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndQuery = public method(target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetQueryiv = public method(target, pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectiv = public method(id: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectuiv = public method(id: GLuint; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindBuffer = public method(target: GLenum; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteBuffers = public method(n: GLsizei; const buffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenBuffers = public method(n: GLsizei; buffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsBuffer = public method(buffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBufferData = public method(target: GLenum; size: GLsizeiptr; const data: PGLvoid; usage: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBufferSubData = public method(target: GLenum; offset: GLintptr; size: GLsizeiptr; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetBufferSubData = public method(target: GLenum; offset: GLintptr; size: GLsizeiptr; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMapBuffer = public method(target: GLenum; access: GLenum): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglUnmapBuffer = public method(target: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetBufferParameteriv = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetBufferPointerv = public method(target: GLenum; pname: GLenum; params_: PGLvoid);
{$ENDREGION}

// GL_VERSION_2_0
  {$REGION 'GL_VERSION_2_0'}
 [CallingConvention(PlatformConvention)]
  TglBlendEquationSeparate = public method(modeRGB: GLenum; modeAlpha: GLenum);
 [CallingConvention(PlatformConvention)]
  TglDrawBuffers = public method(n: GLsizei; const bufs: PGLenum);
 [CallingConvention(PlatformConvention)]
  TglStencilOpSeparate = public method(face: GLenum; sfail: GLenum; dpfail: GLenum; dppass: GLenum);
 [CallingConvention(PlatformConvention)]
  TglStencilFuncSeparate = public method(face: GLenum; func: GLenum; ref: GLint; mask: GLuint);
 [CallingConvention(PlatformConvention)]
  TglStencilMaskSeparate = public method(face: GLenum; mask: GLuint);
 [CallingConvention(PlatformConvention)]
  TglAttachShader = public method(programObj, shaderObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglBindAttribLocation = public method(programObj: GLHandle; index_: GLuint; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglCompileShader = public method(shaderObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglCreateProgram = public method: GLHandle;
 [CallingConvention(PlatformConvention)]
  TglCreateShader = public method(shaderType: GLenum): GLHandle;
 [CallingConvention(PlatformConvention)]
  TglDeleteProgram = public method(programObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglDeleteShader = public method(shaderObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglDetachShader = public method(programObj, shaderObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglDisableVertexAttribArray = public method(index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEnableVertexAttribArray = public method(index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetActiveAttrib = public method(programObj: GLHandle; index_: GLuint; maxlength: GLsizei; var length: GLint; var size: GLint; var _type: GLenum; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniform = public method(programObj: GLHandle; index_: GLuint; maxLength: GLsizei; var length: GLsizei; var size: GLint; var _type: GLenum; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetAttachedShaders = public method(programObj: GLHandle; MaxCount: GLsizei; var Count: GLint; shaders: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetAttribLocation = public method(programObj: GLHandle; char: PGLchar): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetProgramiv = public method(programObj: GLHandle; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramInfoLog = public method(programObj: GLHandle; maxLength: GLsizei; length: PGLsizei; infoLog: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetShaderiv = public method(shaderObj: GLHandle; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetShaderInfoLog = public method(shaderObj: GLHandle; maxLength: GLsizei; length: PGLsizei; infoLog: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetShaderSource = public method(shaderObj: GLHandle; maxlength: GLsizei; var length: GLsizei; source: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetUniformLocation = public method(programObj: GLHandle; const char: PGLchar): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetUniformfv = public method(programObj: GLHandle; location: GLint; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetUniformiv = public method(programObj: GLHandle; location: GLint; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribfv = public method(index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribiv = public method(index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribPointerv = public method(index_: GLuint; pname: GLenum; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglIsProgram = public method(programObj: GLHandle) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglIsShader = public method(shaderObj: GLHandle) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglLinkProgram = public method(programObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglShaderSource = public method(shaderObj: GLHandle; count: GLsizei; const _string: PPGLchar; lengths: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUseProgram = public method(programObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglUniform1f = public method(location: GLint; v0: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform2f = public method(location: GLint; v0, v1: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform3f = public method(location: GLint; v0, v1, v2: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform4f = public method(location: GLint; v0, v1, v2, v3: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform1i = public method(location: GLint; v0: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform2i = public method(location: GLint; v0, v1: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform3i = public method(location: GLint; v0, v1, v2: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform4i = public method(location: GLint; v0, v1, v2, v3: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform1fv = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform2fv = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform3fv = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform4fv = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform1iv = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform2iv = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform3iv = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform4iv = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglValidateProgram = public method(programObj: GLHandle);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1d = public method(index_: GLuint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1f = public method(index_: GLuint; x: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1fv = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1s = public method(index_: GLuint; x: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1sv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2d = public method(index_: GLuint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2f = public method(index_: GLuint; x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2fv = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2s = public method(index_: GLuint; x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2sv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3d = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3f = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3fv = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3s = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3sv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nbv = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Niv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nsv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nub = public method(index_: GLuint; x: GLubyte; y: GLubyte; z: GLubyte; w: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nubv = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nuiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4Nusv = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4bv = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4d = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4f = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4fv = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4iv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4s = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort; w: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4sv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4ubv = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4uiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4usv = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribPointer = public method(index_: GLuint; size: GLint; _type: GLenum; normalized: GLboolean; stride: GLsizei; const _pointer: PGLvoid);
{$ENDREGION}
  // GL_VERSION_2_1
{$REGION 'GL_VERSION_2_1'}
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2x3fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3x2fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2x4fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4x2fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3x4fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4x3fv = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
{$ENDREGION}
  // GL_VERSION_3_0
  { OpenGL 3.0 also reuses entry points from these extensions: }
  { ARB_framebuffer_object }
  { ARB_map_buffer_range }
  { ARB_vertex_array_object }
 [CallingConvention(PlatformConvention)]
  TglColorMaski = public method(index_: GLuint; r: GLboolean; g: GLboolean; b: GLboolean; a: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetBooleani_v = public method(target: GLenum; index_: GLuint; data: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetIntegeri_v = public method(target: GLenum; index_: GLuint; data: PGLint);
 [CallingConvention(PlatformConvention)]
  TglEnablei = public method(target: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDisablei = public method(target: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglIsEnabledi = public method(target: GLenum; index_: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBeginTransformFeedback = public method(primitiveMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEndTransformFeedback = public method  ();
 [CallingConvention(PlatformConvention)]
  TglBindBufferRange = public method(target: GLenum; index_: GLuint; buffer: GLuint; offset: GLintptr; size: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglBindBufferBase = public method(target: GLenum; index_: GLuint; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackVaryings = public method(program_: GLuint; count: GLsizei; const varyings: PPGLchar; bufferMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbackVarying = public method(program_: GLuint; index_: GLuint; bufSize: GLsizei; length: PGLsizei; size: PGLsizei; type_: PGLsizei; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglClampColor = public method(targe: GLenum; clamp: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBeginConditionalRender = public method(id: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEndConditionalRender = public method  ();
 [CallingConvention(PlatformConvention)]
  TglVertexAttribIPointer = public method(index_: GLuint; size: GLint; type_: GLenum; stride: GLsizei; const pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribIiv = public method(index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribIuiv = public method(index_: GLuint; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1i = public method(index_: GLuint; x: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2i = public method(index_: GLuint; x: GLint; y: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3i = public method(index_: GLuint; x: GLint; y: GLint; z: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4i = public method(index_: GLuint; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1ui = public method(index_: GLuint; x: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2ui = public method(index_: GLuint; x: GLuint; y: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3ui = public method(index_: GLuint; x: GLuint; y: GLuint; z: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4ui = public method(index_: GLuint; x: GLuint; y: GLuint; z: GLuint; w: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1iv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2iv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3iv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4iv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1uiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2uiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3uiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4uiv = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4bv = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4sv = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4ubv = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4usv = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglGetUniformuiv = public method(program_: GLuint; location: GLint; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindFragDataLocation = public method(program_: GLuint; color: GLuint; const name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetFragDataLocation = public method(program_: GLuint; const name: PGLchar): GLint;
 [CallingConvention(PlatformConvention)]
  TglUniform1ui = public method(location: GLint; v0: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform2ui = public method(location: GLint; v0: GLuint; v1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform3ui = public method(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform4ui = public method(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint; v3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform1uiv = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform2uiv = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform3uiv = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform4uiv = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTexParameterIiv = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTexParameterIuiv = public method(target: GLenum; pname: GLenum; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterIiv = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterIuiv = public method(target: GLenum; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglClearBufferiv = public method(buffer: GLenum; drawbuffer: GLint; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglClearBufferuiv = public method(buffer: GLenum; drawbuffer: GLint; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglClearBufferfv = public method(buffer: GLenum; drawbuffer: GLint; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglClearBufferfi = public method(buffer: GLenum; drawbuffer: GLint; depth: GLfloat; stencil: GLint);
 [CallingConvention(PlatformConvention)]
  TglGetStringi = public method(name: GLenum; index_: GLuint): PAnsiChar;

  // GL_VERSION_2_1
 [CallingConvention(PlatformConvention)]
  TglEnableVertexArrayEXT = public method(vaobj: GLuint; array_: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEnableVertexArrayAttribEXT = public method(vaobj: GLuint; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribOffsetEXT = public method(vaobj: GLuint; buffer: GLuint; index_: GLuint; size: GLint; type_: GLenum; normalized: GLboolean; stride: GLsizei; offset: GLintptr);

  // GL_VERSION_3_1
  { OpenGL 3.1 also reuses entry points from these extensions: }
  { ARB_copy_buffer }
  { ARB_uniform_buffer_object }
 [CallingConvention(PlatformConvention)]
  TglDrawArraysInstanced = public method(mode: GLenum; first: GLint; count: GLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstanced = public method(mode: GLenum; count: GLsizei; type_: GLenum; const indices: PGLvoid; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexBuffer = public method(target: GLenum; internalformat: GLenum; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglPrimitiveRestartIndex = public method(index_: GLuint);

  // GL_VERSION_3_2
  { OpenGL 3.2 also reuses entry points from these extensions: }
  { ARB_draw_elements_base_vertex }
  { ARB_provoking_vertex }
  { ARB_sync }
  { ARB_texture_multisample }
 [CallingConvention(PlatformConvention)]
  TglGetInteger64i_v = public method(target: GLenum; index_: GLuint; data: PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetBufferParameteri64v = public method(target: GLenum; pname: GLenum; params_: PGLint64);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint);
//  TglFramebufferTextureFace = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; face: GLenum);

  // GL_VERSION_3_3
  { OpenGL 3.3 also reuses entry points from these extensions: }
  { ARB_blend_func_extended }
  { ARB_sampler_objects }
  { ARB_explicit_attrib_location, but it has none }
  { ARB_occlusion_query2 (no entry points) }
  { ARB_shader_bit_encoding (no entry points) }
  { ARB_texture_rgb10_a2ui (no entry points) }
  { ARB_texture_swizzle (no entry points) }
  { ARB_timer_query }
  { ARB_vertex_type_2_10_10_10_rev }
 [CallingConvention(PlatformConvention)]
  TglVertexAttribDivisor = public method(index_: GLuint; divisor: GLuint);

  // GL_VERSION_4_0
  { OpenGL 4.0 also reuses entry points from these extensions: }
  { ARB_texture_query_lod (no entry points) }
  { ARB_draw_indirect }
  { ARB_gpu_shader5 (no entry points) }
  { ARB_gpu_shader_fp64 }
  { ARB_shader_subroutine }
  { ARB_tessellation_shader }
  { ARB_texture_buffer_object_rgb32 (no entry points) }
  { ARB_texture_cube_map_array (no entry points) }
  { ARB_texture_gather (no entry points) }
  { ARB_transform_feedback2 }
  { ARB_transform_feedback3 }
 [CallingConvention(PlatformConvention)]
  TglMinSampleShading = public method(value: GLclampf);
 [CallingConvention(PlatformConvention)]
  TglBlendEquationi = public method(buf: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendEquationSeparatei = public method(buf: GLuint; modeRGB: GLenum; modeAlpha: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendFunci = public method(buf: GLuint; src: GLenum; dst: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendFuncSeparatei = public method(buf: GLuint; srcRGB: GLenum; dstRGB: GLenum; srcAlpha: GLenum; dstAlpha: GLenum);

  // GL_VERSION_4_1
  { OpenGL 4.1 also reuses entry points from these extensions: }
  { ARB_ES2_compatibility }
  { ARB_get_program_binary }
  { ARB_separate_shader_objects }
  { ARB_shader_precision (no entry points) }
  { ARB_vertex_attrib_64bit }
  { ARB_viewport_array }

  // GL_3DFX_tbuffer
 [CallingConvention(PlatformConvention)]
  TglTbufferMask3DFX = public method(mask: GLuint);

  // GL_APPLE_element_array
 [CallingConvention(PlatformConvention)]
  TglElementPointerAPPLE = public method(_type: GLenum; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglDrawElementArrayAPPLE = public method(mode: GLenum; first: GLint; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElementArrayAPPLE = public method(mode: GLenum; start: GLuint; _end: GLuint; first: GLint; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawElementArrayAPPLE = public method(mode: GLenum; const first: PGLint; const count: PGLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawRangeElementArrayAPPLE = public method(mode: GLenum; start: GLuint; _end: GLuint; const first: PGLint; const count: PGLsizei; primcount: GLsizei);

  // GL_APPLE_fence
 [CallingConvention(PlatformConvention)]
  TglGenFencesAPPLE = public method(n: GLsizei; fences: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteFencesAPPLE = public method(n: GLsizei; const fences: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglSetFenceAPPLE = public method(fence: GLuint);
 [CallingConvention(PlatformConvention)]
  TglIsFenceAPPLE = public method(fence: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglTestFenceAPPLE = public method(fence: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglFinishFenceAPPLE = public method(fence: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTestObjectAPPLE = public method(_object: GLenum; name: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglFinishObjectAPPLE = public method(_object: GLenum; name: GLint);

  // GL_APPLE_vertex_array_object
 [CallingConvention(PlatformConvention)]
  TglBindVertexArrayAPPLE = public method(_array: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteVertexArraysAPPLE = public method(n: GLsizei; const arrays: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenVertexArraysAPPLE = public method(n: GLsizei; const arrays: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsVertexArrayAPPLE = public method(_array: GLuint): GLboolean;

  // GL_APPLE_vertex_array_range
 [CallingConvention(PlatformConvention)]
  TglVertexArrayRangeAPPLE = public method(length: GLsizei; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglFlushVertexArrayRangeAPPLE = public method(length: GLsizei; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayParameteriAPPLE = public method(pname: GLenum; param_: GLint);

  // GL_APPLE_texture_range
 [CallingConvention(PlatformConvention)]
  TglTextureRangeAPPLE = public method(target: GLenum; length: GLsizei; const Pointer_: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterPointervAPPLE = public method(target: GLenum; pname: GLenum; params_: PPGLvoid);

  // GL_APPLE_vertex_program_evaluators
 [CallingConvention(PlatformConvention)]
  TglEnableVertexAttribAPPLE = public method(index_: GLuint; pname: GLenum);
 [CallingConvention(PlatformConvention)]
  TglDisableVertexAttribAPPLE = public method(index_: GLuint; pname: GLenum);
 [CallingConvention(PlatformConvention)]
  TglIsVertexAttribEnabledAPPLE = public method(index_: GLuint; pname: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglMapVertexAttrib1dAPPLE = public method(index_: GLuint; size: GLuint; u1: GLdouble; u2: GLdouble; stride: GLint; order: GLint; const points: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMapVertexAttrib1fAPPLE = public method(index_: GLuint; size: GLuint; u1: GLfloat; u2: GLfloat; stride: GLint; order: GLint; const points: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMapVertexAttrib2dAPPLE = public method(index_: GLuint; size: GLuint; u1: GLdouble; u2: GLdouble; ustride: GLint; uorder: GLint; v1: GLdouble; v2: GLdouble; vstride: GLint; vorder: GLint; const points: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMapVertexAttrib2fAPPLE = public method(index_: GLuint; size: GLuint; u1: GLfloat; u2: GLfloat; ustride: GLint; order: GLint; v1: GLfloat; v2: GLfloat; vstride: GLint; vorder: GLint; const points: GLfloat);

  // GL_APPLE_object_purgeable
 [CallingConvention(PlatformConvention)]
  TglObjectPurgeableAPPLE = public method(objectType: GLenum; name: GLuint; option: GLenum): GLenum;
 [CallingConvention(PlatformConvention)]
  TglObjectUnpurgeableAPPLE = public method(objectType: GLenum; name: GLuint; option: GLenum): GLenum;
 [CallingConvention(PlatformConvention)]
  TglGetObjectParameterivAPPLE = public method(objectType: GLenum; name: GLuint; pname: GLenum; params_: PGLint);

  // GL_ARB_matrix_palette
 [CallingConvention(PlatformConvention)]
  TglCurrentPaletteMatrixARB = public method(index_: GLint);
 [CallingConvention(PlatformConvention)]
  TglMatrixIndexubvARB = public method(size: GLint; const indices: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglMatrixIndexusvARB = public method(size: GLint; const indices: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglMatrixIndexuivARB = public method(size: GLint; const indices: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMatrixIndexPointerARB = public method(size: GLint; _type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_ARB_multisample
 [CallingConvention(PlatformConvention)]
  TglSampleCoverageARB = public method(value: GLclampf; invert: GLboolean);

  // GL_ARB_multitexture
 [CallingConvention(PlatformConvention)]
  TglActiveTextureARB = public method(texture: GLenum);
 [CallingConvention(PlatformConvention)]
  TglClientActiveTextureARB = public method(texture: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1dARB = public method(target: GLenum; s: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1dvARB = public method(target: GLenum; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1fARB = public method(target: GLenum; s: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1fvARB = public method(target: GLenum; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1iARB = public method(target: GLenum; s: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1ivARB = public method(target: GLenum; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1sARB = public method(target: GLenum; s: GLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1svARB = public method(target: GLenum; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2dARB = public method(target: GLenum; s: GLdouble; t: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2dvARB = public method(target: GLenum; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2fARB = public method(target: GLenum; s: GLfloat; t: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2fvARB = public method(target: GLenum; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2iARB = public method(target: GLenum; s: GLint; t: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2ivARB = public method(target: GLenum; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2sARB = public method(target: GLenum; s: GLshort; t: GLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2svARB = public method(target: GLenum; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3dARB = public method(target: GLenum; s: GLdouble; t: GLdouble; r: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3dvARB = public method(target: GLenum; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3fARB = public method(target: GLenum; s: GLfloat; t: GLfloat; r: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3fvARB = public method(target: GLenum; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3iARB = public method(target: GLenum; s: GLint; t: GLint; r: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3ivARB = public method(target: GLenum; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3sARB = public method(target: GLenum; s: GLshort; t: GLshort; r: GLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3svARB = public method(target: GLenum; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4dARB = public method(target: GLenum; s: GLdouble; t: GLdouble; r: GLdouble; q: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4dvARB = public method(target: GLenum; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4fARB = public method(target: GLenum; s: GLfloat; t: GLfloat; r: GLfloat; q: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4fvARB = public method(target: GLenum; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4iARB = public method(target: GLenum; s: GLint; t: GLint; r: GLint; q: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4ivARB = public method(target: GLenum; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4sARB = public method(target: GLenum; s: GLshort; t: GLshort; r: GLshort; q: GLshort);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4svARB = public method(target: GLenum; const v: PGLshort);

  // GL_ARB_point_parameters
 [CallingConvention(PlatformConvention)]
  TglPointParameterfARB = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointParameterfvARB = public method(pname: GLenum; const params_: PGLfloat);

  // GL_ARB_texture_compression
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage3DARB = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage2DARB = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexImage1DARB = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage3DARB = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage2DARB = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTexSubImage1DARB = public method(target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; imageSize: GLsizei; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedTexImageARB = public method(target: GLenum; level: GLint; img: PGLvoid);

  // GL_ARB_transpose_matrix
 [CallingConvention(PlatformConvention)]
  TglLoadTransposeMatrixfARB = public method(const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglLoadTransposeMatrixdARB = public method(const m: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultTransposeMatrixfARB = public method(const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultTransposeMatrixdARB = public method(const m: PGLdouble);

  // GL_ARB_vertex_blend
 [CallingConvention(PlatformConvention)]
  TglWeightbvARB = public method(size: GLint; const weights: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglWeightsvARB = public method(size: GLint; const weights: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglWeightivARB = public method(size: GLint; const weights: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWeightfvARB = public method(size: GLint; const weights: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWeightdvARB = public method(size: GLint; const weights: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWeightubvARB = public method(size: GLint; const weights: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglWeightusvARB = public method(size: GLint; const weights: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglWeightuivARB = public method(size: GLint; const weights: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglWeightPointerARB = public method(size: GLint; _type: GLenum; stride: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVertexBlendARB = public method(count: GLint);

  // GL_ARB_vertex_buffer_object
 [CallingConvention(PlatformConvention)]
  TglBindBufferARB = public method(target: GLenum; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteBuffersARB = public method(n: GLsizei; const buffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenBuffersARB = public method(n: GLsizei; buffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsBufferARB = public method(buffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBufferDataARB = public method(target: GLenum; size: GLsizeiptrARB; const data: PGLvoid; usage: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBufferSubDataARB = public method(target: GLenum; offset: GLintptrARB; size: GLsizeiptrARB; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetBufferSubDataARB = public method(target: GLenum; offset: GLintptrARB; size: GLsizeiptrARB; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMapBufferARB = public method(target: GLenum; access: GLenum): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglUnmapBufferARB = public method(target: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetBufferParameterivARB = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetBufferPointervARB = public method(target: GLenum; pname: GLenum; params_: PGLvoid);

  // GL_ARB_vertex_program
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1dARB = public method(index_: GLuint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1dvARB = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1fARB = public method(index_: GLuint; x: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1fvARB = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1sARB = public method(index_: GLuint; x: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1svARB = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2dARB = public method(index_: GLuint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2dvARB = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2fARB = public method(index_: GLuint; x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2fvARB = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2sARB = public method(index_: GLuint; x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2svARB = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3dARB = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3dvARB = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3fARB = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3fvARB = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3sARB = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3svARB = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NbvARB = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NivARB = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NsvARB = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NubARB = public method(index_: GLuint; x: GLubyte; y: GLubyte; z: GLubyte; w: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NubvARB = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NuivARB = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4NusvARB = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4bvARB = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4dARB = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4dvARB = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4fARB = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4fvARB = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4ivARB = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4sARB = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort; w: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4svARB = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4ubvARB = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4uivARB = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4usvARB = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribPointerARB = public method(index_: GLuint; size: GLint; _type: GLenum; normalized: GLboolean; stride: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglEnableVertexAttribArrayARB = public method(index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDisableVertexAttribArrayARB = public method(index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramStringARB = public method(target: GLenum; format: GLenum; len: GLsizei; const _string: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglBindProgramARB = public method(target: GLenum; _program: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteProgramsARB = public method(n: GLsizei; const programs: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenProgramsARB = public method(n: GLsizei; programs: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameter4dARB = public method(target: GLenum; index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameter4dvARB = public method(target: GLenum; index_: GLuint; const params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameter4fARB = public method(target: GLenum; index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameter4fvARB = public method(target: GLenum; index_: GLuint; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameter4dARB = public method(target: GLenum; index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameter4dvARB = public method(target: GLenum; index_: GLuint; const params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameter4fARB = public method(target: GLenum; index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameter4fvARB = public method(target: GLenum; index_: GLuint; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetProgramEnvParameterdvARB = public method(target: GLenum; index_: GLuint; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetProgramEnvParameterfvARB = public method(target: GLenum; index_: GLuint; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetProgramLocalParameterdvARB = public method(target: GLenum; index_: GLuint; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetProgramLocalParameterfvARB = public method(target: GLenum; index_: GLuint; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetProgramivARB = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramStringARB = public method(target: GLenum; pname: GLenum; _string: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribdvARB = public method(index_: GLuint; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribfvARB = public method(index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribivARB = public method(index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribPointervARB = public method(index_: GLuint; pname: GLenum; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglIsProgramARB = public method(_program: GLuint): GLboolean;

  // GL_ARB_window_pos
 [CallingConvention(PlatformConvention)]
  TglWindowPos2dARB = public method(x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2dvARB = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2fARB = public method(x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2fvARB = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2iARB = public method(x: GLint; y: GLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2ivARB = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2sARB = public method(x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2svARB = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3dARB = public method(x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3dvARB = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3fARB = public method(x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3fvARB = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3iARB = public method(x: GLint; y: GLint; z: GLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3ivARB = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3sARB = public method(x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3svARB = public method(const v: PGLshort);

  // GL_ARB_draw_buffers
 [CallingConvention(PlatformConvention)]
  TglDrawBuffersARB = public method(n: GLsizei; bufs: PGLenum);

  // GL_ARB_color_buffer_float
 [CallingConvention(PlatformConvention)]
  TglClampColorARB = public method(target: GLenum; clamp: GLenum);

  // GL_ARB_vertex_shader
 [CallingConvention(PlatformConvention)]
  TglGetActiveAttribARB = public method(programobj: GLHandleARB; index_: GLuint; maxLength: GLsizei; var length: GLsizei; var size: GLint; var _type: GLenum; name: PGLcharARB);
 [CallingConvention(PlatformConvention)]
  TglGetAttribLocationARB = public method(programObj: GLHandleARB; const char: PGLcharARB): GLint;
 [CallingConvention(PlatformConvention)]
  TglBindAttribLocationARB = public method(programObj: GLHandleARB; index_: GLuint; const name: PGLcharARB);

  // GL_ARB_shader_objects
 [CallingConvention(PlatformConvention)]
  TglDeleteObjectARB = public method(Obj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglGetHandleARB = public method(pname: GLenum): GLHandleARB;
 [CallingConvention(PlatformConvention)]
  TglDetachObjectARB = public method(container, attached: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglCreateShaderObjectARB = public method(shaderType: GLenum): GLHandleARB;
 [CallingConvention(PlatformConvention)]
  TglShaderSourceARB = public method(shaderObj: GLHandleARB; count: GLsizei; const _string: PPGLcharARB; lengths: PGLint);
 [CallingConvention(PlatformConvention)]
  TglCompileShaderARB = public method(shaderObj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglCreateProgramObjectARB = public method: GLHandleARB;
 [CallingConvention(PlatformConvention)]
  TglAttachObjectARB = public method(programObj, shaderObj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglLinkProgramARB = public method(programObj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglUseProgramObjectARB = public method(programObj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglValidateProgramARB = public method(programObj: GLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglUniform1fARB = public method(location: GLint; v0: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform2fARB = public method(location: GLint; v0, v1: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform3fARB = public method(location: GLint; v0, v1, v2: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform4fARB = public method(location: GLint; v0, v1, v2, v3: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform1iARB = public method(location: GLint; v0: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform2iARB = public method(location: GLint; v0, v1: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform3iARB = public method(location: GLint; v0, v1, v2: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform4iARB = public method(location: GLint; v0, v1, v2, v3: GLint);
 [CallingConvention(PlatformConvention)]
  TglUniform1fvARB = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform2fvARB = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform3fvARB = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform4fvARB = public method(location: GLint; count: GLsizei; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniform1ivARB = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform2ivARB = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform3ivARB = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniform4ivARB = public method(location: GLint; count: GLsizei; value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2fvARB = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3fvARB = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4fvARB = public method(location: GLint; count: GLsizei; transpose: GLboolean; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetObjectParameterfvARB = public method(Obj: GLHandleARB; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetObjectParameterivARB = public method(Obj: GLHandleARB; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetInfoLogARB = public method(shaderObj: GLHandleARB; maxLength: GLsizei; var length: GLint; infoLog: PGLcharARB);
 [CallingConvention(PlatformConvention)]
  TglGetAttachedObjectsARB = public method(programobj: GLHandleARB; maxCount: GLsizei; var count: GLsizei; objects: PGLHandleARB);
 [CallingConvention(PlatformConvention)]
  TglGetUniformLocationARB = public method(programObj: GLHandleARB; const char: PGLcharARB): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniformARB = public method(programobj: GLHandleARB; index_: GLuint; maxLength: GLsizei; var length: GLsizei; var size: GLint; var _type: GLenum; name: PGLcharARB);
 [CallingConvention(PlatformConvention)]
  TglGetUniformfvARB = public method(programObj: GLHandleARB; location: GLint; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetUniformivARB = public method(programObj: GLHandleARB; location: GLint; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetShaderSourceARB = public method(shader: GLHandleARB; maxLength: GLsizei; var length: GLsizei; source: PGLcharARB);

  // GL_ARB_Occlusion_Query
 [CallingConvention(PlatformConvention)]
  TglGenQueriesARB = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteQueriesARB = public method(n: GLsizei; const ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsQueryARB = public method(id: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TglBeginQueryARB = public method(target: GLenum; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndQueryARB = public method(target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetQueryivARB = public method(target, pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectivARB = public method(id: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectuivARB = public method(id: GLuint; pname: GLenum; params_: PGLuint);

  // GL_ARB_draw_instanced
 [CallingConvention(PlatformConvention)]
  TglDrawArraysInstancedARB = public method(mode: GLenum; first: GLint; count: GLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstancedARB = public method(mode: GLenum; count: GLsizei; type_: GLenum; const indices: PGLvoid; primcount: GLsizei);

  // GL_ARB_framebuffer_object
 [CallingConvention(PlatformConvention)]
  TglIsRenderbuffer = public method(renderbuffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBindRenderbuffer = public method(target: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteRenderbuffers = public method(n: GLsizei; const renderbuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenRenderbuffers = public method(n: GLsizei; renderbuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglRenderbufferStorage = public method(target: GLenum; internalformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetRenderbufferParameteriv = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglIsFramebuffer = public method(framebuffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBindFramebuffer = public method(target: GLenum; framebuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteFramebuffers = public method(n: GLsizei; const framebuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenFramebuffers = public method(n: GLsizei; framebuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglCheckFramebufferStatus = public method(target: GLenum): GLenum;
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture1D = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture2D = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture3D = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint; zoffset: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferRenderbuffer = public method(target: GLenum; attachment: GLenum; renderbuffertarget: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetFramebufferAttachmentParameteriv = public method(target: GLenum; attachment: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGenerateMipmap = public method(target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlitFramebuffer = public method(srcX0: GLint; srcY0: GLint; srcX1: GLint; srcY1: GLint; dstX0: GLint; dstY0: GLint; dstX1: GLint; dstY1: GLint; mask: GLbitfield; filter: GLenum);
 [CallingConvention(PlatformConvention)]
  TglRenderbufferStorageMultisample = public method(target: GLenum; samples: GLsizei; internalformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureLayer = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; layer: GLint);

  // GL_ARB_geometry_shader4
 [CallingConvention(PlatformConvention)]
  TglProgramParameteriARB = public method(program_: GLuint; pname: GLenum; value: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureARB = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureLayerARB = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; layer: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureFaceARB = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; face: GLenum);

  // GL_ARB_instanced_arrays
 [CallingConvention(PlatformConvention)]
  TglVertexAttribDivisorARB = public method(index_: GLuint; divisor: GLuint);

  // GL_ARB_map_buffer_range
 [CallingConvention(PlatformConvention)]
  TglMapBufferRange = public method(target: GLenum; offset: GLintptr; length: GLsizeiptr; access: GLbitfield): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglFlushMappedBufferRange = public method(target: GLenum; offset: GLintptr; length: GLsizeiptr);

  // GL_ARB_parallel_shader_compile
 [CallingConvention(PlatformConvention)]
  TglMaxShaderCompilerThreadsARB = public method(count : GLuint);

  // GL_ARB_texture_buffer_object
 [CallingConvention(PlatformConvention)]
  TglTexBufferARB = public method(target: GLenum; internalformat: GLenum; buffer: GLuint);

  // GL_ARB_vertex_array_object
 [CallingConvention(PlatformConvention)]
  TglBindVertexArray = public method(array_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteVertexArrays = public method(n: GLsizei; const arrays: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenVertexArrays = public method(n: GLsizei; arrays: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsVertexArray = public method(array_: GLuint): GLboolean;

  // GL_ARB_uniform_buffer_object
 [CallingConvention(PlatformConvention)]
  TglGetUniformIndices = public method(program_: GLuint; uniformCount: GLsizei; const uniformNames: PPGLchar; uniformIndices: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniformsiv = public method(program_: GLuint; uniformCount: GLsizei; const uniformIndices: PGLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniformName = public method(program_: GLuint; uniformIndex: GLuint; bufSize: GLsizei; length: PGLsizei; uniformName: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetUniformBlockIndex = public method(program_: GLuint; const uniformBlockName: PGLchar): GLuint;
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniformBlockiv = public method(program_: GLuint; uniformBlockIndex: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetActiveUniformBlockName = public method(program_: GLuint; uniformBlockIndex: GLuint; bufSize: GLsizei; length: PGLsizei; uniformBlockName: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglUniformBlockBinding = public method(program_: GLuint; uniformBlockIndex: GLuint; uniformBlockBinding: GLuint);

  // GL_ARB_copy_buffer
 [CallingConvention(PlatformConvention)]
  TglCopyBufferSubData = public method(readTarget: GLenum; writeTarget: GLenum; readOffset: GLintptr; writeOffset: GLintptr; size: GLsizeiptr);

  // GL_ARB_draw_elements_base_vertex
 [CallingConvention(PlatformConvention)]
  TglDrawElementsBaseVertex = public method(mode: GLenum; count: GLsizei; type_: GLenum; const indices: PGLvoid; basevertex: GLint);
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElementsBaseVertex = public method(mode: GLenum; start: GLuint; end_: GLuint; count: GLsizei; type_: GLenum; const indices: PGLvoid; basevertex: GLint);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstancedBaseVertex = public method(mode: GLenum; count: GLsizei; type_: GLenum; const indices: PGLvoid; primcount: GLsizei; basevertex: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawElementsBaseVertex = public method(mode: GLenum; const count: PGLsizei; type_: GLenum; const indices: PPGLvoid; primcount: GLsizei; const basevertex: PGLint);

  // GL_ARB_provoking_vertex
 [CallingConvention(PlatformConvention)]
  TglProvokingVertex = public method(mode: GLenum);

  // GL_ARB_sync
 [CallingConvention(PlatformConvention)]
  TglFenceSync = public method(condition: GLenum; flags: GLbitfield): GLsync;
 [CallingConvention(PlatformConvention)]
  TglIsSync = public method(sync: GLsync): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglDeleteSync = public method(sync: GLsync);
 [CallingConvention(PlatformConvention)]
  TglClientWaitSync = public method(sync: GLsync; flags: GLbitfield; timeout: GLuint64): GLenum;
 [CallingConvention(PlatformConvention)]
  TglWaitSync = public method(sync: GLsync; flags: GLbitfield; timeout: GLuint64);
 [CallingConvention(PlatformConvention)]
  TglGetInteger64v = public method(pname: GLenum; params_: PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetSynciv = public method(sync: GLsync; pname: GLenum; butSize: GLsizei; length: PGLsizei; values: PGLint);

  // GL_ARB_texture_multisample
 [CallingConvention(PlatformConvention)]
  TglTexImage2DMultisample = public method(target: GLenum; samples: GLsizei; internalformat: GLint; width: GLsizei; height: GLsizei; fixedsamplelocations: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTexImage3DMultisample = public method(target: GLenum; samples: GLsizei; internalformat: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; fixedsamplelocations: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetMultisamplefv = public method(pname: GLenum; index_: GLuint; val: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglSampleMaski = public method(index_: GLuint; mask: GLbitfield);

  // GL_ARB_draw_buffers_blend
 [CallingConvention(PlatformConvention)]
  TglBlendEquationiARB = public method(buf: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendEquationSeparateiARB = public method(buf: GLuint; modeRGB: GLenum; modeAlpha: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendFunciARB = public method(buf: GLuint; src: GLenum; dst: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendFuncSeparateiARB = public method(buf: GLuint; srcRGB: GLenum; dstRGB: GLenum; srcAlpha: GLenum; dstAlpha: GLenum);

  // GL_ARB_sample_shading
 [CallingConvention(PlatformConvention)]
  TglMinSampleShadingARB = public method(value: GLclampf);

  // GL_ARB_sample_locations
 [CallingConvention(PlatformConvention)]
  TglFramebufferSampleLocationsfvARB = public method(target : GLenum; start : GLuint; count : GLsizei; const v : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferSampleLocationsfvARB = public method(framebuffer : GLuint; start : GLuint; count : GLsizei; const v : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglEvaluateDepthValuesARB = public method  ();

  // GL_ARB_shading_language_include
 [CallingConvention(PlatformConvention)]
  TglNamedStringARB = public method(type_: GLenum; namelen: GLint; const name: PGLchar; stringlen: GLint; const string_: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglDeleteNamedStringARB = public method(namelen: GLint; const name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglCompileShaderIncludeARB = public method(shader: GLuint; count: GLsizei; const path: PPGLchar; const length: PGLint);
 [CallingConvention(PlatformConvention)]
  TglIsNamedStringARB = public method(namelen: GLint; const name: PGLchar): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetNamedStringARB = public method(namelen: GLint; const name: PGLchar; bufSize: GLsizei; stringlen: GLint; string_: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetNamedStringivARB = public method(namelen: GLint; const name: PGLchar; pname: GLenum; params_: PGLint);

  // GL_ARB_blend_func_extended
 [CallingConvention(PlatformConvention)]
  TglBindFragDataLocationIndexed = public method(program_: GLuint; colorNumber: GLuint; index_: GLuint; const name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetFragDataIndex = public method(program_: GLuint; const name: PGLchar): GLint;

  // GL_ARB_sampler_objects
 [CallingConvention(PlatformConvention)]
  TglGenSamplers = public method(count: GLsizei; samplers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteSamplers = public method(count: GLsizei; const samplers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsSampler = public method(sampler: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBindSampler = public method(unit_: GLuint; sampler: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameteri = public method(sampler: GLuint; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameteriv = public method(sampler: GLuint; pname: GLenum; const param_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameterf = public method(sampler: GLuint; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameterfv = public method(sampler: GLuint; pname: GLenum; const param_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameterIiv = public method(sampler: GLuint; pname: GLenum; const param_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglSamplerParameterIuiv = public method(sampler: GLuint; pname: GLenum; const param_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetSamplerParameteriv = public method(sampler: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetSamplerParameterIiv = public method(sampler: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetSamplerParameterfv = public method(sampler: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetSamplerParameterIuiv = public method(sampler: GLuint; pname: GLenum; params_: PGLuint);

  // GL_ARB_timer_query
 [CallingConvention(PlatformConvention)]
  TglQueryCounter = public method(id: GLuint; target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjecti64v = public method(id: GLuint; pname: GLenum; params_: PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectui64v = public method(id: GLuint; pname: GLenum; params_: PGLuint64);

  // GL_ARB_vertex_type_2_10_10_10_rev
 [CallingConvention(PlatformConvention)]
  TglVertexP2ui = public method(type_: GLenum; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexP2uiv = public method(type_: GLenum; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexP3ui = public method(type_: GLenum; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexP3uiv = public method(type_: GLenum; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexP4ui = public method(type_: GLenum; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexP4uiv = public method(type_: GLenum; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP1ui = public method(type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP1uiv = public method(type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP2ui = public method(type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP2uiv = public method(type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP3ui = public method(type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP3uiv = public method(type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP4ui = public method(type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordP4uiv = public method(type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP1ui = public method(texture: GLenum; type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP1uiv = public method(texture: GLenum; type_: GLenum; const coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP2ui = public method(texture: GLenum; type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP2uiv = public method(texture: GLenum; type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP3ui = public method(texture: GLenum; type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP3uiv = public method(texture: GLenum; type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP4ui = public method(texture: GLenum; type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordP4uiv = public method(texture: GLenum; type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNormalP3ui = public method(type_: GLenum; coords: GLuint);
 [CallingConvention(PlatformConvention)]
  TglNormalP3uiv = public method(type_: GLenum; const coords: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglColorP3ui = public method(type_: GLenum; color: GLuint);
 [CallingConvention(PlatformConvention)]
  TglColorP3uiv = public method(type_: GLenum; const color: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglColorP4ui = public method(type_: GLenum; color: GLuint);
 [CallingConvention(PlatformConvention)]
  TglColorP4uiv = public method(type_: GLenum; const color: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColorP3ui = public method(type_: GLenum; color: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColorP3uiv = public method(type_: GLenum; const color: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP1ui = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP1uiv = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP2ui = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP2uiv = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP3ui = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP3uiv = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP4ui = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; value: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribP4uiv = public method(index_: GLuint; type_: GLenum; normalized: GLboolean; const value: PGLuint);

  // GL_ARB_draw_indirect
 [CallingConvention(PlatformConvention)]
  TglDrawArraysIndirect = public method(mode: GLenum; const indirect: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsIndirect = public method(mode: GLenum; type_: GLenum; const indirect: PGLvoid);

  // GL_ARB_gpu_shader_fp64
 [CallingConvention(PlatformConvention)]
  TglUniform1d = public method(location: GLint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform2d = public method(location: GLint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform3d = public method(location: GLint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform4d = public method(location: GLint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform1dv = public method(location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform2dv = public method(location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform3dv = public method(location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniform4dv = public method(location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2x3dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix2x4dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3x2dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix3x4dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4x2dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglUniformMatrix4x3dv = public method(location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetUniformdv = public method(program_: GLuint; location: GLint; params_: PGLdouble);

  // GL_ARB_gpu_shader_int64
 [CallingConvention(PlatformConvention)]
  TglUniform1i64ARB = public method(location : GLint; x : GLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform2i64ARB = public method(location : GLint; x : GLint64; y : GLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform3i64ARB = public method(location : GLint; x : GLint64; y : GLint64; z : GLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform4i64ARB = public method(location : GLint; x : GLint64; y : GLint64; z : GLint64; w : GLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform1i64vARB = public method(location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform2i64vARB = public method(location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform3i64vARB = public method(location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform4i64vARB = public method(location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglUniform1ui64ARB = public method(location : GLint; x : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniform2ui64ARB = public method(location : GLint; x : GLuint64; y : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniform3ui64ARB = public method(location : GLint; x : GLuint64; y : GLuint64; z : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniform4ui64ARB = public method(location : GLint; x : GLuint64; y : GLuint64; z : GLuint64; w : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniform1ui64vARB = public method(location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglUniform2ui64vARB = public method(location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglUniform3ui64vARB = public method(location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglUniform4ui64vARB = public method(location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglGetUniformi64vARB = public method(program_ : GLuint; location : GLint; params_ : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetUniformui64vARB = public method(program_ : GLuint; location : GLint; params_ : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformi64vARB = public method(program_ : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformui64vARB = public method(program_ : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1i64ARB = public method(program_ : GLuint; location : GLint; x : GLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2i64ARB = public method(program_ : GLuint; location : GLint; x : GLint64; y : GLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3i64ARB = public method(program_ : GLuint; location : GLint; x : GLint64; y : GLint64; z : GLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4i64ARB = public method(program_ : GLuint; location : GLint; x : GLint64; y : GLint64; z : GLint64; w : GLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1i64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2i64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3i64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4i64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ui64ARB = public method(program_ : GLuint; location : GLint; x : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ui64ARB = public method(program_ : GLuint; location : GLint; x : GLuint64; y : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ui64ARB = public method(program_ : GLuint; location : GLint; x : GLuint64; y : GLuint64; z : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ui64ARB = public method(program_ : GLuint; location : GLint; x : GLuint64; y : GLuint64; z : GLuint64; w : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ui64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ui64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ui64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLuint64 );
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ui64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const value : PGLuint64 );

  // GL_ARB_shader_subroutine
 [CallingConvention(PlatformConvention)]
  TglGetSubroutineUniformLocation = public method(program_: GLuint; shadertype: GLenum; const name: PGLchar): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetSubroutineIndex = public method(program_: GLuint; shadertype: GLenum; const name: PGLchar): GLuint;
 [CallingConvention(PlatformConvention)]
  TglGetActiveSubroutineUniformiv = public method(program_: GLuint; shadertype: GLenum; index_: GLuint; pname: GLenum; values: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetActiveSubroutineUniformName = public method(program_: GLuint; shadertype: GLenum; index_: GLuint; bufsize: GLsizei; length: PGLsizei; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetActiveSubroutineName = public method(program_: GLuint; shadertype: GLenum; index_: GLuint; bufsize: GLsizei; length: PGLsizei; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglUniformSubroutinesuiv = public method(shadertype: GLenum; count: GLsizei; const indices: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetUniformSubroutineuiv = public method(shadertype: GLenum; location: GLint; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramStageiv = public method(program_: GLuint; shadertype: GLenum; pname: GLenum; values: PGLint);

  // GL_ARB_tessellation_shader
 [CallingConvention(PlatformConvention)]
  TglPatchParameteri = public method(pname: GLenum; value: GLint);
 [CallingConvention(PlatformConvention)]
  TglPatchParameterfv = public method(pname: GLenum; const values: PGLfloat);

  // GL_ARB_transform_feedback2
 [CallingConvention(PlatformConvention)]
  TglBindTransformFeedback = public method(target: GLenum; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteTransformFeedbacks = public method(n: GLsizei; const ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenTransformFeedbacks = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsTransformFeedback = public method(id: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglPauseTransformFeedback = public method  ();
 [CallingConvention(PlatformConvention)]
  TglResumeTransformFeedback = public method  ();
 [CallingConvention(PlatformConvention)]
  TglDrawTransformFeedback = public method(mode: GLenum; id: GLuint);

  // GL_ARB_transform_feedback3
 [CallingConvention(PlatformConvention)]
  TglDrawTransformFeedbackStream = public method(mode: GLenum; id: GLuint; stream: GLuint);
 [CallingConvention(PlatformConvention)]
  TglBeginQueryIndexed = public method(target: GLenum; index_: GLuint; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndQueryIndexed = public method(target: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetQueryIndexediv = public method(target: GLenum; index_: GLuint; pname: GLenum; params_: PGLint);

  // GL_ARB_ES2_compatibility
 [CallingConvention(PlatformConvention)]
  TglReleaseShaderCompiler = public method  ();
 [CallingConvention(PlatformConvention)]
  TglShaderBinary = public method(count: GLsizei; const shaders: PGLuint; binaryformat: GLenum; const binary: PGLvoid; length: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetShaderPrecisionFormat = public method(shadertype: GLenum; precisiontype: GLenum; range: PGLint; precision: PGLint);
 [CallingConvention(PlatformConvention)]
  TglDepthRangef = public method(n: GLclampf; f: GLclampf);
 [CallingConvention(PlatformConvention)]
  TglClearDepthf = public method(d: GLclampf);

  // GL_ARB_get_program_binary
 [CallingConvention(PlatformConvention)]
  TglGetProgramBinary = public method(program_: GLuint; bufSize: GLsizei; length: PGLsizei; binaryFormat: PGLenum; binary: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglProgramBinary = public method(program_: GLuint; binaryFormat: GLenum; const binary: PGLvoid; length: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglProgramParameteri = public method(program_: GLuint; pname: GLenum; value: GLint);

  // GL_ARB_separate_shader_objects
 [CallingConvention(PlatformConvention)]
  TglUseProgramStages = public method(pipeline: GLuint; stages: GLbitfield; program_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglActiveShaderProgram = public method(pipeline: GLuint; program_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglCreateShaderProgramv = public method(type_: GLenum; count: GLsizei; const strings: PPGLchar): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindProgramPipeline = public method(pipeline: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteProgramPipelines = public method(n: GLsizei; const pipelines: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenProgramPipelines = public method(n: GLsizei; pipelines: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsProgramPipeline = public method(pipeline: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetProgramPipelineiv = public method(pipeline: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1i = public method(program_: GLuint; location: GLint; v0: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1iv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1f = public method(program_: GLuint; location: GLint; v0: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1fv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1d = public method(program_: GLuint; location: GLint; v0: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1dv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ui = public method(program_: GLuint; location: GLint; v0: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1uiv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2i = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2iv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2f = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2fv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2d = public method(program_: GLuint; location: GLint; v0: GLdouble; v1: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2dv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ui = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2uiv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3i = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint; v2: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3iv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3f = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3fv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3d = public method(program_: GLuint; location: GLint; v0: GLdouble; v1: GLdouble; v2: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3dv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ui = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint; v2: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3uiv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4i = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint; v2: GLint; v3: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4iv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4f = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat; v3: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4fv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4d = public method(program_: GLuint; location: GLint; v0: GLdouble; v1: GLdouble; v2: GLdouble; v3: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4dv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ui = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint; v2: GLuint; v3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4uiv = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x3fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x2fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x4fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x2fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x4fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x3fv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x3dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x2dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x4dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x2dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x4dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x3dv = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglValidateProgramPipeline = public method(pipeline: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramPipelineInfoLog = public method(pipeline: GLuint; bufSize: GLsizei; length: PGLsizei; infoLog: PGLchar);

  // GL_ARB_vertex_attrib_64bit
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1d = public method(index_: GLuint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2d = public method(index_: GLuint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3d = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4d = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4dv = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribLPointer = public method(index_: GLuint; size: GLint; type_: GLenum; stride: GLsizei; const pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribLdv = public method(index_: GLuint; pname: GLenum; params_: PGLdouble);

  // GL_ARB_viewport_array
 [CallingConvention(PlatformConvention)]
  TglViewportArrayv = public method(first: GLuint; count: GLsizei; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglViewportIndexedf = public method(index_: GLuint; x: GLfloat; y: GLfloat; w: GLfloat; h: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglViewportIndexedfv = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglScissorArrayv = public method(first: GLuint; count: GLsizei; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglScissorIndexed = public method(index_: GLuint; left: GLint; bottom: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglScissorIndexedv = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglDepthRangeArrayv = public method(first: GLuint; count: GLsizei; const v: PGLclampd);
 [CallingConvention(PlatformConvention)]
  TglDepthRangeIndexed = public method(index_: GLuint; n: GLclampd; f: GLclampd);
 [CallingConvention(PlatformConvention)]
  TglGetFloati_v = public method(target: GLenum; index_: GLuint; data: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetDoublei_v = public method(target: GLenum; index_: GLuint; data: PGLdouble);

  // GL 4.2

  // GL_ARB_base_instance
 [CallingConvention(PlatformConvention)]
  TglDrawArraysInstancedBaseInstance = public method(mode : GLenum; first : GLint; count :GLsizei; primcount : GLsizei; baseinstance : GLuint);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstancedBaseInstance = public method(mode : GLenum; count : GLsizei; _type : GLenum; const indices : PGLvoid; primcount : GLsizei; baseinstance : GLuint);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstancedBaseVertexBaseInstance = public method(mode : GLenum; count : GLsizei; _type : GLenum; const indices : PGLvoid; primcount :GLsizei; basevertex : GLint; baseinstance : GLuint);

  // GL_ARB_transform_feedback_instanced
 [CallingConvention(PlatformConvention)]
  TglDrawTransformFeedbackInstanced = public method(mode : GLenum; id : GLuint; primcount : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawTransformFeedbackStreamInstanced = public method(mode : GLenum; id : GLuint; stream : GLuint; primcount : GLsizei);

  // GL_ARB_internalformat_query
 [CallingConvention(PlatformConvention)]
  TglGetInternalformativ = public method(target : GLenum; internalformat : GLenum; pname : GLenum; bufSize : GLsizei; params_ : PGLint);

  // GL_ARB_shader_atomic_counters
 [CallingConvention(PlatformConvention)]
  TglGetActiveAtomicCounterBufferiv = public method(_program : GLuint; bufferIndex : GLuint; pname : GLenum; params_ : PGLint);

  /// GL_ARB_shader_image_load_store
 [CallingConvention(PlatformConvention)]
  TglBindImageTexture = public method(_unit : GLuint; texture : GLuint; level :GLint; layered : GLboolean; layer : GLint; access : GLenum; format : GLenum);
 [CallingConvention(PlatformConvention)]
  TglMemoryBarrier = public method(barriers : GLbitfield);

  // GL_ARB_texture_storage
 [CallingConvention(PlatformConvention)]
  TglTexStorage1D = public method(target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexStorage2D = public method(target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexStorage3D = public method(target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage1DEXT = public method(texture : GLuint; target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage2DEXT = public method(texture : GLuint; target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage3DEXT = public method(texture : GLuint; target : GLenum; levels :GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei);


  // GL 4.3

  // GL_KHR_debug
 [CallingConvention(PlatformConvention)]
  TglDebugMessageControl = public method(source : GLenum; type_ : GLenum; severity : TGLenum; count : GLsizei; const ids : PGLuint; enabled : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageInsert = public method(source : GLenum;  type_ : GLenum; id : GLuint; sverity : GLenum; length : GLsizei; const buf : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageCallback = public method(callback : TglDebugProc; const userParam : Pointer);
 [CallingConvention(PlatformConvention)]
  TglGetDebugMessageLog = public method(count : GLuint; bufsize : GLsizei; sources : PGLenum; types : PGLenum; ids : PGLuint; sverities : PGLenum; lengths : PGLsizei; messagelog : PGLchar) : GLuint;
 [CallingConvention(PlatformConvention)]
  TglPushDebugGroup = public method(source : GLenum; id : GLuint; length : GLsizei; const message_ : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglPopDebugGroup = public method  ;
 [CallingConvention(PlatformConvention)]
  TglObjectLabel = public method(identifier : GLenum; name : GLuint; length : GLsizei; const label_ : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetObjectLabel = public method(identifier : GLenum; name : GLuint; bufsize : GLsizei; length : PGLsizei; label_ : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglObjectPtrLabel = public method(const ptr : Pointer; length : GLsizei; const label_ : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetObjectPtrLabel = public method(const ptr : Pointer; bufSize : GLsizei; length : PGLsizei; label_ : PGLchar);

  // GL_ARB_clear_buffer_object
 [CallingConvention(PlatformConvention)]
  TglClearBufferData = public method(target : GLenum; internalformat : GLenum; format : GLenum; type_ : GLenum; const data : Pointer);
 [CallingConvention(PlatformConvention)]
  TglClearBufferSubData = public method(target : GLenum; internalformat : GLenum; offset : GLintptr; size : GLsizeiptr; format : GLenum; type_ : GLenum; const data : Pointer);
 [CallingConvention(PlatformConvention)]
  TglClearNamedBufferDataEXT = public method(buffer : GLuint; internalformat : GLenum; format : GLenum; type_ : GLenum; const data : Pointer);
 [CallingConvention(PlatformConvention)]
  TglClearNamedBufferSubDataEXT = public method(buffer : GLuint; internalformat : GLenum; format : GLenum; type_ : GLenum; offset : GLsizeiptr; size : GLsizeiptr; const data : Pointer);

  // GL_ARB_compute_shader
 [CallingConvention(PlatformConvention)]
  TglDispatchCompute = public method(num_groups_x : GLuint; num_groups_y : GLuint; num_groups_z : GLuint);
 [CallingConvention(PlatformConvention)]
  TglDispatchComputeIndirect = public method(indirect : GLintptr);

  // GL_ARB_copy_image
 [CallingConvention(PlatformConvention)]
  TglCopyImageSubData = public method(srcName : GLuint; srcTarget : GLenum; srcLevel : GLint; srcX : GLint; srcY : GLint; srcZ : GLint; dstName : GLuint; dstTarget : GLenum; dstLevel : GLint; dstX : GLint; dstY : GLint; dstZ : GLint; srcWidth : GLsizei; srcHeight : GLsizei; srcDepth : GLsizei);

  // GL_ARB_debug_group
  // ARB_debug_group reuses entry points from KHR_debug

  // GL_ARB_debug_label
  // ARB_debug_label reuses entry points from KHR_debug

  // GL_ARB_debug_output2

  // GL_ARB_ES3_2_compatibility
 [CallingConvention(PlatformConvention)]
  TglPrimitiveBoundingBoxARB = public method(minX : GLfloat; minY : GLfloat; minZ : GLfloat; minW : GLfloat; maxX : GLfloat; maxY : GLfloat; maxZ : GLfloat; maxW : GLfloat);

  // GL_ARB_ES3_compatibility

  // GL_ARB_explicit_uniform_location

  // GL_ARB_fragment_layer_viewport

  // GL_ARB_framebuffer_no_attachments
 [CallingConvention(PlatformConvention)]
  TglFramebufferParameteri = public method(target : GLenum; pname : GLenum; param_ : GLint);
 [CallingConvention(PlatformConvention)]
  TglGetFramebufferParameteriv = public method(target : GLenum; pname : GLenum; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferParameteriEXT = public method(framebuffer : GLuint; pname : GLenum; param_ : GLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedFramebufferParameterivEXT = public method(framebuffer : GLuint; pname : GLenum; param_ : GLint);

  // GL_ARB_internalformat_query2
 [CallingConvention(PlatformConvention)]
  TglGetInternalformati64v = public method(target : GLenum; internalformat : GLenum; pname : GLenum; bufSize : GLsizei; params_ : PGLint64);

  // GL_ARB_invalidate_subdata
 [CallingConvention(PlatformConvention)]
  TglInvalidateTexSubImage = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglInvalidateTexImage = public method(texture : GLuint; level : GLint);
 [CallingConvention(PlatformConvention)]
  TglInvalidateBufferSubData = public method(buffer : GLuint; offset : GLintptr; length : GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglInvalidateBufferData = public method(buffer : GLuint);
 [CallingConvention(PlatformConvention)]
  TglInvalidateFramebuffer = public method(target : GLenum; numAttachments : GLsizei; const attachments : PGLenum);
 [CallingConvention(PlatformConvention)]
  TglInvalidateSubFramebuffer = public method(target : GLenum; numAttachments : GLsizei; const attachments : PGLenum; x : GLint; y : GLint; width : GLsizei; height : GLsizei);

  // GL_ARB_multi_draw_indirect
 [CallingConvention(PlatformConvention)]
  TglMultiDrawArraysIndirect = public method(mode : GLenum; const indirect : Pointer; drawcount : GLsizei; stride : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawElementsIndirect = public method(mode : GLenum; type_ : GLenum; const indirect : Pointer; drawcount : GLsizei; stride : GLsizei);

  // GL_ARB_program_interface_query
 [CallingConvention(PlatformConvention)]
  TglGetProgramInterfaceiv = public method(program_ : GLuint;programInterface : GLenum; pname : GLenum; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramResourceIndex = public method(program_ : GLuint;programInterface : GLenum; const name : PGLchar) : GLuint;
 [CallingConvention(PlatformConvention)]
  TglGetProgramResourceName = public method(program_ : GLuint;programInterface : GLenum; index_ : GLuint; bufSize : GLsizei; length : PGLsizei; name : PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetProgramResourceiv = public method(program_ : GLuint;programInterface : GLenum; index_ : GLuint; propCount : GLsizei; const props : PGLenum; bufSize : GLsizei; length : PGLsizei; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramResourceLocation = public method(program_ : GLuint;programInterface : GLenum; const name : PGLchar) : GLint;
 [CallingConvention(PlatformConvention)]
  TglGetProgramResourceLocationIndex = public method(program_ : GLuint;programInterface : GLenum; const name : PGLchar) : GLint;

  // GL_ARB_robust_buffer_access_behavior

  // GL_ARB_shader_image_size

  // GL_ARB_shader_storage_buffer_object
 [CallingConvention(PlatformConvention)]
  TglShaderStorageBlockBinding = public method(program_ : GLuint; storageBlockIndex : GLuint; storageBlockBinding : GLuint);

  // GL_ARB_stencil_texturing

  // GL_ARB_texture_buffer_range
 [CallingConvention(PlatformConvention)]
  TglTexBufferRange = public method(target : GLenum; internalformat : GLenum; buffer : GLuint; offset :GLintptr; size : GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglTextureBufferRangeEXT = public method(texture : GLuint; target : GLenum; internalformat : GLenum; buffer : GLuint; offset : GLintptr; size : GLsizeiptr);

  // GL_ARB_texture_query_levels

  // GL_ARB_texture_storage_multisample
 [CallingConvention(PlatformConvention)]
  TglTexStorage2DMultisample = public method(target : GLenum; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; fixedsamplelocations : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTexStorage3DMultisample = public method(target : GLenum; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei; fixedsamplelocations : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage2DMultisampleEXT = public method(texture : GLuint; target : GLenum; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; fixedsamplelocations : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage3DMultisampleEXT = public method(texture : GLuint; target : GLenum; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei; fixedsamplelocations : GLboolean);

  // GL 4.4

 [CallingConvention(PlatformConvention)]
  TglBufferStorage = public method(target : GLenum; size : GLsizeiptr; const data : pointer; flags : GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglClearTexImage = public method(texture : GLuint; level : GLint; format : GLenum; _type : GLenum; const data : Pointer);
 [CallingConvention(PlatformConvention)]
  TglClearTexSubImage = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; format : GLenum; _type : GLenum; const Data : Pointer);
 [CallingConvention(PlatformConvention)]
  TglBindBuffersBase = public method(target : GLenum; first : GLuint; count : GLsizei; const buffers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindBuffersRange = public method(target : GLenum; first : GLuint; count : GLsizei; const buffers : PGLuint; const offsets : GLintptr; const sizes : GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglBindTextures = public method(first : GLuint; count : GLsizei; const textures : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindSamplers = public method(first : GLuint; count : GLsizei; const samplers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindImageTextures = public method(first : GLuint; count : GLsizei; const textures : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindVertexBuffers = public method(first : GLuint; count : GLsizei; const buffers : GLuint; const offsets : GLintptr; const strides : PGLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexPageCommitmentARB = public method(target : GLenum; level : GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; resident : GLboolean);

  // GL 4.5
 [CallingConvention(PlatformConvention)]
  TglClipControl = public method(origin : GLenum; depth : GLenum);
 [CallingConvention(PlatformConvention)]
  TglCreateTransformFeedbacks = public method(n : GLsizei; ids : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackBufferBase = public method(xfb : GLuint; index_ : GLuint; buffer : GLuint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackBufferRange = public method(xfb : GLuint; index_ : GLuint; buffer : GLuint; offset : GLintptr; size : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbackiv = public method(xfb : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbacki_v = public method(xfb : GLuint; pname : GLenum; index_ : GLuint; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbacki64_v = public method(xfb : GLuint; pname : GLenum; index_ : GLuint; param_ : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglCreateBuffers = public method(n : GLsizei; buffers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferStorage = public method(buffer : GLuint; size : GLsizei; const data : PGLvoid; flags : GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferData = public method(buffer : GLuint; size : GLsizei; const data : PGLvoid; usage : GLenum);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferSubData = public method(buffer : GLuint; offset : GLintptr; size : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyNamedBufferSubData = public method(readBuffer : GLuint; writeBuffer : GLuint; readOffset : GLintptr; writeOffset : GLintptr; size : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglClearNamedBufferData = public method(buffer : GLuint; internalformat : GLenum; format : GLenum; _type : GLenum; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglClearNamedBufferSubData = public method(buffer : GLuint; internalformat : GLenum; offset : GLintptr; size : GLsizei; format : GLenum; _type : GLenum; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMapNamedBuffer = public method(buffer : GLuint; access : GLenum) : PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglMapNamedBufferRange = public method(buffer : GLuint; offset : GLintptr; length : GLsizei; access : GLbitfield) : PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglUnmapNamedBuffer = public method(buffer : GLuint) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglFlushMappedNamedBufferRange = public method(buffer : GLuint; offset : GLintptr; length : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferParameteriv = public method(buffer : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferParameteri64v = public method(buffer : GLuint; pname : GLenum; param_ : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferPointerv = public method(buffer : GLuint; pname : GLenum; params_ : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferSubData = public method(buffer : GLuint; offset : GLintptr; size : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCreateFramebuffers = public method(n : GLsizei; framebuffers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferRenderbuffer = public method(framebuffer : GLuint; attachment : GLenum ; renderbuffertarget : GLenum; renderbuffer : GLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferParameteri = public method(framebuffer : GLuint; pname : GLenum; param_ : GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTexture = public method(framebuffer : GLuint; attachment : GLenum; texture : GLuint; level : GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTextureLayer = public method(framebuffer : GLuint; attachment : GLenum; texture : GLuint; level : GLint; layer : GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferDrawBuffer = public method(framebuffer : GLuint; buf : GLenum);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferDrawBuffers = public method(framebuffer : GLuint; n : GLsizei; bufs : PGLenum);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferReadBuffer = public method(framebuffer : GLuint; src : GLenum);
 [CallingConvention(PlatformConvention)]
  TglInvalidateNamedFramebufferData = public method(framebuffer : GLuint; numAttachments : GLsizei; attachments : PGLenum);
 [CallingConvention(PlatformConvention)]
  TglInvalidateNamedFramebufferSubData = public method(framebuffer : GLuint; numAttachments : GLsizei; attachments : PGLenum; x : GLint; y : GLint; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglClearNamedFramebufferiv = public method(framebuffer : GLuint; buffer : GLenum; drawbuffer : GLint; value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglClearNamedFramebufferuiv = public method(framebuffer : GLuint; buffer : GLenum; drawbuffer : GLint; value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglClearNamedFramebufferfv = public method(framebuffer : GLuint; buffer : GLenum; drawbuffer : GLint; value : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglClearNamedFramebufferfi = public method(framebuffer : GLuint; buffer : GLenum; const depth : GLfloat; stencil : GLint);
 [CallingConvention(PlatformConvention)]
  TglBlitNamedFramebuffer = public method(readFramebuffer : GLuint; drawFramebuffer : GLuint; srcX0 : GLint; srcY0 : GLint; srcX1 : GLint; srcY1 : GLint; dstX0 : GLint; dstY0 : GLint; dstX1 : GLint; dstY1 : GLint ; mask : GLbitfield; filter : GLenum);
 [CallingConvention(PlatformConvention)]
  TglCheckNamedFramebufferStatus = public method(framebuffer : GLuint; target : GLenum) : GLenum;
 [CallingConvention(PlatformConvention)]
  TglGetNamedFramebufferParameteriv = public method(framebuffer : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedFramebufferAttachmentParameteriv = public method(framebuffer : GLuint; attachment : GLenum; pname : GLenum; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglCreateRenderbuffers = public method(n : GLsizei; renderbuffers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedRenderbufferStorage = public method(renderbuffer : GLuint; internalformat : GLenum ; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglNamedRenderbufferStorageMultisample = public method(renderbuffer : GLuint; samples : GLsizei; internalformat : GLenum ; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetNamedRenderbufferParameteriv = public method(renderbuffer : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglCreateTextures = public method(target : GLenum ; n : GLsizei; textures : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTextureBuffer = public method(texture : GLuint; internalformat : GLenum; buffer : GLuint);
 [CallingConvention(PlatformConvention)]
  TglTextureBufferRange = public method(texture : GLuint; internalformat : GLenum; buffer : GLuint; offset : GLintptr; size : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage1D = public method(texture : GLuint; levels : GLsizei; internalformat : GLenum; width : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage2D = public method(texture : GLuint; levels : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage3D = public method(texture : GLuint; levels : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage2DMultisample = public method(texture : GLuint; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; fixedsamplelocations : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTextureStorage3DMultisample = public method(texture : GLuint; samples : GLsizei; internalformat : GLenum; width : GLsizei; height : GLsizei; depth : GLsizei; fixedsamplelocations : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage1D = public method(texture : GLuint; level : GLint; xoffset : GLint; width : GLsizei; format : GLenum; _type : GLenum; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage2D = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; width : GLsizei; height : GLsizei; format : GLenum; _type : GLenum; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage3D = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; format : GLenum; _type : GLenum; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage1D = public method(texture : GLuint; level : GLint; xoffset : GLint; width : GLsizei; format : GLenum; imageSize : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage2D = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; width : GLsizei; height : GLsizei; format : GLenum; mageSize : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage3D = public method(texture : GLuint; level : GLint; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; format : GLenum; imageSize : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage1D = public method(texture : GLuint; level : GLint ; xoffset : GLint; x : GLint; y : GLint; width : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage2D = public method(texture : GLuint; level : GLint ; xoffset : GLint; yoffset : GLint; x : GLint; y : GLint; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage3D = public method(texture : GLuint; level : GLint ; xoffset : GLint; yoffset : GLint; zoffset : GLint; x : GLint; y : GLint; width : GLsizei; height : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterf = public method(texture : GLuint; pname : GLenum; param_ : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterfv = public method(texture : GLuint; pname : GLenum; const param_ : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTextureParameteri = public method(texture : GLuint; pname : GLenum; param_ : GLint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterIiv = public method(texture : GLuint; pname : GLenum; const params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterIuiv = public method(texture : GLuint; pname : GLenum; const params_ : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameteriv = public method(texture : GLuint; pname : GLenum; const param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGenerateTextureMipmap = public method(texture : GLuint);
 [CallingConvention(PlatformConvention)]
  TglBindTextureUnit = public method(_unit : GLuint; texture : GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureImage = public method(texture : GLuint; level : GLint ; format : GLenum; _type : GLenum; bufSize : GLsizei; pixels : PGLVoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedTextureImage = public method(texture : GLuint; level : GLint; bufSize : GLSizei; pixels : PGLVoid);
 [CallingConvention(PlatformConvention)]
  TglGetTextureLevelParameterfv = public method(texture : GLuint; level : GLint; pname : GLenum; params_ : PGLFloat);
 [CallingConvention(PlatformConvention)]
  TglGetTextureLevelParameteriv = public method(texture : GLuint; level : GLint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterfv = public method(texture : GLuint; pname : GLenum; params_ : PGLFloat);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterIiv = public method(texture : GLuint; pname : GLenum; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterIuiv = public method(texture : GLuint; pname : GLenum; params_ : PGLInt);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameteriv = public method(texture : GLuint; pname : GLenum; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglCreateVertexArrays = public method(n : GLsizei; arrays : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDisableVertexArrayAttrib = public method(vaobj : GLuint; index_ : GLuint);
 [CallingConvention(PlatformConvention)]
  TglEnableVertexArrayAttrib = public method(vaobj : GLuint; index_ : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayElementBuffer = public method(vaobj : GLuint; buffer : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexBuffer = public method(vaobj : GLuint; bindingindex : GLuint; buffer : GLuint; offset : GLintptr; stride : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexBuffers = public method(vaobj : GLuint; first : GLuint; count : GLsizei; const buffers : PGLuint; const offsets : PGLintptr; const strides : PGLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayAttribBinding = public method(vaobj : GLuint; attribindex : GLuint; bindingindex : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayAttribFormat = public method(vaobj : GLuint; attribindex : GLuint; size : GLint; _type : GLenum; normalized : GLboolean; relativeoffset : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayAttribIFormat = public method(vaobj : GLuint; attribindex : GLuint; size : GLint; _type : GLenum; relativeoffset : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayAttribLFormat = public method(vaobj : GLuint; attribindex : GLuint; size : GLint; _type : GLenum; relativeoffset : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayBindingDivisor = public method(vaobj : GLuint; bindingindex : GLuint; divisor : GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexArrayiv = public method(vaobj : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexArrayIndexediv = public method(vaobj : GLuint; index_ : GLuint; pname : GLenum; param_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexArrayIndexed64iv = public method(vaobj : GLuint; index_ : GLuint; pname : GLenum; param_ : PGLint64);
 [CallingConvention(PlatformConvention)]
  TglCreateSamplers = public method(n : GLsizei; samplers : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglCreateProgramPipelines = public method(n : GLsizei; pipelines : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglCreateQueries = public method(target : GLenum; n : GLsizei; ids : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMemoryBarrierByRegion = public method(barriers : GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglGetTextureSubImage = public method(texture : GLuint; level : GLint ; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; format : GLenum; _type : GLenum; bufSize : GLsizei; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedTextureSubImage = public method(texture : GLuint; level : GLint ; xoffset : GLint; yoffset : GLint; zoffset : GLint; width : GLsizei; height : GLsizei; depth : GLsizei; bufSize : GLsizei; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetGraphicsResetStatus = public method : GLEnum;
 [CallingConvention(PlatformConvention)]
  TglGetnCompressedTexImage = public method(target : GLenum; lod : GLint; bufSize : GLsizei; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnTexImage = public method(target : GLenum; level : GLint; format : GLenum; _type : GLenum; bufSize : GLSizei; pixels : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformdv = public method(_program : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformfv = public method(_program : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformiv = public method(_program : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformuiv = public method(_program : GLuint; location : GLint; bufSize : GLsizei; params_ : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglReadnPixels = public method(x : GLint; y : GLint; width : GLsizei; height : GLsizei; format : GLenum; _type : GLenum; bufSize : GLsizei; data : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnMapdv = public method(target : GLenum; query : GLenum; bufSize : GLsizei; v : PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetnMapfv = public method(target : GLenum; query : GLenum; bufSize : GLsizei; v : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnMapiv = public method(target : GLenum; query : GLenum; bufSize : GLsizei; v : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapfv = public method(map : GLenum; bufSize : GLsizei; values : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapuiv = public method(map : GLenum; bufSize : GLsizei; values : PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapusv = public method(map : GLenum; bufSize : GLsizei; values : PGLushort);
 [CallingConvention(PlatformConvention)]
  TglGetnPolygonStipple = public method(bufSize : GLsizei; pattern : PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglGetnColorTable = public method(target : GLenum; format : GLenum; _type : GLenum; bufSize : GLsizei; table : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnConvolutionFilter = public method(target : GLenum; format : GLenum; _type : GLenum; bufSize : GLsizei; image : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnSeparableFilter = public method(target : GLenum; format : GLenum; _type : GLenum; rowBufSize : GLsizei; row : PGLvoid; columnBufSize : GLsizei; column : PGLvoid; span : PGLVoid);
 [CallingConvention(PlatformConvention)]
  TglGetnHistogram = public method(target : GLenum; reset : GLboolean; format : GLenum; _type : GLenum; bufSize : GLsizei; values : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnMinmax = public method(target : GLenum; reset : GLboolean; format : GLenum; _type : GLenum; bufSize : GLsizei; values : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureBarrier = public method  ;

  // GL_ARB_sparse_buffer
 [CallingConvention(PlatformConvention)]
  TglBufferPageCommitmentARB = public method(target : GLenum; offset : GLintptr; size : GLsizei; commit : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferPageCommitmentEXT = public method(buffer : GLuint; offset : GLintptr; size : GLsizei; commit : GLboolean);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferPageCommitmentARB = public method(buffer : GLuint; offset : GLintptr; size : GLsizei; commit : GLboolean);

  // GL_KHR_blend_equation_advanced
 [CallingConvention(PlatformConvention)]
  TglBlendBarrierKHR = public method  ;

  // GL_ARB_texture_view
 [CallingConvention(PlatformConvention)]
  TglTextureView = public method(texture : GLuint; target : GLenum; origtexture : GLuint; internalformat : GLenum; minlevel : GLuint; numlevels : GLuint; minlayer : GLuint; numlayers : GLuint);

  // GL_ARB_vertex_attrib_binding
 [CallingConvention(PlatformConvention)]
  TglBindVertexBuffer = public method(bindingindex : GLuint; buffer : GLuint; offset : GLintptr; stride : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribFormat = public method(attribindex : GLuint; size : GLInt; type_ : GLEnum; normalized : GLboolean; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribIFormat = public method(attribindex : GLuint; size : GLInt; type_ : GLEnum; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribLFormat = public method(attribindex : GLuint; size : GLInt; type_ : GLEnum; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribBinding = public method(attribindex : GLuint; bindingindex : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexBindingDivisor = public method(bindingindex : GLuint; divisor : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayBindVertexBufferEXT = public method(vaobj : GLuint; bindingindex : GLuint; buffer : GLuint; offset : GLintptr; stride : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribFormatEXT = public method(vaobj : GLuint; attribindex : GLuint; size : GLInt; type_ : GLEnum; normalized : GLboolean; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribIFormatEXT = public method(vaobj : GLuint; attribindex : GLuint; size : GLInt; type_ : GLEnum; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribLFormatEXT = public method(vaobj : GLuint; attribindex : GLuint; size : GLInt; type_ : GLEnum; relativeoffset : GLUint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribBindingEXT = public method(vaobj : GLuint; attribindex : GLuint; bindingindex : GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexBindingDivisorEXT = public method(vaobj : GLuint; bindingindex : GLuint; divisor : GLuint);

  // GL_ARB_robustness_isolation

  //

  // GL_ARB_cl_event
 [CallingConvention(PlatformConvention)]
  TglCreateSyncFromCLeventARB = public method(context: p_cl_context; event_: p_cl_event; flags: GLbitfield): GLsync;

  // GL_ARB_debug_output
 [CallingConvention(PlatformConvention)]
  TglDebugMessageControlARB = public method(source: GLenum; type_: GLenum; severity: GLenum; count: GLsizei; const ids: PGLuint; enabled: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageInsertARB = public method(source: GLenum; type_: GLenum; id: GLuint; severity: GLenum; length: GLsizei; const buf: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageCallbackARB = public method(callback: TglDebugProcARB; const userParam: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetDebugMessageLogARB = public method(count: GLuint; bufsize: GLsizei; sources: PGLenum; types: PGLenum; ids: PGLuint; severities: PGLenum; lengths: PGLsizei; messageLog: PGLchar): GLuint;

  // GL_ARB_robustness
 [CallingConvention(PlatformConvention)]
  TglGetGraphicsResetStatusARB = public method(): GLenum;
 [CallingConvention(PlatformConvention)]
  TglGetnMapdvARB = public method(target: GLenum; query: GLenum; bufSize: GLsizei; v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetnMapfvARB = public method(target: GLenum; query: GLenum; bufSize: GLsizei; v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnMapivARB = public method(target: GLenum; query: GLenum; bufSize: GLsizei; v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapfvARB = public method(map: GLenum; bufSize: GLsizei; values: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapuivARB = public method(map: GLenum; bufSize: GLsizei; values: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetnPixelMapusvARB = public method(map: GLenum; bufSize: GLsizei; values: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglGetnPolygonStippleARB = public method(bufSize: GLsizei; pattern: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglGetnColorTableARB = public method(target: GLenum; format: GLenum; type_: GLenum; bufSize: GLsizei; table: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnConvolutionFilterARB = public method(target: GLenum; format: GLenum; type_: GLenum; bufSize: GLsizei; image: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnSeparableFilterARB = public method(target: GLenum; format: GLenum; type_: GLenum; rowBufSize: GLsizei; row: PGLvoid; columnBufSize: GLsizei; column: PGLvoid; span: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnHistogramARB = public method(target: GLenum; reset: GLboolean; format: GLenum; type_: GLenum; bufSize: GLsizei; values: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnMinmaxARB = public method(target: GLenum; reset: GLboolean; format: GLenum; type_: GLenum; bufSize: GLsizei; values: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnTexImageARB = public method(target: GLenum; level: GLint; format: GLenum; type_: GLenum; bufSize: GLsizei; img: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglReadnPixelsARB = public method(x: GLint; y: GLint; width: GLsizei; height: GLsizei; format: GLenum; type_: GLenum; bufSize: GLsizei; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnCompressedTexImageARB = public method(target: GLenum; lod: GLint; bufSize: GLsizei; img: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformfvARB = public method(program_: GLuint; location: GLint; bufSize: GLsizei; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformivARB = public method(program_: GLuint; location: GLint; bufSize: GLsizei; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformuivARB = public method(program_: GLuint; location: GLint; bufSize: GLsizei; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetnUniformdvARB = public method(program_: GLuint; location: GLint; bufSize: GLsizei; params_: PGLdouble);

  // GL_ATI_draw_buffers
 [CallingConvention(PlatformConvention)]
  TglDrawBuffersATI = public method(n: GLsizei; const bufs: PGLenum);

  // GL_ATI_element_array
 [CallingConvention(PlatformConvention)]
  TglElementPointerATI = public method(_type: GLenum; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglDrawElementArrayATI = public method(mode: GLenum; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElementArrayATI = public method(mode: GLenum; start: GLuint; _end: GLuint; count: GLsizei);

  // GL_ATI_envmap_bumpmap
 [CallingConvention(PlatformConvention)]
  TglTexBumpParameterivATI = public method(pname: GLenum; const param_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTexBumpParameterfvATI = public method(pname: GLenum; const param_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetTexBumpParameterivATI = public method(pname: GLenum; param_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTexBumpParameterfvATI = public method(pname: GLenum; param_: PGLfloat);

  // GL_ATI_fragment_shader
 [CallingConvention(PlatformConvention)]
  TglGenFragmentShadersATI = public method(range: GLuint): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindFragmentShaderATI = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteFragmentShaderATI = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglBeginFragmentShaderATI = public method  ();
 [CallingConvention(PlatformConvention)]
  TglEndFragmentShaderATI = public method  ();
 [CallingConvention(PlatformConvention)]
  TglPassTexCoordATI = public method(dst: GLuint; coord: GLuint; swizzle: GLenum);
 [CallingConvention(PlatformConvention)]
  TglSampleMapATI = public method(dst: GLuint; interp: GLuint; swizzle: GLenum);
 [CallingConvention(PlatformConvention)]
  TglColorFragmentOp1ATI = public method(op: GLenum; dst: GLuint; dstMask: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglColorFragmentOp2ATI = public method(op: GLenum; dst: GLuint; dstMask: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint; arg2: GLuint; arg2Rep: GLuint; arg2Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglColorFragmentOp3ATI = public method(op: GLenum; dst: GLuint; dstMask: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint; arg2: GLuint; arg2Rep: GLuint; arg2Mod: GLuint; arg3: GLuint; arg3Rep: GLuint; arg3Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglAlphaFragmentOp1ATI = public method(op: GLenum; dst: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglAlphaFragmentOp2ATI = public method(op: GLenum; dst: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint; arg2: GLuint; arg2Rep: GLuint; arg2Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglAlphaFragmentOp3ATI = public method(op: GLenum; dst: GLuint; dstMod: GLuint; arg1: GLuint; arg1Rep: GLuint; arg1Mod: GLuint; arg2: GLuint; arg2Rep: GLuint; arg2Mod: GLuint; arg3: GLuint; arg3Rep: GLuint; arg3Mod: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSetFragmentShaderConstantATI = public method(dst: GLuint; const value: PGLfloat);

  // GL_ATI_map_object_buffer
 [CallingConvention(PlatformConvention)]
  TglMapObjectBufferATI = public method(buffer: GLuint): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglUnmapObjectBufferATI = public method(buffer: GLuint);

  // GL_ATI_pn_triangles
 [CallingConvention(PlatformConvention)]
  TglPNTrianglesiATI = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglPNTrianglesfATI = public method(pname: GLenum; param_: GLfloat);

  // GL_ATI_separate_stencil
 [CallingConvention(PlatformConvention)]
  TglStencilOpSeparateATI = public method(face: GLenum; sfail: GLenum; dpfail: GLenum; dppass: GLenum);
 [CallingConvention(PlatformConvention)]
  TglStencilFuncSeparateATI = public method(frontfunc: GLenum; backfunc: GLenum; ref: GLint; mask: GLuint);

  // GL_ATI_vertex_array_object
 [CallingConvention(PlatformConvention)]
  TglNewObjectBufferATI = public method(size: GLsizei; const _pointer: PGLvoid; usage: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglIsObjectBufferATI = public method(buffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglUpdateObjectBufferATI = public method(buffer: GLuint; offset: GLuint; size: GLsizei; const _pointer: PGLvoid; preserve: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetObjectBufferfvATI = public method(buffer: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetObjectBufferivATI = public method(buffer: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglFreeObjectBufferATI = public method(buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglArrayObjectATI = public method(_array: GLenum; size: GLint; _type: GLenum; stride: GLsizei; buffer: GLuint; offset: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetArrayObjectfvATI = public method(_array: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetArrayObjectivATI = public method(_array: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVariantArrayObjectATI = public method(id: GLuint; _type: GLenum; stride: GLsizei; buffer: GLuint; offset: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVariantArrayObjectfvATI = public method(id: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVariantArrayObjectivATI = public method(id: GLuint; pname: GLenum; params_: PGLint);

  // GL_ATI_vertex_attrib_array_object
 [CallingConvention(PlatformConvention)]
  TglVertexAttribArrayObjectATI = public method(index_: GLuint; size: GLint; _type: GLenum; normalized: GLboolean; stride: GLsizei; buffer: GLuint; offset: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribArrayObjectfvATI = public method(index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribArrayObjectivATI = public method(index_: GLuint; pname: GLenum; params_: PGLint);

  // GL_ATI_vertex_streams
 [CallingConvention(PlatformConvention)]
  TglVertexStream1sATI = public method(stream: GLenum; x: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1svATI = public method(stream: GLenum; const coords: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1iATI = public method(stream: GLenum; x: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1ivATI = public method(stream: GLenum; const coords: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1fATI = public method(stream: GLenum; x: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1fvATI = public method(stream: GLenum; const coords: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1dATI = public method(stream: GLenum; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream1dvATI = public method(stream: GLenum; const coords: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2sATI = public method(stream: GLenum; x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2svATI = public method(stream: GLenum; const coords: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2iATI = public method(stream: GLenum; x: GLint; y: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2ivATI = public method(stream: GLenum; const coords: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2fATI = public method(stream: GLenum; x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2fvATI = public method(stream: GLenum; const coords: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2dATI = public method(stream: GLenum; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream2dvATI = public method(stream: GLenum; const coords: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3sATI = public method(stream: GLenum; x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3svATI = public method(stream: GLenum; const coords: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3iATI = public method(stream: GLenum; x: GLint; y: GLint; z: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3ivATI = public method(stream: GLenum; const coords: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3fATI = public method(stream: GLenum; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3fvATI = public method(stream: GLenum; const coords: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3dATI = public method(stream: GLenum; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream3dvATI = public method(stream: GLenum; const coords: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4sATI = public method(stream: GLenum; x: GLshort; y: GLshort; z: GLshort; w: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4svATI = public method(stream: GLenum; const coords: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4iATI = public method(stream: GLenum; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4ivATI = public method(stream: GLenum; const coords: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4fATI = public method(stream: GLenum; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4fvATI = public method(stream: GLenum; const coords: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4dATI = public method(stream: GLenum; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexStream4dvATI = public method(stream: GLenum; const coords: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3bATI = public method(stream: GLenum; nx: GLbyte; ny: GLbyte; nz: GLbyte);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3bvATI = public method(stream: GLenum; const coords: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3sATI = public method(stream: GLenum; nx: GLshort; ny: GLshort; nz: GLshort);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3svATI = public method(stream: GLenum; const coords: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3iATI = public method(stream: GLenum; nx: GLint; ny: GLint; nz: GLint);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3ivATI = public method(stream: GLenum; const coords: PGLint);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3fATI = public method(stream: GLenum; nx: GLfloat; ny: GLfloat; nz: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3fvATI = public method(stream: GLenum; const coords: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3dATI = public method(stream: GLenum; nx: GLdouble; ny: GLdouble; nz: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglNormalStream3dvATI = public method(stream: GLenum; const coords: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglClientActiveVertexStreamATI = public method(stream: GLenum);
 [CallingConvention(PlatformConvention)]
  TglVertexBlendEnviATI = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexBlendEnvfATI = public method(pname: GLenum; param_: GLfloat);

  // GL_AMD_performance_monitor
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorGroupsAMD = public method(numGroups: PGLint; groupsSize: GLsizei; groups: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorCountersAMD = public method(group: GLuint; numCounters: PGLint; maxActiveCouters: PGLint; counterSize: GLsizei; counters: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorGroupStringAMD = public method(group: GLuint; bufSize: GLsizei; length: PGLsizei; groupString: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorCounterStringAMD = public method(group: GLuint; counter: GLuint; bufSize: GLsizei; length: PGLsizei; counterString: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorCounterInfoAMD = public method(group: GLuint; counter: GLuint; pname: GLenum; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGenPerfMonitorsAMD = public method(n: GLsizei; monitors: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeletePerfMonitorsAMD = public method(n: GLsizei; monitors: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglSelectPerfMonitorCountersAMD = public method(monitor: GLuint; enable: GLboolean; group: GLuint; numCounters: GLint; counterList: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBeginPerfMonitorAMD = public method(monitor: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndPerfMonitorAMD = public method(monitor: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetPerfMonitorCounterDataAMD = public method(monitor: GLuint; pname: GLenum; dataSize: GLsizei; data: PGLuint; bytesWritten: PGLint);

  // GL_AMD_vertex_shader_tesselator
 [CallingConvention(PlatformConvention)]
  TglTessellationFactorAMD = public method(factor: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTessellationModeAMD = public method(mode: GLenum);

  // GL_AMD_draw_buffers_blend
 [CallingConvention(PlatformConvention)]
  TglBlendFuncIndexedAMD = public method(buf: GLuint; src: GLenum; dst: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendFuncSeparateIndexedAMD = public method(buf: GLuint; srcRGB: GLenum; dstRGB: GLenum; srcAlpha: GLenum; dstAlpha: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendEquationIndexedAMD = public method(buf: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBlendEquationSeparateIndexedAMD = public method(buf: GLuint; modeRGB: GLenum; modeAlpha: GLenum);

  // GL_AMD_name_gen_delete
 [CallingConvention(PlatformConvention)]
  TglGenNamesAMD = public method(identifier: GLenum; num: GLuint; names: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteNamesAMD = public method(identifier: GLenum; num: GLuint; const names: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsNameAMD = public method(identifier: GLenum; name: GLuint): GLboolean;

  // GL_AMD_debug_output
 [CallingConvention(PlatformConvention)]
  TglDebugMessageEnableAMD = public method(category: GLenum; severity: GLenum; count: GLsizei; const ids: PGLuint; enabled: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageInsertAMD = public method(category: GLenum; severity: GLenum; id: GLuint; length: GLsizei; const buf: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglDebugMessageCallbackAMD = public method(callback: TGLDebugProcAMD; userParam: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetDebugMessageLogAMD = public method(count: GLuint; bufsize: GLsizei; categories: PGLenum; severities: PGLuint; ids: PGLuint; lengths: PGLsizei; message: PGLchar): GLuint;

  // GL_EXT_blend_color
 [CallingConvention(PlatformConvention)]
  TglBlendColorEXT = public method(red: GLclampf; green: GLclampf; blue: GLclampf; alpha: GLclampf);

  // GL_EXT_blend_func_separate
 [CallingConvention(PlatformConvention)]
  TglBlendFuncSeparateEXT = public method(sfactorRGB: GLenum; dfactorRGB: GLenum; sfactorAlpha: GLenum; dfactorAlpha: GLenum);

  // GL_EXT_blend_minmax
 [CallingConvention(PlatformConvention)]
  TglBlendEquationEXT = public method(mode: GLenum);

  // GL_EXT_color_subtable
 [CallingConvention(PlatformConvention)]
  TglColorSubTableEXT = public method(target: GLenum; start: GLsizei; count: GLsizei; format: GLenum; _type: GLenum; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyColorSubTableEXT = public method(target: GLenum; start: GLsizei; x: GLint; y: GLint; width: GLsizei);

  // GL_EXT_compiled_vertex_array
 [CallingConvention(PlatformConvention)]
  TglLockArraysEXT = public method(first: GLint; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglUnlockArraysEXT = public method  ();

  // GL_EXT_convolution
 [CallingConvention(PlatformConvention)]
  TglConvolutionFilter1DEXT = public method(target: GLenum; internalformat: GLenum; width: GLsizei; format: GLenum; _type: GLenum; const image: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglConvolutionFilter2DEXT = public method(target: GLenum; internalformat: GLenum; width: GLsizei; height: GLsizei; format: GLenum; _type: GLenum; const image: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglConvolutionParameterfEXT = public method(target: GLenum; pname: GLenum; params_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglConvolutionParameterfvEXT = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglConvolutionParameteriEXT = public method(target: GLenum; pname: GLenum; params_: GLint);
 [CallingConvention(PlatformConvention)]
  TglConvolutionParameterivEXT = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglCopyConvolutionFilter1DEXT = public method(target: GLenum; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyConvolutionFilter2DEXT = public method(target: GLenum; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetConvolutionFilterEXT = public method(target: GLenum; format: GLenum; _type: GLenum; image: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetConvolutionParameterfvEXT = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetConvolutionParameterivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetSeparableFilterEXT = public method(target: GLenum; format: GLenum; _type: GLenum; row: PGLvoid; column: PGLvoid; span: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglSeparableFilter2DEXT = public method(target: GLenum; internalformat: GLenum; width: GLsizei; height: GLsizei; format: GLenum; _type: GLenum; const row: PGLvoid; const column: PGLvoid);

  // GL_EXT_coordinate_frame
 [CallingConvention(PlatformConvention)]
  TglTangent3bEXT = public method(tx: GLbyte; ty: GLbyte; tz: GLbyte);
 [CallingConvention(PlatformConvention)]
  TglTangent3bvEXT = public method(const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglTangent3dEXT = public method(tx: GLdouble; ty: GLdouble; tz: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglTangent3dvEXT = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglTangent3fEXT = public method(tx: GLfloat; ty: GLfloat; tz: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTangent3fvEXT = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTangent3iEXT = public method(tx: GLint; ty: GLint; tz: GLint);
 [CallingConvention(PlatformConvention)]
  TglTangent3ivEXT = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTangent3sEXT = public method(tx: GLshort; ty: GLshort; tz: GLshort);
 [CallingConvention(PlatformConvention)]
  TglTangent3svEXT = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglBinormal3bEXT = public method(bx: GLbyte; by: GLbyte; bz: GLbyte);
 [CallingConvention(PlatformConvention)]
  TglBinormal3bvEXT = public method(const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglBinormal3dEXT = public method(bx: GLdouble; by: GLdouble; bz: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglBinormal3dvEXT = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglBinormal3fEXT = public method(bx: GLfloat; by: GLfloat; bz: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglBinormal3fvEXT = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglBinormal3iEXT = public method(bx: GLint; by: GLint; bz: GLint);
 [CallingConvention(PlatformConvention)]
  TglBinormal3ivEXT = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglBinormal3sEXT = public method(bx: GLshort; by: GLshort; bz: GLshort);
 [CallingConvention(PlatformConvention)]
  TglBinormal3svEXT = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglTangentPointerEXT = public method(_type: GLenum; stride: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglBinormalPointerEXT = public method(_type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_EXT_copy_texture
 [CallingConvention(PlatformConvention)]
  TglCopyTexImage1DEXT = public method(target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTexImage2DEXT = public method(target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage1DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage2DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTexSubImage3DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);

  // GL_EXT_cull_vertex
 [CallingConvention(PlatformConvention)]
  TglCullParameterdvEXT = public method(pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglCullParameterfvEXT = public method(pname: GLenum; params_: PGLfloat);

  // GL_EXT_draw_range_elements
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElementsEXT = public method(mode: GLenum; start: GLuint; _end: GLuint; count: GLsizei; _type: GLenum; const indices: PGLvoid);

  // GL_EXT_fog_coord
 [CallingConvention(PlatformConvention)]
  TglFogCoordfEXT = public method(coord: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglFogCoordfvEXT = public method(const coord: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglFogCoorddEXT = public method(coord: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglFogCoorddvEXT = public method(const coord: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglFogCoordPointerEXT = public method(_type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_EXT_framebuffer_object
 [CallingConvention(PlatformConvention)]
  TglIsRenderbufferEXT = public method(renderbuffer: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TglBindRenderbufferEXT = public method(target: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteRenderbuffersEXT = public method(n: GLsizei; const renderbuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenRenderbuffersEXT = public method(n: GLsizei; renderbuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglRenderbufferStorageEXT = public method(target: GLenum; internalformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetRenderbufferParameterivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglIsFramebufferEXT = public method(framebuffer: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TglBindFramebufferEXT = public method(target: GLenum; framebuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteFramebuffersEXT = public method(n: GLsizei; const framebuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenFramebuffersEXT = public method(n: GLsizei; framebuffers: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglCheckFramebufferStatusEXT = public method(target: GLenum): GLenum;
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture1DEXT = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture2DEXT = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTexture3DEXT = public method(target: GLenum; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint; zoffset: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferRenderbufferEXT = public method(target: GLenum; attachment: GLenum; renderbuffertarget: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetFramebufferAttachmentParameterivEXT = public method(target: GLenum; attachment: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGenerateMipmapEXT = public method(target: GLenum);

  // GL_EXT_histogram
 [CallingConvention(PlatformConvention)]
  TglGetHistogramEXT = public method(target: GLenum; reset: GLboolean; format: GLenum; _type: GLenum; values: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetHistogramParameterfvEXT = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetHistogramParameterivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMinmaxEXT = public method(target: GLenum; reset: GLboolean; format: GLenum; _type: GLenum; values: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetMinmaxParameterfvEXT = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMinmaxParameterivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglHistogramEXT = public method(target: GLenum; width: GLsizei; internalformat: GLenum; sink: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglMinmaxEXT = public method(target: GLenum; internalformat: GLenum; sink: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglResetHistogramEXT = public method(target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglResetMinmaxEXT = public method(target: GLenum);

  // GL_EXT_index_func
 [CallingConvention(PlatformConvention)]
  TglIndexFuncEXT = public method(func: GLenum; ref: GLclampf);

  // GL_EXT_index_material
 [CallingConvention(PlatformConvention)]
  TglIndexMaterialEXT = public method(face: GLenum; mode: GLenum);

  // GL_EXT_light_texture
 [CallingConvention(PlatformConvention)]
  TglApplyTextureEXT = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglTextureLightEXT = public method(pname: GLenum);
 [CallingConvention(PlatformConvention)]
  TglTextureMaterialEXT = public method(face: GLenum; mode: GLenum);

  // GL_EXT_multi_draw_arrays
 [CallingConvention(PlatformConvention)]
  TglMultiDrawArraysEXT = public method(mode: GLenum; const first: PGLint; const count: PGLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiDrawElementsEXT = public method(mode: GLenum; const count: PGLsizei; _type: GLenum; const indices: PGLvoid; primcount: GLsizei);

  // GL_EXT_multisample
 [CallingConvention(PlatformConvention)]
  TglSampleMaskEXT = public method(value: GLclampf; invert: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglSamplePatternEXT = public method(pattern: GLenum);

  // GL_EXT_paletted_texture
 [CallingConvention(PlatformConvention)]
  TglColorTableEXT = public method(target: GLenum; internalFormat: GLenum; width: GLsizei; format: GLenum; _type: GLenum; const table: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableEXT = public method(target: GLenum; format: GLenum; _type: GLenum; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableParameterivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableParameterfvEXT = public method(target: GLenum; pname: GLenum; params_: PGLfloat);

  // GL_EXT_pixel_transform
 [CallingConvention(PlatformConvention)]
  TglPixelTransformParameteriEXT = public method(target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglPixelTransformParameterfEXT = public method(target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPixelTransformParameterivEXT = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglPixelTransformParameterfvEXT = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);

  // GL_EXT_point_parameters
 [CallingConvention(PlatformConvention)]
  TglPointParameterfEXT = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointParameterfvEXT = public method(pname: GLenum; const params_: PGLfloat);

  // GL_EXT_polygon_offset
 [CallingConvention(PlatformConvention)]
  TglPolygonOffsetEXT = public method(factor: GLfloat; bias: GLfloat);

  // GL_EXT_secondary_color
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3bEXT = public method(red: GLbyte; green: GLbyte; blue: GLbyte);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3bvEXT = public method(const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3dEXT = public method(red: GLdouble; green: GLdouble; blue: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3dvEXT = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3fEXT = public method(red: GLfloat; green: GLfloat; blue: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3fvEXT = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3iEXT = public method(red: GLint; green: GLint; blue: GLint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3ivEXT = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3sEXT = public method(red: GLshort; green: GLshort; blue: GLshort);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3svEXT = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3ubEXT = public method(red: GLubyte; green: GLubyte; blue: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3ubvEXT = public method(const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3uiEXT = public method(red: GLuint; green: GLuint; blue: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3uivEXT = public method(const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3usEXT = public method(red: GLushort; green: GLushort; blue: GLushort);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3usvEXT = public method(const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColorPointerEXT = public method(size: GLint; _type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_EXT_stencil_two_side
 [CallingConvention(PlatformConvention)]
  TglActiveStencilFaceEXT = public method(face: GLenum);

  // GL_EXT_subtexture
 [CallingConvention(PlatformConvention)]
  TglTexSubImage1DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage2DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);

  // GL_EXT_texture3D
 [CallingConvention(PlatformConvention)]
  TglTexImage3DEXT = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage3DEXT = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);

  // GL_EXT_texture_object
 [CallingConvention(PlatformConvention)]
  TglAreTexturesResidentEXT = public method(n: GLsizei; const textures: PGLuint; residences: PGLboolean): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBindTextureEXT = public method(target: GLenum; texture: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteTexturesEXT = public method(n: GLsizei; const textures: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenTexturesEXT = public method(n: GLsizei; textures: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsTextureEXT = public method(texture: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglPrioritizeTexturesEXT = public method(n: GLsizei; const textures: PGLuint; const priorities: PGLclampf);

  // GL_EXT_texture_perturb_normal
 [CallingConvention(PlatformConvention)]
  TglTextureNormalEXT = public method(mode: GLenum);

  // GL_EXT_vertex_array
 [CallingConvention(PlatformConvention)]
  TglArrayElementEXT = public method(i: GLint);
 [CallingConvention(PlatformConvention)]
  TglColorPointerEXT = public method(size: GLint; _type: GLenum; stride: GLsizei; count: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglDrawArraysEXT = public method(mode: GLenum; first: GLint; count: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglEdgeFlagPointerEXT = public method(stride: GLsizei; count: GLsizei; const _pointer: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetPointervEXT = public method(pname: GLenum; params_: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglIndexPointerEXT = public method(_type: GLenum; stride: GLsizei; count: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglNormalPointerEXT = public method(_type: GLenum; stride: GLsizei; count: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexCoordPointerEXT = public method(size: GLint; _type: GLenum; stride: GLsizei; count: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVertexPointerEXT = public method(size: GLint; _type: GLenum; stride: GLsizei; count: GLsizei; const _pointer: PGLvoid);

  // GL_EXT_vertex_shader
 [CallingConvention(PlatformConvention)]
  TglBeginVertexShaderEXT = public method  ();
 [CallingConvention(PlatformConvention)]
  TglEndVertexShaderEXT = public method  ();
 [CallingConvention(PlatformConvention)]
  TglBindVertexShaderEXT = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGenVertexShadersEXT = public method(range: GLuint): GLuint;
 [CallingConvention(PlatformConvention)]
  TglDeleteVertexShaderEXT = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglShaderOp1EXT = public method(op: GLenum; res: GLuint; arg1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglShaderOp2EXT = public method(op: GLenum; res: GLuint; arg1: GLuint; arg2: GLuint);
 [CallingConvention(PlatformConvention)]
  TglShaderOp3EXT = public method(op: GLenum; res: GLuint; arg1: GLuint; arg2: GLuint; arg3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSwizzleEXT = public method(res: GLuint; _in: GLuint; outX: GLenum; outY: GLenum; outZ: GLenum; outW: GLenum);
 [CallingConvention(PlatformConvention)]
  TglWriteMaskEXT = public method(res: GLuint; _in: GLuint; outX: GLenum; outY: GLenum; outZ: GLenum; outW: GLenum);
 [CallingConvention(PlatformConvention)]
  TglInsertComponentEXT = public method(res: GLuint; src: GLuint; num: GLuint);
 [CallingConvention(PlatformConvention)]
  TglExtractComponentEXT = public method(res: GLuint; src: GLuint; num: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGenSymbolsEXT = public method(datatype: GLenum; storagetype: GLenum; range: GLenum; components: GLuint): GLuint;
 [CallingConvention(PlatformConvention)]
  TglSetInvariantEXT = public method(id: GLuint; _type: GLenum; const addr: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglSetLocalConstantEXT = public method(id: GLuint; _type: GLenum; const addr: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVariantbvEXT = public method(id: GLuint; const addr: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVariantsvEXT = public method(id: GLuint; const addr: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVariantivEXT = public method(id: GLuint; const addr: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVariantfvEXT = public method(id: GLuint; const addr: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVariantdvEXT = public method(id: GLuint; const addr: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVariantubvEXT = public method(id: GLuint; const addr: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVariantusvEXT = public method(id: GLuint; const addr: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVariantuivEXT = public method(id: GLuint; const addr: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVariantPointerEXT = public method(id: GLuint; _type: GLenum; stride: GLuint; const addr: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglEnableVariantClientStateEXT = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDisableVariantClientStateEXT = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglBindLightParameterEXT = public method(light: GLenum; value: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindMaterialParameterEXT = public method(face: GLenum; value: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindTexGenParameterEXT = public method(_unit: GLenum; coord: GLenum; value: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindTextureUnitParameterEXT = public method(_unit: GLenum; value: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglBindParameterEXT = public method(value: GLenum): GLuint;
 [CallingConvention(PlatformConvention)]
  TglIsVariantEnabledEXT = public method(id: GLuint; cap: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetVariantBooleanvEXT = public method(id: GLuint; value: GLenum; data: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetVariantIntegervEXT = public method(id: GLuint; value: GLenum; data: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVariantFloatvEXT = public method(id: GLuint; value: GLenum; data: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVariantPointervEXT = public method(id: GLuint; value: GLenum; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetInvariantBooleanvEXT = public method(id: GLuint; value: GLenum; data: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetInvariantIntegervEXT = public method(id: GLuint; value: GLenum; data: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetInvariantFloatvEXT = public method(id: GLuint; value: GLenum; data: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetLocalConstantBooleanvEXT = public method(id: GLuint; value: GLenum; data: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetLocalConstantIntegervEXT = public method(id: GLuint; value: GLenum; data: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetLocalConstantFloatvEXT = public method(id: GLuint; value: GLenum; data: PGLfloat);

  // GL_EXT_vertex_weighting
 [CallingConvention(PlatformConvention)]
  TglVertexWeightfEXT = public method(weight: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexWeightfvEXT = public method(const weight: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexWeightPointerEXT = public method(size: GLsizei; _type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_EXT_stencil_clear_tag
 [CallingConvention(PlatformConvention)]
  TglStencilClearTagEXT = public method(stencilTagBits: GLsizei; stencilClearTag: GLuint);

  // GL_EXT_framebuffer_blit
 [CallingConvention(PlatformConvention)]
  TglBlitFramebufferEXT = public method(srcX0: GLint; srcY0: GLint; srcX1: GLint; srcY1: GLint; dstX0: GLint; dstY0: GLint; dstX1: GLint; dstY1: GLint; mask: GLbitfield; filter: GLenum);

  // GL_EXT_framebuffer_multisample
 [CallingConvention(PlatformConvention)]
  TglRenderbufferStorageMultisampleEXT = public method(target: GLenum; samples: GLsizei; internalformat: GLenum; width: GLsizei; height: GLsizei);

  // GL_EXT_timer_query
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjecti64vEXT = public method(id: GLuint; pname: GLenum; params_: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetQueryObjectui64vEXT = public method(id: GLuint; pname: GLenum; params_: PGLuint64EXT);

  // GL_EXT_gpu_program_parameters
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameters4fvEXT = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameters4fvEXT = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLfloat);

  // GL_EXT_bindable_uniform
 [CallingConvention(PlatformConvention)]
  TglUniformBufferEXT = public method(_program: GLuint; location: GLint; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetUniformBufferSizeEXT = public method(_program: GLuint; location: GLint): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetUniformOffsetEXT = public method(_program: GLuint; location: GLint): GLintptr;

  // GL_EXT_draw_buffers2
 [CallingConvention(PlatformConvention)]
  TglColorMaskIndexedEXT = public method(buf: GLuint; r: GLboolean; g: GLboolean; b: GLboolean; a: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetBooleanIndexedvEXT = public method(value: GLenum; index_: GLuint; data: PGLboolean);
 [CallingConvention(PlatformConvention)]
  TglGetIntegerIndexedvEXT = public method(value: GLenum; index_: GLuint; data: PGLint);
 [CallingConvention(PlatformConvention)]
  TglEnableIndexedEXT = public method(target: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDisableIndexedEXT = public method(target: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglIsEnabledIndexedEXT = public method(target: GLenum; index_: GLuint): GLboolean;

  // GL_EXT_draw_instanced
 [CallingConvention(PlatformConvention)]
  TglDrawArraysInstancedEXT = public method(mode: GLenum; first: GLint; count: GLsizei; primcount: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglDrawElementsInstancedEXT = public method(mode: GLenum; count: GLsizei; _type: GLenum; const indices: Pointer; primcount: GLsizei);

  // GL_EXT_geometry_shader4
 [CallingConvention(PlatformConvention)]
  TglProgramParameteriEXT = public method(_program: GLuint; pname: GLenum; value: GLint);
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureEXT = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint);

 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureFaceEXT = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; face: GLenum);

  // GL_EXT_gpu_shader4
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1iEXT = public method(index_: GLuint; x: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2iEXT = public method(index_: GLuint; x: GLint; y: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3iEXT = public method(index_: GLuint; x: GLint; y: GLint; z: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4iEXT = public method(index_: GLuint; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1uiEXT = public method(index_: GLuint; x: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2uiEXT = public method(index_: GLuint; x: GLuint; y: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3uiEXT = public method(index_: GLuint; x: GLuint; y: GLuint; z: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4uiEXT = public method(index_: GLuint; x: GLuint; y: GLuint; z: GLuint; w: GLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1ivEXT = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2ivEXT = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3ivEXT = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4ivEXT = public method(index_: GLuint; const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI1uivEXT = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI2uivEXT = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI3uivEXT = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4uivEXT = public method(index_: GLuint; const v: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4bvEXT = public method(index_: GLuint; const v: PGLbyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4svEXT = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4ubvEXT = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribI4usvEXT = public method(index_: GLuint; const v: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribIPointerEXT = public method(index_: GLuint; size: GLint; _type: GLenum; stride: GLsizei; const _pointer: Pointer);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribIivEXT = public method(index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribIuivEXT = public method(index_: GLuint; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform1uiEXT = public method(location: GLint; v0: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform2uiEXT = public method(location: GLint; v0: GLuint; v1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform3uiEXT = public method(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform4uiEXT = public method(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint; v3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform1uivEXT = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform2uivEXT = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform3uivEXT = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglUniform4uivEXT = public method(location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetUniformuivEXT = public method(_program: GLuint; location: GLint; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglBindFragDataLocationEXT = public method(_program: GLuint; colorNumber: GLuint; const name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetFragDataLocationEXT = public method(_program: GLuint; const name: PGLchar): GLint;

  // GL_EXT_texture_array
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureLayerEXT = public method(target: GLenum; attachment: GLenum; texture: GLuint; level: GLint; layer: GLint);

  // GL_EXT_texture_buffer_object
 [CallingConvention(PlatformConvention)]
  TglTexBufferEXT = public method(target: GLenum; internalformat: GLenum; buffer: GLuint);

  // GL_EXT_texture_integer
 [CallingConvention(PlatformConvention)]
  TglClearColorIiEXT = public method(r: GLint; g: GLint; b: GLint; a: GLint);
 [CallingConvention(PlatformConvention)]
  TglClearColorIuiEXT = public method(r: GLuint; g: GLuint; b: GLuint; a: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTexParameterIivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTexParameterIuivEXT = public method(target: GLenum; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterIivEXT = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTexParameterIiuvEXT = public method(target: GLenum; pname: GLenum; params_: PGLuint);

  // GL_HP_image_transform
 [CallingConvention(PlatformConvention)]
  TglImageTransformParameteriHP = public method(target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglImageTransformParameterfHP = public method(target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglImageTransformParameterivHP = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglImageTransformParameterfvHP = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetImageTransformParameterivHP = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetImageTransformParameterfvHP = public method(target: GLenum; pname: GLenum; params_: PGLfloat);

  // GL_EXT_depth_bounds_test
 [CallingConvention(PlatformConvention)]
  TglDepthBoundsEXT = public method(zmin: GLclampd; zmax: GLclampd);

  // GL_EXT_blend_equation_separate
 [CallingConvention(PlatformConvention)]
  TglBlendEquationSeparateEXT = public method(modeRGB: GLenum; modeAlpha: GLenum);

  // GL_EXT_transform_feedback
 [CallingConvention(PlatformConvention)]
  TglBeginTransformFeedbackEXT = public method(primitiveMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEndTransformFeedbackEXT = public method  ();
 [CallingConvention(PlatformConvention)]
  TglBindBufferRangeEXT = public method(target: GLenum; index_: GLuint; buffer: GLuint; offset: GLintptr; size: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglBindBufferOffsetEXT = public method(target: GLenum; index_: GLuint; buffer: GLuint; offset: GLintptr);
 [CallingConvention(PlatformConvention)]
  TglBindBufferBaseEXT = public method(target: GLenum; index_: GLuint; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackVaryingsEXT = public method(program_: GLuint; count: GLsizei; const locations: PGLint; bufferMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbackVaryingEXT = public method(program_: GLuint; index_: GLuint; location: PGLint);

  // GL_EXT_direct_state_access
 [CallingConvention(PlatformConvention)]
  TglClientAttribDefaultEXT = public method(mask: GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglPushClientAttribDefaultEXT = public method(mask: GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglMatrixLoadfEXT = public method(mode: GLenum; const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixLoaddEXT = public method(mode: GLenum; const m: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixMultfEXT = public method(mode: GLenum; const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixMultdEXT = public method(mode: GLenum; const m: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixLoadIdentityEXT = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMatrixRotatefEXT = public method(mode: GLenum; angle: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixRotatedEXT = public method(mode: GLenum; angle: GLdouble; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixScalefEXT = public method(mode: GLenum; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixScaledEXT = public method(mode: GLenum; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixTranslatefEXT = public method(mode: GLenum; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixTranslatedEXT = public method(mode: GLenum; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixFrustumEXT = public method(mode: GLenum; left: GLdouble; right: GLdouble; bottom: GLdouble; top: GLdouble; zNear: GLdouble; zFar: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixOrthoEXT = public method(mode: GLenum; left: GLdouble; right: GLdouble; bottom: GLdouble; top: GLdouble; zNear: GLdouble; zFar: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixPopEXT = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMatrixPushEXT = public method(mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMatrixLoadTransposefEXT = public method(mode: GLenum; const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixLoadTransposedEXT = public method(mode: GLenum; const m: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMatrixMultTransposefEXT = public method(mode: GLenum; const m: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMatrixMultTransposedEXT = public method(mode: GLenum; const m: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterfEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterfvEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTextureParameteriEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTextureImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetTextureImageEXT = public method(texture: GLuint; target: GLenum; level: GLint; format: GLenum; type_: GLenum; pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterfvEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureLevelParameterfvEXT = public method(texture: GLuint; target: GLenum; level: GLint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetTextureLevelParameterivEXT = public method(texture: GLuint; target: GLenum; level: GLint; pname: GLenum; params_: GLint);
 [CallingConvention(PlatformConvention)]
  TglTextureImage3DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureSubImage3DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyTextureSubImage3DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameterfEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameterfvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameteriEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameterivEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMultiTexImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMultiTexSubImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMultiTexSubImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyMultiTexImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyMultiTexImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei; border: GLint);
 [CallingConvention(PlatformConvention)]
  TglCopyMultiTexSubImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglCopyMultiTexSubImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexImageEXT = public method(texunit: GLenum; target: GLenum; level: GLint; format: GLenum; type_: GLenum; pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexParameterfvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexParameterivEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexLevelParameterfvEXT = public method(texunit: GLenum; target: GLenum; level: GLint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexLevelParameterivEXT = public method(texunit: GLenum; target: GLenum; level: GLint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexImage3DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; format: GLenum; type_: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMultiTexSubImage3DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; type_: GLenum; const pixels:PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCopyMultiTexSubImage3DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglBindMultiTextureEXT = public method(texunit: GLenum; target: GLenum; texture: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEnableClientStateIndexedEXT = public method(array_: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDisableClientStateIndexedEXT = public method(array_: GLenum; index_: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoordPointerEXT = public method(texunit: GLenum; size: GLint; type_: GLenum; stride: GLsizei; const pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMultiTexEnvfEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexEnvfvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexEnviEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexEnvivEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGendEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGendvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGenfEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGenfvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGeniEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexGenivEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexEnvfvEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexEnvivEXT = public method(texunit: GLenum; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexGendvEXT = public method(texunit: GLenum; coord: GLenum; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexGenfvEXT = public method(texunit: GLenum; coord: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexGenivEXT = public method(texunit: GLenum; coord: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetFloatIndexedvEXT = public method(target: GLenum; index_: GLuint; data: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetDoubleIndexedvEXT = public method(target: GLenum; index_: GLuint; data: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetPointerIndexedvEXT = public method(target: GLenum; index_: GLuint; data: PPGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureImage3DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage3DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage2DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedTextureSubImage1DEXT = public method(texture: GLuint; target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedTextureImageEXT = public method(texture: GLuint; target: GLenum; lod: GLint; img: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexImage3DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; border: GLint; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexSubImage3DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexSubImage2DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglCompressedMultiTexSubImage1DEXT = public method(texunit: GLenum; target: GLenum; level: GLint; xoffset: GLint; width: GLsizei; format: GLenum; imageSize: GLsizei; const bits: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetCompressedMultiTexImageEXT = public method(texunit: GLenum; target: GLenum; lod: GLint; img: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramStringEXT = public method(program_: GLuint; target: GLenum; format: GLenum; len: GLsizei; const string_: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameter4dEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameter4dvEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; const params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameter4fEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameter4fvEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramLocalParameterdvEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramLocalParameterfvEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramivEXT = public method(program_: GLuint; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramStringEXT = public method(program_: GLuint; target: GLenum; pname: GLenum; string_: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameters4fvEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameterI4iEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameterI4ivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParametersI4ivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameterI4uiEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; x: GLuint; y: GLuint; z: GLuint; w: GLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParameterI4uivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedProgramLocalParametersI4uivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramLocalParameterIivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedProgramLocalParameterIuivEXT = public method(program_: GLuint; target: GLenum; index_: GLuint; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterIivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTextureParameterIuivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterIivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetTextureParameterIuivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameterIivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexParameterIuivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexParameterIivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMultiTexParameterIuivEXT = public method(texture: GLuint; target: GLenum; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1fEXT = public method(program_: GLuint; location: GLint; v0: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2fEXT = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3fEXT = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4fEXT = public method(program_: GLuint; location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat; v3: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1iEXT = public method(program_: GLuint; location: GLint; v0: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2iEXT = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3iEXT = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint; v2: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4iEXT = public method(program_: GLuint; location: GLint; v0: GLint; v1: GLint; v2: GLint; v3: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x3fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x2fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x4fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x2fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x4fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x3fvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1uiEXT = public method(program_: GLuint; location: GLint; v0: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2uiEXT = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3uiEXT = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint; v2: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4uiEXT = public method(program_: GLuint; location: GLint; v0: GLuint; v1: GLuint; v2: GLuint; v3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1uivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2uivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3uivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4uivEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferDataEXT = public method(buffer: GLuint; size: GLsizei; const data: PGLvoid; usage: GLenum);
 [CallingConvention(PlatformConvention)]
  TglNamedBufferSubDataEXT = public method(buffer: GLuint; offset: GLintptr; size: GLsizeiptr; const data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMapNamedBufferEXT = public method(buffer: GLuint; access: GLenum): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglUnmapNamedBufferEXT = public method(buffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglMapNamedBufferRangeEXT = public method(buffer: GLuint; offset: GLintptr; length: GLsizeiptr; access: GLbitfield): PGLvoid;
 [CallingConvention(PlatformConvention)]
  TglFlushMappedNamedBufferRangeEXT = public method(buffer: GLuint; offset: GLintptr; length: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglNamedCopyBufferSubDataEXT = public method(readBuffer: GLuint; writeBuffer: GLuint; readOffset: GLintptr; writeOffset: GLintptr; size: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferParameterivEXT = public method(buffer: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferPointervEXT = public method(buffer: GLuint; pname: GLenum; params_: PPGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferSubDataEXT = public method(buffer: GLuint; offset: GLintptr; size: GLsizeiptr; data: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTextureBufferEXT = public method(texture: GLuint; target: GLenum; internalformat: GLenum; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexBufferEXT = public method(texunit: GLenum; target: GLenum; interformat: GLenum; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglNamedRenderbufferStorageEXT = public method(renderbuffer: GLuint; interformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetNamedRenderbufferParameterivEXT = public method(renderbuffer: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglCheckNamedFramebufferStatusEXT = public method(framebuffer: GLuint; target: GLenum): GLenum;
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTexture1DEXT = public method(framebuffer: GLuint; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTexture2DEXT = public method(framebuffer: GLuint; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTexture3DEXT = public method(framebuffer: GLuint; attachment: GLenum; textarget: GLenum; texture: GLuint; level: GLint; zoffset: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferRenderbufferEXT = public method(framebuffer: GLuint; attachment: GLenum; renderbuffertarget: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetNamedFramebufferAttachmentParameterivEXT = public method(framebuffer: GLuint; attachment: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGenerateTextureMipmapEXT = public method(texture: GLuint; target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGenerateMultiTexMipmapEXT = public method(texunit: GLenum; target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglFramebufferDrawBufferEXT = public method(framebuffer: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglFramebufferDrawBuffersEXT = public method(framebuffer: GLuint; n: GLsizei; const bufs: PGLenum);
 [CallingConvention(PlatformConvention)]
  TglFramebufferReadBufferEXT = public method(framebuffer: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetFramebufferParameterivEXT = public method(framebuffer: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglNamedRenderbufferStorageMultisampleEXT = public method(renderbuffer: GLuint; samples: GLsizei; internalformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglNamedRenderbufferStorageMultisampleCoverageEXT = public method(renderbuffer: GLuint; coverageSamples: GLsizei; colorSamples: GLsizei; internalformat: GLenum; width: GLsizei; height: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTextureEXT = public method(framebuffer: GLuint; attachment: GLenum; texture: GLuint; level: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTextureLayerEXT = public method(framebuffer: GLuint; attachment: GLenum; texture: GLuint; level: GLint; layer: GLint);
 [CallingConvention(PlatformConvention)]
  TglNamedFramebufferTextureFaceEXT = public method(framebuffer: GLuint; attachment: GLenum; texture: GLuint; level: GLint; face: GLenum);
 [CallingConvention(PlatformConvention)]
  TglTextureRenderbufferEXT = public method(texture: GLuint; target: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglMultiTexRenderbufferEXT = public method(texunit: GLenum; target: GLenum; renderbuffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1dEXT = public method(program_: GLuint; location: GLint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2dEXT = public method(program_: GLuint; location: GLint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3dEXT = public method(program_: GLuint; location: GLint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4dEXT = public method(program_: GLuint; location: GLint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x3dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix2x4dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x2dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix3x4dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x2dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformMatrix4x3dvEXT = public method(program_: GLuint; location: GLint; count: GLsizei; transpose: GLboolean; const value: PGLdouble);

  // GL_EXT_separate_shader_objects
 [CallingConvention(PlatformConvention)]
  TglUseShaderProgramEXT = public method(_type: GLenum; _program: GLuint);
 [CallingConvention(PlatformConvention)]
  TglActiveProgramEXT = public method(_program: GLuint);
 [CallingConvention(PlatformConvention)]
  TglCreateShaderProgramEXT = public method(_type: GLenum; const _string: PGLchar): GLuint;

  // GL_EXT_shader_image_load_store
 [CallingConvention(PlatformConvention)]
  TglBindImageTextureEXT = public method(index_: GLuint; texture: GLuint; level: GLint; layered: GLboolean; layer: GLint; access: GLenum; format: GLint);
 [CallingConvention(PlatformConvention)]
  TglMemoryBarrierEXT = public method(barriers: GLbitfield);

  // GL_EXT_vertex_attrib_64bit
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1dEXT = public method(index_: GLuint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2dEXT = public method(index_: GLuint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3dEXT = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4dEXT = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1dvEXT = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2dvEXT = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3dvEXT = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4dvEXT = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribLPointerEXT = public method(index_: GLuint; size: GLint; type_: GLenum; stride: GLsizei; const pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribLdvEXT = public method(index_: GLuint; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexArrayVertexAttribLOffsetEXT = public method(vaobj: GLuint; buffer: GLuint; index_: GLuint; size: GLint; type_: GLenum; stride: GLsizei; offset: GLintptr);

  // GL_IBM_multimode_draw_arrays
 [CallingConvention(PlatformConvention)]
  TglMultiModeDrawArraysIBM = public method(mode: GLenum; const first: PGLint; const count: PGLsizei; primcount: GLsizei; modestride: GLint);
 [CallingConvention(PlatformConvention)]
  TglMultiModeDrawElementsIBM = public method(const mode: PGLenum; const count: PGLsizei; _type: GLenum; const indices: PGLvoid; primcount: GLsizei; modestride: GLint);

  // GL_IBM_vertex_array_lists
 [CallingConvention(PlatformConvention)]
  TglColorPointerListIBM = public method(size: GLint; _type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColorPointerListIBM = public method(size: GLint; _type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglEdgeFlagPointerListIBM = public method(stride: GLint; const _pointer: PGLboolean; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglFogCoordPointerListIBM = public method(_type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglIndexPointerListIBM = public method(_type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglNormalPointerListIBM = public method(_type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglTexCoordPointerListIBM = public method(size: GLint; _type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);
 [CallingConvention(PlatformConvention)]
  TglVertexPointerListIBM = public method(size: GLint; _type: GLenum; stride: GLint; const _pointer: PGLvoid; ptrstride: GLint);

  // GL_INGR_blend_func_separate
 [CallingConvention(PlatformConvention)]
  TglBlendFuncSeparateINGR = public method(sfactorRGB: GLenum; dfactorRGB: GLenum; sfactorAlpha: GLenum; dfactorAlpha: GLenum);

  // GL_INTEL_framebuffer_CMAA
 [CallingConvention(PlatformConvention)]
  TglApplyFramebufferAttachmentCMAAINTEL = public method  ();

  // GL_INTEL_parallel_arrays
 [CallingConvention(PlatformConvention)]
  TglVertexPointervINTEL = public method(size: GLint; _type: GLenum; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglNormalPointervINTEL = public method(_type: GLenum; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglColorPointervINTEL = public method(size: GLint; _type: GLenum; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexCoordPointervINTEL = public method(size: GLint; _type: GLenum; const _pointer: PGLvoid);

  // GL_MESA_resize_buffers
 [CallingConvention(PlatformConvention)]
  TglResizeBuffersMESA = public method  ();

  // GL_MESA_window_pos
 [CallingConvention(PlatformConvention)]
  TglWindowPos2dMESA = public method(x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2dvMESA = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2fMESA = public method(x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2fvMESA = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2iMESA = public method(x: GLint; y: GLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2ivMESA = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2sMESA = public method(x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos2svMESA = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3dMESA = public method(x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3dvMESA = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3fMESA = public method(x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3fvMESA = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3iMESA = public method(x: GLint; y: GLint; z: GLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3ivMESA = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3sMESA = public method(x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos3svMESA = public method(const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4dMESA = public method(x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4dvMESA = public method(const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4fMESA = public method(x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4fvMESA = public method(const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4iMESA = public method(x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4ivMESA = public method(const v: PGLint);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4sMESA = public method(x: GLshort; y: GLshort; z: GLshort; w: GLshort);
 [CallingConvention(PlatformConvention)]
  TglWindowPos4svMESA = public method(const v: PGLshort);

  // GL_NV_evaluators
 [CallingConvention(PlatformConvention)]
  TglMapControlPointsNV = public method(target: GLenum; index_: GLuint; _type: GLenum; ustride: GLsizei; vstride: GLsizei; uorder: GLint; vorder: GLint; _packed: GLboolean; const points: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglMapParameterivNV = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglMapParameterfvNV = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMapControlPointsNV = public method(target: GLenum; index_: GLuint; _type: GLenum; ustride: GLsizei; vstride: GLsizei; _packed: GLboolean; points: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetMapParameterivNV = public method(target: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMapParameterfvNV = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetMapAttribParameterivNV = public method(target: GLenum; index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetMapAttribParameterfvNV = public method(target: GLenum; index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglEvalMapsNV = public method(target: GLenum; mode: GLenum);

  // GL_NV_fence
 [CallingConvention(PlatformConvention)]
  TglDeleteFencesNV = public method(n: GLsizei; const fences: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenFencesNV = public method(n: GLsizei; fences: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsFenceNV = public method(fence: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglTestFenceNV = public method(fence: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetFenceivNV = public method(fence: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglFinishFenceNV = public method(fence: GLuint);
 [CallingConvention(PlatformConvention)]
  TglSetFenceNV = public method(fence: GLuint; condition: GLenum);

  // GL_NV_fragment_program
 [CallingConvention(PlatformConvention)]
  TglProgramNamedParameter4fNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramNamedParameter4dNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramNamedParameter4fvNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramNamedParameter4dvNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetProgramNamedParameterfvNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetProgramNamedParameterdvNV = public method(id: GLuint; len: GLsizei; const name: PGLubyte; params_: PGLdouble);

  // GL_NV_half_float
 [CallingConvention(PlatformConvention)]
  TglVertex2hNV = public method(x: GLhalfNV; y: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertex2hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertex3hNV = public method(x: GLhalfNV; y: GLhalfNV; z: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertex3hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertex4hNV = public method(x: GLhalfNV; y: GLhalfNV; z: GLhalfNV; w: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertex4hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglNormal3hNV = public method(nx: GLhalfNV; ny: GLhalfNV; nz: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglNormal3hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglColor3hNV = public method(red: GLhalfNV; green: GLhalfNV; blue: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglColor3hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglColor4hNV = public method(red: GLhalfNV; green: GLhalfNV; blue: GLhalfNV; alpha: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglColor4hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord1hNV = public method(s: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord1hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2hNV = public method(s: GLhalfNV; t: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord3hNV = public method(s: GLhalfNV; t: GLhalfNV; r: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord3hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4hNV = public method(s: GLhalfNV; t: GLhalfNV; r: GLhalfNV; q: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1hNV = public method(target: GLenum; s: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord1hvNV = public method(target: GLenum; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2hNV = public method(target: GLenum; s: GLhalfNV; t: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord2hvNV = public method(target: GLenum; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3hNV = public method(target: GLenum; s: GLhalfNV; t: GLhalfNV; r: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord3hvNV = public method(target: GLenum; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4hNV = public method(target: GLenum; s: GLhalfNV; t: GLhalfNV; r: GLhalfNV; q: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglMultiTexCoord4hvNV = public method(target: GLenum; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglFogCoordhNV = public method(fog: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglFogCoordhvNV = public method(const fog: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3hNV = public method(red: GLhalfNV; green: GLhalfNV; blue: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColor3hvNV = public method(const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexWeighthNV = public method(weight: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexWeighthvNV = public method(const weight: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1hNV = public method(index_: GLuint; x: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1hvNV = public method(index_: GLuint; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2hNV = public method(index_: GLuint; x: GLhalfNV; y: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2hvNV = public method(index_: GLuint; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3hNV = public method(index_: GLuint; x: GLhalfNV; y: GLhalfNV; z: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3hvNV = public method(index_: GLuint; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4hNV = public method(index_: GLuint; x: GLhalfNV; y: GLhalfNV; z: GLhalfNV; w: GLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4hvNV = public method(index_: GLuint; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs1hvNV = public method(index_: GLuint; n: GLsizei; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs2hvNV = public method(index_: GLuint; n: GLsizei; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs3hvNV = public method(index_: GLuint; n: GLsizei; const v: PGLhalfNV);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs4hvNV = public method(index_: GLuint; n: GLsizei; const v: PGLhalfNV);

  // GL_NV_occlusion_query
 [CallingConvention(PlatformConvention)]
  TglGenOcclusionQueriesNV = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteOcclusionQueriesNV = public method(n: GLsizei; const ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsOcclusionQueryNV = public method(id: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBeginOcclusionQueryNV = public method(id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndOcclusionQueryNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglGetOcclusionQueryivNV = public method(id: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetOcclusionQueryuivNV = public method(id: GLuint; pname: GLenum; params_: PGLuint);

  // GL_NV_pixel_data_range
 [CallingConvention(PlatformConvention)]
  TglPixelDataRangeNV = public method(target: GLenum; length: GLsizei; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglFlushPixelDataRangeNV = public method(target: GLenum);

  // GL_NV_point_sprite
 [CallingConvention(PlatformConvention)]
  TglPointParameteriNV = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglPointParameterivNV = public method(pname: GLenum; const params_: PGLint);

  // GL_NV_primitive_restart
 [CallingConvention(PlatformConvention)]
  TglPrimitiveRestartNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglPrimitiveRestartIndexNV = public method(index_: GLuint);

  // GL_NV_register_combiners
 [CallingConvention(PlatformConvention)]
  TglCombinerParameterfvNV = public method(pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglCombinerParameterfNV = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglCombinerParameterivNV = public method(pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglCombinerParameteriNV = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglCombinerInputNV = public method(stage: GLenum; portion: GLenum; variable: GLenum; input: GLenum; mapping: GLenum; componentUsage: GLenum);
 [CallingConvention(PlatformConvention)]
  TglCombinerOutputNV = public method(stage: GLenum; portion: GLenum; abOutput: GLenum; cdOutput: GLenum; sumOutput: GLenum; scale: GLenum; bias: GLenum; abDotProduct: GLboolean; cdDotProduct: GLboolean; muxSum: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglFinalCombinerInputNV = public method(variable: GLenum; input: GLenum; mapping: GLenum; componentUsage: GLenum);
 [CallingConvention(PlatformConvention)]
  TglGetCombinerInputParameterfvNV = public method(stage: GLenum; portion: GLenum; variable: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetCombinerInputParameterivNV = public method(stage: GLenum; portion: GLenum; variable: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetCombinerOutputParameterfvNV = public method(stage: GLenum; portion: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetCombinerOutputParameterivNV = public method(stage: GLenum; portion: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetFinalCombinerInputParameterfvNV = public method(variable: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetFinalCombinerInputParameterivNV = public method(variable: GLenum; pname: GLenum; params_: PGLint);

  // GL_NV_register_combiners2
 [CallingConvention(PlatformConvention)]
  TglCombinerStageParameterfvNV = public method(stage: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetCombinerStageParameterfvNV = public method(stage: GLenum; pname: GLenum; params_: PGLfloat);

  // GL_NV_vertex_array_range
 [CallingConvention(PlatformConvention)]
  TglFlushVertexArrayRangeNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglVertexArrayRangeNV = public method(length: GLsizei; const _pointer: PGLvoid);

  // GL_NV_vertex_program
 [CallingConvention(PlatformConvention)]
  TglAreProgramsResidentNV = public method(n: GLsizei; const programs: PGLuint; residences: PGLboolean): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglBindProgramNV = public method(target: GLenum; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteProgramsNV = public method(n: GLsizei; const programs: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglExecuteProgramNV = public method(target: GLenum; id: GLuint; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGenProgramsNV = public method(n: GLsizei; programs: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramParameterdvNV = public method(target: GLenum; index_: GLuint; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetProgramParameterfvNV = public method(target: GLenum; index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetProgramivNV = public method(id: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramStringNV = public method(id: GLuint; pname: GLenum; _program: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglGetTrackMatrixivNV = public method(target: GLenum; address: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribdvNV = public method(index_: GLuint; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribfvNV = public method(index_: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribivNV = public method(index_: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribPointervNV = public method(index_: GLuint; pname: GLenum; _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglIsProgramNV = public method(id: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglLoadProgramNV = public method(target: GLenum; id: GLuint; len: GLsizei; const _program: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglProgramParameter4dNV = public method(target: GLenum; index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramParameter4dvNV = public method(target: GLenum; index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramParameter4fNV = public method(target: GLenum; index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramParameter4fvNV = public method(target: GLenum; index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramParameters4dvNV = public method(target: GLenum; index_: GLuint; count: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglProgramParameters4fvNV = public method(target: GLenum; index_: GLuint; count: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglRequestResidentProgramsNV = public method(n: GLsizei; const programs: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglTrackMatrixNV = public method(target: GLenum; address: GLuint; matrix: GLenum; transform: GLenum);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribPointerNV = public method(index_: GLuint; fsize: GLint; _type: GLenum; stride: GLsizei; const _pointer: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1dNV = public method(index_: GLuint; x: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1dvNV = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1fNV = public method(index_: GLuint; x: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1fvNV = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1sNV = public method(index_: GLuint; x: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib1svNV = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2dNV = public method(index_: GLuint; x: GLdouble; y: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2dvNV = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2fNV = public method(index_: GLuint; x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2fvNV = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2sNV = public method(index_: GLuint; x: GLshort; y: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib2svNV = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3dNV = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3dvNV = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3fNV = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3fvNV = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3sNV = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib3svNV = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4dNV = public method(index_: GLuint; x: GLdouble; y: GLdouble; z: GLdouble; w: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4dvNV = public method(index_: GLuint; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4fNV = public method(index_: GLuint; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4fvNV = public method(index_: GLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4sNV = public method(index_: GLuint; x: GLshort; y: GLshort; z: GLshort; w: GLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4svNV = public method(index_: GLuint; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4ubNV = public method(index_: GLuint; x: GLubyte; y: GLubyte; z: GLubyte; w: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttrib4ubvNV = public method(index_: GLuint; const v: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs1dvNV = public method(index_: GLuint; count: GLsizei; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs1fvNV = public method(index_: GLuint; count: GLsizei; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs1svNV = public method(index_: GLuint; count: GLsizei; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs2dvNV = public method(index_: GLuint; count: GLsizei; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs2fvNV = public method(index_: GLuint; count: GLsizei; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs2svNV = public method(index_: GLuint; count: GLsizei; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs3dvNV = public method(index_: GLuint; count: GLsizei; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs3fvNV = public method(index_: GLuint; count: GLsizei; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs3svNV = public method(index_: GLuint; count: GLsizei; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs4dvNV = public method(index_: GLuint; count: GLsizei; const v: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs4fvNV = public method(index_: GLuint; count: GLsizei; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs4svNV = public method(index_: GLuint; count: GLsizei; const v: PGLshort);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribs4ubvNV = public method(index_: GLuint; count: GLsizei; const v: PGLubyte);

  // GL_NV_depth_buffer_float
 [CallingConvention(PlatformConvention)]
  TglDepthRangedNV = public method(n: GLdouble; f: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglClearDepthdNV = public method(d: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglDepthBoundsdNV = public method(zmin: GLdouble; zmax: GLdouble);

  // GL_NV_framebuffer_multisample_coverage
 [CallingConvention(PlatformConvention)]
  TglRenderbufferStorageMultsampleCoverageNV = public method(target: GLenum; coverageSamples: GLsizei; colorSamples: GLsizei; internalformat: GLenum; width: GLsizei; height: GLsizei);

  // GL_NV_geometry_program4
 [CallingConvention(PlatformConvention)]
  TglProgramVertexLimitNV = public method(target: GLenum; limit: GLint);

  // GL_NV_gpu_program4
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameterI4iNV = public method(target: GLenum; index_: GLuint; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameterI4ivNV = public method(target: GLenum; index_: GLuint; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParametersI4ivNV = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameterI4uiNV = public method(target: GLenum; index_: GLuint; x: GLuint; y: GLuint; z: GLuint; w: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParameterI4uivNV = public method(target: GLenum; index_: GLuint; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramLocalParametersI4uivNV = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameterI4iNV = public method(target: GLenum; index_: GLuint; x: GLint; y: GLint; z: GLint; w: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameterI4ivNV = public method(target: GLenum; index_: GLuint; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParametersI4ivNV = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameterI4uiNV = public method(target: GLenum; index_: GLuint; x: GLuint; y: GLuint; z: GLuint; w: GLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParameterI4uivNV = public method(target: GLenum; index_: GLuint; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglProgramEnvParametersI4uivNV = public method(target: GLenum; index_: GLuint; count: GLsizei; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramLocalParameterIivNV = public method(target: GLenum; index_: GLuint; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramLocalParameterIuivNV = public method(target: GLenum; index_: GLuint; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramEnvParameterIivNV = public method(target: GLenum; index_: GLuint; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramEnvParameterIuivNV = public method(target: GLenum; index_: GLuint; params_: PGLuint);

  // GL_NV_parameter_buffer_object
 [CallingConvention(PlatformConvention)]
  TglProgramBufferParametersfvNV = public method(target: GLenum; buffer: GLuint; index_: GLuint; count: GLsizei; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglProgramBufferParametersIivNV = public method(target: GLenum; buffer: GLuint; index_: GLuint; count: GLsizei; const params_: GLint);
 [CallingConvention(PlatformConvention)]
  TglProgramBufferParametersIuivNV = public method(target: GLenum; buffer: GLuint; index_: GLuint; count: GLuint; const params_: PGLuint);

  // GL_NV_transform_feedback
 [CallingConvention(PlatformConvention)]
  TglBeginTransformFeedbackNV = public method(primitiveMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEndTransformFeedbackNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackAttribsNV = public method(count: GLsizei; const attribs: GLint; bufferMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglBindBufferRangeNV = public method(target: GLenum; index_: GLuint; buffer: GLuint; offset: GLintptr; size: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglBindBufferOffsetNV = public method(target: GLenum; index_: GLuint; buffer: GLuint; offset: GLintptr);
 [CallingConvention(PlatformConvention)]
  TglBindBufferBaseNV = public method(target: GLenum; index_: GLuint; buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackVaryingsNV = public method(program_: GLuint; count: GLsizei; const locations: PGLint; bufferMode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglActiveVaryingNV = public method(program_: GLuint; const name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetVaryingLocationNV = public method(program_: GLuint; const name: PGLchar): GLint;
 [CallingConvention(PlatformConvention)]
  TglGetActiveVaryingNV = public method(program_: GLuint; index_: GLuint; bufSize: GLsizei; length: PGLsizei; size: PGLsizei; _type: PGLenum; name: PGLchar);
 [CallingConvention(PlatformConvention)]
  TglGetTransformFeedbackVaryingNV = public method(program_: GLuint; index_: GLuint; location: PGLint);
 [CallingConvention(PlatformConvention)]
  TglTransformFeedbackStreamAttribsNV = public method(count: GLsizei; const attribs: PGLint; nbuffers: GLsizei; const bufstreams: PGLint; bufferMode: GLenum);

  // GL_NV_conditional_render
 [CallingConvention(PlatformConvention)]
  TglBeginConditionalRenderNV = public method(id: GLuint; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglEndConditionalRenderNV = public method  ();

  // GL_NV_conservative_raster
 [CallingConvention(PlatformConvention)]
  TglSubpixelPrecisionBiasNV = public method(xbits : GLuint; ybits : GLuint);

  // GL_NV_conservative_raster_dilate
 [CallingConvention(PlatformConvention)]
  TglConservativeRasterParameterfNV = public method(pname : GLenum; value : GLfloat);

  // GL_NV_present_video
 [CallingConvention(PlatformConvention)]
  TglPresentFrameKeyedNV = public method(video_slot: GLuint; minPresentTime: GLuint64EXT; beginPresentTimeId: GLuint; presentDuratioId: GLuint; type_: GLenum; target0: GLenum; fill0: GLuint; key0: GLuint; target1: GLenum; fill1: GLuint; key1: GLuint);
 [CallingConvention(PlatformConvention)]
  TglPresentFrameDualFillNV = public method(video_slot: GLuint; minPresentTime: GLuint64EXT; beginPresentTimeId: GLuint; presentDurationId: GLuint; type_: GLenum; target0: GLenum; fill0: GLuint; target1: GLenum; fill1: GLuint; target2: GLenum; fill2: GLuint; target3: GLenum; fill3: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVideoivNV = public method(video_slot: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVideouivNV = public method(video_slot: GLuint; pname: GLenum; params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVideoi64vNV = public method(video_slot: GLuint; pname: GLenum; params_: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetVideoui64vNV = public method(video_slot: GLuint; pname: GLenum; params_: PGLuint64EXT);
//  TglVideoParameterivNV = public method(video_slot: GLuint; pname: GLenum; const params_: PGLint);

  // GL_NV_explicit_multisample
 [CallingConvention(PlatformConvention)]
  TglGetMultisamplefvNV = public method(pname: GLenum; index_: GLuint; val: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglSampleMaskIndexedNV = public method(index_: GLuint; mask: GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglTexRenderbufferNV = public method(target: GLenum; renderbuffer: GLuint);

  // GL_NV_transform_feedback2
 [CallingConvention(PlatformConvention)]
  TglBindTransformFeedbackNV = public method(target: GLenum; id: GLuint);
 [CallingConvention(PlatformConvention)]
  TglDeleteTransformFeedbacksNV = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGenTransformFeedbacksNV = public method(n: GLsizei; ids: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglIsTransformFeedbackNV = public method(id: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglPauseTransformFeedbackNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglResumeTransformFeedbackNV = public method  ();
 [CallingConvention(PlatformConvention)]
  TglDrawTransformFeedbackNV = public method(mode: GLenum; id: GLuint);

  // GL_NV_video_capture
 [CallingConvention(PlatformConvention)]
  TglBeginVideoCaptureNV = public method(video_capture_slot: GLuint);
 [CallingConvention(PlatformConvention)]
  TglBindVideoCaptureStreamBufferNV = public method(video_capture_slot: GLuint; stream: GLuint; frame_region: GLenum; offset: GLintptrARB);
 [CallingConvention(PlatformConvention)]
  TglBindVideoCaptureStreamTextureNV = public method(video_capture_slot: GLuint; stream: GLuint; frame_region: GLenum; target: GLenum; texture: GLuint);
 [CallingConvention(PlatformConvention)]
  TglEndVideoCaptureNV = public method(video_capture_slot: GLuint);
 [CallingConvention(PlatformConvention)]
  TglGetVideoCaptureivNV = public method(video_capture_slot: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVideoCaptureStreamivNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetVideoCaptureStreamfvNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetVideoCaptureStreamdvNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; params_: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglVideoCaptureNV = public method(video_capture_slot: GLuint; sequence_num: PGLuint; capture_time: PGLuint64EXT): GLenum;
 [CallingConvention(PlatformConvention)]
  TglVideoCaptureStreamParameterivNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVideoCaptureStreamParameterfvNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglVideoCaptureStreamParameterdvNV = public method(video_capture_slot: GLuint; stream: GLuint; pname: GLenum; const params_: PGLdouble);

  // GL_NV_copy_image
 [CallingConvention(PlatformConvention)]
  TglCopyImageSubDataNV = public method(srcName: GLuint; srcTarget: GLenum; srcLevel: GLint; srcX: GLint; srcY: GLint; srcZ: GLint; dstName: GLuint; dstTarget: GLenum; dstLevel: GLint; dstX: GLint; dstY: GLint; dstZ: GLint; width: GLsizei; height: GLsizei; depth: GLsizei);

  // GL_NV_shader_buffer_load
 [CallingConvention(PlatformConvention)]
  TglMakeBufferResidentNV = public method(target: GLenum; access: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMakeBufferNonResidentNV = public method(target: GLenum);
 [CallingConvention(PlatformConvention)]
  TglIsBufferResidentNV = public method(target: GLenum): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglMakeNamedBufferResidentNV = public method(buffer: GLuint; access: GLenum);
 [CallingConvention(PlatformConvention)]
  TglMakeNamedBufferNonResidentNV = public method(buffer: GLuint);
 [CallingConvention(PlatformConvention)]
  TglIsNamedBufferResidentNV = public method(buffer: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetBufferParameterui64vNV = public method(target: GLenum; pname: GLenum; params_: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetNamedBufferParameterui64vNV = public method(buffer: GLuint; pname: GLenum; params_: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetIntegerui64vNV = public method(value: GLenum; result_: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniformui64NV = public method(location: GLint; value: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniformui64vNV = public method(location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetUniformui64vNV = public method(_program: GLuint; location: GLint; params_: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformui64NV = public method(_program: GLuint; location: GLint; value: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformui64vNV = public method(_program: GLuint; location: GLint; count: GLsizei; const value: PGLuint64EXT);

  // GL_NV_vertex_buffer_unified_memory
 [CallingConvention(PlatformConvention)]
  TglBufferAddressRangeNV = public method(pname: GLenum; index_: GLuint; adress: GLuint64EXT; length: GLsizeiptr);
 [CallingConvention(PlatformConvention)]
  TglVertexFormatNV = public method(size: GLint; _type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglNormalFormatNV = public method(_type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglColorFormatNV = public method(size: GLint; _type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglIndexFormatNV = public method(_type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglTexCoordFormatNV = public method(size: GLint; _type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglEdgeFlagFormatNV = public method(stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglSecondaryColorFormatNV = public method(size: GLint; _type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglFogCoordFormatNV = public method(_type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribFormatNV = public method(index_: GLuint; size: GLint; _type: GLenum; normalized: GLboolean; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribIFormatNV = public method(index_: GLuint; size: GLint; _type: GLenum; stride: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetIntegerui64i_vNV = public method(value: GLenum; index_: GLuint; Result_: PGLuint64EXT);

  // GL_NV_gpu_program5
 [CallingConvention(PlatformConvention)]
  TglProgramSubroutineParametersuivNV = public method(target: GLenum; count: GLsizei; const params_: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglGetProgramSubroutineParameteruivNV = public method(target: GLenum; index_: GLuint; param_: PGLuint);

  // GL_NV_gpu_shader5
 [CallingConvention(PlatformConvention)]
  TglUniform1i64NV = public method(location: GLint; x: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform2i64NV = public method(location: GLint; x: GLint64EXT; y: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform3i64NV = public method(location: GLint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform4i64NV = public method(location: GLint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT; w: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform1i64vNV = public method(location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform2i64vNV = public method(location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform3i64vNV = public method(location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform4i64vNV = public method(location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform1ui64NV = public method(location: GLint; x: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform2ui64NV = public method(location: GLint; x: GLuint64EXT; y: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform3ui64NV = public method(location: GLint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform4ui64NV = public method(location: GLint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT; w: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform1ui64vNV = public method(location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform2ui64vNV = public method(location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform3ui64vNV = public method(location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglUniform4ui64vNV = public method(location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetUniformi64vNV = public method(program_: GLuint; location: GLint; params_: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1i64NV = public method(program_: GLuint; location: GLint; x: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2i64NV = public method(program_: GLuint; location: GLint; x: GLint64EXT; y: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3i64NV = public method(program_: GLuint; location: GLint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4i64NV = public method(program_: GLuint; location: GLint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT; w: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1i64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2i64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3i64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4i64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ui64NV = public method(program_: GLuint; location: GLint; x: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ui64NV = public method(program_: GLuint; location: GLint; x: GLuint64EXT; y: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ui64NV = public method(program_: GLuint; location: GLint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ui64NV = public method(program_: GLuint; location: GLint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT; w: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform1ui64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform2ui64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform3ui64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglProgramUniform4ui64vNV = public method(program_: GLuint; location: GLint; count: GLsizei; const value: PGLuint64EXT);

  // GL_NV_vertex_attrib_integer_64bit
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1i64NV = public method(index_: GLuint; x: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2i64NV = public method(index_: GLuint; x: GLint64EXT; y: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3i64NV = public method(index_: GLuint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4i64NV = public method(index_: GLuint; x: GLint64EXT; y: GLint64EXT; z: GLint64EXT; w: GLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1i64vNV = public method(index_: GLuint; const v: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2i64vNV = public method(index_: GLuint; const v: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3i64vNV = public method(index_: GLuint; const v: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4i64vNV = public method(index_: GLuint; const v: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1ui64NV = public method(index_: GLuint; x: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2ui64NV = public method(index_: GLuint; x: GLuint64EXT; y: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3ui64NV = public method(index_: GLuint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4ui64NV = public method(index_: GLuint; x: GLuint64EXT; y: GLuint64EXT; z: GLuint64EXT; w: GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1ui64vNV = public method(index_: GLuint; const v: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL2ui64vNV = public method(index_: GLuint; const v: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL3ui64vNV = public method(index_: GLuint; const v: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL4ui64vNV = public method(index_: GLuint; const v: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribLi64vNV = public method(index_: GLuint; pname: GLenum; params_: PGLint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribLui64vNV = public method(index_: GLuint; pname: GLenum; params_: PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribLFormatNV = public method(index_: GLuint; size: GLint; type_: GLenum; stride: GLsizei);

  // GL_NV_vdpau_interop
 [CallingConvention(PlatformConvention)]
  TglVDPAUInitNV = public method(const vdpDevice: PGLvoid; const getProcAddress: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglVDPAUFiniNV = public method  ;
 [CallingConvention(PlatformConvention)]
  TglVDPAURegisterVideoSurfaceNV = public method(vdpSurface: PGLvoid; target: GLenum; numTextureNames: GLsizei; const textureNames: PGLuint): GLvdpauSurfaceNV;
 [CallingConvention(PlatformConvention)]
  TglVDPAURegisterOutputSurfaceNV = public method(vdpSurface: PGLvoid; target: GLenum; numTextureNames: GLsizei; const textureNames: PGLuint): GLvdpauSurfaceNV;
 [CallingConvention(PlatformConvention)]
  TglVDPAUIsSurfaceNV = public method(surface: GLvdpauSurfaceNV);
 [CallingConvention(PlatformConvention)]
  TglVDPAUUnregisterSurfaceNV = public method(surface: GLvdpauSurfaceNV);
 [CallingConvention(PlatformConvention)]
  TglVDPAUGetSurfaceivNV = public method(surface: GLvdpauSurfaceNV; pname: GLenum; bufSize: GLsizei; length: PGLsizei; values: PGLint);
 [CallingConvention(PlatformConvention)]
  TglVDPAUSurfaceAccessNV = public method(surface: GLvdpauSurfaceNV; access: GLenum);
 [CallingConvention(PlatformConvention)]
  TglVDPAUMapSurfacesNV = public method(numSurfaces: GLsizei; const surfaces: PGLvdpauSurfaceNV);
 [CallingConvention(PlatformConvention)]
  TglVDPAUUnmapSurfacesNV = public method(numSurface: GLsizei; const surfaces: PGLvdpauSurfaceNV);

  // GL_NV_texture_barrier
 [CallingConvention(PlatformConvention)]
  TglTextureBarrierNV = public method  ;

  // (4.3)
  // GL_NV_path_rendering
 [CallingConvention(PlatformConvention)]
  TglGenPathsNV = public method(range : GLsizei) : GLuint;
 [CallingConvention(PlatformConvention)]
  TglDeletePathsNV = public method(path : GLUInt; range : GLsizei);
 [CallingConvention(PlatformConvention)]
  TglIsPathNV = public method(path : GLUInt) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglPathCommandsNV = public method(path : GLUInt; numCommands : GLsizei; const commands : PGLubyte; numCoords : GLsizei; coordType : GLenum; const coords : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPathCoordsNV = public method(path : GLUInt; numCoords : GLSizei; coordType : GLenum; const coords : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPathSubCommandsNV = public method(path : GLUInt; commandStart : GLsizei; commandsToDelete : GLsizei; numCommands : GLsizei; const commands : PGLubyte; numCoords : GLSizei; coordType : GLenum; const coords : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPathSubCoordsNV = public method(path : GLUInt; coordStart : GLsizei; numCoords : GLSizei; coordType : GLenum; const coords : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPathStringNV = public method(path : GLUInt; format : GLenum; length : GLsizei; const pathString : PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglPathGlyphsNV = public method(firstPathName : GLuint; fontTarget : GLenum; const fontName : PGLvoid; fontStyle : GLbitfield; numGlyphs : GLsizei; type_ : GLenum; const charcodes : PGLvoid; handleMissingGlyphs : GLenum; pathParameterTemplate : GLUInt; emScale : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathGlyphRangeNV = public method(firstPathName : GLuint; fontTarget : GLenum; const fontName : PGLvoid; fontStyle : GLbitfield; firstGlyph : GLuint; numGlyphs : GLsizei; handleMissingGlyphs : GLenum; pathParameterTemplate : GLUInt; emScale : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglWeightPathsNV = public method(resultPath : GLUInt; numPaths : GLSizei; const paths : PGLuint; const weights : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglCopyPathNV = public method(resultPath : GLUInt; srcPath : GLuint);
 [CallingConvention(PlatformConvention)]
  TglInterpolatePathsNV = public method(resultPath : GLUInt; pathA : GLUInt; pathB : GLUInt; weight : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTransformPathNV = public method(resultPath : GLUInt; srcPath : GLuint; transformType : GLenum; const transformValues : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathParameterivNV = public method(path : GLUInt; pname : GLEnum; const value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglPathParameteriNV = public method(path : GLUInt; pname : GLEnum; value : GLint);
 [CallingConvention(PlatformConvention)]
  TglPathParameterfvNV = public method(path : GLUInt; pname : GLEnum; const value : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathParameterfNV = public method(path : GLUInt; pname : GLEnum; value : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathDashArrayNV = public method(path : GLUInt; dashCount : GLsizei; const dashArray : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathStencilFuncNV = public method(func : GLenum; ref : GLint; mask : GLuint);
 [CallingConvention(PlatformConvention)]
  TglPathStencilDepthOffsetNV = public method(factor : GLfloat; units : GLfloat);
 [CallingConvention(PlatformConvention)]
  TglStencilFillPathNV = public method(path : GLUInt; fillMode : GLenum; mask : GLuint);
 [CallingConvention(PlatformConvention)]
  TglStencilStrokePathNV = public method(path : GLUInt; reference : GLint; mask : GLuint);
 [CallingConvention(PlatformConvention)]
  TglStencilFillPathInstancedNV = public method(numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; fillMode : GLenum; mask : GLuint; transformType : GLenum; const transformValues : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglStencilStrokePathInstancedNV = public method(numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; reference : GLint; mask : GLuint; transformType : GLenum; const transformValues : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathCoverDepthFuncNV = public method(func : GLenum);
 [CallingConvention(PlatformConvention)]
  TglPathColorGenNV = public method(color : GLenum; genMode : GLenum; colorFormat : GLenum; const coeffs : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathTexGenNV = public method(texCoordSet : GLenum; genMode : GLenum; components : GLint; const coeffs : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglPathFogGenNV = public method(genMode : GLEnum);
 [CallingConvention(PlatformConvention)]
  TglCoverFillPathNV = public method(path : GLUInt; coverMode : GLenum);
 [CallingConvention(PlatformConvention)]
  TglCoverStrokePathNV = public method(path : GLUInt; coverMode : GLenum);
 [CallingConvention(PlatformConvention)]
  TglCoverFillPathInstancedNV = public method(numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; coverMode : GLenum; transformType : GLenum; const transformValues : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglCoverStrokePathInstancedNV = public method(numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; coverMode : GLenum; transformType : GLenum; const transformValues : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathParameterivNV = public method(path : GLUInt; pname : GLEnum; value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetPathParameterfvNV = public method(path : GLUInt; pname : GLEnum; value : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathCommandsNV = public method(path : GLUInt; commands : PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglGetPathCoordsNV = public method(path : GLUInt; coords : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathDashArrayNV = public method(path : GLUInt; dashArray : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathMetricsNV = public method(metricQueryMask : GLbitfield; numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; stride : GLsizei; metrics : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathMetricRangeNV = public method(metricQueryMask : GLbitfield; firstPathName : GLuint; numPaths : GLSizei; stride : GLsizei; metrics : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathSpacingNV = public method(pathListMode : GLenum; numPaths : GLSizei; pathNameType : GLenum; const paths : PGLvoid; pathBase : GLUInt; advanceScale : GLfloat; kerningScale : GLfloat; transformType : GLenum; returnedSpacing : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathColorGenivNV = public method(color : GLenum; pname : GLEnum; value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetPathColorGenfvNV = public method(color : GLenum; pname : GLEnum; value : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPathTexGenivNV = public method(texCoordSet : GLenum; pname : GLEnum; value : PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetPathTexGenfvNV = public method(texCoordSet : GLenum; pname : GLEnum; value : PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglIsPointInFillPathNV = public method(path : GLUInt; mask : GLuint; x : GLfloat; y : GLfloat) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglIsPointInStrokePathNV = public method(path : GLUInt; x : GLfloat; y : GLfloat) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglGetPathLengthNV = public method(path : GLUInt; startSegment : GLsizei; numSegments : GLsizei) : GLfloat;
 [CallingConvention(PlatformConvention)]
  TglPointAlongPathNV  = public method(path : GLUInt; startSegment : GLsizei; numSegments : GLsizei; distance : GLfloat; x : PGLfloat; y : PGLfloat; tangentX : PGLfloat; tangentY : PGLfloat) : GLboolean;

  // GL_AMD_pinned_memory

  // GL_AMD_stencil_operation_extended
 [CallingConvention(PlatformConvention)]
  TglStencilOpValueAMD = public method(face : GLEnum; value : GLUInt);

  // GL_AMD_vertex_shader_viewport_index

  // GL_AMD_vertex_shader_layer

  // GL_NV_bindless_texture
 [CallingConvention(PlatformConvention)]
  TglGetTextureHandleNV = public method(texture : GLuint ) : GLuint64;
 [CallingConvention(PlatformConvention)]
  TglGetTextureSamplerHandleNV = public method(texture : GLuint; sampler : GLuint) : GLuint64;
 [CallingConvention(PlatformConvention)]
  TglMakeTextureHandleResidentNV = public method(handle : GLUint64);
 [CallingConvention(PlatformConvention)]
  TglMakeTextureHandleNonResidentNV = public method(handle : GLUint64);
 [CallingConvention(PlatformConvention)]
  TglGetImageHandleNV = public method(texture : GLuint; level : GLint; layered : GLboolean; layer : GLint; format : GLenum) : GLUInt64;
 [CallingConvention(PlatformConvention)]
  TglMakeImageHandleResidentNV = public method(handle : GLUint64; access : GLenum);
 [CallingConvention(PlatformConvention)]
  TglMakeImageHandleNonResidentNV = public method(handle : GLUint64);
 [CallingConvention(PlatformConvention)]
  TglUniformHandleui64NV = public method(location : GLint; value : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniformHandleui64vNV = public method(location : GLint; cowunt : GLsizei; const value : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformHandleui64NV = public method(program_ : GLuint; location : GLint; value : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformHandleui64vNV = public method(program_ : GLuint; location : GLint; count : GLsizei; const values : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglIsTextureHandleResidentNV = public method(handle : GLUint64) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglIsImageHandleResidentNV = public method(handle : GLUint64) : GLboolean;

  // GL_ARB_bindless_texture

 [CallingConvention(PlatformConvention)]
  TglGetTextureHandleARB = public method(texture : GLuint) : GLUInt64;
 [CallingConvention(PlatformConvention)]
  TglGetTextureSamplerHandleARB = public method(texture : GLuint; sampler : GLuint) : GLUInt64;
 [CallingConvention(PlatformConvention)]
  TglMakeTextureHandleResidentARB = public method(handle : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglMakeTextureHandleNonResidentARB = public method(handle : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglGetImageHandleARB = public method(texture : GLuint; level : GLint; layered : GLboolean; layer : GLint; format : GLenum) : GLuint64;
 [CallingConvention(PlatformConvention)]
  TglMakeImageHandleResidentARB = public method(handle : GLuint64; access : GLenum);
 [CallingConvention(PlatformConvention)]
  TglMakeImageHandleNonResidentARB = public method(handle : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniformHandleui64ARB = public method(location : GLint; value : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglUniformHandleui64vARB = public method(location : GLint; count : GLsizei; const value : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformHandleui64ARB = public method(program_ : GLuint; location : GLint; value : GLuint64);
 [CallingConvention(PlatformConvention)]
  TglProgramUniformHandleui64vARB = public method(program_ : GLuint; location : GLint; count : GLsizei; const values : PGLuint64);
 [CallingConvention(PlatformConvention)]
  TglIsTextureHandleResidentARB = public method(handle : GLuint64) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglIsImageHandleResidentARB = public method(handle : GLuint64) : GLboolean;
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1ui64ARB = public method(index_ : GLuint; x : GLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglVertexAttribL1ui64vARB = public method(index_ : GLuint; const v : PGLuint64EXT);
 [CallingConvention(PlatformConvention)]
  TglGetVertexAttribLui64vARB = public method(index_ : GLuint; pname : GLenum; params_ : PGLuint64EXT );

  // GL_NV_shader_atomic_float

  // GL_AMD_query_buffer_object

  // GL_OVR_multiview
 [CallingConvention(PlatformConvention)]
  TglFramebufferTextureMultiviewOVR = public method(target : GLenum; attachment : GLenum; texture : GLuint; level : GLint; baseViewIndex : GLint; numViews : GLsizei);

  // GL_PGI_misc_hints
 [CallingConvention(PlatformConvention)]
  TglHintPGI = public method(target: GLenum; mode: GLint);

  // GL_SGIS_detail_texture
 [CallingConvention(PlatformConvention)]
  TglDetailTexFuncSGIS = public method(target: GLenum; n: GLsizei; const points: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetDetailTexFuncSGIS = public method(target: GLenum; points: PGLfloat);

  // GL_SGIS_fog_method
 [CallingConvention(PlatformConvention)]
  TglFogFuncSGIS = public method(n: GLsizei; const points: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetFogFuncSGIS = public method(points: PGLfloat);

  // GL_SGIS_multisample
 [CallingConvention(PlatformConvention)]
  TglSampleMaskSGIS = public method(value: GLclampf; invert: GLboolean);
 [CallingConvention(PlatformConvention)]
  TglSamplePatternSGIS = public method(pattern: GLenum);

  // GL_SGIS_pixel_texture
 [CallingConvention(PlatformConvention)]
  TglPixelTexGenParameteriSGIS = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglPixelTexGenParameterivSGIS = public method(pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglPixelTexGenParameterfSGIS = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPixelTexGenParameterfvSGIS = public method(pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetPixelTexGenParameterivSGIS = public method(pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetPixelTexGenParameterfvSGIS = public method(pname: GLenum; params_: PGLfloat);

  // GL_SGIS_point_parameters
 [CallingConvention(PlatformConvention)]
  TglPointParameterfSGIS = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglPointParameterfvSGIS = public method(pname: GLenum; const params_: PGLfloat);

  // GL_SGIS_sharpen_texture
 [CallingConvention(PlatformConvention)]
  TglSharpenTexFuncSGIS = public method(target: GLenum; n: GLsizei; const points: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetSharpenTexFuncSGIS = public method(target: GLenum; points: PGLfloat);

  // GL_SGIS_texture4D
 [CallingConvention(PlatformConvention)]
  TglTexImage4DSGIS = public method(target: GLenum; level: GLint; internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei; size4d: GLsizei; border: GLint; format: GLenum; _type: GLenum; const pixels: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglTexSubImage4DSGIS = public method(target: GLenum; level: GLint; xoffset: GLint; yoffset: GLint; zoffset: GLint; woffset: GLint; width: GLsizei; height: GLsizei; depth: GLsizei; size4d: GLsizei; format: GLenum; _type: GLenum; const pixels: PGLvoid);

  // GL_SGIS_texture_color_mask
 [CallingConvention(PlatformConvention)]
  TglTextureColorMaskSGIS = public method(red: GLboolean; green: GLboolean; blue: GLboolean; alpha: GLboolean);

  // GL_SGIS_texture_filter4
 [CallingConvention(PlatformConvention)]
  TglGetTexFilterFuncSGIS = public method(target: GLenum; filter: GLenum; weights: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexFilterFuncSGIS = public method(target: GLenum; filter: GLenum; n: GLsizei; const weights: PGLfloat);

  // GL_SGIX_async
 [CallingConvention(PlatformConvention)]
  TglAsyncMarkerSGIX = public method(marker: GLuint);
 [CallingConvention(PlatformConvention)]
  TglFinishAsyncSGIX = public method(markerp: PGLuint): GLint;
 [CallingConvention(PlatformConvention)]
  TglPollAsyncSGIX = public method(markerp: PGLuint): GLint;
 [CallingConvention(PlatformConvention)]
  TglGenAsyncMarkersSGIX = public method(range: GLsizei): GLuint;
 [CallingConvention(PlatformConvention)]
  TglDeleteAsyncMarkersSGIX = public method(marker: GLuint; range: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglIsAsyncMarkerSGIX = public method(marker: GLuint): GLboolean;

  // GL_SGIX_flush_raster
 [CallingConvention(PlatformConvention)]
  TglFlushRasterSGIX = public method  ();

  // GL_SGIX_fragment_lighting
 [CallingConvention(PlatformConvention)]
  TglFragmentColorMaterialSGIX = public method(face: GLenum; mode: GLenum);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightfSGIX = public method(light: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightfvSGIX = public method(light: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightiSGIX = public method(light: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightivSGIX = public method(light: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightModelfSGIX = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightModelfvSGIX = public method(pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightModeliSGIX = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglFragmentLightModelivSGIX = public method(pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglFragmentMaterialfSGIX = public method(face: GLenum; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentMaterialfvSGIX = public method(face: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglFragmentMaterialiSGIX = public method(face: GLenum; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglFragmentMaterialivSGIX = public method(face: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetFragmentLightfvSGIX = public method(light: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetFragmentLightivSGIX = public method(light: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglGetFragmentMaterialfvSGIX = public method(face: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetFragmentMaterialivSGIX = public method(face: GLenum; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglLightEnviSGIX = public method(pname: GLenum; param_: GLint);

  // GL_SGIX_framezoom
 [CallingConvention(PlatformConvention)]
  TglFrameZoomSGIX = public method(factor: GLint);

  // GL_SGIX_igloo_interface
 [CallingConvention(PlatformConvention)]
  TglIglooInterfaceSGIX = public method(pname: GLenum; const params_: PGLvoid);

  // GL_SGIX_instruments
 [CallingConvention(PlatformConvention)]
  TglGetInstrumentsSGIX = public method(): GLint;
 [CallingConvention(PlatformConvention)]
  TglInstrumentsBufferSGIX = public method(size: GLsizei; buffer: PGLint);
 [CallingConvention(PlatformConvention)]
  TglPollInstrumentsSGIX = public method(marker_p: PGLint): GLint;
 [CallingConvention(PlatformConvention)]
  TglReadInstrumentsSGIX = public method(marker: GLint);
 [CallingConvention(PlatformConvention)]
  TglStartInstrumentsSGIX = public method  ();
 [CallingConvention(PlatformConvention)]
  TglStopInstrumentsSGIX = public method(marker: GLint);

  // GL_SGIX_list_priority
 [CallingConvention(PlatformConvention)]
  TglGetListParameterfvSGIX = public method(list: GLuint; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetListParameterivSGIX = public method(list: GLuint; pname: GLenum; params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglListParameterfSGIX = public method(list: GLuint; pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglListParameterfvSGIX = public method(list: GLuint; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglListParameteriSGIX = public method(list: GLuint; pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglListParameterivSGIX = public method(list: GLuint; pname: GLenum; const params_: PGLint);

  // GL_SGIX_pixel_texture
 [CallingConvention(PlatformConvention)]
  TglPixelTexGenSGIX = public method(mode: GLenum);

  // GL_SGIX_polynomial_ffd
 [CallingConvention(PlatformConvention)]
  TglDeformationMap3dSGIX = public method(target: GLenum; u1: GLdouble; u2: GLdouble; ustride: GLint; uorder: GLint; v1: GLdouble; v2: GLdouble; vstride: GLint; vorder: GLint; w1: GLdouble; w2: GLdouble; wstride: GLint; worder: GLint; const points: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TglDeformationMap3fSGIX = public method(target: GLenum; u1: GLfloat; u2: GLfloat; ustride: GLint; uorder: GLint; v1: GLfloat; v2: GLfloat; vstride: GLint; vorder: GLint; w1: GLfloat; w2: GLfloat; wstride: GLint; worder: GLint; const points: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglDeformSGIX = public method(mask: GLbitfield);
 [CallingConvention(PlatformConvention)]
  TglLoadIdentityDeformationMapSGIX = public method(mask: GLbitfield);

  // GL_SGIX_reference_plane
 [CallingConvention(PlatformConvention)]
  TglReferencePlaneSGIX = public method(const equation: PGLdouble);

  // GL_SGIX_sprite
 [CallingConvention(PlatformConvention)]
  TglSpriteParameterfSGIX = public method(pname: GLenum; param_: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglSpriteParameterfvSGIX = public method(pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglSpriteParameteriSGIX = public method(pname: GLenum; param_: GLint);
 [CallingConvention(PlatformConvention)]
  TglSpriteParameterivSGIX = public method(pname: GLenum; const params_: PGLint);

  // GL_SGIX_tag_sample_buffer
 [CallingConvention(PlatformConvention)]
  TglTagSampleBufferSGIX = public method  ();

  // GL_SGI_color_table
 [CallingConvention(PlatformConvention)]
  TglColorTableSGI = public method(target: GLenum; internalformat: GLenum; width: GLsizei; format: GLenum; _type: GLenum; const table: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglColorTableParameterfvSGI = public method(target: GLenum; pname: GLenum; const params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglColorTableParameterivSGI = public method(target: GLenum; pname: GLenum; const params_: PGLint);
 [CallingConvention(PlatformConvention)]
  TglCopyColorTableSGI = public method(target: GLenum; internalformat: GLenum; x: GLint; y: GLint; width: GLsizei);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableSGI = public method(target: GLenum; format: GLenum; _type: GLenum; table: PGLvoid);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableParameterfvSGI = public method(target: GLenum; pname: GLenum; params_: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglGetColorTableParameterivSGI = public method(target: GLenum; pname: GLenum; params_: PGLint);

  // GL_SUNX_constant_data
 [CallingConvention(PlatformConvention)]
  TglFinishTextureSUNX = public method  ();

  // GL_SUN_global_alpha
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactorbSUN = public method(factor: GLbyte);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactorsSUN = public method(factor: GLshort);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactoriSUN = public method(factor: GLint);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactorfSUN = public method(factor: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactordSUN = public method(factor: GLdouble);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactorubSUN = public method(factor: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactorusSUN = public method(factor: GLushort);
 [CallingConvention(PlatformConvention)]
  TglGlobalAlphaFactoruiSUN = public method(factor: GLuint);

  // GL_SUN_mesh_array
 [CallingConvention(PlatformConvention)]
  TglDrawMeshArraysSUN = public method(mode: GLenum; first: GLint; count: GLsizei; width: GLsizei);

  // GL_SUN_triangle_list
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiSUN = public method(code: GLuint);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeusSUN = public method(code: GLushort);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeubSUN = public method(code: GLubyte);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuivSUN = public method(const code: PGLuint);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeusvSUN = public method(const code: PGLushort);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeubvSUN = public method(const code: PGLubyte);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodePointerSUN = public method(_type: GLenum; stride: GLsizei; const _pointer: PGLvoid);

  // GL_SUN_vertex
 [CallingConvention(PlatformConvention)]
  TglColor4ubVertex2fSUN = public method(r: GLubyte; g: GLubyte; b: GLubyte; a: GLubyte; x: GLfloat; y: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor4ubVertex2fvSUN = public method(const c: PGLubyte; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor4ubVertex3fSUN = public method(r: GLubyte; g: GLubyte; b: GLubyte; a: GLubyte; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor4ubVertex3fvSUN = public method(const c: PGLubyte; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor3fVertex3fSUN = public method(r: GLfloat; g: GLfloat; b: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor3fVertex3fvSUN = public method(const c: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglNormal3fVertex3fSUN = public method(nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglNormal3fVertex3fvSUN = public method(const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor4fNormal3fVertex3fSUN = public method(r: GLfloat; g: GLfloat; b: GLfloat; a: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglColor4fNormal3fVertex3fvSUN = public method(const c: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fVertex3fSUN = public method(s: GLfloat; t: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fVertex3fvSUN = public method(const tc: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4fVertex4fSUN = public method(s: GLfloat; t: GLfloat; p: GLfloat; q: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4fVertex4fvSUN = public method(const tc: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor4ubVertex3fSUN = public method(s: GLfloat; t: GLfloat; r: GLubyte; g: GLubyte; b: GLubyte; a: GLubyte; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor4ubVertex3fvSUN = public method(const tc: PGLfloat; const c: PGLubyte; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor3fVertex3fSUN = public method(s: GLfloat; t: GLfloat; r: GLfloat; g: GLfloat; b: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor3fVertex3fvSUN = public method(const tc: PGLfloat; const c: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fNormal3fVertex3fSUN = public method(s: GLfloat; t: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fNormal3fVertex3fvSUN = public method(const tc: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor4fNormal3fVertex3fSUN = public method(s: GLfloat; t: GLfloat; r: GLfloat; g: GLfloat; b: GLfloat; a: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord2fColor4fNormal3fVertex3fvSUN = public method(const tc: PGLfloat; const c: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4fColor4fNormal3fVertex4fSUN = public method(s: GLfloat; t: GLfloat; p: GLfloat; q: GLfloat; r: GLfloat; g: GLfloat; b: GLfloat; a: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat; w: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglTexCoord4fColor4fNormal3fVertex4fvSUN = public method(const tc: PGLfloat; const c: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiVertex3fSUN = public method(rc: GLuint; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiVertex3fvSUN = public method(const rc: PGLuint; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor4ubVertex3fSUN = public method(rc: GLuint; r: GLubyte; g: GLubyte; b: GLubyte; a: GLubyte; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor4ubVertex3fvSUN = public method(const rc: PGLuint; const c: PGLubyte; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor3fVertex3fSUN = public method(rc: GLuint; r: GLfloat; g: GLfloat; b: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor3fVertex3fvSUN = public method(const rc: PGLuint; const c: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiNormal3fVertex3fSUN = public method(rc: GLuint; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiNormal3fVertex3fvSUN = public method(const rc: PGLuint; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor4fNormal3fVertex3fSUN = public method(rc: GLuint; r: GLfloat; g: GLfloat; b: GLfloat; a: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiColor4fNormal3fVertex3fvSUN = public method(const rc: PGLuint; const c: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fVertex3fSUN = public method(rc: GLuint; s: GLfloat; t: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fVertex3fvSUN = public method(const rc: PGLuint; const tc: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fNormal3fVertex3fSUN = public method(rc: GLuint; s: GLfloat; t: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN = public method(const rc: PGLuint; const tc: PGLfloat; const n: PGLfloat; const v: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN = public method(rc: GLuint; s: GLfloat; t: GLfloat; r: GLfloat; g: GLfloat; b: GLfloat; a: GLfloat; nx: GLfloat; ny: GLfloat; nz: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat);
 [CallingConvention(PlatformConvention)]
  TglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN = public method(const rc: PGLuint; const tc: PGLfloat; const c: PGLfloat; const n: PGLfloat; const v: PGLfloat);
{$ENDREGION}

{$ENDIF}


end.