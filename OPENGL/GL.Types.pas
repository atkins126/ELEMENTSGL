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
{$IF ISLAND}
{$GLOBALS ON}

uses
  rtl;

type
  GLenum = public Cardinal;
  GLboolean = public BYTEBOOL;
  GLbitfield = public Cardinal;
  GLbyte = public ShortInt;
  GLshort = public SmallInt;
  GLint = public Integer;
  GLsizei = public Integer;
  GLubyte = public Byte;
  GLushort = public Word;
  GLuint = public Cardinal;
  GLfloat = public Single;
  GLclampf = public Single;
  GLdouble = public Double;
  GLclampd = public Double;
  GLvoid = public Pointer;
  GLint64 = public Int64;
  GLuint64 = public  UInt64;

  TGLenum = public GLenum;
  TGLboolean = public GLboolean;
  TGLbitfield = public GLbitfield;
  TGLbyte = public GLbyte;
  TGLshort = public GLshort;
  TGLint = public GLint;
  TGLsizei = public GLsizei;
  TGLubyte = public GLubyte;
  TGLushort = public GLushort;
  TGLuint = public GLuint;
  TGLfloat = public GLfloat;
  TGLclampf = public GLclampf;
  TGLdouble = public GLdouble;
  TGLclampd = public GLclampd;
  TGLvoid = public GLvoid;
  TGLint64 = public GLint64;
  TGLuint64 = public GLuint64;

  PGLboolean = public ^GLboolean;
  PGLbyte = public ^GLbyte;
  PGLshort = public ^GLshort;
  PGLint = public ^GLint;
  PGLsizei = public ^GLsizei;
  PGLubyte = public ^GLubyte;
  PGLushort = public ^GLushort;
  PGLuint = public ^GLuint;
  PGLclampf = public ^GLclampf;
  PGLfloat = public ^GLfloat;
  PGLdouble = public ^GLdouble;
  PGLclampd = public ^GLclampd;
  PGLenum = public ^GLenum;
  PGLvoid = public Pointer;
  PPGLvoid = public ^PGLvoid;
  PGLint64 = public ^GLint64;
  PGLuint64 = public ^GLuint64;

  // GL_NV_half_float
  GLhalfNV = public Word;
  TGLhalfNV = public GLhalfNV;
  PGLhalfNV = public ^GLhalfNV;

  // GL_ARB_shader_objects
  PGLHandleARB = public ^GLHandleARB;
  GLHandleARB = public Integer;
  GLcharARB = public AnsiChar;
  PGLcharARB = public PAnsiChar;
  PPGLcharARB = public ^PGLcharARB;

  // GL_VERSION_1_5
  GLintptr = public GLint;
  PGLintptr = public ^GLintptr;
  GLsizeiptr = public GLsizei;

  // GL_ARB_vertex_buffer_object
  GLintptrARB = public GLint;
  GLsizeiptrARB = public GLsizei;

  // GL_VERSION_2_0
  GLHandle = public Integer;
  PGLchar = public PAnsiChar;
  PPGLchar = public ^PGLchar;

  // GL_EXT_timer_query
  GLint64EXT = public Int64;
  TGLint64EXT = public GLint64EXT;
  PGLint64EXT = public ^GLint64EXT;

  GLuint64EXT = public GLuint64;
  TGLuint64EXT = public GLuint64EXT;
  PGLuint64EXT = public ^GLuint64EXT;

  // WGL_ARB_pbuffer
  HPBUFFERARB = public THandle;

  // WGL_EXT_pbuffer
  HPBUFFEREXT = public THandle;

  // WGL_NV_present_video
  PHVIDEOOUTPUTDEVICENV = public ^HVIDEOOUTPUTDEVICENV;
  HVIDEOOUTPUTDEVICENV = public THandle;

  // WGL_NV_video_output
  PHPVIDEODEV = public ^HPVIDEODEV;
  HPVIDEODEV = public THandle;

  // WGL_NV_gpu_affinity
  PHPGPUNV = public ^HPGPUNV;
  PHGPUNV = public ^HGPUNV;

  // WGL_NV_video_capture
  HVIDEOINPUTDEVICENV = public THandle;
  PHVIDEOINPUTDEVICENV = public ^HVIDEOINPUTDEVICENV;

  HPGPUNV = public THandle;
  HGPUNV = public THandle;

  // GL_ARB_sync
  GLsync = public Pointer;

  // GL_ARB_cl_event
  { These incomplete types let us declare types compatible with OpenCL's cl_context and cl_event }
  _cl_context = public record end;
  _cl_event = public record end;
  p_cl_context = public ^_cl_context;
  p_cl_event = public ^_cl_event;


  // GL_NV_vdpau_interop
  GLvdpauSurfaceNV = public GLintptr;
  PGLvdpauSurfaceNV = public ^GLvdpauSurfaceNV;

  // Datatypes corresponding to GL's types TGL(name)(type)(count)
  TGLVectorub2 = public array[0..1] of GLubyte;
  TGLVectori2  = public array[0..1] of GLint;
  TGLVectorf2  = public array[0..1] of GLfloat;
  TGLVectord2  = public array[0..1] of GLdouble;
  TGLVectorp2  = public array[0..1] of Pointer;

  TGLVectorub3 = public array[0..2] of GLubyte;
  TGLVectori3  = public array[0..2] of GLint;
  TGLVectorf3  = public array[0..2] of GLfloat;
  TGLVectord3  = public array[0..2] of GLdouble;
  TGLVectorp3  = public array[0..2] of Pointer;

  TGLVectorub4 = public array[0..3] of GLubyte;
  TGLVectori4  = public array[0..3] of GLint;
  TGLVectorf4  = public array[0..3] of GLfloat;
  TGLVectord4  = public array[0..3] of GLdouble;
  TGLVectorp4  = public array[0..3] of Pointer;

  TGLArrayf4 = public TGLVectorf4;
  TGLArrayf3 = public TGLVectorf3;
  TGLArrayd3 = public TGLVectord3;
  TGLArrayi4 = public TGLVectori4;
  TGLArrayp4 = public TGLVectorp4;

  TGlMatrixub3 = public array[0..2, 0..2] of GLubyte;
  TGlMatrixi3  = public array[0..2, 0..2] of GLint;
  TGLMatrixf3  = public array[0..2, 0..2] of GLfloat;
  TGLMatrixd3  = public array[0..2, 0..2] of GLdouble;

  TGlMatrixub4 = public array[0..3, 0..3] of GLubyte;
  TGlMatrixi4  = public array[0..3, 0..3] of GLint;
  TGLMatrixf4  = public array[0..3, 0..3] of GLfloat;
  TGLMatrixd4  = public array[0..3, 0..3] of GLdouble;

  TGLVector3f = public TGLVectorf3;

  // Datatypes corresponding to OpenGL12.pas for easy porting
  TVector3f = public TGLVectorf3;
  TVector3d = public TGLVectord3;

  TVector4i = public TGLVectori4;
  TVector4f = public TGLVectorf4;
  TVector4p = public TGLVectorp4;

  TMatrix4f = public TGLMatrixf4;
  TMatrix4d = public TGLMatrixd4;

  PGLMatrixd4 = public ^TGLMatrixd4;
  PVector4i = public ^TVector4i;

  PGPU_DEVICE = public ^GPU_DEVICE;
  GPU_DEVICE = public record
    cb: DWORD; 
    DeviceName: array [0..31] of AnsiChar;
    DeviceString: array [0..127] of AnsiChar;
    &Flags: DWORD;
    rcVirtualScreen: TRect;
  end;


type
  // GLU types
  TGLUNurbs =  public record
  end;
  TGLUQuadric = public record
  end;
  TGLUTesselator =  public record
  end;
  PGLUNurbs = public ^TGLUNurbs;
  PGLUQuadric = public ^TGLUQuadric;
  PGLUTesselator = public ^TGLUTesselator;
  // backwards compatibility
  TGLUNurbsObj = public TGLUNurbs;
  TGLUQuadricObj = public TGLUQuadric;
  TGLUTesselatorObj = public TGLUTesselator;
  TGLUTriangulatorObj = public TGLUTesselator;
  PGLUNurbsObj = public PGLUNurbs;
  PGLUQuadricObj = public PGLUQuadric;
  PGLUTesselatorObj = public PGLUTesselator;
  PGLUTriangulatorObj = public PGLUTesselator;

{$ENDIF}

end.