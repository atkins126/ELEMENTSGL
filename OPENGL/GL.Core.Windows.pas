{wglGetExtensionsStringARB
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
{$IF ISLAND AND WINDOWS}
uses rtl;

  // window support functions
{$REGION 'WGL Types'}
type
 [CallingConvention(PlatformConvention)]
  TwglGetProcAddress = public method(ProcName: PAnsiChar): Pointer;
 [CallingConvention(PlatformConvention)]
  TwglCopyContext = public method(p1: HGLRC; p2: HGLRC; p3: Cardinal): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglCreateContext = public method(DC: HDC): HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglCreateLayerContext = public method(p1: HDC; p2: Integer): HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglDeleteContext = public method(p1: HGLRC): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglDescribeLayerPlane = public method(p1: HDC; p2, p3: Integer; p4: Cardinal; p5: PLayerPlaneDescriptor): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglGetCurrentContext = public method: HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglGetCurrentDC = public method: HDC;
 [CallingConvention(PlatformConvention)]
  TwglGetLayerPaletteEntries = public method(p1: HDC; p2, p3, p4: Integer; var pcr): Integer;
 [CallingConvention(PlatformConvention)]
  TwglMakeCurrent = public method(DC: HDC; p2: HGLRC): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglRealizeLayerPalette = public method(p1: HDC; p2: Integer; p3: BOOL): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglSetLayerPaletteEntries = public method(p1: HDC; p2, p3, p4: Integer; var pcr): Integer;
 [CallingConvention(PlatformConvention)]
  TwglShareLists = public method(p1, p2: HGLRC): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglSwapLayerBuffers = public method(p1: HDC; p2: Cardinal): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglSwapMultipleBuffers = public method(p1: UINT; const p2: PWGLSWAP): DWORD;
 [CallingConvention(PlatformConvention)]
  TwglUseFontBitmapsA = public method(DC: HDC; p2, p3, p4: DWORD): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglUseFontBitmapsW = public method(DC: HDC; p2, p3, p4: DWORD): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglUseFontBitmaps = public method(DC: HDC; p2, p3, p4: DWORD): BOOL;

 [CallingConvention(PlatformConvention)]
  TwglUseFontOutlinesA = public method(p1: HDC; p2, p3, p4: DWORD; p5, p6: Single; p7: Integer; p8: PGlyphMetricsFloat): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglUseFontOutlinesW = public method(p1: HDC; p2, p3, p4: DWORD; p5, p6: Single; p7: Integer; p8: PGlyphMetricsFloat): BOOL;
 [CallingConvention(PlatformConvention)]
  TwglUseFontOutlines = public method(p1: HDC; p2, p3, p4: DWORD; p5, p6: Single; p7: Integer; p8: PGlyphMetricsFloat): BOOL;


  // WGL_ARB_buffer_region
 [CallingConvention(PlatformConvention)]
  TwglCreateBufferRegionARB = public method(hDC: HDC; iLayerPlane: GLint; uType: GLuint): THandle;
 [CallingConvention(PlatformConvention)]
  TwglDeleteBufferRegionARB = public method(hRegion: THandle);
 [CallingConvention(PlatformConvention)]
  TwglSaveBufferRegionARB = public method(hRegion: THandle; x: GLint; y: GLint; width: GLint; height: GLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglRestoreBufferRegionARB = public method(hRegion: THandle; x: GLint; y: GLint; width: GLint; height: GLint; xSrc: GLint; ySrc: GLint): Boolean;

  // WGL_ARB_extensions_string
 [CallingConvention(PlatformConvention)]
  TwglGetExtensionsStringARB = public method(hdc: HDC): PAnsiChar;

  // WGL_ARB_make_current_read
 [CallingConvention(PlatformConvention)]
  TwglMakeContextCurrentARB = public method(hDrawDC: HDC; hReadDC: HDC; hglrc: HGLRC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetCurrentReadDCARB = public method(): HDC;

  // WGL_ARB_pbuffer
 [CallingConvention(PlatformConvention)]
  TwglCreatePbufferARB = public method(hDC: HDC; iPixelFormat: GLint; iWidth: GLint; iHeight: GLint; const piAttribList: PGLint): HPBUFFERARB;
 [CallingConvention(PlatformConvention)]
  TwglGetPbufferDCARB = public method(hPbuffer: HPBUFFERARB): HDC;
 [CallingConvention(PlatformConvention)]
  TwglReleasePbufferDCARB = public method(hPbuffer: HPBUFFERARB; hDC: HDC): GLint;
 [CallingConvention(PlatformConvention)]
  TwglDestroyPbufferARB = public method(hPbuffer: HPBUFFERARB): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryPbufferARB = public method(hPbuffer: HPBUFFERARB; iAttribute: GLint; piValue: PGLint): Boolean;

  // WGL_ARB_pixel_format
 [CallingConvention(PlatformConvention)]
  TwglGetPixelFormatAttribivARB = public method(hdc: HDC; iPixelFormat: GLint; iLayerPlane: GLint; nAttributes: GLuint; const piAttributes: PGLint; piValues: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetPixelFormatAttribfvARB = public method(hdc: HDC; iPixelFormat: GLint; iLayerPlane: GLint; nAttributes: GLuint; const piAttributes: PGLint; pfValues: PGLfloat): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglChoosePixelFormatARB = public method(hdc: HDC; const piAttribIList: PGLint; const pfAttribFList: PGLfloat; nMaxFormats: GLuint; piFormats: PGLint; nNumFormats: PGLuint): BOOL;

  // WGL_ARB_color_buffer_float
 [CallingConvention(PlatformConvention)]
  TwglClampColorARB = public method(target: GLenum; clamp: GLenum);

  // WGL_ARB_render_texture
 [CallingConvention(PlatformConvention)]
  TwglBindTexImageARB = public method(hPbuffer: HPBUFFERARB; iBuffer: GLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglReleaseTexImageARB = public method(hPbuffer: HPBUFFERARB; iBuffer: GLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSetPbufferAttribARB = public method(hPbuffer: HPBUFFERARB; const piAttribList: PGLint): Boolean;

  // WGL_ARB_create_context
 [CallingConvention(PlatformConvention)]
  TwglCreateContextAttribsARB = public method(hDC: HDC; hShareContext: HGLRC; const attribList: PGLint): HGLRC;

  // WGL_AMD_gpu_association
 [CallingConvention(PlatformConvention)]
  TwglGetGPUIDsAMD = public method(maxCount: Cardinal; ids: PCardinal): Cardinal;
 [CallingConvention(PlatformConvention)]
  TwglGetGPUInfoAMD = public method(id: Cardinal; property_: Integer; dataType: GLenum; size: Cardinal; data: Pointer): Integer;
 [CallingConvention(PlatformConvention)]
  TwglGetContextGPUIDAMD = public method(hglrc: HGLRC): Cardinal;
 [CallingConvention(PlatformConvention)]
  TwglCreateAssociatedContextAMD = public method(id: Cardinal): HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglCreateAssociatedContextAttribsAMD = public method(id: Cardinal; hShareContext: HGLRC; const attribList: PInteger): HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglDeleteAssociatedContextAMD = public method(hglrc: HGLRC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglMakeAssociatedContextCurrentAMD = public method(hglrc: HGLRC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetCurrentAssociatedContextAMD = public method(): HGLRC;
 [CallingConvention(PlatformConvention)]
  TwglBlitContextFramebufferAMD = public method(dstCtx: HGLRC; srcX0: GLint; srcY0: GLint; srcX1: GLint; srcY1: GLint; dstX0: GLint; dstY0: GLint; dstX1: GLint; dstY1: GLint; mask: GLbitfield; filter: GLenum);

  // WGL_EXT_display_color_table
 [CallingConvention(PlatformConvention)]
  TwglCreateDisplayColorTableEXT = public method(id: GLushort): GLboolean;
 [CallingConvention(PlatformConvention)]
  TwglLoadDisplayColorTableEXT = public method(const table: PGLushort; length: GLuint): GLboolean;
 [CallingConvention(PlatformConvention)]
  TwglBindDisplayColorTableEXT = public method(id: GLushort): GLboolean;
 [CallingConvention(PlatformConvention)]
  TwglDestroyDisplayColorTableEXT = public method(id: GLushort);

  // WGL_EXT_extensions_string
 [CallingConvention(PlatformConvention)]
  TwglGetExtensionsStringEXT = public method(): PAnsiChar;

  // WGL_EXT_make_current_read
 [CallingConvention(PlatformConvention)]
  TwglMakeContextCurrentEXT = public method(hDrawDC: HDC; hReadDC: HDC; hglrc: HGLRC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetCurrentReadDCEXT = public method(): HDC;

  // WGL_EXT_pbuffer
 [CallingConvention(PlatformConvention)]
  TwglCreatePbufferEXT = public method(hDC: HDC; iPixelFormat: GLint; iWidth: GLint; iHeight: GLint; const piAttribList: PGLint): HPBUFFEREXT;
 [CallingConvention(PlatformConvention)]
  TwglGetPbufferDCEXT = public method(hPbuffer: HPBUFFEREXT): HDC;
 [CallingConvention(PlatformConvention)]
  TwglReleasePbufferDCEXT = public method(hPbuffer: HPBUFFEREXT; hDC: HDC): GLint;
 [CallingConvention(PlatformConvention)]
  TwglDestroyPbufferEXT = public method(hPbuffer: HPBUFFEREXT): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryPbufferEXT = public method(hPbuffer: HPBUFFEREXT; iAttribute: GLint; piValue: PGLint): Boolean;

  // WGL_EXT_pixel_format
 [CallingConvention(PlatformConvention)]
  TwglGetPixelFormatAttribivEXT = public method(hdc: HDC; iPixelFormat: GLint; iLayerPlane: GLint; nAttributes: GLuint; piAttributes: PGLint; piValues: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetPixelFormatAttribfvEXT = public method(hdc: HDC; iPixelFormat: GLint; iLayerPlane: GLint; nAttributes: GLuint; piAttributes: PGLint; pfValues: PGLfloat): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglChoosePixelFormatEXT = public method(hdc: HDC; const piAttribIList: PGLint; const pfAttribFList: PGLfloat; nMaxFormats: GLuint; piFormats: PGLint; nNumFormats: PGLuint): Boolean;

  // WGL_EXT_swap_control
 [CallingConvention(PlatformConvention)]
  TwglSwapIntervalEXT = public method(interval: GLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetSwapIntervalEXT = public method(): GLint;

  // WGL_I3D_digital_video_control
 [CallingConvention(PlatformConvention)]
  TwglGetDigitalVideoParametersI3D = public method(hDC: HDC; iAttribute: GLint; piValue: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSetDigitalVideoParametersI3D = public method(hDC: HDC; iAttribute: GLint; const piValue: PGLint): Boolean;

  // WGL_I3D_gamma
 [CallingConvention(PlatformConvention)]
  TwglGetGammaTableParametersI3D = public method(hDC: HDC; iAttribute: GLint; piValue: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSetGammaTableParametersI3D = public method(hDC: HDC; iAttribute: GLint; const piValue: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetGammaTableI3D = public method(hDC: HDC; iEntries: GLint; puRed: PGLushort; puGreen: PGLushort; puBlue: PGLushort): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSetGammaTableI3D = public method(hDC: HDC; iEntries: GLint; const puRed: PGLushort; const puGreen: PGLushort; const puBlue: PGLushort): Boolean;

  // WGL_I3D_genlock
 [CallingConvention(PlatformConvention)]
  TwglEnableGenlockI3D = public method(hDC: HDC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDisableGenlockI3D = public method(hDC: HDC): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglIsEnabledGenlockI3D = public method(hDC: HDC; pFlag: Boolean): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGenlockSourceI3D = public method(hDC: HDC; uSource: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetGenlockSourceI3D = public method(hDC: HDC; uSource: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGenlockSourceEdgeI3D = public method(hDC: HDC; uEdge: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetGenlockSourceEdgeI3D = public method(hDC: HDC; uEdge: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGenlockSampleRateI3D = public method(hDC: HDC; uRate: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetGenlockSampleRateI3D = public method(hDC: HDC; uRate: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGenlockSourceDelayI3D = public method(hDC: HDC; uDelay: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetGenlockSourceDelayI3D = public method(hDC: HDC; uDelay: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryGenlockMaxSourceDelayI3D = public method(hDC: HDC; uMaxLineDelay: PGLuint; uMaxPixelDelay: PGLuint): Boolean;

  // WGL_I3D_image_buffer
 [CallingConvention(PlatformConvention)]
  TwglCreateImageBufferI3D = public method(hDC: HDC; dwSize: GLuint; uFlags: GLuint): GLvoid;
 [CallingConvention(PlatformConvention)]
  TwglDestroyImageBufferI3D = public method(hDC: HDC; pAddress: GLvoid): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglAssociateImageBufferEventsI3D = public method(hDC: HDC; const pEvent: THandle; const pAddress: PGLvoid; const pSize: PGLuint; count: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglReleaseImageBufferEventsI3D = public method(hDC: HDC; const pAddress: PGLvoid; count: GLuint): Boolean;

  // WGL_I3D_swap_frame_lock
 [CallingConvention(PlatformConvention)]
  TwglEnableFrameLockI3D = public method(): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDisableFrameLockI3D = public method(): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglIsEnabledFrameLockI3D = public method(pFlag: Boolean): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryFrameLockMasterI3D = public method(pFlag: Boolean): Boolean;

  // WGL_I3D_swap_frame_usage
 [CallingConvention(PlatformConvention)]
  TwglGetFrameUsageI3D = public method(pUsage: PGLfloat): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglBeginFrameTrackingI3D = public method(): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglEndFrameTrackingI3D = public method(): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryFrameTrackingI3D = public method(pFrameCount: PGLuint; pMissedFrames: PGLuint; pLastMissedUsage: PGLfloat): Boolean;

  // WGL_NV_vertex_array_range
 [CallingConvention(PlatformConvention)]
  TwglAllocateMemoryNV = public method(size: GLsizei; readfreq: GLfloat; writefreq: GLfloat; priority: GLfloat);
 [CallingConvention(PlatformConvention)]
  TwglFreeMemoryNV = public method(_pointer: Pointer);

  // WGL_NV_present_video
 [CallingConvention(PlatformConvention)]
  TwglEnumerateVideoDevicesNV = public method(hdc: HDC; phDeviceList: PHVIDEOOUTPUTDEVICENV): Integer;
 [CallingConvention(PlatformConvention)]
  TwglBindVideoDeviceNV = public method(hd: HDC; uVideoSlot: Cardinal; hVideoDevice: HVIDEOOUTPUTDEVICENV; piAttribList: PInteger): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryCurrentContextNV = public method(iAttribute: Integer; piValue: PInteger): Boolean;

  // WGL_NV_video_output
 [CallingConvention(PlatformConvention)]
  TwglGetVideoDeviceNV = public method(hDC: HDC; numDevices: Integer; hVideoDevice: PHPVIDEODEV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglReleaseVideoDeviceNV = public method(hVideoDevice: HPVIDEODEV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglBindVideoImageNV = public method(hVideoDevice: HPVIDEODEV; hPbuffer: HPBUFFERARB; iVideoBuffer: Integer): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglReleaseVideoImageNV = public method(hPbuffer: HPBUFFERARB; iVideoBuffer: Integer): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSendPbufferToVideoNV = public method(hPbuffer: HPBUFFERARB; iBufferType: Integer; pulCounterPbuffer: PCardinal; bBlock: Boolean): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetVideoInfoNV = public method(hpVideoDevice: HPVIDEODEV; pulCounterOutputPbuffer: PCardinal; pulCounterOutputVideo: PCardinal): Boolean;

  // WGL_NV_swap_group
 [CallingConvention(PlatformConvention)]
  TwglJoinSwapGroupNV = public method(hDC: HDC; group: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglBindSwapBarrierNV = public method(group: GLuint; barrier: GLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQuerySwapGroupNV = public method(hDC: HDC; group: PGLuint; barrier: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryMaxSwapGroupsNV = public method(hDC: HDC; mxGroups: PGLuint; maxBarriers: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryFrameCountNV = public method(hDC: HDC; count: PGLuint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglResetFrameCountNV = public method(hDC: HDC): Boolean;

  // WGL_NV_gpu_affinity
 [CallingConvention(PlatformConvention)]
  TwglEnumGpusNV = public method(iGpuIndex: Cardinal; phGpu: PHGPUNV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglEnumGpuDevicesNV = public method(hGpu: HGPUNV; iDeviceIndex: Cardinal; lpGpuDevice: PGPU_DEVICE): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglCreateAffinityDCNV = public method(const phGpuList: PHGPUNV): HDC;
 [CallingConvention(PlatformConvention)]
  TwglEnumGpusFromAffinityDCNV = public method(hAffinityDC: HDC; iGpuIndex: Cardinal; hGpu: PHGPUNV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDeleteDCNV = public method(hDC: HDC): Boolean;

  // WGL_NV_video_capture
 [CallingConvention(PlatformConvention)]
  TwglBindVideoCaptureDeviceNV = public method(uVideoSlot: Cardinal; hDevice: HVIDEOINPUTDEVICENV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglEnumerateVideoCaptureDevicesNV = public method(hDc: HDC; phDeviceList: PHVIDEOINPUTDEVICENV): Cardinal;
 [CallingConvention(PlatformConvention)]
  TwglLockVideoCaptureDeviceNV = public method(hDc: HDC; hDevice: HVIDEOINPUTDEVICENV): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglQueryVideoCaptureDeviceNV = public method(hDc: HDC; hDevice: HVIDEOINPUTDEVICENV; iAttribute: Integer; piValue: PInteger): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglReleaseVideoCaptureDeviceNV = public method(hDc: HDC; hDevice: HVIDEOINPUTDEVICENV): Boolean;

  // WGL_NV_copy_image
 [CallingConvention(PlatformConvention)]
  TwglCopyImageSubDataNV = public method(hSrcRc: HGLRC; srcName: GLuint; srcTarget: GLenum; srcLevel: GLint; srcX: GLint; srcY: GLint; srcZ: GLint; hDstRC: HGLRC; dstName: GLuint; dstTarget: GLenum; dstLevel: GLint; dstX: GLint; dstY: GLint; dstZ: GLint; width: GLsizei; height: GLsizei; depth: GLsizei): Boolean;

  // WGL_NV_DX_interop
 [CallingConvention(PlatformConvention)]
  TwglDXSetResourceShareHandleNV = public method(dxObject : PGLVoid; hareHandle : Cardinal) : Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDXOpenDeviceNV = public method(dxDevice : PGLVoid) : Cardinal;
 [CallingConvention(PlatformConvention)]
  TwglDXCloseDeviceNV = public method(hDevice : Cardinal) : Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDXRegisterObjectNV = public method(hDevice : Cardinal; dxObject : PGLVoid; name : GLUInt; _type : TGLEnum; access : TGLenum) : Cardinal;
 [CallingConvention(PlatformConvention)]
  TwglDXUnregisterObjectNV = public method(hDevice : Cardinal; hObject : Cardinal) : Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDXObjectAccessNV = public method(hObject : Cardinal; access : GLenum) : Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDXLockObjectsNV = public method(hDevice : Cardinal; count : GLint; hObjects : PCardinal) : Boolean;
 [CallingConvention(PlatformConvention)]
  TwglDXUnlockObjectsNV = public method(hDevice : Cardinal; count : GLint; hObjects : PCardinal) : Boolean;

  // WGL_OML_sync_control
 [CallingConvention(PlatformConvention)]
  TwglGetSyncValuesOML = public method(hdc: HDC; ust: PGLint64; msc: PGLint64; sbc: PGLint64): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglGetMscRateOML = public method(hdc: HDC; numerator: PGLint; denominator: PGLint): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglSwapBuffersMscOML = public method(hdc: HDC; target_msc: GLint64; divisor: GLint64; remainder: GLint64): GLint64;
 [CallingConvention(PlatformConvention)]
  TwglSwapLayerBuffersMscOML = public method(hdc: HDC; fuPlanes: GLint; target_msc: GLint64; divisor: GLint64; remainder: GLint64): GLint64;
 [CallingConvention(PlatformConvention)]
  TwglWaitForMscOML = public method(hdc: HDC; target_msc: GLint64; divisor: GLint64; remainder: GLint64; ust: PGLint64; msc: PGLint64; sbc: PGLint64): Boolean;
 [CallingConvention(PlatformConvention)]
  TwglWaitForSbcOML = public method(hdc: HDC; target_sbc: GLint64; ust: PGLint64; msc: PGLint64; sbc: PGLint64): Boolean;

  // WGL_3DL_stereo_control
 [CallingConvention(PlatformConvention)]
  TwglSetStereoEmitterState3DL = public method(hDC: HDC; uState: UINT): Boolean;

  // WIN_draw_range_elements
 [CallingConvention(PlatformConvention)]
  TglDrawRangeElementsWIN = public method(mode: GLenum; start: GLuint; _end: GLuint; count: GLsizei; _type: GLenum; const indices: PGLvoid);// stdcall;

  // WIN_swap_hint
 [CallingConvention(PlatformConvention)]
  TglAddSwapHintRectWIN = public method(x: GLint; y: GLint; width: GLsizei; height: GLsizei);// stdcall;

{$ENDREGION}

{$REGION 'WGL VARS'}
Var
  wglGetProcAddress: TwglGetProcAddress;
  wglCopyContext: TwglCopyContext;
  wglCreateContext: TwglCreateContext;
  wglCreateLayerContext: TwglCreateLayerContext;
  wglDeleteContext: TwglDeleteContext;
  wglDescribeLayerPlane: TwglDescribeLayerPlane;
  wglGetCurrentContext: TwglGetCurrentContext;
  wglGetCurrentDC: TwglGetCurrentDC;
  wglGetLayerPaletteEntries: TwglGetLayerPaletteEntries;
  wglMakeCurrent: TwglMakeCurrent;
  wglRealizeLayerPalette: TwglRealizeLayerPalette;
  wglSetLayerPaletteEntries: TwglSetLayerPaletteEntries;
  wglShareLists: TwglShareLists;
  wglSwapLayerBuffers: TwglSwapLayerBuffers;
  wglSwapMultipleBuffers: TwglSwapMultipleBuffers;
  wglUseFontBitmapsA: TwglUseFontBitmapsA;
  wglUseFontOutlinesA: TwglUseFontOutlinesA;
  wglUseFontBitmapsW: TwglUseFontBitmapsW;
  wglUseFontOutlinesW: TwglUseFontOutlinesW;
  wglUseFontBitmaps: TwglUseFontBitmaps;
  wglUseFontOutlines: TwglUseFontOutlines;

   // WGL_ARB_buffer_region
  wglCreateBufferRegionARB: TwglCreateBufferRegionARB;
  wglDeleteBufferRegionARB: TwglDeleteBufferRegionARB;
  wglSaveBufferRegionARB: TwglSaveBufferRegionARB;
  wglRestoreBufferRegionARB: TwglRestoreBufferRegionARB;

  // WGL_ARB_extensions_string
  wglGetExtensionsStringARB: TwglGetExtensionsStringARB;

  // WGL_ARB_make_current_read
  wglMakeContextCurrentARB: TwglMakeContextCurrentARB;
  wglGetCurrentReadDCARB: TwglGetCurrentReadDCARB;

  // WGL_ARB_pbuffer
  wglCreatePbufferARB: TwglCreatePbufferARB;
  wglGetPbufferDCARB: TwglGetPbufferDCARB;
  wglReleasePbufferDCARB: TwglReleasePbufferDCARB;
  wglDestroyPbufferARB: TwglDestroyPbufferARB;
  wglQueryPbufferARB: TwglQueryPbufferARB;

  // WGL_ARB_pixel_format
  wglGetPixelFormatAttribivARB: TwglGetPixelFormatAttribivARB;
  wglGetPixelFormatAttribfvARB: TwglGetPixelFormatAttribfvARB;
  wglChoosePixelFormatARB: TwglChoosePixelFormatARB;
  // WGL_ARB_color_buffer_float
  wglClampColorARB: TwglClampColorARB;

  // WGL_ARB_render_texture
  wglBindTexImageARB: TwglBindTexImageARB;
  wglReleaseTexImageARB: TwglReleaseTexImageARB;
  wglSetPbufferAttribARB: TwglSetPbufferAttribARB;

  // WGL_ARB_create_context
  wglCreateContextAttribsARB: TwglCreateContextAttribsARB;

  // WGL_AMD_gpu_association
  wglGetGPUIDsAMD: TwglGetGPUIDsAMD;
  wglGetGPUInfoAMD: TwglGetGPUInfoAMD;
  wglGetContextGPUIDAMD: TwglGetContextGPUIDAMD;
  wglCreateAssociatedContextAMD: TwglCreateAssociatedContextAMD;
  wglCreateAssociatedContextAttribsAMD: TwglCreateAssociatedContextAttribsAMD;
  wglDeleteAssociatedContextAMD: TwglDeleteAssociatedContextAMD;
  wglMakeAssociatedContextCurrentAMD: TwglMakeAssociatedContextCurrentAMD;
  wglGetCurrentAssociatedContextAMD: TwglGetCurrentAssociatedContextAMD;
  wglBlitContextFramebufferAMD: TwglBlitContextFramebufferAMD;

  // WGL_EXT_display_color_table
  wglCreateDisplayColorTableEXT: TwglCreateDisplayColorTableEXT;
  wglLoadDisplayColorTableEXT: TwglLoadDisplayColorTableEXT;
  wglBindDisplayColorTableEXT: TwglBindDisplayColorTableEXT;
  wglDestroyDisplayColorTableEXT: TwglDestroyDisplayColorTableEXT;

  // WGL_EXT_extensions_string
  wglGetExtensionsStringEXT: TwglGetExtensionsStringEXT;

  // WGL_EXT_make_current_read
  wglMakeContextCurrentEXT: TwglMakeContextCurrentEXT;
  wglGetCurrentReadDCEXT: TwglGetCurrentReadDCEXT;

  // WGL_EXT_pbuffer
  wglCreatePbufferEXT: TwglCreatePbufferEXT;
  wglGetPbufferDCEXT: TwglGetPbufferDCEXT;
  wglReleasePbufferDCEXT: TwglReleasePbufferDCEXT;
  wglDestroyPbufferEXT: TwglDestroyPbufferEXT;
  wglQueryPbufferEXT: TwglQueryPbufferEXT;

  // WGL_EXT_pixel_format
  wglGetPixelFormatAttribivEXT: TwglGetPixelFormatAttribivEXT;
  wglGetPixelFormatAttribfvEXT: TwglGetPixelFormatAttribfvEXT;
  wglChoosePixelFormatEXT: TwglChoosePixelFormatEXT;

  // WGL_EXT_swap_control
  wglSwapIntervalEXT: TwglSwapIntervalEXT;
  wglGetSwapIntervalEXT: TwglGetSwapIntervalEXT;

  // WGL_I3D_digital_video_control
  wglGetDigitalVideoParametersI3D: TwglGetDigitalVideoParametersI3D;
  wglSetDigitalVideoParametersI3D: TwglSetDigitalVideoParametersI3D;

  // WGL_I3D_gamma
  wglGetGammaTableParametersI3D: TwglGetGammaTableParametersI3D;
  wglSetGammaTableParametersI3D: TwglSetGammaTableParametersI3D;
  wglGetGammaTableI3D: TwglGetGammaTableI3D;
  wglSetGammaTableI3D: TwglSetGammaTableI3D;

  // WGL_I3D_genlock
  wglEnableGenlockI3D: TwglEnableGenlockI3D;
  wglDisableGenlockI3D: TwglDisableGenlockI3D;
  wglIsEnabledGenlockI3D: TwglIsEnabledGenlockI3D;
  wglGenlockSourceI3D: TwglGenlockSourceI3D;
  wglGetGenlockSourceI3D: TwglGetGenlockSourceI3D;
  wglGenlockSourceEdgeI3D: TwglGenlockSourceEdgeI3D;
  wglGetGenlockSourceEdgeI3D: TwglGetGenlockSourceEdgeI3D;
  wglGenlockSampleRateI3D: TwglGenlockSampleRateI3D;
  wglGetGenlockSampleRateI3D: TwglGetGenlockSampleRateI3D;
  wglGenlockSourceDelayI3D: TwglGenlockSourceDelayI3D;
  wglGetGenlockSourceDelayI3D: TwglGetGenlockSourceDelayI3D;
  wglQueryGenlockMaxSourceDelayI3D: TwglQueryGenlockMaxSourceDelayI3D;

  // WGL_I3D_image_buffer
  wglCreateImageBufferI3D: TwglCreateImageBufferI3D;
  wglDestroyImageBufferI3D: TwglDestroyImageBufferI3D;
  wglAssociateImageBufferEventsI3D: TwglAssociateImageBufferEventsI3D;
  wglReleaseImageBufferEventsI3D: TwglReleaseImageBufferEventsI3D;

  // WGL_I3D_swap_frame_lock
  wglEnableFrameLockI3D: TwglEnableFrameLockI3D;
  wglDisableFrameLockI3D: TwglDisableFrameLockI3D;
  wglIsEnabledFrameLockI3D: TwglIsEnabledFrameLockI3D;
  wglQueryFrameLockMasterI3D: TwglQueryFrameLockMasterI3D;

  // WGL_I3D_swap_frame_usage
  wglGetFrameUsageI3D: TwglGetFrameUsageI3D;
  wglBeginFrameTrackingI3D: TwglBeginFrameTrackingI3D;
  wglEndFrameTrackingI3D: TwglEndFrameTrackingI3D;
  wglQueryFrameTrackingI3D: TwglQueryFrameTrackingI3D;

  // WGL_NV_vertex_array_range
  wglAllocateMemoryNV: TwglAllocateMemoryNV;
  wglFreeMemoryNV: TwglFreeMemoryNV;

  // WGL_NV_present_video
  wglEnumerateVideoDevicesNV: TwglEnumerateVideoDevicesNV;
  wglBindVideoDeviceNV: TwglBindVideoDeviceNV;
  wglQueryCurrentContextNV: TwglQueryCurrentContextNV;

  // WGL_NV_video_output
  wglGetVideoDeviceNV: TwglGetVideoDeviceNV;
  wglReleaseVideoDeviceNV: TwglReleaseVideoDeviceNV;
  wglBindVideoImageNV: TwglBindVideoImageNV;
  wglReleaseVideoImageNV: TwglReleaseVideoImageNV;
  wglSendPbufferToVideoNV: TwglSendPbufferToVideoNV;
  wglGetVideoInfoNV: TwglGetVideoInfoNV;

  // WGL_NV_swap_group
  wglJoinSwapGroupNV: TwglJoinSwapGroupNV;
  wglBindSwapBarrierNV: TwglBindSwapBarrierNV;
  wglQuerySwapGroupNV: TwglQuerySwapGroupNV;
  wglQueryMaxSwapGroupsNV: TwglQueryMaxSwapGroupsNV;
  wglQueryFrameCountNV: TwglQueryFrameCountNV;
  wglResetFrameCountNV: TwglResetFrameCountNV;

  // WGL_NV_gpu_affinity
  wglEnumGpusNV: TwglEnumGpusNV;
  wglEnumGpuDevicesNV: TwglEnumGpuDevicesNV;
  wglCreateAffinityDCNV: TwglCreateAffinityDCNV;
  wglEnumGpusFromAffinityDCNV: TwglEnumGpusFromAffinityDCNV;
  wglDeleteDCNV: TwglDeleteDCNV;

  // WGL_NV_video_capture
  wglBindVideoCaptureDeviceNV: TwglBindVideoCaptureDeviceNV;
  wglEnumerateVideoCaptureDevicesNV: TwglEnumerateVideoCaptureDevicesNV;
  wglLockVideoCaptureDeviceNV: TwglLockVideoCaptureDeviceNV;
  wglQueryVideoCaptureDeviceNV: TwglQueryVideoCaptureDeviceNV;
  wglReleaseVideoCaptureDeviceNV: TwglReleaseVideoCaptureDeviceNV;

  // WGL_NV_copy_image
  wglCopyImageSubDataNV: TwglCopyImageSubDataNV;

  // WGL_NV_DX_interop
  wglDXSetResourceShareHandleNV : TwglDXSetResourceShareHandleNV;
  wglDXOpenDeviceNV : TwglDXOpenDeviceNV;
  wglDXCloseDeviceNV : TwglDXCloseDeviceNV;
  wglDXRegisterObjectNV : TwglDXRegisterObjectNV;
  wglDXUnregisterObjectNV : TwglDXUnregisterObjectNV;
  wglDXObjectAccessNV : TwglDXObjectAccessNV;
  wglDXLockObjectsNV : TwglDXLockObjectsNV;
  wglDXUnlockObjectsNV : TwglDXUnlockObjectsNV;

  // WGL_OML_sync_control
  wglGetSyncValuesOML: TwglGetSyncValuesOML;
  wglGetMscRateOML: TwglGetMscRateOML;
  wglSwapBuffersMscOML: TwglSwapBuffersMscOML;
  wglSwapLayerBuffersMscOML: TwglSwapLayerBuffersMscOML;
  wglWaitForMscOML: TwglWaitForMscOML;
  wglWaitForSbcOML: TwglWaitForSbcOML;

  // WGL_3DL_stereo_control
  wglSetStereoEmitterState3DL: TwglSetStereoEmitterState3DL;

  // WIN_draw_range_elements
  glDrawRangeElementsWIN: TglDrawRangeElementsWIN;

  // WIN_swap_hint
  glAddSwapHintRectWIN: TglAddSwapHintRectWIN;
{$ENDREGION}



{$REGION 'WGL Load Funcs'}
method Read_WGL_ARB_buffer_region;
method Read_WGL_ARB_extensions_string;
method Read_WGL_ARB_make_current_read;
method Read_WGL_ARB_pbuffer;
method Read_WGL_ARB_pixel_format;
method Read_WGL_ARB_pixel_format_float;
method Read_WGL_ARB_render_texture;
method Read_WGL_ARB_create_context;
method Read_WGL_AMD_gpu_association;
method Read_WGL_EXT_display_color_table;
method Read_WGL_EXT_extensions_string;
method Read_WGL_EXT_make_current_read;
method Read_WGL_EXT_pbuffer;
method Read_WGL_EXT_pixel_format;
method Read_WGL_EXT_swap_control;
method Read_WGL_I3D_digital_video_control;
method Read_WGL_I3D_gamma;
method Read_WGL_I3D_genlock;
method Read_WGL_I3D_image_buffer;
method Read_WGL_I3D_swap_frame_lock;
method Read_WGL_I3D_swap_frame_usage;
method Read_WGL_NV_vertex_array_range;
method Read_WGL_NV_present_video;
method Read_WGL_NV_video_output;
method Read_WGL_NV_swap_group;
method Read_WGL_NV_gpu_affinity;
method Read_WGL_NV_video_capture;
method Read_WGL_NV_copy_image;
method Read_WGL_OML_sync_control;
method Read_WGL_3DL_stereo_control;

method Read_WIN_draw_range_elements;
method Read_WIN_swap_hint;

{$ENDREGION}

method ReadWGLExtensions;

{$ENDIF}

implementation

{$IF ISLAND AND WINDOWS}
method Read_WGL_ARB_buffer_region;
begin
  wglCreateBufferRegionARB := twglCreateBufferRegionARB(dglGetProcAddress('wglCreateBufferRegionARB'));
  wglDeleteBufferRegionARB := twglDeleteBufferRegionARB(dglGetProcAddress('wglDeleteBufferRegionARB'));
  wglSaveBufferRegionARB := twglSaveBufferRegionARB(dglGetProcAddress('wglSaveBufferRegionARB'));
  wglRestoreBufferRegionARB := twglRestoreBufferRegionARB(dglGetProcAddress('wglRestoreBufferRegionARB'));
end;

method Read_WGL_ARB_extensions_string;
begin
  wglGetExtensionsStringARB := twglGetExtensionsStringARB(dglGetProcAddress('wglGetExtensionsStringARB'));
end;

method Read_WGL_ARB_make_current_read;
begin
  wglMakeContextCurrentARB := twglMakeContextCurrentARB(dglGetProcAddress('wglMakeContextCurrentARB'));
  wglGetCurrentReadDCARB := twglGetCurrentReadDCARB(dglGetProcAddress('wglGetCurrentReadDCARB'));
end;

method Read_WGL_ARB_pbuffer;
begin
  wglCreatePbufferARB := twglCreatePbufferARB(dglGetProcAddress('wglCreatePbufferARB'));
  wglGetPbufferDCARB := twglGetPbufferDCARB(dglGetProcAddress('wglGetPbufferDCARB'));
  wglReleasePbufferDCARB := twglReleasePbufferDCARB(dglGetProcAddress('wglReleasePbufferDCARB'));
  wglDestroyPbufferARB := twglDestroyPbufferARB(dglGetProcAddress('wglDestroyPbufferARB'));
  wglQueryPbufferARB := twglQueryPbufferARB(dglGetProcAddress('wglQueryPbufferARB'));
end;

method Read_WGL_ARB_pixel_format;
begin
  wglGetPixelFormatAttribivARB := twglGetPixelFormatAttribivARB(dglGetProcAddress('wglGetPixelFormatAttribivARB'));
  wglGetPixelFormatAttribfvARB := twglGetPixelFormatAttribfvARB(dglGetProcAddress('wglGetPixelFormatAttribfvARB'));
  wglChoosePixelFormatARB := twglChoosePixelFormatARB(dglGetProcAddress('wglChoosePixelFormatARB'));
end;

method Read_WGL_ARB_pixel_format_float;
begin
  wglClampColorARB := twglClampColorARB(dglGetProcAddress('wglClampColorARB'));
end;

method Read_WGL_ARB_render_texture;
begin
  wglBindTexImageARB := twglBindTexImageARB(dglGetProcAddress('wglBindTexImageARB'));
  wglReleaseTexImageARB := twglReleaseTexImageARB(dglGetProcAddress('wglReleaseTexImageARB'));
  wglSetPbufferAttribARB := twglSetPbufferAttribARB(dglGetProcAddress('wglSetPbufferAttribARB'));
end;

method Read_WGL_ARB_create_context;
begin
  wglCreateContextAttribsARB := twglCreateContextAttribsARB(dglGetProcAddress('wglCreateContextAttribsARB'));
end;

method Read_WGL_AMD_gpu_association;
begin
  wglGetGPUIDsAMD := twglGetGPUIDsAMD(dglGetProcAddress('wglGetGPUIDsAMD'));
  wglGetGPUInfoAMD := twglGetGPUInfoAMD(dglGetProcAddress('wglGetGPUInfoAMD'));
  wglGetContextGPUIDAMD := twglGetContextGPUIDAMD(dglGetProcAddress('wglGetContextGPUIDAMD'));
  wglCreateAssociatedContextAMD := twglCreateAssociatedContextAMD(dglGetProcAddress('wglCreateAssociatedContextAMD'));
  wglCreateAssociatedContextAttribsAMD := twglCreateAssociatedContextAttribsAMD(dglGetProcAddress('wglCreateAssociatedContextAttribsAMD'));
  wglDeleteAssociatedContextAMD := twglDeleteAssociatedContextAMD(dglGetProcAddress('wglDeleteAssociatedContextAMD'));
  wglMakeAssociatedContextCurrentAMD := twglMakeAssociatedContextCurrentAMD(dglGetProcAddress('wglMakeAssociatedContextCurrentAMD'));
  wglGetCurrentAssociatedContextAMD := twglGetCurrentAssociatedContextAMD(dglGetProcAddress('wglGetCurrentAssociatedContextAMD'));
  wglBlitContextFramebufferAMD := twglBlitContextFramebufferAMD(dglGetProcAddress('wglBlitContextFramebufferAMD'));
end;

method Read_WGL_EXT_display_color_table;
begin
  wglCreateDisplayColorTableEXT := twglCreateDisplayColorTableEXT(dglGetProcAddress('wglCreateDisplayColorTableEXT'));
  wglLoadDisplayColorTableEXT := twglLoadDisplayColorTableEXT(dglGetProcAddress('wglLoadDisplayColorTableEXT'));
  wglBindDisplayColorTableEXT := twglBindDisplayColorTableEXT(dglGetProcAddress('wglBindDisplayColorTableEXT'));
  wglDestroyDisplayColorTableEXT := twglDestroyDisplayColorTableEXT(dglGetProcAddress('wglDestroyDisplayColorTableEXT'));
end;

method Read_WGL_EXT_extensions_string;
begin
  wglGetExtensionsStringEXT := twglGetExtensionsStringEXT(dglGetProcAddress('wglGetExtensionsStringEXT'));
end;

method Read_WGL_EXT_make_current_read;
begin
  wglMakeContextCurrentEXT := twglMakeContextCurrentEXT(dglGetProcAddress('wglMakeContextCurrentEXT'));
  wglGetCurrentReadDCEXT := twglGetCurrentReadDCEXT(dglGetProcAddress('wglGetCurrentReadDCEXT'));
end;

method Read_WGL_EXT_pbuffer;
begin
  wglCreatePbufferEXT := twglCreatePbufferEXT(dglGetProcAddress('wglCreatePbufferEXT'));
  wglGetPbufferDCEXT := twglGetPbufferDCEXT(dglGetProcAddress('wglGetPbufferDCEXT'));
  wglReleasePbufferDCEXT := twglReleasePbufferDCEXT(dglGetProcAddress('wglReleasePbufferDCEXT'));
  wglDestroyPbufferEXT := twglDestroyPbufferEXT(dglGetProcAddress('wglDestroyPbufferEXT'));
  wglQueryPbufferEXT := twglQueryPbufferEXT(dglGetProcAddress('wglQueryPbufferEXT'));
end;

method Read_WGL_EXT_pixel_format;
begin
  wglGetPixelFormatAttribivEXT := twglGetPixelFormatAttribivEXT(dglGetProcAddress('wglGetPixelFormatAttribivEXT'));
  wglGetPixelFormatAttribfvEXT := twglGetPixelFormatAttribfvEXT(dglGetProcAddress('wglGetPixelFormatAttribfvEXT'));
  wglChoosePixelFormatEXT := twglChoosePixelFormatEXT(dglGetProcAddress('wglChoosePixelFormatEXT'));
end;

method Read_WGL_EXT_swap_control;
begin
  wglSwapIntervalEXT := twglSwapIntervalEXT(dglGetProcAddress('wglSwapIntervalEXT'));
  wglGetSwapIntervalEXT := twglGetSwapIntervalEXT(dglGetProcAddress('wglGetSwapIntervalEXT'));
end;

method Read_WGL_I3D_digital_video_control;
begin
  wglGetDigitalVideoParametersI3D := twglGetDigitalVideoParametersI3D(dglGetProcAddress('wglGetDigitalVideoParametersI3D'));
  wglSetDigitalVideoParametersI3D := twglSetDigitalVideoParametersI3D(dglGetProcAddress('wglSetDigitalVideoParametersI3D'));
end;

method Read_WGL_I3D_gamma;
begin
  wglGetGammaTableParametersI3D := twglGetGammaTableParametersI3D(dglGetProcAddress('wglGetGammaTableParametersI3D'));
  wglSetGammaTableParametersI3D := twglSetGammaTableParametersI3D(dglGetProcAddress('wglSetGammaTableParametersI3D'));
  wglGetGammaTableI3D := twglGetGammaTableI3D(dglGetProcAddress('wglGetGammaTableI3D'));
  wglSetGammaTableI3D := twglSetGammaTableI3D(dglGetProcAddress('wglSetGammaTableI3D'));
end;

method Read_WGL_I3D_genlock;
begin
  wglEnableGenlockI3D := twglEnableGenlockI3D(dglGetProcAddress('wglEnableGenlockI3D'));
  wglDisableGenlockI3D := twglDisableGenlockI3D(dglGetProcAddress('wglDisableGenlockI3D'));
  wglIsEnabledGenlockI3D := twglIsEnabledGenlockI3D(dglGetProcAddress('wglIsEnabledGenlockI3D'));
  wglGenlockSourceI3D := twglGenlockSourceI3D(dglGetProcAddress('wglGenlockSourceI3D'));
  wglGetGenlockSourceI3D := twglGetGenlockSourceI3D(dglGetProcAddress('wglGetGenlockSourceI3D'));
  wglGenlockSourceEdgeI3D := twglGenlockSourceEdgeI3D(dglGetProcAddress('wglGenlockSourceEdgeI3D'));
  wglGetGenlockSourceEdgeI3D := twglGetGenlockSourceEdgeI3D(dglGetProcAddress('wglGetGenlockSourceEdgeI3D'));
  wglGenlockSampleRateI3D := twglGenlockSampleRateI3D(dglGetProcAddress('wglGenlockSampleRateI3D'));
  wglGetGenlockSampleRateI3D := twglGetGenlockSampleRateI3D(dglGetProcAddress('wglGetGenlockSampleRateI3D'));
  wglGenlockSourceDelayI3D := twglGenlockSourceDelayI3D(dglGetProcAddress('wglGenlockSourceDelayI3D'));
  wglGetGenlockSourceDelayI3D := twglGetGenlockSourceDelayI3D(dglGetProcAddress('wglGetGenlockSourceDelayI3D'));
  wglQueryGenlockMaxSourceDelayI3D := twglQueryGenlockMaxSourceDelayI3D(dglGetProcAddress('wglQueryGenlockMaxSourceDelayI3D'));
end;

method Read_WGL_I3D_image_buffer;
begin
  wglCreateImageBufferI3D := twglCreateImageBufferI3D(dglGetProcAddress('wglCreateImageBufferI3D'));
  wglDestroyImageBufferI3D := twglDestroyImageBufferI3D(dglGetProcAddress('wglDestroyImageBufferI3D'));
  wglAssociateImageBufferEventsI3D := twglAssociateImageBufferEventsI3D(dglGetProcAddress('wglAssociateImageBufferEventsI3D'));
  wglReleaseImageBufferEventsI3D := twglReleaseImageBufferEventsI3D(dglGetProcAddress('wglReleaseImageBufferEventsI3D'));
end;

method Read_WGL_I3D_swap_frame_lock;
begin
  wglEnableFrameLockI3D := twglEnableFrameLockI3D(dglGetProcAddress('wglEnableFrameLockI3D'));
  wglDisableFrameLockI3D := twglDisableFrameLockI3D(dglGetProcAddress('wglDisableFrameLockI3D'));
  wglIsEnabledFrameLockI3D := twglIsEnabledFrameLockI3D(dglGetProcAddress('wglIsEnabledFrameLockI3D'));
  wglQueryFrameLockMasterI3D := twglQueryFrameLockMasterI3D(dglGetProcAddress('wglQueryFrameLockMasterI3D'));
end;

method Read_WGL_I3D_swap_frame_usage;
begin
  wglGetFrameUsageI3D := twglGetFrameUsageI3D(dglGetProcAddress('wglGetFrameUsageI3D'));
  wglBeginFrameTrackingI3D := twglBeginFrameTrackingI3D(dglGetProcAddress('wglBeginFrameTrackingI3D'));
  wglEndFrameTrackingI3D := twglEndFrameTrackingI3D(dglGetProcAddress('wglEndFrameTrackingI3D'));
  wglQueryFrameTrackingI3D := twglQueryFrameTrackingI3D(dglGetProcAddress('wglQueryFrameTrackingI3D'));
end;

method Read_WGL_NV_vertex_array_range;
begin
  wglAllocateMemoryNV := twglAllocateMemoryNV(dglGetProcAddress('wglAllocateMemoryNV'));
  wglFreeMemoryNV := twglFreeMemoryNV(dglGetProcAddress('wglFreeMemoryNV'));
end;

method Read_WGL_NV_present_video;
begin
  wglEnumerateVideoDevicesNV := twglEnumerateVideoDevicesNV(dglGetProcAddress('wglEnumerateVideoDevicesNV'));
  wglBindVideoDeviceNV := twglBindVideoDeviceNV(dglGetProcAddress('wglBindVideoDeviceNV'));
  wglQueryCurrentContextNV := twglQueryCurrentContextNV(dglGetProcAddress('wglQueryCurrentContextNV'));
end;

method Read_WGL_NV_video_output;
begin
  wglGetVideoDeviceNV := twglGetVideoDeviceNV(dglGetProcAddress('wglGetVideoDeviceNV'));
  wglReleaseVideoDeviceNV := twglReleaseVideoDeviceNV(dglGetProcAddress('wglReleaseVideoDeviceNV'));
  wglBindVideoImageNV := twglBindVideoImageNV(dglGetProcAddress('wglBindVideoImageNV'));
  wglReleaseVideoImageNV := twglReleaseVideoImageNV(dglGetProcAddress('wglReleaseVideoImageNV'));
  wglSendPbufferToVideoNV := twglSendPbufferToVideoNV(dglGetProcAddress('wglSendPbufferToVideoNV'));
  wglGetVideoInfoNV := twglGetVideoInfoNV(dglGetProcAddress('wglGetVideoInfoNV'));
end;

method Read_WGL_NV_swap_group;
begin
  wglJoinSwapGroupNV := twglJoinSwapGroupNV(dglGetProcAddress('wglJoinSwapGroupNV'));
  wglBindSwapBarrierNV := twglBindSwapBarrierNV(dglGetProcAddress('wglBindSwapBarrierNV'));
  wglQuerySwapGroupNV := twglQuerySwapGroupNV(dglGetProcAddress('wglQuerySwapGroupNV'));
  wglQueryMaxSwapGroupsNV := twglQueryMaxSwapGroupsNV(dglGetProcAddress('wglQueryMaxSwapGroupsNV'));
  wglQueryFrameCountNV := twglQueryFrameCountNV(dglGetProcAddress('wglQueryFrameCountNV'));
  wglResetFrameCountNV := twglResetFrameCountNV(dglGetProcAddress('wglResetFrameCountNV'));
end;

method Read_WGL_NV_gpu_affinity;
begin
  wglEnumGpusNV := twglEnumGpusNV(dglGetProcAddress('wglEnumGpusNV'));
  wglEnumGpuDevicesNV := twglEnumGpuDevicesNV(dglGetProcAddress('wglEnumGpuDevicesNV'));
  wglCreateAffinityDCNV := twglCreateAffinityDCNV(dglGetProcAddress('wglCreateAffinityDCNV'));
  wglEnumGpusFromAffinityDCNV := twglEnumGpusFromAffinityDCNV(dglGetProcAddress('wglEnumGpusFromAffinityDCNV'));
  wglDeleteDCNV := twglDeleteDCNV(dglGetProcAddress('wglDeleteDCNV'));
end;

method Read_WGL_NV_video_capture;
begin
  wglBindVideoCaptureDeviceNV := twglBindVideoCaptureDeviceNV(dglGetProcAddress('wglBindVideoCaptureDeviceNV'));
  wglEnumerateVideoCaptureDevicesNV := twglEnumerateVideoCaptureDevicesNV(dglGetProcAddress('wglEnumerateVideoCaptureDevicesNV'));
  wglLockVideoCaptureDeviceNV := twglLockVideoCaptureDeviceNV(dglGetProcAddress('wglLockVideoCaptureDeviceNV'));
  wglQueryVideoCaptureDeviceNV := twglQueryVideoCaptureDeviceNV(dglGetProcAddress('wglQueryVideoCaptureDeviceNV'));
  wglReleaseVideoCaptureDeviceNV := twglReleaseVideoCaptureDeviceNV(dglGetProcAddress('wglReleaseVideoCaptureDeviceNV'));
end;

method Read_WGL_NV_copy_image;
begin
  wglCopyImageSubDataNV := twglCopyImageSubDataNV(dglGetProcAddress('wglCopyImageSubDataNV'));
end;

method Read_WGL_NV_DX_interop;
begin
  wglDXSetResourceShareHandleNV := twglDXSetResourceShareHandleNV(dglGetProcAddress('wglDXSetResourceShareHandleNV'));
  wglDXOpenDeviceNV := twglDXOpenDeviceNV(dglGetProcAddress('wglDXOpenDeviceNV'));
  wglDXCloseDeviceNV := twglDXCloseDeviceNV(dglGetProcAddress('wglDXCloseDeviceNV'));
  wglDXRegisterObjectNV := twglDXRegisterObjectNV(dglGetProcAddress('wglDXRegisterObjectNV'));
  wglDXUnregisterObjectNV := twglDXUnregisterObjectNV(dglGetProcAddress('wglDXUnregisterObjectNV'));
  wglDXObjectAccessNV := twglDXObjectAccessNV(dglGetProcAddress('wglDXObjectAccessNV'));
  wglDXLockObjectsNV := twglDXLockObjectsNV(dglGetProcAddress('wglDXLockObjectsNV'));
  wglDXUnlockObjectsNV := twglDXUnlockObjectsNV(dglGetProcAddress('wglDXUnlockObjectsNV'));
end;


method Read_WGL_OML_sync_control;
begin
  wglGetSyncValuesOML := twglGetSyncValuesOML(dglGetProcAddress('wglGetSyncValuesOML'));
  wglGetMscRateOML := twglGetMscRateOML(dglGetProcAddress('wglGetMscRateOML'));
  wglSwapBuffersMscOML := twglSwapBuffersMscOML(dglGetProcAddress('wglSwapBuffersMscOML'));
  wglSwapLayerBuffersMscOML := twglSwapLayerBuffersMscOML(dglGetProcAddress('wglSwapLayerBuffersMscOML'));
  wglWaitForMscOML := twglWaitForMscOML(dglGetProcAddress('wglWaitForMscOML'));
  wglWaitForSbcOML := twglWaitForSbcOML(dglGetProcAddress('wglWaitForSbcOML'));
end;

method Read_WGL_3DL_stereo_control;
begin
  wglSetStereoEmitterState3DL := twglSetStereoEmitterState3DL(dglGetProcAddress('wglSetStereoEmitterState3DL'));
end;

method Read_WIN_draw_range_elements;
begin
  glDrawRangeElementsWIN := tglDrawRangeElementsWIN(dglGetProcAddress('glDrawRangeElementsWIN'));
end;

method Read_WIN_swap_hint;
begin
  glAddSwapHintRectWIN := tglAddSwapHintRectWIN(dglGetProcAddress('glAddSwapHintRectWIN'));
end;


method ReadWGLExtensions;
begin
 Read_WGL_ARB_buffer_region;
  Read_WGL_ARB_extensions_string;
  Read_WGL_ARB_make_current_read;
  Read_WGL_ARB_pbuffer;
  Read_WGL_ARB_pixel_format;
  Read_WGL_ARB_pixel_format_float;
  Read_WGL_ARB_render_texture;
  Read_WGL_ARB_create_context;
  Read_WGL_AMD_gpu_association;
  Read_WGL_EXT_display_color_table;
  Read_WGL_EXT_extensions_string;
  Read_WGL_EXT_make_current_read;
  Read_WGL_EXT_pbuffer;
  Read_WGL_EXT_pixel_format;
  Read_WGL_EXT_swap_control;
  Read_WGL_I3D_digital_video_control;
  Read_WGL_I3D_gamma;
  Read_WGL_I3D_genlock;
  Read_WGL_I3D_image_buffer;
  Read_WGL_I3D_swap_frame_lock;
  Read_WGL_I3D_swap_frame_usage;
  Read_WGL_NV_vertex_array_range;
  Read_WGL_NV_present_video;
  Read_WGL_NV_video_output;
  Read_WGL_NV_swap_group;
  Read_WGL_NV_gpu_affinity;
  Read_WGL_NV_video_capture;
  Read_WGL_NV_copy_image;
  Read_WGL_NV_DX_interop;
  Read_WGL_OML_sync_control;
  Read_WGL_3DL_stereo_control;

  Read_WIN_draw_range_elements;
  Read_WIN_swap_hint;
end;


{$ENDIF}
end.