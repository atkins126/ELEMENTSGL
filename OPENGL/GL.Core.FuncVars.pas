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

  var
  // GL_VERSION_1_0
  glCullFace: TglCullFace;
  glFrontFace: TglFrontFace;
  glHint: TglHint;
  glLineWidth: TglLineWidth;
  glPointSize: TglPointSize;
  glPolygonMode: TglPolygonMode;
  glScissor: TglScissor;
  glTexParameterf: TglTexParameterf;
  glTexParameterfv: TglTexParameterfv;
  glTexParameteri: TglTexParameteri;
  glTexParameteriv: TglTexParameteriv;
  glTexImage1D: TglTexImage1D;
  glTexImage2D: TglTexImage2D;
  glDrawBuffer: TglDrawBuffer;
  glClear: TglClear;
  glClearColor: TglClearColor;
  glClearStencil: TglClearStencil;
  glClearDepth: TglClearDepth;
  glStencilMask: TglStencilMask;
  glColorMask: TglColorMask;
  glDepthMask: TglDepthMask;
  glDisable: TglDisable;
  glEnable: TglEnable;
  glFinish: TglFinish;
  glFlush: TglFlush;
  glBlendFunc: TglBlendFunc;
  glLogicOp: TglLogicOp;
  glStencilFunc: TglStencilFunc;
  glStencilOp: TglStencilOp;
  glDepthFunc: TglDepthFunc;
  glPixelStoref: TglPixelStoref;
  glPixelStorei: TglPixelStorei;
  glReadBuffer: TglReadBuffer;
  glReadPixels: TglReadPixels;
  glGetBooleanv: TglGetBooleanv;
  glGetDoublev: TglGetDoublev;
  glGetError: TglGetError;
  glGetFloatv: TglGetFloatv;
  glGetIntegerv: TglGetIntegerv;
  glGetString: TglGetString;
  glGetTexImage: TglGetTexImage;
  glGetTexParameteriv: TglGetTexParameteriv;
  glGetTexParameterfv: TglGetTexParameterfv;
  glGetTexLevelParameterfv: TglGetTexLevelParameterfv;
  glGetTexLevelParameteriv: TglGetTexLevelParameteriv;
  glIsEnabled: TglIsEnabled;
  glDepthRange: TglDepthRange;
  glViewport: TglViewport;

  // GL_VERSION_1_1
  glDrawArrays: TglDrawArrays;
  glDrawElements: TglDrawElements;
  glGetPointerv: TglGetPointerv;
  glPolygonOffset: TglPolygonOffset;
  glCopyTexImage1D: TglCopyTexImage1D;
  glCopyTexImage2D: TglCopyTexImage2D;
  glCopyTexSubImage1D: TglCopyTexSubImage1D;
  glCopyTexSubImage2D: TglCopyTexSubImage2D;
  glTexSubImage1D: TglTexSubImage1D;
  glTexSubImage2D: TglTexSubImage2D;
  glBindTexture: TglBindTexture;
  glDeleteTextures: TglDeleteTextures;
  glGenTextures: TglGenTextures;


  // GL_VERSION_1_2
  glBlendColor: TglBlendColor;
  glBlendEquation: TglBlendEquation;
  glDrawRangeElements: TglDrawRangeElements;
  glTexImage3D: TglTexImage3D;
  glTexSubImage3D: TglTexSubImage3D;
  glCopyTexSubImage3D: TglCopyTexSubImage3D;


  // GL_VERSION_1_3
  glActiveTexture: TglActiveTexture;
  glSampleCoverage: TglSampleCoverage;
  glCompressedTexImage3D: TglCompressedTexImage3D;
  glCompressedTexImage2D: TglCompressedTexImage2D;
  glCompressedTexImage1D: TglCompressedTexImage1D;
  glCompressedTexSubImage3D: TglCompressedTexSubImage3D;
  glCompressedTexSubImage2D: TglCompressedTexSubImage2D;
  glCompressedTexSubImage1D: TglCompressedTexSubImage1D;
  glGetCompressedTexImage: TglGetCompressedTexImage;


  // GL_VERSION_1_4
  glBlendFuncSeparate: TglBlendFuncSeparate;
  glMultiDrawArrays: TglMultiDrawArrays;
  glMultiDrawElements: TglMultiDrawElements;
  glPointParameterf: TglPointParameterf;
  glPointParameterfv: TglPointParameterfv;
  glPointParameteri: TglPointParameteri;
  glPointParameteriv: TglPointParameteriv;

  // GL_VERSION_1_5
  glGenQueries: TglGenQueries;
  glDeleteQueries: TglDeleteQueries;
  glIsQuery: TglIsQuery;
  glBeginQuery: TglBeginQuery;
  glEndQuery: TglEndQuery;
  glGetQueryiv: TglGetQueryiv;
  glGetQueryObjectiv: TglGetQueryObjectiv;
  glGetQueryObjectuiv: TglGetQueryObjectuiv;
  glBindBuffer: TglBindBuffer;
  glDeleteBuffers: TglDeleteBuffers;
  glGenBuffers: TglGenBuffers;
  glIsBuffer: TglIsBuffer;
  glBufferData: TglBufferData;
  glBufferSubData: TglBufferSubData;
  glGetBufferSubData: TglGetBufferSubData;
  glMapBuffer: TglMapBuffer;
  glUnmapBuffer: TglUnmapBuffer;
  glGetBufferParameteriv: TglGetBufferParameteriv;
  glGetBufferPointerv: TglGetBufferPointerv;

  // GL_VERSION_2_0
  glBlendEquationSeparate: TglBlendEquationSeparate;
  glDrawBuffers: TglDrawBuffers;
  glStencilOpSeparate: TglStencilOpSeparate;
  glStencilFuncSeparate: TglStencilFuncSeparate;
  glStencilMaskSeparate: TglStencilMaskSeparate;
  glAttachShader: TglAttachShader;
  glBindAttribLocation: TglBindAttribLocation;
  glCompileShader: TglCompileShader;
  glCreateProgram: TglCreateProgram;
  glCreateShader: TglCreateShader;
  glDeleteProgram: TglDeleteProgram;
  glDeleteShader: TglDeleteShader;
  glDetachShader: TglDetachShader;
  glDisableVertexAttribArray: TglDisableVertexAttribArray;
  glEnableVertexAttribArray: TglEnableVertexAttribArray;
  glGetActiveAttrib: TglGetActiveAttrib;
  glGetActiveUniform: TglGetActiveUniform;
  glGetAttachedShaders: TglGetAttachedShaders;
  glGetAttribLocation: TglGetAttribLocation;
  glGetProgramiv: TglGetProgramiv;
  glGetProgramInfoLog: TglGetProgramInfoLog;
  glGetShaderiv: TglGetShaderiv;
  glGetShaderInfoLog: TglGetShaderInfoLog;
  glGetShaderSource: TglGetShaderSource;
  glGetUniformLocation: TglGetUniformLocation;
  glGetUniformfv: TglGetUniformfv;
  glGetUniformiv: TglGetUniformiv;
  glGetVertexAttribfv: TglGetVertexAttribfv;
  glGetVertexAttribiv: TglGetVertexAttribiv;
  glGetVertexAttribPointerv: TglGetVertexAttribPointerv;
  glIsProgram: TglIsProgram;
  glIsShader: TglIsShader;
  glLinkProgram: TglLinkProgram;
  glShaderSource: TglShaderSource;
  glUseProgram: TglUseProgram;
  glUniform1f: TglUniform1f;
  glUniform2f: TglUniform2f;
  glUniform3f: TglUniform3f;
  glUniform4f: TglUniform4f;
  glUniform1i: TglUniform1i;
  glUniform2i: TglUniform2i;
  glUniform3i: TglUniform3i;
  glUniform4i: TglUniform4i;
  glUniform1fv: TglUniform1fv;
  glUniform2fv: TglUniform2fv;
  glUniform3fv: TglUniform3fv;
  glUniform4fv: TglUniform4fv;
  glUniform1iv: TglUniform1iv;
  glUniform2iv: TglUniform2iv;
  glUniform3iv: TglUniform3iv;
  glUniform4iv: TglUniform4iv;
  glUniformMatrix2fv: TglUniformMatrix2fv;
  glUniformMatrix3fv: TglUniformMatrix3fv;
  glUniformMatrix4fv: TglUniformMatrix4fv;
  glValidateProgram: TglValidateProgram;
  glVertexAttrib1d: TglVertexAttrib1d;
  glVertexAttrib1dv: TglVertexAttrib1dv;
  glVertexAttrib1f: TglVertexAttrib1f;
  glVertexAttrib1fv: TglVertexAttrib1fv;
  glVertexAttrib1s: TglVertexAttrib1s;
  glVertexAttrib1sv: TglVertexAttrib1sv;
  glVertexAttrib2d: TglVertexAttrib2d;
  glVertexAttrib2dv: TglVertexAttrib2dv;
  glVertexAttrib2f: TglVertexAttrib2f;
  glVertexAttrib2fv: TglVertexAttrib2fv;
  glVertexAttrib2s: TglVertexAttrib2s;
  glVertexAttrib2sv: TglVertexAttrib2sv;
  glVertexAttrib3d: TglVertexAttrib3d;
  glVertexAttrib3dv: TglVertexAttrib3dv;
  glVertexAttrib3f: TglVertexAttrib3f;
  glVertexAttrib3fv: TglVertexAttrib3fv;
  glVertexAttrib3s: TglVertexAttrib3s;
  glVertexAttrib3sv: TglVertexAttrib3sv;
  glVertexAttrib4Nbv: TglVertexAttrib4Nbv;
  glVertexAttrib4Niv: TglVertexAttrib4Niv;
  glVertexAttrib4Nsv: TglVertexAttrib4Nsv;
  glVertexAttrib4Nub: TglVertexAttrib4Nub;
  glVertexAttrib4Nubv: TglVertexAttrib4Nubv;
  glVertexAttrib4Nuiv: TglVertexAttrib4Nuiv;
  glVertexAttrib4Nusv: TglVertexAttrib4Nusv;
  glVertexAttrib4bv: TglVertexAttrib4bv;
  glVertexAttrib4d: TglVertexAttrib4d;
  glVertexAttrib4dv: TglVertexAttrib4dv;
  glVertexAttrib4f: TglVertexAttrib4f;
  glVertexAttrib4fv: TglVertexAttrib4fv;
  glVertexAttrib4iv: TglVertexAttrib4iv;
  glVertexAttrib4s: TglVertexAttrib4s;
  glVertexAttrib4sv: TglVertexAttrib4sv;
  glVertexAttrib4ubv: TglVertexAttrib4ubv;
  glVertexAttrib4uiv: TglVertexAttrib4uiv;
  glVertexAttrib4usv: TglVertexAttrib4usv;
  glVertexAttribPointer: TglVertexAttribPointer;

  // GL_VERSION_2_1
  glUniformMatrix2x3fv: TglUniformMatrix2x3fv;
  glUniformMatrix3x2fv: TglUniformMatrix3x2fv;
  glUniformMatrix2x4fv: TglUniformMatrix2x4fv;
  glUniformMatrix4x2fv: TglUniformMatrix4x2fv;
  glUniformMatrix3x4fv: TglUniformMatrix3x4fv;
  glUniformMatrix4x3fv: TglUniformMatrix4x3fv;

  // GL_VERSION_3_0
  glColorMaski: TglColorMaski;
  glGetBooleani_v: TglGetBooleani_v;
  glGetIntegeri_v: TglGetIntegeri_v;
  glEnablei: TglEnablei;
  glDisablei: TglDisablei;
  glIsEnabledi: TglIsEnabledi;
  glBeginTransformFeedback: TglBeginTransformFeedback;
  glEndTransformFeedback: TglEndTransformFeedback;
  glBindBufferRange: TglBindBufferRange;
  glBindBufferBase: TglBindBufferBase;
  glTransformFeedbackVaryings: TglTransformFeedbackVaryings;
  glGetTransformFeedbackVarying: TglGetTransformFeedbackVarying;
  glClampColor: TglClampColor;
  glBeginConditionalRender: TglBeginConditionalRender;
  glEndConditionalRender: TglEndConditionalRender;
  glVertexAttribI1i: TglVertexAttribI1i;
  glVertexAttribI2i: TglVertexAttribI2i;
  glVertexAttribI3i: TglVertexAttribI3i;
  glVertexAttribI4i: TglVertexAttribI4i;
  glVertexAttribI1ui: TglVertexAttribI1ui;
  glVertexAttribI2ui: TglVertexAttribI2ui;
  glVertexAttribI3ui: TglVertexAttribI3ui;
  glVertexAttribI4ui: TglVertexAttribI4ui;
  glVertexAttribI1iv: TglVertexAttribI1iv;
  glVertexAttribI2iv: TglVertexAttribI2iv;
  glVertexAttribI3iv: TglVertexAttribI3iv;
  glVertexAttribI4iv: TglVertexAttribI4iv;
  glVertexAttribI1uiv: TglVertexAttribI1uiv;
  glVertexAttribI2uiv: TglVertexAttribI2uiv;
  glVertexAttribI3uiv: TglVertexAttribI3uiv;
  glVertexAttribI4uiv: TglVertexAttribI4uiv;
  glVertexAttribI4bv: TglVertexAttribI4bv;
  glVertexAttribI4sv: TglVertexAttribI4sv;
  glVertexAttribI4ubv: TglVertexAttribI4ubv;
  glVertexAttribI4usv: TglVertexAttribI4usv;
  glVertexAttribIPointer: TglVertexAttribIPointer;
  glGetVertexAttribIiv: TglGetVertexAttribIiv;
  glGetVertexAttribIuiv: TglGetVertexAttribIuiv;
  glGetUniformuiv: TglGetUniformuiv;
  glBindFragDataLocation: TglBindFragDataLocation;
  glGetFragDataLocation: TglGetFragDataLocation;
  glUniform1ui: TglUniform1ui;
  glUniform2ui: TglUniform2ui;
  glUniform3ui: TglUniform3ui;
  glUniform4ui: TglUniform4ui;
  glUniform1uiv: TglUniform1uiv;
  glUniform2uiv: TglUniform2uiv;
  glUniform3uiv: TglUniform3uiv;
  glUniform4uiv: TglUniform4uiv;
  glTexParameterIiv: TglTexParameterIiv;
  glTexParameterIuiv: TglTexParameterIuiv;
  glGetTexParameterIiv: TglGetTexParameterIiv;
  glGetTexParameterIuiv: TglGetTexParameterIuiv;
  glClearBufferiv: TglClearBufferiv;
  glClearBufferuiv: TglClearBufferuiv;
  glClearBufferfv: TglClearBufferfv;
  glClearBufferfi: TglClearBufferfi;
  glGetStringi: TglGetStringi;

  // GL_VERSION_2_1
  glEnableVertexArrayEXT : TglEnableVertexArrayEXT;
  glEnableVertexArrayAttribEXT : TglEnableVertexArrayAttribEXT;
  glVertexArrayVertexAttribOffsetEXT : TglVertexArrayVertexAttribOffsetEXT;

  // GL_VERSION_3_1
  glDrawArraysInstanced: TglDrawArraysInstanced;
  glDrawElementsInstanced: TglDrawElementsInstanced;
  glTexBuffer: TglTexBuffer;
  glPrimitiveRestartIndex: TglPrimitiveRestartIndex;

  // GL_VERSION_3_2
  glGetInteger64i_v: TglGetInteger64i_v;
  glGetBufferParameteri64v: TglGetBufferParameteri64v;
  glFramebufferTexture: TglFramebufferTexture;

  // GL_VERSION_3_3
  glVertexAttribDivisor: TglVertexAttribDivisor;

  // GL_VERSION_4_0

  glMinSampleShading: TglMinSampleShading;
  glBlendEquationi: TglBlendEquationi;
  glBlendEquationSeparatei: TglBlendEquationSeparatei;
  glBlendFunci: TglBlendFunci;
  glBlendFuncSeparatei: TglBlendFuncSeparatei;

  // GL_3DFX_tbuffer
  glTbufferMask3DFX: TglTbufferMask3DFX;

  // GL_APPLE_element_array
  glElementPointerAPPLE: TglElementPointerAPPLE;
  glDrawElementArrayAPPLE: TglDrawElementArrayAPPLE;
  glDrawRangeElementArrayAPPLE: TglDrawRangeElementArrayAPPLE;
  glMultiDrawElementArrayAPPLE: TglMultiDrawElementArrayAPPLE;
  glMultiDrawRangeElementArrayAPPLE: TglMultiDrawRangeElementArrayAPPLE;

  // GL_APPLE_fence
  glGenFencesAPPLE: TglGenFencesAPPLE;
  glDeleteFencesAPPLE: TglDeleteFencesAPPLE;
  glSetFenceAPPLE: TglSetFenceAPPLE;
  glIsFenceAPPLE: TglIsFenceAPPLE;
  glTestFenceAPPLE: TglTestFenceAPPLE;
  glFinishFenceAPPLE: TglFinishFenceAPPLE;
  glTestObjectAPPLE: TglTestObjectAPPLE;
  glFinishObjectAPPLE: TglFinishObjectAPPLE;

  // GL_APPLE_vertex_array_object
  glBindVertexArrayAPPLE: TglBindVertexArrayAPPLE;
  glDeleteVertexArraysAPPLE: TglDeleteVertexArraysAPPLE;
  glGenVertexArraysAPPLE: TglGenVertexArraysAPPLE;
  glIsVertexArrayAPPLE: TglIsVertexArrayAPPLE;

  // GL_APPLE_vertex_array_range
  glVertexArrayRangeAPPLE: TglVertexArrayRangeAPPLE;
  glFlushVertexArrayRangeAPPLE: TglFlushVertexArrayRangeAPPLE;
  glVertexArrayParameteriAPPLE: TglVertexArrayParameteriAPPLE;

  // GL_APPLE_texture_range
  glTextureRangeAPPLE: TglTextureRangeAPPLE;
  glGetTexParameterPointervAPPLE: TglGetTexParameterPointervAPPLE;

  // GL_APPLE_vertex_program_evaluators
  glEnableVertexAttribAPPLE: TglEnableVertexAttribAPPLE;
  glDisableVertexAttribAPPLE: TglDisableVertexAttribAPPLE;
  glIsVertexAttribEnabledAPPLE: TglIsVertexAttribEnabledAPPLE;
  glMapVertexAttrib1dAPPLE: TglMapVertexAttrib1dAPPLE;
  glMapVertexAttrib1fAPPLE: TglMapVertexAttrib1fAPPLE;
  glMapVertexAttrib2dAPPLE: TglMapVertexAttrib2dAPPLE;
  glMapVertexAttrib2fAPPLE: TglMapVertexAttrib2fAPPLE;

  // GL_APPLE_object_purgeable
  glObjectPurgeableAPPLE: TglObjectPurgeableAPPLE;
  glObjectUnpurgeableAPPLE: TglObjectUnpurgeableAPPLE;
  glGetObjectParameterivAPPLE: TglGetObjectParameterivAPPLE;

  // GL_ARB_matrix_palette
  glCurrentPaletteMatrixARB: TglCurrentPaletteMatrixARB;
  glMatrixIndexubvARB: TglMatrixIndexubvARB;
  glMatrixIndexusvARB: TglMatrixIndexusvARB;
  glMatrixIndexuivARB: TglMatrixIndexuivARB;
  glMatrixIndexPointerARB: TglMatrixIndexPointerARB;

  // GL_ARB_multisample
  glSampleCoverageARB: TglSampleCoverageARB;

  // GL_ARB_multitexture
  glActiveTextureARB: TglActiveTextureARB;
  glClientActiveTextureARB: TglClientActiveTextureARB;
  glMultiTexCoord1dARB: TglMultiTexCoord1dARB;
  glMultiTexCoord1dvARB: TglMultiTexCoord1dvARB;
  glMultiTexCoord1fARB: TglMultiTexCoord1fARB;
  glMultiTexCoord1fvARB: TglMultiTexCoord1fvARB;
  glMultiTexCoord1iARB: TglMultiTexCoord1iARB;
  glMultiTexCoord1ivARB: TglMultiTexCoord1ivARB;
  glMultiTexCoord1sARB: TglMultiTexCoord1sARB;
  glMultiTexCoord1svARB: TglMultiTexCoord1svARB;
  glMultiTexCoord2dARB: TglMultiTexCoord2dARB;
  glMultiTexCoord2dvARB: TglMultiTexCoord2dvARB;
  glMultiTexCoord2fARB: TglMultiTexCoord2fARB;
  glMultiTexCoord2fvARB: TglMultiTexCoord2fvARB;
  glMultiTexCoord2iARB: TglMultiTexCoord2iARB;
  glMultiTexCoord2ivARB: TglMultiTexCoord2ivARB;
  glMultiTexCoord2sARB: TglMultiTexCoord2sARB;
  glMultiTexCoord2svARB: TglMultiTexCoord2svARB;
  glMultiTexCoord3dARB: TglMultiTexCoord3dARB;
  glMultiTexCoord3dvARB: TglMultiTexCoord3dvARB;
  glMultiTexCoord3fARB: TglMultiTexCoord3fARB;
  glMultiTexCoord3fvARB: TglMultiTexCoord3fvARB;
  glMultiTexCoord3iARB: TglMultiTexCoord3iARB;
  glMultiTexCoord3ivARB: TglMultiTexCoord3ivARB;
  glMultiTexCoord3sARB: TglMultiTexCoord3sARB;
  glMultiTexCoord3svARB: TglMultiTexCoord3svARB;
  glMultiTexCoord4dARB: TglMultiTexCoord4dARB;
  glMultiTexCoord4dvARB: TglMultiTexCoord4dvARB;
  glMultiTexCoord4fARB: TglMultiTexCoord4fARB;
  glMultiTexCoord4fvARB: TglMultiTexCoord4fvARB;
  glMultiTexCoord4iARB: TglMultiTexCoord4iARB;
  glMultiTexCoord4ivARB: TglMultiTexCoord4ivARB;
  glMultiTexCoord4sARB: TglMultiTexCoord4sARB;
  glMultiTexCoord4svARB: TglMultiTexCoord4svARB;

  // GL_ARB_point_parameters
  glPointParameterfARB: TglPointParameterfARB;
  glPointParameterfvARB: TglPointParameterfvARB;

  // GL_ARB_texture_compression
  glCompressedTexImage3DARB: TglCompressedTexImage3DARB;
  glCompressedTexImage2DARB: TglCompressedTexImage2DARB;
  glCompressedTexImage1DARB: TglCompressedTexImage1DARB;
  glCompressedTexSubImage3DARB: TglCompressedTexSubImage3DARB;
  glCompressedTexSubImage2DARB: TglCompressedTexSubImage2DARB;
  glCompressedTexSubImage1DARB: TglCompressedTexSubImage1DARB;
  glGetCompressedTexImageARB: TglGetCompressedTexImageARB;

  // GL_ARB_transpose_matrix
  glLoadTransposeMatrixfARB: TglLoadTransposeMatrixfARB;
  glLoadTransposeMatrixdARB: TglLoadTransposeMatrixdARB;
  glMultTransposeMatrixfARB: TglMultTransposeMatrixfARB;
  glMultTransposeMatrixdARB: TglMultTransposeMatrixdARB;

  // GL_ARB_vertex_blend
  glWeightbvARB: TglWeightbvARB;
  glWeightsvARB: TglWeightsvARB;
  glWeightivARB: TglWeightivARB;
  glWeightfvARB: TglWeightfvARB;
  glWeightdvARB: TglWeightdvARB;
  glWeightubvARB: TglWeightubvARB;
  glWeightusvARB: TglWeightusvARB;
  glWeightuivARB: TglWeightuivARB;
  glWeightPointerARB: TglWeightPointerARB;
  glVertexBlendARB: TglVertexBlendARB;

  // GL_ARB_vertex_buffer_object
  glBindBufferARB: TglBindBufferARB;
  glDeleteBuffersARB: TglDeleteBuffersARB;
  glGenBuffersARB: TglGenBuffersARB;
  glIsBufferARB: TglIsBufferARB;
  glBufferDataARB: TglBufferDataARB;
  glBufferSubDataARB: TglBufferSubData;
  glGetBufferSubDataARB: TglGetBufferSubDataARB;
  glMapBufferARB: TglMapBufferARB;
  glUnmapBufferARB: TglUnmapBufferARB;
  glGetBufferParameterivARB: TglGetBufferParameterivARB;
  glGetBufferPointervARB: TglGetBufferPointervARB;

  // GL_ARB_vertex_program
  glVertexAttrib1dARB: TglVertexAttrib1dARB;
  glVertexAttrib1dvARB: TglVertexAttrib1dvARB;
  glVertexAttrib1fARB: TglVertexAttrib1fARB;
  glVertexAttrib1fvARB: TglVertexAttrib1fvARB;
  glVertexAttrib1sARB: TglVertexAttrib1sARB;
  glVertexAttrib1svARB: TglVertexAttrib1svARB;
  glVertexAttrib2dARB: TglVertexAttrib2dARB;
  glVertexAttrib2dvARB: TglVertexAttrib2dvARB;
  glVertexAttrib2fARB: TglVertexAttrib2fARB;
  glVertexAttrib2fvARB: TglVertexAttrib2fvARB;
  glVertexAttrib2sARB: TglVertexAttrib2sARB;
  glVertexAttrib2svARB: TglVertexAttrib2svARB;
  glVertexAttrib3dARB: TglVertexAttrib3dARB;
  glVertexAttrib3dvARB: TglVertexAttrib3dvARB;
  glVertexAttrib3fARB: TglVertexAttrib3fARB;
  glVertexAttrib3fvARB: TglVertexAttrib3fvARB;
  glVertexAttrib3sARB: TglVertexAttrib3sARB;
  glVertexAttrib3svARB: TglVertexAttrib3svARB;
  glVertexAttrib4NbvARB: TglVertexAttrib4NbvARB;
  glVertexAttrib4NivARB: TglVertexAttrib4NivARB;
  glVertexAttrib4NsvARB: TglVertexAttrib4NsvARB;
  glVertexAttrib4NubARB: TglVertexAttrib4NubARB;
  glVertexAttrib4NubvARB: TglVertexAttrib4NubvARB;
  glVertexAttrib4NuivARB: TglVertexAttrib4NuivARB;
  glVertexAttrib4NusvARB: TglVertexAttrib4NusvARB;
  glVertexAttrib4bvARB: TglVertexAttrib4bvARB;
  glVertexAttrib4dARB: TglVertexAttrib4dARB;
  glVertexAttrib4dvARB: TglVertexAttrib4dvARB;
  glVertexAttrib4fARB: TglVertexAttrib4fARB;
  glVertexAttrib4fvARB: TglVertexAttrib4fvARB;
  glVertexAttrib4ivARB: TglVertexAttrib4ivARB;
  glVertexAttrib4sARB: TglVertexAttrib4sARB;
  glVertexAttrib4svARB: TglVertexAttrib4svARB;
  glVertexAttrib4ubvARB: TglVertexAttrib4ubvARB;
  glVertexAttrib4uivARB: TglVertexAttrib4uivARB;
  glVertexAttrib4usvARB: TglVertexAttrib4usvARB;
  glVertexAttribPointerARB: TglVertexAttribPointerARB;
  glEnableVertexAttribArrayARB: TglEnableVertexAttribArrayARB;
  glDisableVertexAttribArrayARB: TglDisableVertexAttribArrayARB;
  glProgramStringARB: TglProgramStringARB;
  glBindProgramARB: TglBindProgramARB;
  glDeleteProgramsARB: TglDeleteProgramsARB;
  glGenProgramsARB: TglGenProgramsARB;

  glProgramEnvParameter4dARB: TglProgramEnvParameter4dARB;
  glProgramEnvParameter4dvARB: TglProgramEnvParameter4dvARB;
  glProgramEnvParameter4fARB: TglProgramEnvParameter4fARB;
  glProgramEnvParameter4fvARB: TglProgramEnvParameter4fvARB;
  glProgramLocalParameter4dARB: TglProgramLocalParameter4dARB;
  glProgramLocalParameter4dvARB: TglProgramLocalParameter4dvARB;
  glProgramLocalParameter4fARB: TglProgramLocalParameter4fARB;
  glProgramLocalParameter4fvARB: TglProgramLocalParameter4fvARB;
  glGetProgramEnvParameterdvARB: TglGetProgramEnvParameterdvARB;
  glGetProgramEnvParameterfvARB: TglGetProgramEnvParameterfvARB;
  glGetProgramLocalParameterdvARB: TglGetProgramLocalParameterdvARB;
  glGetProgramLocalParameterfvARB: TglGetProgramLocalParameterfvARB;
  glGetProgramivARB: TglGetProgramivARB;
  glGetProgramStringARB: TglGetProgramStringARB;
  glGetVertexAttribdvARB: TglGetVertexAttribdvARB;
  glGetVertexAttribfvARB: TglGetVertexAttribfvARB;
  glGetVertexAttribivARB: TglGetVertexAttribivARB;
  glGetVertexAttribPointervARB: TglGetVertexAttribPointervARB;
  glIsProgramARB: TglIsProgramARB;

  // GL_ARB_window_pos
  glWindowPos2dARB: TglWindowPos2dARB;
  glWindowPos2dvARB: TglWindowPos2dvARB;
  glWindowPos2fARB: TglWindowPos2fARB;
  glWindowPos2fvARB: TglWindowPos2fvARB;
  glWindowPos2iARB: TglWindowPos2iARB;
  glWindowPos2ivARB: TglWindowPos2ivARB;
  glWindowPos2sARB: TglWindowPos2sARB;
  glWindowPos2svARB: TglWindowPos2svARB;
  glWindowPos3dARB: TglWindowPos3dARB;
  glWindowPos3dvARB: TglWindowPos3dvARB;
  glWindowPos3fARB: TglWindowPos3fARB;
  glWindowPos3fvARB: TglWindowPos3fvARB;
  glWindowPos3iARB: TglWindowPos3iARB;
  glWindowPos3ivARB: TglWindowPos3ivARB;
  glWindowPos3sARB: TglWindowPos3sARB;
  glWindowPos3svARB: TglWindowPos3svARB;

  // GL_ARB_draw_buffers
  glDrawBuffersARB: TglDrawBuffersARB;

  // GL_ARB_color_buffer_float
  glClampColorARB: TglClampColorARB;

  // GL_ARB_vertex_shader
  glGetActiveAttribARB: TglGetActiveAttribARB;
  glGetAttribLocationARB: TglGetAttribLocationARB;
  glBindAttribLocationARB: TglBindAttribLocationARB;

  // GL_ARB_shader_objects
  glDeleteObjectARB: TglDeleteObjectARB;
  glGetHandleARB: TglGetHandleARB;
  glDetachObjectARB: TglDetachObjectARB;
  glCreateShaderObjectARB: TglCreateShaderObjectARB;
  glShaderSourceARB: TglShaderSourceARB;
  glCompileShaderARB: TglCompileShaderARB;
  glCreateProgramObjectARB: TglCreateProgramObjectARB;
  glAttachObjectARB: TglAttachObjectARB;
  glLinkProgramARB: TglLinkProgramARB;
  glUseProgramObjectARB: TglUseProgramObjectARB;
  glValidateProgramARB: TglValidateProgramARB;
  glUniform1fARB: TglUniform1fARB;
  glUniform2fARB: TglUniform2fARB;
  glUniform3fARB: TglUniform3fARB;
  glUniform4fARB: TglUniform4fARB;
  glUniform1iARB: TglUniform1iARB;
  glUniform2iARB: TglUniform2iARB;
  glUniform3iARB: TglUniform3iARB;
  glUniform4iARB: TglUniform4iARB;
  glUniform1fvARB: TglUniform1fvARB;
  glUniform2fvARB: TglUniform2fvARB;
  glUniform3fvARB: TglUniform3fvARB;
  glUniform4fvARB: TglUniform4fvARB;
  glUniform1ivARB: TglUniform1ivARB;
  glUniform2ivARB: TglUniform2ivARB;
  glUniform3ivARB: TglUniform3ivARB;
  glUniform4ivARB: TglUniform4ivARB;
  glUniformMatrix2fvARB: TglUniformMatrix2fvARB;
  glUniformMatrix3fvARB: TglUniformMatrix3fvARB;
  glUniformMatrix4fvARB: TglUniformMatrix4fvARB;
  glGetObjectParameterfvARB: TglGetObjectParameterfvARB;
  glGetObjectParameterivARB: TglGetObjectParameterivARB;
  glGetInfoLogARB: TglGetInfoLogARB;
  glGetAttachedObjectsARB: TglGetAttachedObjectsARB;
  glGetUniformLocationARB: TglGetUniformLocationARB;
  glGetActiveUniformARB: TglGetActiveUniformARB;
  glGetUniformfvARB: TglGetUniformfvARB;
  glGetUniformivARB: TglGetUniformivARB;
  glGetShaderSourceARB: TglGetShaderSourceARB;

  // GL_ARB_Occlusion_Query
  glGenQueriesARB: TglGenQueriesARB;
  glDeleteQueriesARB: TglDeleteQueriesARB;
  glIsQueryARB: TglIsQueryARB;
  glBeginQueryARB: TglBeginQueryARB;
  glEndQueryARB: TglEndQueryARB;
  glGetQueryivARB: TglGetQueryivARB;
  glGetQueryObjectivARB: TglGetQueryObjectivARB;
  glGetQueryObjectuivARB: TglGetQueryObjectuivARB;

  // GL_ARB_draw_instanced
  glDrawArraysInstancedARB: TglDrawArraysInstancedARB;
  glDrawElementsInstancedARB: TglDrawElementsInstancedARB;

  // GL_ARB_framebuffer_object
  glIsRenderbuffer: TglIsRenderbuffer;
  glBindRenderbuffer: TglBindRenderbuffer;
  glDeleteRenderbuffers: TglDeleteRenderbuffers;
  glGenRenderbuffers: TglGenRenderbuffers;
  glRenderbufferStorage: TglRenderbufferStorage;
  glGetRenderbufferParameteriv: TglGetRenderbufferParameteriv;
  glIsFramebuffer: TglIsFramebuffer;
  glBindFramebuffer: TglBindFramebuffer;
  glDeleteFramebuffers: TglDeleteFramebuffers;
  glGenFramebuffers: TglGenFramebuffers;
  glCheckFramebufferStatus: TglCheckFramebufferStatus;
  glFramebufferTexture1D: TglFramebufferTexture1D;
  glFramebufferTexture2D: TglFramebufferTexture2D;
  glFramebufferTexture3D: TglFramebufferTexture3D;
  glFramebufferRenderbuffer: TglFramebufferRenderbuffer;
  glGetFramebufferAttachmentParameteriv: TglGetFramebufferAttachmentParameteriv;
  glGenerateMipmap: TglGenerateMipmap;
  glBlitFramebuffer: TglBlitFramebuffer;
  glRenderbufferStorageMultisample: TglRenderbufferStorageMultisample;
  glFramebufferTextureLayer: TglFramebufferTextureLayer;

  // GL_ARB_geometry_shader4
  glProgramParameteriARB: TglProgramParameteriARB;
  glFramebufferTextureARB: TglFramebufferTextureARB;
  glFramebufferTextureLayerARB: TglFramebufferTextureLayerARB;
  glFramebufferTextureFaceARB: TglFramebufferTextureFaceARB;

  // GL_ARB_instanced_arrays
  glVertexAttribDivisorARB: TglVertexAttribDivisorARB;

  // GL_ARB_map_buffer_range
  glMapBufferRange: TglMapBufferRange;
  glFlushMappedBufferRange: TglFlushMappedBufferRange;

  // GL_ARB_texture_buffer_object
  glTexBufferARB: TglTexBufferARB;

  // GL_ARB_vertex_array_object
  glBindVertexArray: TglBindVertexArray;
  glDeleteVertexArrays: TglDeleteVertexArrays;
  glGenVertexArrays: TglGenVertexArrays;
  glIsVertexArray: TglIsVertexArray;

  // GL_ARB_uniform_buffer_object
  glGetUniformIndices: TglGetUniformIndices;
  glGetActiveUniformsiv: TglGetActiveUniformsiv;
  glGetActiveUniformName: TglGetActiveUniformName;
  glGetUniformBlockIndex: TglGetUniformBlockIndex;
  glGetActiveUniformBlockiv: TglGetActiveUniformBlockiv;
  glGetActiveUniformBlockName: TglGetActiveUniformBlockName;
  glUniformBlockBinding: TglUniformBlockBinding;

  // GL_ARB_copy_buffer
  glCopyBufferSubData: TglCopyBufferSubData;

  // GL_ARB_draw_elements_base_vertex
  glDrawElementsBaseVertex: TglDrawElementsBaseVertex;
  glDrawRangeElementsBaseVertex: TglDrawRangeElementsBaseVertex;
  glDrawElementsInstancedBaseVertex: TglDrawElementsInstancedBaseVertex;
  glMultiDrawElementsBaseVertex: TglMultiDrawElementsBaseVertex;

  // GL_ARB_provoking_vertex
  glProvokingVertex: TglProvokingVertex;

  // GL_ARB_sync
  glFenceSync: TglFenceSync;
  glIsSync: TglIsSync;
  glDeleteSync: TglDeleteSync;
  glClientWaitSync: TglClientWaitSync;
  glWaitSync: TglWaitSync;
  glGetInteger64v: TglGetInteger64v;
  glGetSynciv: TglGetSynciv;

  // GL_ARB_texture_multisample
  glTexImage2DMultisample: TglTexImage2DMultisample;
  glTexImage3DMultisample: TglTexImage3DMultisample;
  glGetMultisamplefv: TglGetMultisamplefv;
  glSampleMaski: TglSampleMaski;

  // GL_ARB_draw_buffers_blend
  glBlendEquationiARB: TglBlendEquationiARB;
  glBlendEquationSeparateiARB: TglBlendEquationSeparateiARB;
  glBlendFunciARB: TglBlendFunciARB;
  glBlendFuncSeparateiARB: TglBlendFuncSeparateiARB;

  // GL_ARB_sample_shading
  glMinSampleShadingARB: TglMinSampleShadingARB;

  // GL_ARB_sample_locations
  glFramebufferSampleLocationsfvARB : TglFramebufferSampleLocationsfvARB;
  glNamedFramebufferSampleLocationsfvARB : TglNamedFramebufferSampleLocationsfvARB;
  glEvaluateDepthValuesARB : TglEvaluateDepthValuesARB;

  // GL_ARB_shading_language_include
  glNamedStringARB: TglNamedStringARB;
  glDeleteNamedStringARB: TglDeleteNamedStringARB;
  glCompileShaderIncludeARB: TglCompileShaderIncludeARB;
  glIsNamedStringARB: TglIsNamedStringARB;
  glGetNamedStringARB: TglGetNamedStringARB;
  glGetNamedStringivARB: TglGetNamedStringivARB;

  // GL_ARB_blend_func_extended
  glBindFragDataLocationIndexed: TglBindFragDataLocationIndexed;
  glGetFragDataIndex: TglGetFragDataIndex;

  // GL_ARB_sampler_objects
  glGenSamplers: TglGenSamplers;
  glDeleteSamplers: TglDeleteSamplers;
  glIsSampler: TglIsSampler;
  glBindSampler: TglBindSampler;
  glSamplerParameteri: TglSamplerParameteri;
  glSamplerParameteriv: TglSamplerParameteriv;
  glSamplerParameterf: TglSamplerParameterf;
  glSamplerParameterfv: TglSamplerParameterfv;
  glSamplerParameterIiv: TglSamplerParameterIiv;
  glSamplerParameterIuiv: TglSamplerParameterIuiv;
  glGetSamplerParameteriv: TglGetSamplerParameteriv;
  glGetSamplerParameterIiv: TglGetSamplerParameterIiv;
  glGetSamplerParameterfv: TglGetSamplerParameterfv;
  glGetSamplerParameterIuiv: TglGetSamplerParameterIuiv;

  // GL_ARB_timer_query
  glQueryCounter: TglQueryCounter;
  glGetQueryObjecti64v: TglGetQueryObjecti64v;
  glGetQueryObjectui64v: TglGetQueryObjectui64v;

  // GL_ARB_vertex_type_2_10_10_10_rev
  glVertexP2ui: TglVertexP2ui;
  glVertexP2uiv: TglVertexP2uiv;
  glVertexP3ui: TglVertexP3ui;
  glVertexP3uiv: TglVertexP3uiv;
  glVertexP4ui: TglVertexP4ui;
  glVertexP4uiv: TglVertexP4uiv;
  glTexCoordP1ui: TglTexCoordP1ui;
  glTexCoordP1uiv: TglTexCoordP1uiv;
  glTexCoordP2ui: TglTexCoordP2ui;
  glTexCoordP2uiv: TglTexCoordP2uiv;
  glTexCoordP3ui: TglTexCoordP3ui;
  glTexCoordP3uiv: TglTexCoordP3uiv;
  glTexCoordP4ui: TglTexCoordP4ui;
  glTexCoordP4uiv: TglTexCoordP4uiv;
  glMultiTexCoordP1ui: TglMultiTexCoordP1ui;
  glMultiTexCoordP1uiv: TglMultiTexCoordP1uiv;
  glMultiTexCoordP2ui: TglMultiTexCoordP2ui;
  glMultiTexCoordP2uiv: TglMultiTexCoordP2uiv;
  glMultiTexCoordP3ui: TglMultiTexCoordP3ui;
  glMultiTexCoordP3uiv: TglMultiTexCoordP3uiv;
  glMultiTexCoordP4ui: TglMultiTexCoordP4ui;
  glMultiTexCoordP4uiv: TglMultiTexCoordP4uiv;
  glNormalP3ui: TglNormalP3ui;
  glNormalP3uiv: TglNormalP3uiv;
  glColorP3ui: TglColorP3ui;
  glColorP3uiv: TglColorP3uiv;
  glColorP4ui: TglColorP4ui;
  glColorP4uiv: TglColorP4uiv;
  glSecondaryColorP3ui: TglSecondaryColorP3ui;
  glSecondaryColorP3uiv: TglSecondaryColorP3uiv;
  glVertexAttribP1ui: TglVertexAttribP1ui;
  glVertexAttribP1uiv: TglVertexAttribP1uiv;
  glVertexAttribP2ui: TglVertexAttribP2ui;
  glVertexAttribP2uiv: TglVertexAttribP2uiv;
  glVertexAttribP3ui: TglVertexAttribP3ui;
  glVertexAttribP3uiv: TglVertexAttribP3uiv;
  glVertexAttribP4ui: TglVertexAttribP4ui;
  glVertexAttribP4uiv: TglVertexAttribP4uiv;

  // GL_ARB_draw_indirect
  glDrawArraysIndirect: TglDrawArraysIndirect;
  glDrawElementsIndirect: TglDrawElementsIndirect;

  // GL_ARB_gpu_shader_fp64
  glUniform1d: TglUniform1d;
  glUniform2d: TglUniform2d;
  glUniform3d: TglUniform3d;
  glUniform4d: TglUniform4d;
  glUniform1dv: TglUniform1dv;
  glUniform2dv: TglUniform2dv;
  glUniform3dv: TglUniform3dv;
  glUniform4dv: TglUniform4dv;
  glUniformMatrix2dv: TglUniformMatrix2dv;
  glUniformMatrix3dv: TglUniformMatrix3dv;
  glUniformMatrix4dv: TglUniformMatrix4dv;
  glUniformMatrix2x3dv: TglUniformMatrix2x3dv;
  glUniformMatrix2x4dv: TglUniformMatrix2x4dv;
  glUniformMatrix3x2dv: TglUniformMatrix3x2dv;
  glUniformMatrix3x4dv: TglUniformMatrix3x4dv;
  glUniformMatrix4x2dv: TglUniformMatrix4x2dv;
  glUniformMatrix4x3dv: TglUniformMatrix4x3dv;
  glGetUniformdv: TglGetUniformdv;

  // GL_ARB_gpu_shader_int64
  glUniform1i64ARB : TglUniform1i64ARB;
  glUniform2i64ARB : TglUniform2i64ARB;
  glUniform3i64ARB : TglUniform3i64ARB;
  glUniform4i64ARB : TglUniform4i64ARB;
  glUniform1i64vARB : TglUniform1i64vARB;
  glUniform2i64vARB : TglUniform2i64vARB;
  glUniform3i64vARB : TglUniform3i64vARB;
  glUniform4i64vARB : TglUniform4i64vARB;
  glUniform1ui64ARB : TglUniform1ui64ARB;
  glUniform2ui64ARB : TglUniform2ui64ARB;
  glUniform3ui64ARB : TglUniform3ui64ARB;
  glUniform4ui64ARB : TglUniform4ui64ARB;
  glUniform1ui64vARB : TglUniform1ui64vARB;
  glUniform2ui64vARB : TglUniform2ui64vARB;
  glUniform3ui64vARB : TglUniform3ui64vARB;
  glUniform4ui64vARB : TglUniform4ui64vARB;
  glGetUniformi64vARB : TglGetUniformi64vARB;
  glGetUniformui64vARB : TglGetUniformui64vARB;
  glGetnUniformi64vARB : TglGetnUniformi64vARB;
  glGetnUniformui64vARB : TglGetnUniformui64vARB;
  glProgramUniform1i64ARB : TglProgramUniform1i64ARB;
  glProgramUniform2i64ARB : TglProgramUniform2i64ARB;
  glProgramUniform3i64ARB : TglProgramUniform3i64ARB;
  glProgramUniform4i64ARB : TglProgramUniform4i64ARB;
  glProgramUniform1i64vARB : TglProgramUniform1i64vARB;
  glProgramUniform2i64vARB : TglProgramUniform2i64vARB;
  glProgramUniform3i64vARB : TglProgramUniform3i64vARB;
  glProgramUniform4i64vARB : TglProgramUniform4i64vARB;
  glProgramUniform1ui64ARB : TglProgramUniform1ui64ARB;
  glProgramUniform2ui64ARB : TglProgramUniform2ui64ARB;
  glProgramUniform3ui64ARB : TglProgramUniform3ui64ARB;
  glProgramUniform4ui64ARB : TglProgramUniform4ui64ARB ;
  glProgramUniform1ui64vARB : TglProgramUniform1ui64vARB;
  glProgramUniform2ui64vARB : TglProgramUniform2ui64vARB;
  glProgramUniform3ui64vARB : TglProgramUniform3ui64vARB;
  glProgramUniform4ui64vARB : TglProgramUniform4ui64vARB;

  // GL_ARB_shader_subroutine
  glGetSubroutineUniformLocation: TglGetSubroutineUniformLocation;
  glGetSubroutineIndex: TglGetSubroutineIndex;
  glGetActiveSubroutineUniformiv: TglGetActiveSubroutineUniformiv;
  glGetActiveSubroutineUniformName: TglGetActiveSubroutineUniformName;
  glGetActiveSubroutineName: TglGetActiveSubroutineName;
  glUniformSubroutinesuiv: TglUniformSubroutinesuiv;
  glGetUniformSubroutineuiv: TglGetUniformSubroutineuiv;
  glGetProgramStageiv: TglGetProgramStageiv;

  // GL_ARB_tessellation_shader
  glPatchParameteri: TglPatchParameteri;
  glPatchParameterfv: TglPatchParameterfv;

  // GL_ARB_transform_feedback2
  glBindTransformFeedback: TglBindTransformFeedback;
  glDeleteTransformFeedbacks: TglDeleteTransformFeedbacks;
  glGenTransformFeedbacks: TglGenTransformFeedbacks;
  glIsTransformFeedback: TglIsTransformFeedback;
  glPauseTransformFeedback: TglPauseTransformFeedback;
  glResumeTransformFeedback: TglResumeTransformFeedback;
  glDrawTransformFeedback: TglDrawTransformFeedback;

  // GL_ARB_transform_feedback3
  glDrawTransformFeedbackStream: TglDrawTransformFeedbackStream;
  glBeginQueryIndexed: TglBeginQueryIndexed;
  glEndQueryIndexed: TglEndQueryIndexed;
  glGetQueryIndexediv: TglGetQueryIndexediv;

  // GL_ARB_ES2_compatibility
  glReleaseShaderCompiler: TglReleaseShaderCompiler;
  glShaderBinary: TglShaderBinary;
  glGetShaderPrecisionFormat: TglGetShaderPrecisionFormat;
  glDepthRangef: TglDepthRangef;
  glClearDepthf: TglClearDepthf;

  // GL_ARB_ES3_2_compatibility
  glPrimitiveBoundingBoxARB : TglPrimitiveBoundingBoxARB;

  // GL_ARB_parallel_shader_compile
  glMaxShaderCompilerThreadsARB : TglMaxShaderCompilerThreadsARB;

  // GL_ARB_get_program_binary
  glGetProgramBinary: TglGetProgramBinary;
  glProgramBinary: TglProgramBinary;
  glProgramParameteri: TglProgramParameteri;

  // GL_ARB_separate_shader_objects
  glUseProgramStages: TglUseProgramStages;
  glActiveShaderProgram: TglActiveShaderProgram;
  glCreateShaderProgramv: TglCreateShaderProgramv;
  glBindProgramPipeline: TglBindProgramPipeline;
  glDeleteProgramPipelines: TglDeleteProgramPipelines;
  glGenProgramPipelines: TglGenProgramPipelines;
  glIsProgramPipeline: TglIsProgramPipeline;
  glGetProgramPipelineiv: TglGetProgramPipelineiv;
  glProgramUniform1i: TglProgramUniform1i;
  glProgramUniform1iv: TglProgramUniform1iv;
  glProgramUniform1f: TglProgramUniform1f;
  glProgramUniform1fv: TglProgramUniform1fv;
  glProgramUniform1d: TglProgramUniform1d;
  glProgramUniform1dv: TglProgramUniform1dv;
  glProgramUniform1ui: TglProgramUniform1ui;
  glProgramUniform1uiv: TglProgramUniform1uiv;
  glProgramUniform2i: TglProgramUniform2i;
  glProgramUniform2iv: TglProgramUniform2iv;
  glProgramUniform2f: TglProgramUniform2f;
  glProgramUniform2fv: TglProgramUniform2fv;
  glProgramUniform2d: TglProgramUniform2d;
  glProgramUniform2dv: TglProgramUniform2dv;
  glProgramUniform2ui: TglProgramUniform2ui;
  glProgramUniform2uiv: TglProgramUniform2uiv;
  glProgramUniform3i: TglProgramUniform3i;
  glProgramUniform3iv: TglProgramUniform3iv;
  glProgramUniform3f: TglProgramUniform3f;
  glProgramUniform3fv: TglProgramUniform3fv;
  glProgramUniform3d: TglProgramUniform3d;
  glProgramUniform3dv: TglProgramUniform3dv;
  glProgramUniform3ui: TglProgramUniform3ui;
  glProgramUniform3uiv: TglProgramUniform3uiv;
  glProgramUniform4i: TglProgramUniform4i;
  glProgramUniform4iv: TglProgramUniform4iv;
  glProgramUniform4f: TglProgramUniform4f;
  glProgramUniform4fv: TglProgramUniform4fv;
  glProgramUniform4d: TglProgramUniform4d;
  glProgramUniform4dv: TglProgramUniform4dv;
  glProgramUniform4ui: TglProgramUniform4ui;
  glProgramUniform4uiv: TglProgramUniform4uiv;
  glProgramUniformMatrix2fv: TglProgramUniformMatrix2fv;
  glProgramUniformMatrix3fv: TglProgramUniformMatrix3fv;
  glProgramUniformMatrix4fv: TglProgramUniformMatrix4fv;
  glProgramUniformMatrix2dv: TglProgramUniformMatrix2dv;
  glProgramUniformMatrix3dv: TglProgramUniformMatrix3dv;
  glProgramUniformMatrix4dv: TglProgramUniformMatrix4dv;
  glProgramUniformMatrix2x3fv: TglProgramUniformMatrix2x3fv;
  glProgramUniformMatrix3x2fv: TglProgramUniformMatrix3x2fv;
  glProgramUniformMatrix2x4fv: TglProgramUniformMatrix2x4fv;
  glProgramUniformMatrix4x2fv: TglProgramUniformMatrix4x2fv;
  glProgramUniformMatrix3x4fv: TglProgramUniformMatrix3x4fv;
  glProgramUniformMatrix4x3fv: TglProgramUniformMatrix4x3fv;
  glProgramUniformMatrix2x3dv: TglProgramUniformMatrix2x3dv;
  glProgramUniformMatrix3x2dv: TglProgramUniformMatrix3x2dv;
  glProgramUniformMatrix2x4dv: TglProgramUniformMatrix2x4dv;
  glProgramUniformMatrix4x2dv: TglProgramUniformMatrix4x2dv;
  glProgramUniformMatrix3x4dv: TglProgramUniformMatrix3x4dv;
  glProgramUniformMatrix4x3dv: TglProgramUniformMatrix4x3dv;
  glValidateProgramPipeline: TglValidateProgramPipeline;
  glGetProgramPipelineInfoLog: TglGetProgramPipelineInfoLog;

  // GL_ARB_vertex_attrib_64bit
  glVertexAttribL1d: TglVertexAttribL1d;
  glVertexAttribL2d: TglVertexAttribL2d;
  glVertexAttribL3d: TglVertexAttribL3d;
  glVertexAttribL4d: TglVertexAttribL4d;
  glVertexAttribL1dv: TglVertexAttribL1dv;
  glVertexAttribL2dv: TglVertexAttribL2dv;
  glVertexAttribL3dv: TglVertexAttribL3dv;
  glVertexAttribL4dv: TglVertexAttribL4dv;
  glVertexAttribLPointer: TglVertexAttribLPointer;
  glGetVertexAttribLdv: TglGetVertexAttribLdv;

  // GL_ARB_viewport_array
  glViewportArrayv: TglViewportArrayv;
  glViewportIndexedf: TglViewportIndexedf;
  glViewportIndexedfv: TglViewportIndexedfv;
  glScissorArrayv: TglScissorArrayv;
  glScissorIndexed: TglScissorIndexed;
  glScissorIndexedv: TglScissorIndexedv;
  glDepthRangeArrayv: TglDepthRangeArrayv;
  glDepthRangeIndexed: TglDepthRangeIndexed;
  glGetFloati_v: TglGetFloati_v;
  glGetDoublei_v: TglGetDoublei_v;

  // GL 4.2

  // GL_ARB_base_instance
  glDrawArraysInstancedBaseInstance : TglDrawArraysInstancedBaseInstance;
  glDrawElementsInstancedBaseInstance : TglDrawElementsInstancedBaseInstance;
  glDrawElementsInstancedBaseVertexBaseInstance : TglDrawElementsInstancedBaseVertexBaseInstance;

  // GL_ARB_transform_feedback_instanced
  glDrawTransformFeedbackInstanced : TglDrawTransformFeedbackInstanced;
  glDrawTransformFeedbackStreamInstanced : TglDrawTransformFeedbackStreamInstanced;

  // GL_ARB_internalformat_query
  glGetInternalformativ : TglGetInternalformativ;

  // GL_ARB_shader_atomic_counters
  glGetActiveAtomicCounterBufferiv : TglGetActiveAtomicCounterBufferiv;

  /// GL_ARB_shader_image_load_store
  glBindImageTexture : TglBindImageTexture;
  glMemoryBarrier : TglMemoryBarrier;

  // GL_ARB_texture_storage
  glTexStorage1D : TglTexStorage1D;
  glTexStorage2D : TglTexStorage2D;
  glTexStorage3D : TglTexStorage3D;
  glTextureStorage1DEXT : TglTextureStorage1DEXT;
  glTextureStorage2DEXT : TglTextureStorage2DEXT;
  glTextureStorage3DEXT : TglTextureStorage3DEXT;


  // GL 4.3
    // GL_KHR_debug
    glDebugMessageControl : TglDebugMessageControl;
    glDebugMessageInsert : TglDebugMessageInsert;
    glDebugMessageCallback : TglDebugMessageCallback;
    glGetDebugMessageLog : TglGetDebugMessageLog;
    glPushDebugGroup : TglPushDebugGroup;
    glPopDebugGroup : TglPopDebugGroup;
    glObjectLabel : TglObjectLabel;
    glGetObjectLabel : TglGetObjectLabel;
    glObjectPtrLabel : TglObjectPtrLabel;
    glGetObjectPtrLabel : TglGetObjectPtrLabel;
    // GL_ARB_clear_buffer_object
    glClearBufferData : TglClearBufferData;
    glClearBufferSubData : TglClearBufferSubData;
    glClearNamedBufferDataEXT : TglClearNamedBufferDataEXT;
    glClearNamedBufferSubDataEXT : TglClearNamedBufferSubDataEXT;
    // GL_ARB_compute_shader
    glDispatchCompute : TglDispatchCompute;
    glDispatchComputeIndirect : TglDispatchComputeIndirect;
    // GL_ARB_copy_image
    glCopyImageSubData : TglCopyImageSubData;
    // GL_ARB_framebuffer_no_attachments
    glFramebufferParameteri : TglFramebufferParameteri;
    glGetFramebufferParameteriv : TglGetFramebufferParameteriv;
    glNamedFramebufferParameteriEXT : TglNamedFramebufferParameteriEXT;
    glGetNamedFramebufferParameterivEXT : TglGetNamedFramebufferParameterivEXT;
    // GL_ARB_internalformat_query2
    glGetInternalformati64v : TglGetInternalformati64v;
    // GL_ARB_invalidate_subdata
    glInvalidateTexSubImage : TglInvalidateTexSubImage;
    glInvalidateTexImage : TglInvalidateTexImage;
    glInvalidateBufferSubData : TglInvalidateBufferSubData;
    glInvalidateBufferData : TglInvalidateBufferData;
    glInvalidateFramebuffer : TglInvalidateFramebuffer;
    glInvalidateSubFramebuffer : TglInvalidateSubFramebuffer;
    // GL_ARB_multi_draw_indirect
    glMultiDrawArraysIndirect : TglMultiDrawArraysIndirect;
    glMultiDrawElementsIndirect : TglMultiDrawElementsIndirect;
    // GL_ARB_program_interface_query
    glGetProgramInterfaceiv : TglGetProgramInterfaceiv;
    glGetProgramResourceIndex : TglGetProgramResourceIndex;
    glGetProgramResourceName : TglGetProgramResourceName;
    glGetProgramResourceiv : TglGetProgramResourceiv;
    glGetProgramResourceLocation : TglGetProgramResourceLocation;
    glGetProgramResourceLocationIndex : TglGetProgramResourceLocationIndex;
    // GL_ARB_shader_storage_buffer_object
    glShaderStorageBlockBinding : TglShaderStorageBlockBinding;
    // GL_ARB_texture_buffer_range
    glTexBufferRange : TglTexBufferRange;
    glTextureBufferRangeEXT : TglTextureBufferRangeEXT;
    // GL_ARB_texture_storage_multisample
    glTexStorage2DMultisample : TglTexStorage2DMultisample;
    glTexStorage3DMultisample : TglTexStorage3DMultisample;
    glTextureStorage2DMultisampleEXT : TglTextureStorage2DMultisampleEXT;
    glTextureStorage3DMultisampleEXT : TglTextureStorage3DMultisampleEXT;
    // GL_ARB_texture_view
    glTextureView : TglTextureView;
    // GL_ARB_vertex_attrib_binding
    glBindVertexBuffer : TglBindVertexBuffer;
    glVertexAttribFormat : TglVertexAttribFormat;
    glVertexAttribIFormat : TglVertexAttribIFormat;
    glVertexAttribLFormat : TglVertexAttribLFormat;
    glVertexAttribBinding : TglVertexAttribBinding;
    glVertexBindingDivisor : TglVertexBindingDivisor;
    glVertexArrayBindVertexBufferEXT : TglVertexArrayBindVertexBufferEXT;
    glVertexArrayVertexAttribFormatEXT : TglVertexArrayVertexAttribFormatEXT;
    glVertexArrayVertexAttribIFormatEXT : TglVertexArrayVertexAttribIFormatEXT;
    glVertexArrayVertexAttribLFormatEXT : TglVertexArrayVertexAttribLFormatEXT;
    glVertexArrayVertexAttribBindingEXT : TglVertexArrayVertexAttribBindingEXT;
    glVertexArrayVertexBindingDivisorEXT : TglVertexArrayVertexBindingDivisorEXT;
  // END GL 4.3


  // GL 4.4
    glBufferStorage : TglBufferStorage;
    glClearTexImage : TglClearTexImage;
    glClearTexSubImage : TglClearTexSubImage;
    glBindBuffersBase : TglBindBuffersBase;
    glBindBuffersRange : TglBindBuffersRange;
    glBindTextures : TglBindTextures;
    glBindSamplers : TglBindSamplers;
    glBindImageTextures : TglBindImageTextures;
    glBindVertexBuffers : TglBindVertexBuffers;
    glTexPageCommitmentARB : TglTexPageCommitmentARB;

  // GL 4.5
  glClipControl : TglClipControl;
  glCreateTransformFeedbacks : TglCreateTransformFeedbacks;
  glTransformFeedbackBufferBase : TglTransformFeedbackBufferBase;
  glTransformFeedbackBufferRange : TglTransformFeedbackBufferRange;
  glGetTransformFeedbackiv : TglGetTransformFeedbackiv;
  glGetTransformFeedbacki_v : TglGetTransformFeedbacki_v;
  glGetTransformFeedbacki64_v : TglGetTransformFeedbacki64_v;
  glCreateBuffers : TglCreateBuffers;
  glNamedBufferStorage : TglNamedBufferStorage;
  glNamedBufferData : TglNamedBufferData;
  glNamedBufferSubData : TglNamedBufferSubData;
  glCopyNamedBufferSubData : TglCopyNamedBufferSubData;
  glClearNamedBufferData : TglClearNamedBufferData;
  glClearNamedBufferSubData : TglClearNamedBufferSubData;
  glMapNamedBuffer : TglMapNamedBuffer;
  glMapNamedBufferRange : TglMapNamedBufferRange;
  glUnmapNamedBuffer : TglUnmapNamedBuffer;
  glFlushMappedNamedBufferRange : TglFlushMappedNamedBufferRange;
  glGetNamedBufferParameteriv : TglGetNamedBufferParameteriv;
  glGetNamedBufferParameteri64v : TglGetNamedBufferParameteri64v;
  glGetNamedBufferPointerv : TglGetNamedBufferPointerv;
  glGetNamedBufferSubData : TglGetNamedBufferSubData;
  glCreateFramebuffers : TglCreateFramebuffers;
  glNamedFramebufferRenderbuffer : TglNamedFramebufferRenderbuffer;
  glNamedFramebufferParameteri : TglNamedFramebufferParameteri;
  glNamedFramebufferTexture : TglNamedFramebufferTexture;
  glNamedFramebufferTextureLayer : TglNamedFramebufferTextureLayer;
  glNamedFramebufferDrawBuffer : TglNamedFramebufferDrawBuffer;
  glNamedFramebufferDrawBuffers : TglNamedFramebufferDrawBuffers;
  glNamedFramebufferReadBuffer : TglNamedFramebufferReadBuffer;
  glInvalidateNamedFramebufferData : TglInvalidateNamedFramebufferData;
  glInvalidateNamedFramebufferSubData : TglInvalidateNamedFramebufferSubData;
  glClearNamedFramebufferiv : TglClearNamedFramebufferiv;
  glClearNamedFramebufferuiv : TglClearNamedFramebufferuiv;
  glClearNamedFramebufferfv : TglClearNamedFramebufferfv;
  glClearNamedFramebufferfi : TglClearNamedFramebufferfi;
  glBlitNamedFramebuffer : TglBlitNamedFramebuffer;
  glCheckNamedFramebufferStatus : TglCheckNamedFramebufferStatus;
  glGetNamedFramebufferParameteriv : TglGetNamedFramebufferParameteriv;
  glGetNamedFramebufferAttachmentParameteriv : TglGetNamedFramebufferAttachmentParameteriv;
  glCreateRenderbuffers : TglCreateRenderbuffers;
  glNamedRenderbufferStorage : TglNamedRenderbufferStorage;
  glNamedRenderbufferStorageMultisample : TglNamedRenderbufferStorageMultisample;
  glGetNamedRenderbufferParameteriv : TglGetNamedRenderbufferParameteriv;
  glCreateTextures : TglCreateTextures;
  glTextureBuffer : TglTextureBuffer;
  glTextureBufferRange : TglTextureBufferRange;
  glTextureStorage1D : TglTextureStorage1D;
  glTextureStorage2D : TglTextureStorage2D;
  glTextureStorage3D : TglTextureStorage3D;
  glTextureStorage2DMultisample : TglTextureStorage2DMultisample;
  glTextureStorage3DMultisample : TglTextureStorage3DMultisample;
  glTextureSubImage1D : TglTextureSubImage1D;
  glTextureSubImage2D : TglTextureSubImage2D;
  glTextureSubImage3D : TglTextureSubImage3D;
  glCompressedTextureSubImage1D : TglCompressedTextureSubImage1D;
  glCompressedTextureSubImage2D : TglCompressedTextureSubImage2D;
  glCompressedTextureSubImage3D : TglCompressedTextureSubImage3D;
  glCopyTextureSubImage1D : TglCopyTextureSubImage1D;
  glCopyTextureSubImage2D : TglCopyTextureSubImage2D;
  glCopyTextureSubImage3D : TglCopyTextureSubImage3D;
  glTextureParameterf : TglTextureParameterf;
  glTextureParameterfv : TglTextureParameterfv;
  glTextureParameteri : TglTextureParameteri;
  glTextureParameterIiv : TglTextureParameterIiv;
  glTextureParameterIuiv : TglTextureParameterIuiv;
  glTextureParameteriv : TglTextureParameteriv;
  glGenerateTextureMipmap : TglGenerateTextureMipmap;
  glBindTextureUnit : TglBindTextureUnit;
  glGetTextureImage : TglGetTextureImage;
  glGetCompressedTextureImage : TglGetCompressedTextureImage;
  glGetTextureLevelParameterfv : TglGetTextureLevelParameterfv;
  glGetTextureLevelParameteriv : TglGetTextureLevelParameteriv;
  glGetTextureParameterfv : TglGetTextureParameterfv;
  glGetTextureParameterIiv : TglGetTextureParameterIiv;
  glGetTextureParameterIuiv : TglGetTextureParameterIuiv;
  glGetTextureParameteriv : TglGetTextureParameteriv;
  glCreateVertexArrays : TglCreateVertexArrays;
  glDisableVertexArrayAttrib : TglDisableVertexArrayAttrib;
  glEnableVertexArrayAttrib : TglEnableVertexArrayAttrib;
  glVertexArrayElementBuffer : TglVertexArrayElementBuffer;
  glVertexArrayVertexBuffer : TglVertexArrayVertexBuffer;
  glVertexArrayVertexBuffers : TglVertexArrayVertexBuffers;
  glVertexArrayAttribBinding : TglVertexArrayAttribBinding;
  glVertexArrayAttribFormat : TglVertexArrayAttribFormat;
  glVertexArrayAttribIFormat : TglVertexArrayAttribIFormat;
  glVertexArrayAttribLFormat : TglVertexArrayAttribLFormat;
  glVertexArrayBindingDivisor : TglVertexArrayBindingDivisor;
  glGetVertexArrayiv : TglGetVertexArrayiv;
  glGetVertexArrayIndexediv : TglGetVertexArrayIndexediv;
  glGetVertexArrayIndexed64iv : TglGetVertexArrayIndexed64iv;
  glCreateSamplers : TglCreateSamplers;
  glCreateProgramPipelines : TglCreateProgramPipelines;
  glCreateQueries : TglCreateQueries;
  glMemoryBarrierByRegion : TglMemoryBarrierByRegion;
  glGetTextureSubImage : TglGetTextureSubImage;
  glGetCompressedTextureSubImage : TglGetCompressedTextureSubImage;
  glGetGraphicsResetStatus : TglGetGraphicsResetStatus;
  glGetnCompressedTexImage : TglGetnCompressedTexImage;
  glGetnTexImage : TglGetnTexImage;
  glGetnUniformdv : TglGetnUniformdv;
  glGetnUniformfv : TglGetnUniformfv;
  glGetnUniformiv : TglGetnUniformiv;
  glGetnUniformuiv : TglGetnUniformuiv;
  glReadnPixels : TglReadnPixels;
  glGetnMapdv : TglGetnMapdv;
  glGetnMapfv : TglGetnMapfv;
  glGetnMapiv : TglGetnMapiv;
  glGetnPixelMapfv : TglGetnPixelMapfv;
  glGetnPixelMapuiv : TglGetnPixelMapuiv;
  glGetnPixelMapusv : TglGetnPixelMapusv;
  glGetnPolygonStipple : TglGetnPolygonStipple;
  glGetnColorTable : TglGetnColorTable;
  glGetnConvolutionFilter : TglGetnConvolutionFilter;
  glGetnSeparableFilter : TglGetnSeparableFilter;
  glGetnHistogram : TglGetnHistogram;
  glGetnMinmax : TglGetnMinmax;
  glTextureBarrier : TglTextureBarrier;

  // GL_ARB_sparse_buffer
  glBufferPageCommitmentARB : TglBufferPageCommitmentARB;
  glNamedBufferPageCommitmentEXT : TglNamedBufferPageCommitmentEXT;
  glNamedBufferPageCommitmentARB : TglNamedBufferPageCommitmentARB;

  // GL_KHR_blend_equation_advanced
  glBlendBarrierKHR : TglBlendBarrierKHR;

  // GL_ARB_cl_event
  glCreateSyncFromCLeventARB: TglCreateSyncFromCLeventARB;

  // GL_ARB_debug_output
  glDebugMessageControlARB: TglDebugMessageControlARB;
  glDebugMessageInsertARB: TglDebugMessageInsertARB;
  glDebugMessageCallbackARB: TglDebugMessageCallbackARB;
  glGetDebugMessageLogARB: TglGetDebugMessageLogARB;

  // GL_ARB_compute_variable_group_size
  glDispatchComputeGroupSizeARB : TglDispatchComputeGroupSizeARB;

  // GL_ARB_robustness
  glGetGraphicsResetStatusARB: TglGetGraphicsResetStatusARB;
  glGetnMapdvARB: TglGetnMapdvARB;
  glGetnMapfvARB: TglGetnMapfvARB;
  glGetnMapivARB: TglGetnMapivARB;
  glGetnPixelMapfvARB: TglGetnPixelMapfvARB;
  glGetnPixelMapuivARB: TglGetnPixelMapuivARB;
  glGetnPixelMapusvARB: TglGetnPixelMapusvARB;
  glGetnPolygonStippleARB: TglGetnPolygonStippleARB;
  glGetnColorTableARB: TglGetnColorTableARB;
  glGetnConvolutionFilterARB: TglGetnConvolutionFilterARB;
  glGetnSeparableFilterARB: TglGetnSeparableFilterARB;
  glGetnHistogramARB: TglGetnHistogramARB;
  glGetnMinmaxARB: TglGetnMinmaxARB;
  glGetnTexImageARB: TglGetnTexImageARB;
  glReadnPixelsARB: TglReadnPixelsARB;
  glGetnCompressedTexImageARB: TglGetnCompressedTexImageARB;
  glGetnUniformfvARB: TglGetnUniformfvARB;
  glGetnUniformivARB: TglGetnUniformivARB;
  glGetnUniformuivARB: TglGetnUniformuivARB;
  glGetnUniformdvARB: TglGetnUniformdvARB;

  // GL_ATI_draw_buffers
  glDrawBuffersATI: TglDrawBuffersATI;

  // GL_ATI_element_array
  glElementPointerATI: TglElementPointerATI;
  glDrawElementArrayATI: TglDrawElementArrayATI;
  glDrawRangeElementArrayATI: TglDrawRangeElementArrayATI;

  // GL_ATI_envmap_bumpmap
  glTexBumpParameterivATI: TglTexBumpParameterivATI;
  glTexBumpParameterfvATI: TglTexBumpParameterfvATI;
  glGetTexBumpParameterivATI: TglGetTexBumpParameterivATI;
  glGetTexBumpParameterfvATI: TglGetTexBumpParameterfvATI;

  // GL_ATI_fragment_shader
  glGenFragmentShadersATI: TglGenFragmentShadersATI;
  glBindFragmentShaderATI: TglBindFragmentShaderATI;
  glDeleteFragmentShaderATI: TglDeleteFragmentShaderATI;
  glBeginFragmentShaderATI: TglBeginFragmentShaderATI;
  glEndFragmentShaderATI: TglEndFragmentShaderATI;
  glPassTexCoordATI: TglPassTexCoordATI;
  glSampleMapATI: TglSampleMapATI;
  glColorFragmentOp1ATI: TglColorFragmentOp1ATI;
  glColorFragmentOp2ATI: TglColorFragmentOp2ATI;
  glColorFragmentOp3ATI: TglColorFragmentOp3ATI;
  glAlphaFragmentOp1ATI: TglAlphaFragmentOp1ATI;
  glAlphaFragmentOp2ATI: TglAlphaFragmentOp2ATI;
  glAlphaFragmentOp3ATI: TglAlphaFragmentOp3ATI;
  glSetFragmentShaderConstantATI: TglSetFragmentShaderConstantATI;

  // GL_ATI_map_object_buffer
  glMapObjectBufferATI: TglMapObjectBufferATI;
  glUnmapObjectBufferATI: TglUnmapObjectBufferATI;

  // GL_ATI_pn_triangles
  glPNTrianglesiATI: TglPNTrianglesiATI;
  glPNTrianglesfATI: TglPNTrianglesfATI;

  // GL_ATI_separate_stencil
  glStencilOpSeparateATI: TglStencilOpSeparateATI;
  glStencilFuncSeparateATI: TglStencilFuncSeparateATI;

  // GL_ATI_vertex_array_object
  glNewObjectBufferATI: TglNewObjectBufferATI;
  glIsObjectBufferATI: TglIsObjectBufferATI;
  glUpdateObjectBufferATI: TglUpdateObjectBufferATI;
  glGetObjectBufferfvATI: TglGetObjectBufferfvATI;
  glGetObjectBufferivATI: TglGetObjectBufferivATI;
  glFreeObjectBufferATI: TglFreeObjectBufferATI;
  glArrayObjectATI: TglArrayObjectATI;
  glGetArrayObjectfvATI: TglGetArrayObjectfvATI;
  glGetArrayObjectivATI: TglGetArrayObjectivATI;
  glVariantArrayObjectATI: TglVariantArrayObjectATI;
  glGetVariantArrayObjectfvATI: TglGetVariantArrayObjectfvATI;
  glGetVariantArrayObjectivATI: TglGetVariantArrayObjectivATI;
  glVertexAttribArrayObjectATI: TglVertexAttribArrayObjectATI;
  glGetVertexAttribArrayObjectfvATI: TglGetVertexAttribArrayObjectfvATI;
  glGetVertexAttribArrayObjectivATI: TglGetVertexAttribArrayObjectivATI;

  // GL_ATI_vertex_streams
  glVertexStream1sATI: TglVertexStream1sATI;
  glVertexStream1svATI: TglVertexStream1svATI;
  glVertexStream1iATI: TglVertexStream1iATI;
  glVertexStream1ivATI: TglVertexStream1ivATI;
  glVertexStream1fATI: TglVertexStream1fATI;
  glVertexStream1fvATI: TglVertexStream1fvATI;
  glVertexStream1dATI: TglVertexStream1dATI;
  glVertexStream1dvATI: TglVertexStream1dvATI;
  glVertexStream2sATI: TglVertexStream2sATI;
  glVertexStream2svATI: TglVertexStream2svATI;
  glVertexStream2iATI: TglVertexStream2iATI;
  glVertexStream2ivATI: TglVertexStream2ivATI;
  glVertexStream2fATI: TglVertexStream2fATI;
  glVertexStream2fvATI: TglVertexStream2fvATI;
  glVertexStream2dATI: TglVertexStream2dATI;
  glVertexStream2dvATI: TglVertexStream2dvATI;
  glVertexStream3sATI: TglVertexStream3sATI;
  glVertexStream3svATI: TglVertexStream3svATI;
  glVertexStream3iATI: TglVertexStream3iATI;
  glVertexStream3ivATI: TglVertexStream3ivATI;
  glVertexStream3fATI: TglVertexStream3fATI;
  glVertexStream3fvATI: TglVertexStream3fvATI;
  glVertexStream3dATI: TglVertexStream3dATI;
  glVertexStream3dvATI: TglVertexStream3dvATI;
  glVertexStream4sATI: TglVertexStream4sATI;
  glVertexStream4svATI: TglVertexStream4svATI;
  glVertexStream4iATI: TglVertexStream4iATI;
  glVertexStream4ivATI: TglVertexStream4ivATI;
  glVertexStream4fATI: TglVertexStream4fATI;
  glVertexStream4fvATI: TglVertexStream4fvATI;
  glVertexStream4dATI: TglVertexStream4dATI;
  glVertexStream4dvATI: TglVertexStream4dvATI;
  glNormalStream3bATI: TglNormalStream3bATI;
  glNormalStream3bvATI: TglNormalStream3bvATI;
  glNormalStream3sATI: TglNormalStream3sATI;
  glNormalStream3svATI: TglNormalStream3svATI;
  glNormalStream3iATI: TglNormalStream3iATI;
  glNormalStream3ivATI: TglNormalStream3ivATI;
  glNormalStream3fATI: TglNormalStream3fATI;
  glNormalStream3fvATI: TglNormalStream3fvATI;
  glNormalStream3dATI: TglNormalStream3dATI;
  glNormalStream3dvATI: TglNormalStream3dvATI;
  glClientActiveVertexStreamATI: TglClientActiveVertexStreamATI;
  glVertexBlendEnviATI: TglVertexBlendEnviATI;
  glVertexBlendEnvfATI: TglVertexBlendEnvfATI;

  // GL_AMD_performance_monitor
  glGetPerfMonitorGroupsAMD: TglGetPerfMonitorGroupsAMD;
  glGetPerfMonitorCountersAMD: TglGetPerfMonitorCountersAMD;
  glGetPerfMonitorGroupStringAMD: TglGetPerfMonitorGroupStringAMD;
  glGetPerfMonitorCounterStringAMD: TglGetPerfMonitorCounterStringAMD;
  glGetPerfMonitorCounterInfoAMD: TglGetPerfMonitorCounterInfoAMD;
  glGenPerfMonitorsAMD: TglGenPerfMonitorsAMD;
  glDeletePerfMonitorsAMD: TglDeletePerfMonitorsAMD;
  glSelectPerfMonitorCountersAMD: TglSelectPerfMonitorCountersAMD;
  glBeginPerfMonitorAMD: TglBeginPerfMonitorAMD;
  glEndPerfMonitorAMD: TglEndPerfMonitorAMD;
  glGetPerfMonitorCounterDataAMD: TglGetPerfMonitorCounterDataAMD;

  // GL_AMD_vertex_shader_tesselator
  glTessellationFactorAMD: TglTessellationFactorAMD;
  glTessellationModeAMD: TglTessellationModeAMD;

  // GL_AMD_draw_buffers_blend
  glBlendFuncIndexedAMD: TglBlendFuncIndexedAMD;
  glBlendFuncSeparateIndexedAMD: TglBlendFuncSeparateIndexedAMD;
  glBlendEquationIndexedAMD: TglBlendEquationIndexedAMD;
  glBlendEquationSeparateIndexedAMD: TglBlendEquationSeparateIndexedAMD;

  // GL_AMD_name_gen_delete
  glGenNamesAMD: TglGenNamesAMD;
  glDeleteNamesAMD: TglDeleteNamesAMD;
  glIsNameAMD: TglIsNameAMD;

  // GL_AMD_debug_output
  glDebugMessageEnableAMD: TglDebugMessageEnableAMD;
  glDebugMessageInsertAMD: TglDebugMessageInsertAMD;
  glDebugMessageCallbackAMD: TglDebugMessageCallbackAMD;
  glGetDebugMessageLogAMD: TglGetDebugMessageLogAMD;

  // GL_EXT_blend_color
  glBlendColorEXT: TglBlendColorEXT;

  // GL_EXT_blend_func_separate
  glBlendFuncSeparateEXT: TglBlendFuncSeparateEXT;

  // GL_EXT_blend_minmax
  glBlendEquationEXT: TglBlendEquationEXT;

  // GL_EXT_color_subtable
  glColorSubTableEXT: TglColorSubTableEXT;
  glCopyColorSubTableEXT: TglCopyColorSubTableEXT;

  // GL_EXT_compiled_vertex_array
  glLockArraysEXT: TglLockArraysEXT;
  glUnlockArraysEXT: TglUnlockArraysEXT;

  // GL_EXT_convolution
  glConvolutionFilter1DEXT: TglConvolutionFilter1DEXT;
  glConvolutionFilter2DEXT: TglConvolutionFilter2DEXT;
  glConvolutionParameterfEXT: TglConvolutionParameterfEXT;
  glConvolutionParameterfvEXT: TglConvolutionParameterfvEXT;
  glConvolutionParameteriEXT: TglConvolutionParameteriEXT;
  glConvolutionParameterivEXT: TglConvolutionParameterivEXT;
  glCopyConvolutionFilter1DEXT: TglCopyConvolutionFilter1DEXT;
  glCopyConvolutionFilter2DEXT: TglCopyConvolutionFilter2DEXT;
  glGetConvolutionFilterEXT: TglGetConvolutionFilterEXT;
  glGetConvolutionParameterfvEXT: TglGetConvolutionParameterfvEXT;
  glGetConvolutionParameterivEXT: TglGetConvolutionParameterivEXT;
  glGetSeparableFilterEXT: TglGetSeparableFilterEXT;
  glSeparableFilter2DEXT: TglSeparableFilter2DEXT;

  // GL_EXT_coordinate_frame
  glTangent3bEXT: TglTangent3bEXT;
  glTangent3bvEXT: TglTangent3bvEXT;
  glTangent3dEXT: TglTangent3dEXT;
  glTangent3dvEXT: TglTangent3dvEXT;
  glTangent3fEXT: TglTangent3fEXT;
  glTangent3fvEXT: TglTangent3fvEXT;
  glTangent3iEXT: TglTangent3iEXT;
  glTangent3ivEXT: TglTangent3ivEXT;
  glTangent3sEXT: TglTangent3sEXT;
  glTangent3svEXT: TglTangent3svEXT;
  glBinormal3bEXT: TglBinormal3bEXT;
  glBinormal3bvEXT: TglBinormal3bvEXT;
  glBinormal3dEXT: TglBinormal3dEXT;
  glBinormal3dvEXT: TglBinormal3dvEXT;
  glBinormal3fEXT: TglBinormal3fEXT;
  glBinormal3fvEXT: TglBinormal3fvEXT;
  glBinormal3iEXT: TglBinormal3iEXT;
  glBinormal3ivEXT: TglBinormal3ivEXT;
  glBinormal3sEXT: TglBinormal3sEXT;
  glBinormal3svEXT: TglBinormal3svEXT;
  glTangentPointerEXT: TglTangentPointerEXT;
  glBinormalPointerEXT: TglBinormalPointerEXT;

  // GL_EXT_copy_texture
  glCopyTexImage1DEXT: TglCopyTexImage1DEXT;
  glCopyTexImage2DEXT: TglCopyTexImage2DEXT;
  glCopyTexSubImage1DEXT: TglCopyTexSubImage1DEXT;
  glCopyTexSubImage2DEXT: TglCopyTexSubImage2DEXT;
  glCopyTexSubImage3DEXT: TglCopyTexSubImage3DEXT;

  // GL_EXT_cull_vertex
  glCullParameterdvEXT: TglCullParameterdvEXT;
  glCullParameterfvEXT: TglCullParameterfvEXT;

  // GL_EXT_draw_range_elements
  glDrawRangeElementsEXT: TglDrawRangeElementsEXT;

  // GL_EXT_fog_coord
  glFogCoordfEXT: TglFogCoordfEXT;
  glFogCoordfvEXT: TglFogCoordfvEXT;
  glFogCoorddEXT: TglFogCoorddEXT;
  glFogCoorddvEXT: TglFogCoorddvEXT;
  glFogCoordPointerEXT: TglFogCoordPointerEXT;

  // GL_EXT_framebuffer_object
  glIsRenderbufferEXT: TglIsRenderbufferEXT;
  glBindRenderbufferEXT: TglBindRenderbufferEXT;
  glDeleteRenderbuffersEXT: TglDeleteRenderbuffersEXT;
  glGenRenderbuffersEXT: TglGenRenderbuffersEXT;
  glRenderbufferStorageEXT: TglRenderbufferStorageEXT;
  glGetRenderbufferParameterivEXT: TglGetRenderbufferParameterivEXT;
  glIsFramebufferEXT: TglIsFramebufferEXT;
  glBindFramebufferEXT: TglBindFramebufferEXT;
  glDeleteFramebuffersEXT: TglDeleteFramebuffersEXT;
  glGenFramebuffersEXT: TglGenFramebuffersEXT;
  glCheckFramebufferStatusEXT: TglCheckFramebufferStatusEXT;
  glFramebufferTexture1DEXT: TglFramebufferTexture1DEXT;
  glFramebufferTexture2DEXT: TglFramebufferTexture2DEXT;
  glFramebufferTexture3DEXT: TglFramebufferTexture3DEXT;
  glFramebufferRenderbufferEXT: TglFramebufferRenderbufferEXT;
  glGetFramebufferAttachmentParameterivEXT: TglGetFramebufferAttachmentParameterivEXT;
  glGenerateMipmapEXT: TglGenerateMipmapEXT;

  // GL_EXT_histogram
  glGetHistogramEXT: TglGetHistogramEXT;
  glGetHistogramParameterfvEXT: TglGetHistogramParameterfvEXT;
  glGetHistogramParameterivEXT: TglGetHistogramParameterivEXT;
  glGetMinmaxEXT: TglGetMinmaxEXT;
  glGetMinmaxParameterfvEXT: TglGetMinmaxParameterfvEXT;
  glGetMinmaxParameterivEXT: TglGetMinmaxParameterivEXT;
  glHistogramEXT: TglHistogramEXT;
  glMinmaxEXT: TglMinmaxEXT;
  glResetHistogramEXT: TglResetHistogramEXT;
  glResetMinmaxEXT: TglResetMinmaxEXT;

  // GL_EXT_index_func
  glIndexFuncEXT: TglIndexFuncEXT;

  // GL_EXT_index_material
  glIndexMaterialEXT: TglIndexMaterialEXT;

  // GL_EXT_light_texture
  glApplyTextureEXT: TglApplyTextureEXT;
  glTextureLightEXT: TglTextureLightEXT;
  glTextureMaterialEXT: TglTextureMaterialEXT;

  // GL_EXT_multi_draw_arrays
  glMultiDrawArraysEXT: TglMultiDrawArraysEXT;
  glMultiDrawElementsEXT: TglMultiDrawElementsEXT;

  // GL_EXT_multisample
  glSampleMaskEXT: TglSampleMaskEXT;
  glSamplePatternEXT: TglSamplePatternEXT;

  // GL_EXT_paletted_texture
  glColorTableEXT: TglColorTableEXT;
  glGetColorTableEXT: TglGetColorTableEXT;
  glGetColorTableParameterivEXT: TglGetColorTableParameterivEXT;
  glGetColorTableParameterfvEXT: TglGetColorTableParameterfvEXT;

  // GL_EXT_pixel_transform
  glPixelTransformParameteriEXT: TglPixelTransformParameteriEXT;
  glPixelTransformParameterfEXT: TglPixelTransformParameterfEXT;
  glPixelTransformParameterivEXT: TglPixelTransformParameterivEXT;
  glPixelTransformParameterfvEXT: TglPixelTransformParameterfvEXT;

  // GL_EXT_point_parameters
  glPointParameterfEXT: TglPointParameterfEXT;
  glPointParameterfvEXT: TglPointParameterfvEXT;

  // GL_EXT_polygon_offset
  glPolygonOffsetEXT: TglPolygonOffsetEXT;

  // GL_EXT_secondary_color
  glSecondaryColor3bEXT: TglSecondaryColor3bEXT;
  glSecondaryColor3bvEXT: TglSecondaryColor3bvEXT;
  glSecondaryColor3dEXT: TglSecondaryColor3dEXT;
  glSecondaryColor3dvEXT: TglSecondaryColor3dvEXT;
  glSecondaryColor3fEXT: TglSecondaryColor3fEXT;
  glSecondaryColor3fvEXT: TglSecondaryColor3fvEXT;
  glSecondaryColor3iEXT: TglSecondaryColor3iEXT;
  glSecondaryColor3ivEXT: TglSecondaryColor3ivEXT;
  glSecondaryColor3sEXT: TglSecondaryColor3sEXT;
  glSecondaryColor3svEXT: TglSecondaryColor3svEXT;
  glSecondaryColor3ubEXT: TglSecondaryColor3ubEXT;
  glSecondaryColor3ubvEXT: TglSecondaryColor3ubvEXT;
  glSecondaryColor3uiEXT: TglSecondaryColor3uiEXT;
  glSecondaryColor3uivEXT: TglSecondaryColor3uivEXT;
  glSecondaryColor3usEXT: TglSecondaryColor3usEXT;
  glSecondaryColor3usvEXT: TglSecondaryColor3usvEXT;
  glSecondaryColorPointerEXT: TglSecondaryColorPointerEXT;

  // GL_EXT_stencil_two_side
  glActiveStencilFaceEXT: TglActiveStencilFaceEXT;

  // GL_EXT_subtexture
  glTexSubImage1DEXT: TglTexSubImage1DEXT;
  glTexSubImage2DEXT: TglTexSubImage2DEXT;

  // GL_EXT_texture3D
  glTexImage3DEXT: TglTexImage3DEXT;
  glTexSubImage3DEXT: TglTexSubImage3DEXT;

  // GL_EXT_texture_object
  glAreTexturesResidentEXT: TglAreTexturesResidentEXT;
  glBindTextureEXT: TglBindTextureEXT;
  glDeleteTexturesEXT: TglDeleteTexturesEXT;
  glGenTexturesEXT: TglGenTexturesEXT;
  glIsTextureEXT: TglIsTextureEXT;
  glPrioritizeTexturesEXT: TglPrioritizeTexturesEXT;

  // GL_EXT_texture_perturb_normal
  glTextureNormalEXT: TglTextureNormalEXT;

  // GL_EXT_vertex_array
  glArrayElementEXT: TglArrayElementEXT;
  glColorPointerEXT: TglColorPointerEXT;
  glDrawArraysEXT: TglDrawArraysEXT;
  glEdgeFlagPointerEXT: TglEdgeFlagPointerEXT;
  glGetPointervEXT: TglGetPointervEXT;
  glIndexPointerEXT: TglIndexPointerEXT;
  glNormalPointerEXT: TglNormalPointerEXT;
  glTexCoordPointerEXT: TglTexCoordPointerEXT;
  glVertexPointerEXT: TglVertexPointerEXT;

  // GL_EXT_vertex_shader
  glBeginVertexShaderEXT: TglBeginVertexShaderEXT;
  glEndVertexShaderEXT: TglEndVertexShaderEXT;
  glBindVertexShaderEXT: TglBindVertexShaderEXT;
  glGenVertexShadersEXT: TglGenVertexShadersEXT;
  glDeleteVertexShaderEXT: TglDeleteVertexShaderEXT;
  glShaderOp1EXT: TglShaderOp1EXT;
  glShaderOp2EXT: TglShaderOp2EXT;
  glShaderOp3EXT: TglShaderOp3EXT;
  glSwizzleEXT: TglSwizzleEXT;
  glWriteMaskEXT: TglWriteMaskEXT;
  glInsertComponentEXT: TglInsertComponentEXT;
  glExtractComponentEXT: TglExtractComponentEXT;
  glGenSymbolsEXT: TglGenSymbolsEXT;
  glSetInvariantEXT: TglSetInvariantEXT;
  glSetLocalConstantEXT: TglSetLocalConstantEXT;
  glVariantbvEXT: TglVariantbvEXT;
  glVariantsvEXT: TglVariantsvEXT;
  glVariantivEXT: TglVariantivEXT;
  glVariantfvEXT: TglVariantfvEXT;
  glVariantdvEXT: TglVariantdvEXT;
  glVariantubvEXT: TglVariantubvEXT;
  glVariantusvEXT: TglVariantusvEXT;
  glVariantuivEXT: TglVariantuivEXT;
  glVariantPointerEXT: TglVariantPointerEXT;
  glEnableVariantClientStateEXT: TglEnableVariantClientStateEXT;
  glDisableVariantClientStateEXT: TglDisableVariantClientStateEXT;
  glBindLightParameterEXT: TglBindLightParameterEXT;
  glBindMaterialParameterEXT: TglBindMaterialParameterEXT;
  glBindTexGenParameterEXT: TglBindTexGenParameterEXT;
  glBindTextureUnitParameterEXT: TglBindTextureUnitParameterEXT;
  glBindParameterEXT: TglBindParameterEXT;
  glIsVariantEnabledEXT: TglIsVariantEnabledEXT;
  glGetVariantBooleanvEXT: TglGetVariantBooleanvEXT;
  glGetVariantIntegervEXT: TglGetVariantIntegervEXT;
  glGetVariantFloatvEXT: TglGetVariantFloatvEXT;
  glGetVariantPointervEXT: TglGetVariantPointervEXT;
  glGetInvariantBooleanvEXT: TglGetInvariantBooleanvEXT;
  glGetInvariantIntegervEXT: TglGetInvariantIntegervEXT;
  glGetInvariantFloatvEXT: TglGetInvariantFloatvEXT;
  glGetLocalConstantBooleanvEXT: TglGetLocalConstantBooleanvEXT;
  glGetLocalConstantIntegervEXT: TglGetLocalConstantIntegervEXT;
  glGetLocalConstantFloatvEXT: TglGetLocalConstantFloatvEXT;

  // GL_EXT_vertex_weighting
  glVertexWeightfEXT: TglVertexWeightfEXT;
  glVertexWeightfvEXT: TglVertexWeightfvEXT;
  glVertexWeightPointerEXT: TglVertexWeightPointerEXT;

  // GL_EXT_stencil_clear_tag
  glStencilClearTagEXT: TglStencilClearTagEXT;

  // GL_EXT_framebuffer_blit
  glBlitFramebufferEXT: TglBlitFramebufferEXT;

  // GL_EXT_framebuffer_multisample
  glRenderbufferStorageMultisampleEXT: TglRenderbufferStorageMultisampleEXT;

  // GL_EXT_timer_query
  glGetQueryObjecti64vEXT: TglGetQueryObjecti64vEXT;
  glGetQueryObjectui64vEXT: TglGetQueryObjectui64vEXT;

  // GL_EXT_gpu_program_parameters
  glProgramEnvParameters4fvEXT: TglProgramEnvParameters4fvEXT;
  glProgramLocalParameters4fvEXT: TglProgramLocalParameters4fvEXT;

  // GL_EXT_bindable_uniform
  glUniformBufferEXT: TglUniformBufferEXT;
  glGetUniformBufferSizeEXT: TglGetUniformBufferSizeEXT;
  glGetUniformOffsetEXT: TglGetUniformOffsetEXT;

  // GL_EXT_draw_buffers2
  glColorMaskIndexedEXT: TglColorMaskIndexedEXT;
  glGetBooleanIndexedvEXT: TglGetBooleanIndexedvEXT;
  glGetIntegerIndexedvEXT: TglGetIntegerIndexedvEXT;
  glEnableIndexedEXT: TglEnableIndexedEXT;
  glDisableIndexedEXT: TglDisableIndexedEXT;
  glIsEnabledIndexedEXT: TglIsEnabledIndexedEXT;

  // GL_EXT_draw_instanced
  glDrawArraysInstancedEXT: TglDrawArraysInstancedEXT;
  glDrawElementsInstancedEXT: TglDrawElementsInstancedEXT;

  // GL_EXT_geometry_shader4
  glProgramParameteriEXT: TglProgramParameteriEXT;
  glFramebufferTextureEXT: TglFramebufferTextureEXT;
//  glFramebufferTextureLayerEXT: TglFramebufferTextureLayerEXT;
  glFramebufferTextureFaceEXT: TglFramebufferTextureFaceEXT;

  // GL_EXT_gpu_shader4
  glVertexAttribI1iEXT: TglVertexAttribI1iEXT;
  glVertexAttribI2iEXT: TglVertexAttribI2iEXT;
  glVertexAttribI3iEXT: TglVertexAttribI3iEXT;
  glVertexAttribI4iEXT: TglVertexAttribI4iEXT;
  glVertexAttribI1uiEXT: TglVertexAttribI1uiEXT;
  glVertexAttribI2uiEXT: TglVertexAttribI2uiEXT;
  glVertexAttribI3uiEXT: TglVertexAttribI3uiEXT;
  glVertexAttribI4uiEXT: TglVertexAttribI4uiEXT;
  glVertexAttribI1ivEXT: TglVertexAttribI1ivEXT;
  glVertexAttribI2ivEXT: TglVertexAttribI2ivEXT;
  glVertexAttribI3ivEXT: TglVertexAttribI3ivEXT;
  glVertexAttribI4ivEXT: TglVertexAttribI4ivEXT;
  glVertexAttribI1uivEXT: TglVertexAttribI1uivEXT;
  glVertexAttribI2uivEXT: TglVertexAttribI2uivEXT;
  glVertexAttribI3uivEXT: TglVertexAttribI3uivEXT;
  glVertexAttribI4uivEXT: TglVertexAttribI4uivEXT;
  glVertexAttribI4bvEXT: TglVertexAttribI4bvEXT;
  glVertexAttribI4svEXT: TglVertexAttribI4svEXT;
  glVertexAttribI4ubvEXT: TglVertexAttribI4ubvEXT;
  glVertexAttribI4usvEXT: TglVertexAttribI4usvEXT;
  glVertexAttribIPointerEXT: TglVertexAttribIPointerEXT;
  glGetVertexAttribIivEXT: TglGetVertexAttribIivEXT;
  glGetVertexAttribIuivEXT: TglGetVertexAttribIuivEXT;
  glUniform1uiEXT: TglUniform1uiEXT;
  glUniform2uiEXT: TglUniform2uiEXT;
  glUniform3uiEXT: TglUniform3uiEXT;
  glUniform4uiEXT: TglUniform4uiEXT;
  glUniform1uivEXT: TglUniform1uivEXT;
  glUniform2uivEXT: TglUniform2uivEXT;
  glUniform3uivEXT: TglUniform3uivEXT;
  glUniform4uivEXT: TglUniform4uivEXT;
  glGetUniformuivEXT: TglGetUniformuivEXT;
  glBindFragDataLocationEXT: TglBindFragDataLocationEXT;
  glGetFragDataLocationEXT: TglGetFragDataLocationEXT;

  // GL_EXT_texture_array
  glFramebufferTextureLayerEXT: TglFramebufferTextureLayerEXT;

  // GL_EXT_texture_buffer_object
  glTexBufferEXT: TglTexBufferEXT;

  // GL_EXT_texture_integer
  glClearColorIiEXT: TglClearColorIiEXT;
  glClearColorIuiEXT: TglClearColorIuiEXT;
  glTexParameterIivEXT: TglTexParameterIivEXT;
  glTexParameterIuivEXT: TglTexParameterIuivEXT;
  glGetTexParameterIivEXT: TglGetTexParameterIivEXT;
  glGetTexParameterIiuvEXT: TglGetTexParameterIiuvEXT;

  // GL_EXT_transform_feedback
  glBeginTransformFeedbackEXT: TglBeginTransformFeedbackEXT;
  glEndTransformFeedbackEXT: TglEndTransformFeedbackEXT;
  glBindBufferRangeEXT: TglBindBufferRangeEXT;
  glBindBufferOffsetEXT: TglBindBufferOffsetEXT;
  glBindBufferBaseEXT: TglBindBufferBaseEXT;
  glTransformFeedbackVaryingsEXT: TglTransformFeedbackVaryingsEXT;
  glGetTransformFeedbackVaryingEXT: TglGetTransformFeedbackVaryingEXT;

  // GL_EXT_direct_state_access
  glClientAttribDefaultEXT: TglClientAttribDefaultEXT;
  glPushClientAttribDefaultEXT: TglPushClientAttribDefaultEXT;
  glMatrixLoadfEXT: TglMatrixLoadfEXT;
  glMatrixLoaddEXT: TglMatrixLoaddEXT;
  glMatrixMultfEXT: TglMatrixMultfEXT;
  glMatrixMultdEXT: TglMatrixMultdEXT;
  glMatrixLoadIdentityEXT: TglMatrixLoadIdentityEXT;
  glMatrixRotatefEXT: TglMatrixRotatefEXT;
  glMatrixRotatedEXT: TglMatrixRotatedEXT;
  glMatrixScalefEXT: TglMatrixScalefEXT;
  glMatrixScaledEXT: TglMatrixScaledEXT;
  glMatrixTranslatefEXT: TglMatrixTranslatefEXT;
  glMatrixTranslatedEXT: TglMatrixTranslatedEXT;
  glMatrixFrustumEXT: TglMatrixFrustumEXT;
  glMatrixOrthoEXT: TglMatrixOrthoEXT;
  glMatrixPopEXT: TglMatrixPopEXT;
  glMatrixPushEXT: TglMatrixPushEXT;
  glMatrixLoadTransposefEXT: TglMatrixLoadTransposefEXT;
  glMatrixLoadTransposedEXT: TglMatrixLoadTransposedEXT;
  glMatrixMultTransposefEXT: TglMatrixMultTransposefEXT;
  glMatrixMultTransposedEXT: TglMatrixMultTransposedEXT;
  glTextureParameterfEXT: TglTextureParameterfEXT;
  glTextureParameterfvEXT: TglTextureParameterfvEXT;
  glTextureParameteriEXT: TglTextureParameteriEXT;
  glTextureParameterivEXT: TglTextureParameterivEXT;
  glTextureImage1DEXT: TglTextureImage1DEXT;
  glTextureImage2DEXT: TglTextureImage2DEXT;
  glTextureSubImage1DEXT: TglTextureSubImage1DEXT;
  glTextureSubImage2DEXT: TglTextureSubImage2DEXT;
  glCopyTextureImage1DEXT: TglCopyTextureImage1DEXT;
  glCopyTextureImage2DEXT: TglCopyTextureImage2DEXT;
  glCopyTextureSubImage1DEXT: TglCopyTextureSubImage1DEXT;
  glCopyTextureSubImage2DEXT: TglCopyTextureSubImage2DEXT;
  glGetTextureImageEXT: TglGetTextureImageEXT;
  glGetTextureParameterfvEXT: TglGetTextureParameterfvEXT;
  glGetTextureParameterivEXT: TglGetTextureParameterivEXT;
  glGetTextureLevelParameterfvEXT: TglGetTextureLevelParameterfvEXT;
  glGetTextureLevelParameterivEXT: TglGetTextureLevelParameterivEXT;
  glTextureImage3DEXT: TglTextureImage3DEXT;
  glTextureSubImage3DEXT: TglTextureSubImage3DEXT;
  glCopyTextureSubImage3DEXT: TglCopyTextureSubImage3DEXT;
  glMultiTexParameterfEXT: TglMultiTexParameterfEXT;
  glMultiTexParameterfvEXT: TglMultiTexParameterfvEXT;
  glMultiTexParameteriEXT: TglMultiTexParameteriEXT;
  glMultiTexParameterivEXT: TglMultiTexParameterivEXT;
  glMultiTexImage1DEXT: TglMultiTexImage1DEXT;
  glMultiTexImage2DEXT: TglMultiTexImage2DEXT;
  glMultiTexSubImage1DEXT: TglMultiTexSubImage1DEXT;
  glMultiTexSubImage2DEXT: TglMultiTexSubImage2DEXT;
  glCopyMultiTexImage1DEXT: TglCopyMultiTexImage1DEXT;
  glCopyMultiTexImage2DEXT: TglCopyMultiTexImage2DEXT;
  glCopyMultiTexSubImage1DEXT: TglCopyMultiTexSubImage1DEXT;
  glCopyMultiTexSubImage2DEXT: TglCopyMultiTexSubImage2DEXT;
  glGetMultiTexImageEXT: TglGetMultiTexImageEXT;
  glGetMultiTexParameterfvEXT: TglGetMultiTexParameterfvEXT;
  glGetMultiTexParameterivEXT: TglGetMultiTexParameterivEXT;
  glGetMultiTexLevelParameterfvEXT: TglGetMultiTexLevelParameterfvEXT;
  glGetMultiTexLevelParameterivEXT: TglGetMultiTexLevelParameterivEXT;
  glMultiTexImage3DEXT: TglMultiTexImage3DEXT;
  glMultiTexSubImage3DEXT: TglMultiTexSubImage3DEXT;
  glCopyMultiTexSubImage3DEXT: TglCopyMultiTexSubImage3DEXT;
  glBindMultiTextureEXT: TglBindMultiTextureEXT;
  glEnableClientStateIndexedEXT: TglEnableClientStateIndexedEXT;
  glDisableClientStateIndexedEXT: TglDisableClientStateIndexedEXT;
  glMultiTexCoordPointerEXT: TglMultiTexCoordPointerEXT;
  glMultiTexEnvfEXT: TglMultiTexEnvfEXT;
  glMultiTexEnvfvEXT: TglMultiTexEnvfvEXT;
  glMultiTexEnviEXT: TglMultiTexEnviEXT;
  glMultiTexEnvivEXT: TglMultiTexEnvivEXT;
  glMultiTexGendEXT: TglMultiTexGendEXT;
  glMultiTexGendvEXT: TglMultiTexGendvEXT;
  glMultiTexGenfEXT: TglMultiTexGenfEXT;
  glMultiTexGenfvEXT: TglMultiTexGenfvEXT;
  glMultiTexGeniEXT: TglMultiTexGeniEXT;
  glMultiTexGenivEXT: TglMultiTexGenivEXT;
  glGetMultiTexEnvfvEXT: TglGetMultiTexEnvfvEXT;
  glGetMultiTexEnvivEXT: TglGetMultiTexEnvivEXT;
  glGetMultiTexGendvEXT: TglGetMultiTexGendvEXT;
  glGetMultiTexGenfvEXT: TglGetMultiTexGenfvEXT;
  glGetMultiTexGenivEXT: TglGetMultiTexGenivEXT;
  glGetFloatIndexedvEXT: TglGetFloatIndexedvEXT;
  glGetDoubleIndexedvEXT: TglGetDoubleIndexedvEXT;
  glGetPointerIndexedvEXT: TglGetPointerIndexedvEXT;
  glCompressedTextureImage3DEXT: TglCompressedTextureImage3DEXT;
  glCompressedTextureImage2DEXT: TglCompressedTextureImage2DEXT;
  glCompressedTextureImage1DEXT: TglCompressedTextureImage1DEXT;
  glCompressedTextureSubImage3DEXT: TglCompressedTextureSubImage3DEXT;
  glCompressedTextureSubImage2DEXT: TglCompressedTextureSubImage2DEXT;
  glCompressedTextureSubImage1DEXT: TglCompressedTextureSubImage1DEXT;
  glGetCompressedTextureImageEXT: TglGetCompressedTextureImageEXT;
  glCompressedMultiTexImage3DEXT: TglCompressedMultiTexImage3DEXT;
  glCompressedMultiTexImage2DEXT: TglCompressedMultiTexImage2DEXT;
  glCompressedMultiTexImage1DEXT: TglCompressedMultiTexImage1DEXT;
  glCompressedMultiTexSubImage3DEXT: TglCompressedMultiTexSubImage3DEXT;
  glCompressedMultiTexSubImage2DEXT: TglCompressedMultiTexSubImage2DEXT;
  glCompressedMultiTexSubImage1DEXT: TglCompressedMultiTexSubImage1DEXT;
  glGetCompressedMultiTexImageEXT: TglGetCompressedMultiTexImageEXT;
  glNamedProgramStringEXT: TglNamedProgramStringEXT;
  glNamedProgramLocalParameter4dEXT: TglNamedProgramLocalParameter4dEXT;
  glNamedProgramLocalParameter4dvEXT: TglNamedProgramLocalParameter4dvEXT;
  glNamedProgramLocalParameter4fEXT: TglNamedProgramLocalParameter4fEXT;
  glNamedProgramLocalParameter4fvEXT: TglNamedProgramLocalParameter4fvEXT;
  glGetNamedProgramLocalParameterdvEXT: TglGetNamedProgramLocalParameterdvEXT;
  glGetNamedProgramLocalParameterfvEXT: TglGetNamedProgramLocalParameterfvEXT;
  glGetNamedProgramivEXT: TglGetNamedProgramivEXT;
  glGetNamedProgramStringEXT: TglGetNamedProgramStringEXT;
  glNamedProgramLocalParameters4fvEXT: TglNamedProgramLocalParameters4fvEXT;
  glNamedProgramLocalParameterI4iEXT: TglNamedProgramLocalParameterI4iEXT;
  glNamedProgramLocalParameterI4ivEXT: TglNamedProgramLocalParameterI4ivEXT;
  glNamedProgramLocalParametersI4ivEXT: TglNamedProgramLocalParametersI4ivEXT;
  glNamedProgramLocalParameterI4uiEXT: TglNamedProgramLocalParameterI4uiEXT;
  glNamedProgramLocalParameterI4uivEXT: TglNamedProgramLocalParameterI4uivEXT;
  glNamedProgramLocalParametersI4uivEXT: TglNamedProgramLocalParametersI4uivEXT;
  glGetNamedProgramLocalParameterIivEXT: TglGetNamedProgramLocalParameterIivEXT;
  glGetNamedProgramLocalParameterIuivEXT: TglGetNamedProgramLocalParameterIuivEXT;
  glTextureParameterIivEXT: TglTextureParameterIivEXT;
  glTextureParameterIuivEXT: TglTextureParameterIuivEXT;
  glGetTextureParameterIivEXT: TglGetTextureParameterIivEXT;
  glGetTextureParameterIuivEXT: TglGetTextureParameterIuivEXT;
  glMultiTexParameterIivEXT: TglMultiTexParameterIivEXT;
  glMultiTexParameterIuivEXT: TglMultiTexParameterIuivEXT;
  glGetMultiTexParameterIivEXT: TglGetMultiTexParameterIivEXT;
  glGetMultiTexParameterIuivEXT: TglGetMultiTexParameterIuivEXT;
  glProgramUniform1fEXT: TglProgramUniform1fEXT;
  glProgramUniform2fEXT: TglProgramUniform2fEXT;
  glProgramUniform3fEXT: TglProgramUniform3fEXT;
  glProgramUniform4fEXT: TglProgramUniform4fEXT;
  glProgramUniform1iEXT: TglProgramUniform1iEXT;
  glProgramUniform2iEXT: TglProgramUniform2iEXT;
  glProgramUniform3iEXT: TglProgramUniform3iEXT;
  glProgramUniform4iEXT: TglProgramUniform4iEXT;
  glProgramUniform1fvEXT: TglProgramUniform1fvEXT;
  glProgramUniform2fvEXT: TglProgramUniform2fvEXT;
  glProgramUniform3fvEXT: TglProgramUniform3fvEXT;
  glProgramUniform4fvEXT: TglProgramUniform4fvEXT;
  glProgramUniform1ivEXT: TglProgramUniform1ivEXT;
  glProgramUniform2ivEXT: TglProgramUniform2ivEXT;
  glProgramUniform3ivEXT: TglProgramUniform3ivEXT;
  glProgramUniform4ivEXT: TglProgramUniform4ivEXT;
  glProgramUniformMatrix2fvEXT: TglProgramUniformMatrix2fvEXT;
  glProgramUniformMatrix3fvEXT: TglProgramUniformMatrix3fvEXT;
  glProgramUniformMatrix4fvEXT: TglProgramUniformMatrix4fvEXT;
  glProgramUniformMatrix2x3fvEXT: TglProgramUniformMatrix2x3fvEXT;
  glProgramUniformMatrix3x2fvEXT: TglProgramUniformMatrix3x2fvEXT;
  glProgramUniformMatrix2x4fvEXT: TglProgramUniformMatrix2x4fvEXT;
  glProgramUniformMatrix4x2fvEXT: TglProgramUniformMatrix4x2fvEXT;
  glProgramUniformMatrix3x4fvEXT: TglProgramUniformMatrix3x4fvEXT;
  glProgramUniformMatrix4x3fvEXT: TglProgramUniformMatrix4x3fvEXT;
  glProgramUniform1uiEXT: TglProgramUniform1uiEXT;
  glProgramUniform2uiEXT: TglProgramUniform2uiEXT;
  glProgramUniform3uiEXT: TglProgramUniform3uiEXT;
  glProgramUniform4uiEXT: TglProgramUniform4uiEXT;
  glProgramUniform1uivEXT: TglProgramUniform1uivEXT;
  glProgramUniform2uivEXT: TglProgramUniform2uivEXT;
  glProgramUniform3uivEXT: TglProgramUniform3uivEXT;
  glProgramUniform4uivEXT: TglProgramUniform4uivEXT;
  glNamedBufferDataEXT: TglNamedBufferDataEXT;
  glNamedBufferSubDataEXT: TglNamedBufferSubDataEXT;
  glMapNamedBufferEXT: TglMapNamedBufferEXT;
  glUnmapNamedBufferEXT: TglUnmapNamedBufferEXT;
  glMapNamedBufferRangeEXT: TglMapNamedBufferRangeEXT;
  glFlushMappedNamedBufferRangeEXT: TglFlushMappedNamedBufferRangeEXT;
  glNamedCopyBufferSubDataEXT: TglNamedCopyBufferSubDataEXT;
  glGetNamedBufferParameterivEXT: TglGetNamedBufferParameterivEXT;
  glGetNamedBufferPointervEXT: TglGetNamedBufferPointervEXT;
  glGetNamedBufferSubDataEXT: TglGetNamedBufferSubDataEXT;
  glTextureBufferEXT: TglTextureBufferEXT;
  glMultiTexBufferEXT: TglMultiTexBufferEXT;
  glNamedRenderbufferStorageEXT: TglNamedRenderbufferStorageEXT;
  glGetNamedRenderbufferParameterivEXT: TglGetNamedRenderbufferParameterivEXT;
  glCheckNamedFramebufferStatusEXT: TglCheckNamedFramebufferStatusEXT;
  glNamedFramebufferTexture1DEXT: TglNamedFramebufferTexture1DEXT;
  glNamedFramebufferTexture2DEXT: TglNamedFramebufferTexture2DEXT;
  glNamedFramebufferTexture3DEXT: TglNamedFramebufferTexture3DEXT;
  glNamedFramebufferRenderbufferEXT: TglNamedFramebufferRenderbufferEXT;
  glGetNamedFramebufferAttachmentParameterivEXT: TglGetNamedFramebufferAttachmentParameterivEXT;
  glGenerateTextureMipmapEXT: TglGenerateTextureMipmapEXT;
  glGenerateMultiTexMipmapEXT: TglGenerateMultiTexMipmapEXT;
  glFramebufferDrawBufferEXT: TglFramebufferDrawBufferEXT;
  glFramebufferDrawBuffersEXT: TglFramebufferDrawBuffersEXT;
  glFramebufferReadBufferEXT: TglFramebufferReadBufferEXT;
  glGetFramebufferParameterivEXT: TglGetFramebufferParameterivEXT;
  glNamedRenderbufferStorageMultisampleEXT: TglNamedRenderbufferStorageMultisampleEXT;
  glNamedRenderbufferStorageMultisampleCoverageEXT: TglNamedRenderbufferStorageMultisampleCoverageEXT;
  glNamedFramebufferTextureEXT: TglNamedFramebufferTextureEXT;
  glNamedFramebufferTextureLayerEXT: TglNamedFramebufferTextureLayerEXT;
  glNamedFramebufferTextureFaceEXT: TglNamedFramebufferTextureFaceEXT;
  glTextureRenderbufferEXT: TglTextureRenderbufferEXT;
  glMultiTexRenderbufferEXT: TglMultiTexRenderbufferEXT;
  glProgramUniform1dEXT: TglProgramUniform1dEXT;
  glProgramUniform2dEXT: TglProgramUniform2dEXT;
  glProgramUniform3dEXT: TglProgramUniform3dEXT;
  glProgramUniform4dEXT: TglProgramUniform4dEXT;
  glProgramUniform1dvEXT: TglProgramUniform1dvEXT;
  glProgramUniform2dvEXT: TglProgramUniform2dvEXT;
  glProgramUniform3dvEXT: TglProgramUniform3dvEXT;
  glProgramUniform4dvEXT: TglProgramUniform4dvEXT;
  glProgramUniformMatrix2dvEXT: TglProgramUniformMatrix2dvEXT;
  glProgramUniformMatrix3dvEXT: TglProgramUniformMatrix3dvEXT;
  glProgramUniformMatrix4dvEXT: TglProgramUniformMatrix4dvEXT;
  glProgramUniformMatrix2x3dvEXT: TglProgramUniformMatrix2x3dvEXT;
  glProgramUniformMatrix2x4dvEXT: TglProgramUniformMatrix2x4dvEXT;
  glProgramUniformMatrix3x2dvEXT: TglProgramUniformMatrix3x2dvEXT;
  glProgramUniformMatrix3x4dvEXT: TglProgramUniformMatrix3x4dvEXT;
  glProgramUniformMatrix4x2dvEXT: TglProgramUniformMatrix4x2dvEXT;
  glProgramUniformMatrix4x3dvEXT: TglProgramUniformMatrix4x3dvEXT;

  // GL_EXT_separate_shader_objects
  glUseShaderProgramEXT: TglUseShaderProgramEXT;
  glActiveProgramEXT: TglActiveProgramEXT;
  glCreateShaderProgramEXT: TglCreateShaderProgramEXT;

  // GL_EXT_shader_image_load_store
  glBindImageTextureEXT: TglBindImageTextureEXT;
  glMemoryBarrierEXT: TglMemoryBarrierEXT;

  // GL_EXT_vertex_attrib_64bit
  glVertexAttribL1dEXT: TglVertexAttribL1dEXT;
  glVertexAttribL2dEXT: TglVertexAttribL2dEXT;
  glVertexAttribL3dEXT: TglVertexAttribL3dEXT;
  glVertexAttribL4dEXT: TglVertexAttribL4dEXT;
  glVertexAttribL1dvEXT: TglVertexAttribL1dvEXT;
  glVertexAttribL2dvEXT: TglVertexAttribL2dvEXT;
  glVertexAttribL3dvEXT: TglVertexAttribL3dvEXT;
  glVertexAttribL4dvEXT: TglVertexAttribL4dvEXT;
  glVertexAttribLPointerEXT: TglVertexAttribLPointerEXT;
  glGetVertexAttribLdvEXT: TglGetVertexAttribLdvEXT;
  glVertexArrayVertexAttribLOffsetEXT: TglVertexArrayVertexAttribLOffsetEXT;

  // GL_HP_image_transform
  glImageTransformParameteriHP: TglImageTransformParameteriHP;
  glImageTransformParameterfHP: TglImageTransformParameterfHP;
  glImageTransformParameterivHP: TglImageTransformParameterivHP;
  glImageTransformParameterfvHP: TglImageTransformParameterfvHP;
  glGetImageTransformParameterivHP: TglGetImageTransformParameterivHP;
  glGetImageTransformParameterfvHP: TglGetImageTransformParameterfvHP;

  // GL_EXT_depth_bounds_test
  glDepthBoundsEXT: TglDepthBoundsEXT;

  // GL_EXT_blend_equation_separate
  glBlendEquationSeparateEXT: TglBlendEquationSeparateEXT;

  // GL_IBM_multimode_draw_arrays
  glMultiModeDrawArraysIBM: TglMultiModeDrawArraysIBM;
  glMultiModeDrawElementsIBM: TglMultiModeDrawElementsIBM;

  // GL_IBM_vertex_array_lists
  glColorPointerListIBM: TglColorPointerListIBM;
  glSecondaryColorPointerListIBM: TglSecondaryColorPointerListIBM;
  glEdgeFlagPointerListIBM: TglEdgeFlagPointerListIBM;
  glFogCoordPointerListIBM: TglFogCoordPointerListIBM;
  glIndexPointerListIBM: TglIndexPointerListIBM;
  glNormalPointerListIBM: TglNormalPointerListIBM;
  glTexCoordPointerListIBM: TglTexCoordPointerListIBM;
  glVertexPointerListIBM: TglVertexPointerListIBM;

  // GL_INGR_blend_func_separate
  glBlendFuncSeparateINGR: TglBlendFuncSeparateINGR;

  // GL_INTEL_framebuffer_CMAA
  glApplyFramebufferAttachmentCMAAINTEL : TglApplyFramebufferAttachmentCMAAINTEL;

  // GL_INTEL_parallel_arrays
  glVertexPointervINTEL: TglVertexPointervINTEL;
  glNormalPointervINTEL: TglNormalPointervINTEL;
  glColorPointervINTEL: TglColorPointervINTEL;
  glTexCoordPointervINTEL: TglTexCoordPointervINTEL;

  // GL_MESA_resize_buffers
  glResizeBuffersMESA: TglResizeBuffersMESA;

  // GL_MESA_window_pos
  glWindowPos2dMESA: TglWindowPos2dMESA;
  glWindowPos2dvMESA: TglWindowPos2dvMESA;
  glWindowPos2fMESA: TglWindowPos2fMESA;
  glWindowPos2fvMESA: TglWindowPos2fvMESA;
  glWindowPos2iMESA: TglWindowPos2iMESA;
  glWindowPos2ivMESA: TglWindowPos2ivMESA;
  glWindowPos2sMESA: TglWindowPos2sMESA;
  glWindowPos2svMESA: TglWindowPos2svMESA;
  glWindowPos3dMESA: TglWindowPos3dMESA;
  glWindowPos3dvMESA: TglWindowPos3dvMESA;
  glWindowPos3fMESA: TglWindowPos3fMESA;
  glWindowPos3fvMESA: TglWindowPos3fvMESA;
  glWindowPos3iMESA: TglWindowPos3iMESA;
  glWindowPos3ivMESA: TglWindowPos3ivMESA;
  glWindowPos3sMESA: TglWindowPos3sMESA;
  glWindowPos3svMESA: TglWindowPos3svMESA;
  glWindowPos4dMESA: TglWindowPos4dMESA;
  glWindowPos4dvMESA: TglWindowPos4dvMESA;
  glWindowPos4fMESA: TglWindowPos4fMESA;
  glWindowPos4fvMESA: TglWindowPos4fvMESA;
  glWindowPos4iMESA: TglWindowPos4iMESA;
  glWindowPos4ivMESA: TglWindowPos4ivMESA;
  glWindowPos4sMESA: TglWindowPos4sMESA;
  glWindowPos4svMESA: TglWindowPos4svMESA;

  // GL_NV_evaluators
  glMapControlPointsNV: TglMapControlPointsNV;
  glMapParameterivNV: TglMapParameterivNV;
  glMapParameterfvNV: TglMapParameterfvNV;
  glGetMapControlPointsNV: TglGetMapControlPointsNV;
  glGetMapParameterivNV: TglGetMapParameterivNV;
  glGetMapParameterfvNV: TglGetMapParameterfvNV;
  glGetMapAttribParameterivNV: TglGetMapAttribParameterivNV;
  glGetMapAttribParameterfvNV: TglGetMapAttribParameterfvNV;
  glEvalMapsNV: TglEvalMapsNV;

  // GL_NV_fence
  glDeleteFencesNV: TglDeleteFencesNV;
  glGenFencesNV: TglGenFencesNV;
  glIsFenceNV: TglIsFenceNV;
  glTestFenceNV: TglTestFenceNV;
  glGetFenceivNV: TglGetFenceivNV;
  glFinishFenceNV: TglFinishFenceNV;
  glSetFenceNV: TglSetFenceNV;

  // GL_NV_fragment_program
  glProgramNamedParameter4fNV: TglProgramNamedParameter4fNV;
  glProgramNamedParameter4dNV: TglProgramNamedParameter4dNV;
  glProgramNamedParameter4fvNV: TglProgramNamedParameter4fvNV;
  glProgramNamedParameter4dvNV: TglProgramNamedParameter4dvNV;
  glGetProgramNamedParameterfvNV: TglGetProgramNamedParameterfvNV;
  glGetProgramNamedParameterdvNV: TglGetProgramNamedParameterdvNV;

  // GL_NV_half_float
  glVertex2hNV: TglVertex2hNV;
  glVertex2hvNV: TglVertex2hvNV;
  glVertex3hNV: TglVertex3hNV;
  glVertex3hvNV: TglVertex3hvNV;
  glVertex4hNV: TglVertex4hNV;
  glVertex4hvNV: TglVertex4hvNV;
  glNormal3hNV: TglNormal3hNV;
  glNormal3hvNV: TglNormal3hvNV;
  glColor3hNV: TglColor3hNV;
  glColor3hvNV: TglColor3hvNV;
  glColor4hNV: TglColor4hNV;
  glColor4hvNV: TglColor4hvNV;
  glTexCoord1hNV: TglTexCoord1hNV;
  glTexCoord1hvNV: TglTexCoord1hvNV;
  glTexCoord2hNV: TglTexCoord2hNV;
  glTexCoord2hvNV: TglTexCoord2hvNV;
  glTexCoord3hNV: TglTexCoord3hNV;
  glTexCoord3hvNV: TglTexCoord3hvNV;
  glTexCoord4hNV: TglTexCoord4hNV;
  glTexCoord4hvNV: TglTexCoord4hvNV;
  glMultiTexCoord1hNV: TglMultiTexCoord1hNV;
  glMultiTexCoord1hvNV: TglMultiTexCoord1hvNV;
  glMultiTexCoord2hNV: TglMultiTexCoord2hNV;
  glMultiTexCoord2hvNV: TglMultiTexCoord2hvNV;
  glMultiTexCoord3hNV: TglMultiTexCoord3hNV;
  glMultiTexCoord3hvNV: TglMultiTexCoord3hvNV;
  glMultiTexCoord4hNV: TglMultiTexCoord4hNV;
  glMultiTexCoord4hvNV: TglMultiTexCoord4hvNV;
  glFogCoordhNV: TglFogCoordhNV;
  glFogCoordhvNV: TglFogCoordhvNV;
  glSecondaryColor3hNV: TglSecondaryColor3hNV;
  glSecondaryColor3hvNV: TglSecondaryColor3hvNV;
  glVertexWeighthNV: TglVertexWeighthNV;
  glVertexWeighthvNV: TglVertexWeighthvNV;
  glVertexAttrib1hNV: TglVertexAttrib1hNV;
  glVertexAttrib1hvNV: TglVertexAttrib1hvNV;
  glVertexAttrib2hNV: TglVertexAttrib2hNV;
  glVertexAttrib2hvNV: TglVertexAttrib2hvNV;
  glVertexAttrib3hNV: TglVertexAttrib3hNV;
  glVertexAttrib3hvNV: TglVertexAttrib3hvNV;
  glVertexAttrib4hNV: TglVertexAttrib4hNV;
  glVertexAttrib4hvNV: TglVertexAttrib4hvNV;
  glVertexAttribs1hvNV: TglVertexAttribs1hvNV;
  glVertexAttribs2hvNV: TglVertexAttribs2hvNV;
  glVertexAttribs3hvNV: TglVertexAttribs3hvNV;
  glVertexAttribs4hvNV: TglVertexAttribs4hvNV;

  // GL_NV_occlusion_query
  glGenOcclusionQueriesNV: TglGenOcclusionQueriesNV;
  glDeleteOcclusionQueriesNV: TglDeleteOcclusionQueriesNV;
  glIsOcclusionQueryNV: TglIsOcclusionQueryNV;
  glBeginOcclusionQueryNV: TglBeginOcclusionQueryNV;
  glEndOcclusionQueryNV: TglEndOcclusionQueryNV;
  glGetOcclusionQueryivNV: TglGetOcclusionQueryivNV;
  glGetOcclusionQueryuivNV: TglGetOcclusionQueryuivNV;

  // GL_NV_pixel_data_range
  glPixelDataRangeNV: TglPixelDataRangeNV;
  glFlushPixelDataRangeNV: TglFlushPixelDataRangeNV;

  // GL_NV_point_sprite
  glPointParameteriNV: TglPointParameteriNV;
  glPointParameterivNV: TglPointParameterivNV;

  // GL_NV_primitive_restart
  glPrimitiveRestartNV: TglPrimitiveRestartNV;
  glPrimitiveRestartIndexNV: TglPrimitiveRestartIndexNV;

  // GL_NV_register_combiners
  glCombinerParameterfvNV: TglCombinerParameterfvNV;
  glCombinerParameterfNV: TglCombinerParameterfNV;
  glCombinerParameterivNV: TglCombinerParameterivNV;
  glCombinerParameteriNV: TglCombinerParameteriNV;
  glCombinerInputNV: TglCombinerInputNV;
  glCombinerOutputNV: TglCombinerOutputNV;
  glFinalCombinerInputNV: TglFinalCombinerInputNV;
  glGetCombinerInputParameterfvNV: TglGetCombinerInputParameterfvNV;
  glGetCombinerInputParameterivNV: TglGetCombinerInputParameterivNV;
  glGetCombinerOutputParameterfvNV: TglGetCombinerOutputParameterfvNV;
  glGetCombinerOutputParameterivNV: TglGetCombinerOutputParameterivNV;
  glGetFinalCombinerInputParameterfvNV: TglGetFinalCombinerInputParameterfvNV;
  glGetFinalCombinerInputParameterivNV: TglGetFinalCombinerInputParameterivNV;

  // GL_NV_register_combiners2
  glCombinerStageParameterfvNV: TglCombinerStageParameterfvNV;
  glGetCombinerStageParameterfvNV: TglGetCombinerStageParameterfvNV;

  // GL_NV_vertex_array_range
  glFlushVertexArrayRangeNV: TglFlushVertexArrayRangeNV;
  glVertexArrayRangeNV: TglVertexArrayRangeNV;

  // GL_NV_vertex_program
  glAreProgramsResidentNV: TglAreProgramsResidentNV;
  glBindProgramNV: TglBindProgramNV;
  glDeleteProgramsNV: TglDeleteProgramsNV;
  glExecuteProgramNV: TglExecuteProgramNV;
  glGenProgramsNV: TglGenProgramsNV;
  glGetProgramParameterdvNV: TglGetProgramParameterdvNV;
  glGetProgramParameterfvNV: TglGetProgramParameterfvNV;
  glGetProgramivNV: TglGetProgramivNV;
  glGetProgramStringNV: TglGetProgramStringNV;
  glGetTrackMatrixivNV: TglGetTrackMatrixivNV;
  glGetVertexAttribdvNV: TglGetVertexAttribdvNV;
  glGetVertexAttribfvNV: TglGetVertexAttribfvNV;
  glGetVertexAttribivNV: TglGetVertexAttribivNV;
  glGetVertexAttribPointervNV: TglGetVertexAttribPointervNV;
  glIsProgramNV: TglIsProgramNV;
  glLoadProgramNV: TglLoadProgramNV;
  glProgramParameter4dNV: TglProgramParameter4dNV;
  glProgramParameter4dvNV: TglProgramParameter4dvNV;
  glProgramParameter4fNV: TglProgramParameter4fNV;
  glProgramParameter4fvNV: TglProgramParameter4fvNV;
  glProgramParameters4dvNV: TglProgramParameters4dvNV;
  glProgramParameters4fvNV: TglProgramParameters4fvNV;
  glRequestResidentProgramsNV: TglRequestResidentProgramsNV;
  glTrackMatrixNV: TglTrackMatrixNV;
  glVertexAttribPointerNV: TglVertexAttribPointerNV;
  glVertexAttrib1dNV: TglVertexAttrib1dNV;
  glVertexAttrib1dvNV: TglVertexAttrib1dvNV;
  glVertexAttrib1fNV: TglVertexAttrib1fNV;
  glVertexAttrib1fvNV: TglVertexAttrib1fvNV;
  glVertexAttrib1sNV: TglVertexAttrib1sNV;
  glVertexAttrib1svNV: TglVertexAttrib1svNV;
  glVertexAttrib2dNV: TglVertexAttrib2dNV;
  glVertexAttrib2dvNV: TglVertexAttrib2dvNV;
  glVertexAttrib2fNV: TglVertexAttrib2fNV;
  glVertexAttrib2fvNV: TglVertexAttrib2fvNV;
  glVertexAttrib2sNV: TglVertexAttrib2sNV;
  glVertexAttrib2svNV: TglVertexAttrib2svNV;
  glVertexAttrib3dNV: TglVertexAttrib3dNV;
  glVertexAttrib3dvNV: TglVertexAttrib3dvNV;
  glVertexAttrib3fNV: TglVertexAttrib3fNV;
  glVertexAttrib3fvNV: TglVertexAttrib3fvNV;
  glVertexAttrib3sNV: TglVertexAttrib3sNV;
  glVertexAttrib3svNV: TglVertexAttrib3svNV;
  glVertexAttrib4dNV: TglVertexAttrib4dNV;
  glVertexAttrib4dvNV: TglVertexAttrib4dvNV;
  glVertexAttrib4fNV: TglVertexAttrib4fNV;
  glVertexAttrib4fvNV: TglVertexAttrib4fvNV;
  glVertexAttrib4sNV: TglVertexAttrib4sNV;
  glVertexAttrib4svNV: TglVertexAttrib4svNV;
  glVertexAttrib4ubNV: TglVertexAttrib4ubNV;
  glVertexAttrib4ubvNV: TglVertexAttrib4ubvNV;
  glVertexAttribs1dvNV: TglVertexAttribs1dvNV;
  glVertexAttribs1fvNV: TglVertexAttribs1fvNV;
  glVertexAttribs1svNV: TglVertexAttribs1svNV;
  glVertexAttribs2dvNV: TglVertexAttribs2dvNV;
  glVertexAttribs2fvNV: TglVertexAttribs2fvNV;
  glVertexAttribs2svNV: TglVertexAttribs2svNV;
  glVertexAttribs3dvNV: TglVertexAttribs3dvNV;
  glVertexAttribs3fvNV: TglVertexAttribs3fvNV;
  glVertexAttribs3svNV: TglVertexAttribs3svNV;
  glVertexAttribs4dvNV: TglVertexAttribs4dvNV;
  glVertexAttribs4fvNV: TglVertexAttribs4fvNV;
  glVertexAttribs4svNV: TglVertexAttribs4svNV;
  glVertexAttribs4ubvNV: TglVertexAttribs4ubvNV;

  // GL_NV_depth_buffer_float
  glDepthRangedNV: TglDepthRangedNV;
  glClearDepthdNV: TglClearDepthdNV;
  glDepthBoundsdNV: TglDepthBoundsdNV;

  // GL_NV_framebuffer_multisample_coverage
  glRenderbufferStorageMultsampleCoverageNV: TglRenderbufferStorageMultsampleCoverageNV;

  // GL_NV_geometry_program4
  glProgramVertexLimitNV: TglProgramVertexLimitNV;

  // GL_NV_gpu_program4
  glProgramLocalParameterI4iNV: TglProgramLocalParameterI4iNV;
  glProgramLocalParameterI4ivNV: TglProgramLocalParameterI4ivNV;
  glProgramLocalParametersI4ivNV: TglProgramLocalParametersI4ivNV;
  glProgramLocalParameterI4uiNV: TglProgramLocalParameterI4uiNV;
  glProgramLocalParameterI4uivNV: TglProgramLocalParameterI4uivNV;
  glProgramLocalParametersI4uivNV: TglProgramLocalParametersI4uivNV;
  glProgramEnvParameterI4iNV: TglProgramEnvParameterI4iNV;
  glProgramEnvParameterI4ivNV: TglProgramEnvParameterI4ivNV;
  glProgramEnvParametersI4ivNV: TglProgramEnvParametersI4ivNV;
  glProgramEnvParameterI4uiNV: TglProgramEnvParameterI4uiNV;
  glProgramEnvParameterI4uivNV: TglProgramEnvParameterI4uivNV;
  glProgramEnvParametersI4uivNV: TglProgramEnvParametersI4uivNV;
  glGetProgramLocalParameterIivNV: TglGetProgramLocalParameterIivNV;
  glGetProgramLocalParameterIuivNV: TglGetProgramLocalParameterIuivNV;
  glGetProgramEnvParameterIivNV: TglGetProgramEnvParameterIivNV;
  glGetProgramEnvParameterIuivNV: TglGetProgramEnvParameterIuivNV;

  // GL_NV_parameter_buffer_object
  glProgramBufferParametersfvNV: TglProgramBufferParametersfvNV;
  glProgramBufferParametersIivNV: TglProgramBufferParametersIivNV;
  glProgramBufferParametersIuivNV: TglProgramBufferParametersIuivNV;

  // GL_NV_transform_feedback
  glBeginTransformFeedbackNV: TglBeginTransformFeedbackNV;
  glEndTransformFeedbackNV: TglEndTransformFeedbackNV;
  glTransformFeedbackAttribsNV: TglTransformFeedbackAttribsNV;
  glBindBufferRangeNV: TglBindBufferRangeNV;
  glBindBufferOffsetNV: TglBindBufferOffsetNV;
  glBindBufferBaseNV: TglBindBufferBaseNV;
  glTransformFeedbackVaryingsNV: TglTransformFeedbackVaryingsNV;
  glActiveVaryingNV: TglActiveVaryingNV;
  glGetVaryingLocationNV: TglGetVaryingLocationNV;
  glGetActiveVaryingNV: TglGetActiveVaryingNV;
  glGetTransformFeedbackVaryingNV: TglGetTransformFeedbackVaryingNV;
  glTransformFeedbackStreamAttribsNV: TglTransformFeedbackStreamAttribsNV;

  // GL_NV_conditional_render
  glBeginConditionalRenderNV: TglBeginConditionalRenderNV;
  glEndConditionalRenderNV: TglEndConditionalRenderNV;

  // GL_NV_conservative_raster
  glSubpixelPrecisionBiasNV : TglSubpixelPrecisionBiasNV;

  // GL_NV_conservative_raster_dilate
  glConservativeRasterParameterfNV : TglConservativeRasterParameterfNV;

  // GL_NV_present_video
  glPresentFrameKeyedNV: TglPresentFrameKeyedNV;
  glPresentFrameDualFillNV: TglPresentFrameDualFillNV;
  glGetVideoivNV: TglGetVideoivNV;
  glGetVideouivNV: TglGetVideouivNV;
  glGetVideoi64vNV: TglGetVideoi64vNV;
  glGetVideoui64vNV: TglGetVideoui64vNV;
//  glVideoParameterivNV: TglVideoParameterivNV;

  // GL_NV_explicit_multisample
  glGetMultisamplefvNV: TglGetMultisamplefvNV;
  glSampleMaskIndexedNV: TglSampleMaskIndexedNV;
  glTexRenderbufferNV: TglTexRenderbufferNV;

  // GL_NV_transform_feedback2
  glBindTransformFeedbackNV: TglBindTransformFeedbackNV;
  glDeleteTransformFeedbacksNV: TglDeleteTransformFeedbacksNV;
  glGenTransformFeedbacksNV: TglGenTransformFeedbacksNV;
  glIsTransformFeedbackNV: TglIsTransformFeedbackNV;
  glPauseTransformFeedbackNV: TglPauseTransformFeedbackNV;
  glResumeTransformFeedbackNV: TglResumeTransformFeedbackNV;
  glDrawTransformFeedbackNV: TglDrawTransformFeedbackNV;

  // GL_NV_video_capture
  glBeginVideoCaptureNV: TglBeginVideoCaptureNV;
  glBindVideoCaptureStreamBufferNV: TglBindVideoCaptureStreamBufferNV;
  glBindVideoCaptureStreamTextureNV: TglBindVideoCaptureStreamTextureNV;
  glEndVideoCaptureNV: TglEndVideoCaptureNV;
  glGetVideoCaptureivNV: TglGetVideoCaptureivNV;
  glGetVideoCaptureStreamivNV: TglGetVideoCaptureStreamivNV;
  glGetVideoCaptureStreamfvNV: TglGetVideoCaptureStreamfvNV;
  glGetVideoCaptureStreamdvNV: TglGetVideoCaptureStreamdvNV;
  glVideoCaptureNV: TglVideoCaptureNV;
  glVideoCaptureStreamParameterivNV: TglVideoCaptureStreamParameterivNV;
  glVideoCaptureStreamParameterfvNV: TglVideoCaptureStreamParameterfvNV;
  glVideoCaptureStreamParameterdvNV: TglVideoCaptureStreamParameterdvNV;

  // GL_NV_copy_image
  glCopyImageSubDataNV: TglCopyImageSubDataNV;

  // GL_NV_shader_buffer_load
  glMakeBufferResidentNV: TglMakeBufferResidentNV;
  glMakeBufferNonResidentNV: TglMakeBufferNonResidentNV;
  glIsBufferResidentNV: TglIsBufferResidentNV;
  glMakeNamedBufferResidentNV: TglMakeNamedBufferResidentNV;
  glMakeNamedBufferNonResidentNV: TglMakeNamedBufferNonResidentNV;
  glIsNamedBufferResidentNV: TglIsNamedBufferResidentNV;
  glGetBufferParameterui64vNV: TglGetBufferParameterui64vNV;
  glGetNamedBufferParameterui64vNV: TglGetNamedBufferParameterui64vNV;
  glGetIntegerui64vNV: TglGetIntegerui64vNV;
  glUniformui64NV: TglUniformui64NV;
  glUniformui64vNV: TglUniformui64vNV;
  glGetUniformui64vNV: TglGetUniformui64vNV;
  glProgramUniformui64NV: TglProgramUniformui64NV;
  glProgramUniformui64vNV: TglProgramUniformui64vNV;

  // GL_NV_vertex_buffer_unified_memory
  glBufferAddressRangeNV: TglBufferAddressRangeNV;
  glVertexFormatNV: TglVertexFormatNV;
  glNormalFormatNV: TglNormalFormatNV;
  glColorFormatNV: TglColorFormatNV;
  glIndexFormatNV: TglIndexFormatNV;
  glTexCoordFormatNV: TglTexCoordFormatNV;
  glEdgeFlagFormatNV: TglEdgeFlagFormatNV;
  glSecondaryColorFormatNV: TglSecondaryColorFormatNV;
  glFogCoordFormatNV: TglFogCoordFormatNV;
  glVertexAttribFormatNV: TglVertexAttribFormatNV;
  glVertexAttribIFormatNV: TglVertexAttribIFormatNV;
  glGetIntegerui64i_vNV: TglGetIntegerui64i_vNV;

  // GL_NV_gpu_program5
  glProgramSubroutineParametersuivNV: TglProgramSubroutineParametersuivNV;
  glGetProgramSubroutineParameteruivNV: TglGetProgramSubroutineParameteruivNV;

  // GL_NV_gpu_shader5
  glUniform1i64NV: TglUniform1i64NV;
  glUniform2i64NV: TglUniform2i64NV;
  glUniform3i64NV: TglUniform3i64NV;
  glUniform4i64NV: TglUniform4i64NV;
  glUniform1i64vNV: TglUniform1i64vNV;
  glUniform2i64vNV: TglUniform2i64vNV;
  glUniform3i64vNV: TglUniform3i64vNV;
  glUniform4i64vNV: TglUniform4i64vNV;
  glUniform1ui64NV: TglUniform1ui64NV;
  glUniform2ui64NV: TglUniform2ui64NV;
  glUniform3ui64NV: TglUniform3ui64NV;
  glUniform4ui64NV: TglUniform4ui64NV;
  glUniform1ui64vNV: TglUniform1ui64vNV;
  glUniform2ui64vNV: TglUniform2ui64vNV;
  glUniform3ui64vNV: TglUniform3ui64vNV;
  glUniform4ui64vNV: TglUniform4ui64vNV;
  glGetUniformi64vNV: TglGetUniformi64vNV;
  glProgramUniform1i64NV: TglProgramUniform1i64NV;
  glProgramUniform2i64NV: TglProgramUniform2i64NV;
  glProgramUniform3i64NV: TglProgramUniform3i64NV;
  glProgramUniform4i64NV: TglProgramUniform4i64NV;
  glProgramUniform1i64vNV: TglProgramUniform1i64vNV;
  glProgramUniform2i64vNV: TglProgramUniform2i64vNV;
  glProgramUniform3i64vNV: TglProgramUniform3i64vNV;
  glProgramUniform4i64vNV: TglProgramUniform4i64vNV;
  glProgramUniform1ui64NV: TglProgramUniform1ui64NV;
  glProgramUniform2ui64NV: TglProgramUniform2ui64NV;
  glProgramUniform3ui64NV: TglProgramUniform3ui64NV;
  glProgramUniform4ui64NV: TglProgramUniform4ui64NV;
  glProgramUniform1ui64vNV: TglProgramUniform1ui64vNV;
  glProgramUniform2ui64vNV: TglProgramUniform2ui64vNV;
  glProgramUniform3ui64vNV: TglProgramUniform3ui64vNV;
  glProgramUniform4ui64vNV: TglProgramUniform4ui64vNV;

  // GL_NV_vertex_attrib_integer_64bit
  glVertexAttribL1i64NV: TglVertexAttribL1i64NV;
  glVertexAttribL2i64NV: TglVertexAttribL2i64NV;
  glVertexAttribL3i64NV: TglVertexAttribL3i64NV;
  glVertexAttribL4i64NV: TglVertexAttribL4i64NV;
  glVertexAttribL1i64vNV: TglVertexAttribL1i64vNV;
  glVertexAttribL2i64vNV: TglVertexAttribL2i64vNV;
  glVertexAttribL3i64vNV: TglVertexAttribL3i64vNV;
  glVertexAttribL4i64vNV: TglVertexAttribL4i64vNV;
  glVertexAttribL1ui64NV: TglVertexAttribL1ui64NV;
  glVertexAttribL2ui64NV: TglVertexAttribL2ui64NV;
  glVertexAttribL3ui64NV: TglVertexAttribL3ui64NV;
  glVertexAttribL4ui64NV: TglVertexAttribL4ui64NV;
  glVertexAttribL1ui64vNV: TglVertexAttribL1ui64vNV;
  glVertexAttribL2ui64vNV: TglVertexAttribL2ui64vNV;
  glVertexAttribL3ui64vNV: TglVertexAttribL3ui64vNV;
  glVertexAttribL4ui64vNV: TglVertexAttribL4ui64vNV;
  glGetVertexAttribLi64vNV: TglGetVertexAttribLi64vNV;
  glGetVertexAttribLui64vNV: TglGetVertexAttribLui64vNV;
  glVertexAttribLFormatNV: TglVertexAttribLFormatNV;

  // GL_NV_vdpau_interop
  glVDPAUInitNV: TglVDPAUInitNV;
  glVDPAUFiniNV: TglVDPAUFiniNV;
  glVDPAURegisterVideoSurfaceNV: TglVDPAURegisterVideoSurfaceNV;
  glVDPAURegisterOutputSurfaceNV: TglVDPAURegisterOutputSurfaceNV;
  glVDPAUIsSurfaceNV: TglVDPAUIsSurfaceNV;
  glVDPAUUnregisterSurfaceNV: TglVDPAUUnregisterSurfaceNV;
  glVDPAUGetSurfaceivNV: TglVDPAUGetSurfaceivNV;
  glVDPAUSurfaceAccessNV: TglVDPAUSurfaceAccessNV;
  glVDPAUMapSurfacesNV: TglVDPAUMapSurfacesNV;
  glVDPAUUnmapSurfacesNV: TglVDPAUUnmapSurfacesNV;

  // GL_NV_texture_barrier
  glTextureBarrierNV: TglTextureBarrierNV;

  // (4.3) GL_NV_path_rendering
  glGenPathsNV : TglGenPathsNV;
  glDeletePathsNV : TglDeletePathsNV;
  glIsPathNV : TglIsPathNV;
  glPathCommandsNV : TglPathCommandsNV;
  glPathCoordsNV : TglPathCoordsNV;
  glPathSubCommandsNV : TglPathSubCommandsNV;
  glPathSubCoordsNV : TglPathSubCoordsNV;
  glPathStringNV : TglPathStringNV;
  glPathGlyphsNV : TglPathGlyphsNV;
  glPathGlyphRangeNV : TglPathGlyphRangeNV;
  glWeightPathsNV : TglWeightPathsNV;
  glCopyPathNV : TglCopyPathNV;
  glInterpolatePathsNV : TglInterpolatePathsNV;
  glTransformPathNV : TglTransformPathNV;
  glPathParameterivNV : TglPathParameterivNV;
  glPathParameteriNV : TglPathParameteriNV;
  glPathParameterfvNV : TglPathParameterfvNV;
  glPathParameterfNV : TglPathParameterfNV;
  glPathDashArrayNV : TglPathDashArrayNV;
  glPathStencilFuncNV : TglPathStencilFuncNV;
  glPathStencilDepthOffsetNV : TglPathStencilDepthOffsetNV;
  glStencilFillPathNV : TglStencilFillPathNV;
  glStencilStrokePathNV : TglStencilStrokePathNV;
  glStencilFillPathInstancedNV : TglStencilFillPathInstancedNV;
  glStencilStrokePathInstancedNV : TglStencilStrokePathInstancedNV;
  glPathCoverDepthFuncNV : TglPathCoverDepthFuncNV;
  glPathColorGenNV : TglPathColorGenNV;
  glPathTexGenNV : TglPathTexGenNV;
  glPathFogGenNV : TglPathFogGenNV;
  glCoverFillPathNV : TglCoverFillPathNV;
  glCoverStrokePathNV : TglCoverStrokePathNV;
  glCoverFillPathInstancedNV : TglCoverFillPathInstancedNV;
  glCoverStrokePathInstancedNV : TglCoverStrokePathInstancedNV;
  glGetPathParameterivNV : TglGetPathParameterivNV;
  glGetPathParameterfvNV : TglGetPathParameterfvNV;
  glGetPathCommandsNV : TglGetPathCommandsNV;
  glGetPathCoordsNV : TglGetPathCoordsNV;
  glGetPathDashArrayNV : TglGetPathDashArrayNV;
  glGetPathMetricsNV : TglGetPathMetricsNV;
  glGetPathMetricRangeNV : TglGetPathMetricRangeNV;
  glGetPathSpacingNV : TglGetPathSpacingNV;
  glGetPathColorGenivNV : TglGetPathColorGenivNV;
  glGetPathColorGenfvNV : TglGetPathColorGenfvNV;
  glGetPathTexGenivNV : TglGetPathTexGenivNV;
  glGetPathTexGenfvNV : TglGetPathTexGenfvNV;
  glIsPointInFillPathNV : TglIsPointInFillPathNV;
  glIsPointInStrokePathNV : TglIsPointInStrokePathNV;
  glGetPathLengthNV : TglGetPathLengthNV;
  glPointAlongPathNV : TglPointAlongPathNV;

  // GL_AMD_pinned_memory

  // GL_AMD_stencil_operation_extended
  glStencilOpValueAMD : TglStencilOpValueAMD;

  // GL_AMD_vertex_shader_viewport_index

  // GL_AMD_vertex_shader_layer

  // GL_NV_bindless_texture
  glGetTextureHandleNV : TglGetTextureHandleNV;
  glGetTextureSamplerHandleNV : TglGetTextureSamplerHandleNV;
  glMakeTextureHandleResidentNV : TglMakeTextureHandleResidentNV;
  glMakeTextureHandleNonResidentNV : TglMakeTextureHandleNonResidentNV;
  glGetImageHandleNV : TglGetImageHandleNV;
  glMakeImageHandleResidentNV : TglMakeImageHandleResidentNV;
  glMakeImageHandleNonResidentNV : TglMakeImageHandleNonResidentNV;
  glUniformHandleui64NV : TglUniformHandleui64NV;
  glUniformHandleui64vNV : TglUniformHandleui64vNV;
  glProgramUniformHandleui64NV : TglProgramUniformHandleui64NV;
  glProgramUniformHandleui64vNV : TglProgramUniformHandleui64vNV;
  glIsTextureHandleResidentNV : TglIsTextureHandleResidentNV;
  glIsImageHandleResidentNV : TglIsImageHandleResidentNV;

  // GL_ARB_bindless_texture
  glGetTextureHandleARB : TglGetTextureHandleARB;
  glGetTextureSamplerHandleARB : TglGetTextureSamplerHandleARB;
  glMakeTextureHandleResidentARB : TglMakeTextureHandleResidentARB;
  glMakeTextureHandleNonResidentARB : TglMakeTextureHandleNonResidentARB;
  glGetImageHandleARB : TglGetImageHandleARB;
  glMakeImageHandleResidentARB : TglMakeImageHandleResidentARB;
  glMakeImageHandleNonResidentARB : TglMakeImageHandleNonResidentARB;
  glUniformHandleui64ARB : TglUniformHandleui64ARB;
  glUniformHandleui64vARB : TglUniformHandleui64vARB;
  glProgramUniformHandleui64ARB : TglProgramUniformHandleui64ARB;
  glProgramUniformHandleui64vARB : TglProgramUniformHandleui64vARB;
  glIsTextureHandleResidentARB : TglIsTextureHandleResidentARB;
  glIsImageHandleResidentARB : TglIsImageHandleResidentARB;
  glVertexAttribL1ui64ARB : TglVertexAttribL1ui64ARB;
  glVertexAttribL1ui64vARB : TglVertexAttribL1ui64vARB;
  glGetVertexAttribLui64vARB : TglGetVertexAttribLui64vARB;

  // GL_PGI_misc_hints
  glHintPGI: TglHintPGI;

  // GL_OVR_multiview
  glFramebufferTextureMultiviewOVR : TglFramebufferTextureMultiviewOVR;

  // GL_SGIS_detail_texture
  glDetailTexFuncSGIS: TglDetailTexFuncSGIS;
  glGetDetailTexFuncSGIS: TglGetDetailTexFuncSGIS;

  // GL_SGIS_fog_function
  glFogFuncSGIS: TglFogFuncSGIS;
  glGetFogFuncSGIS: TglGetFogFuncSGIS;

  // GL_SGIS_multisample
  glSampleMaskSGIS: TglSampleMaskSGIS;
  glSamplePatternSGIS: TglSamplePatternSGIS;

  // GL_SGIS_pixel_texture
  glPixelTexGenParameteriSGIS: TglPixelTexGenParameteriSGIS;
  glPixelTexGenParameterivSGIS: TglPixelTexGenParameterivSGIS;
  glPixelTexGenParameterfSGIS: TglPixelTexGenParameterfSGIS;
  glPixelTexGenParameterfvSGIS: TglPixelTexGenParameterfvSGIS;
  glGetPixelTexGenParameterivSGIS: TglGetPixelTexGenParameterivSGIS;
  glGetPixelTexGenParameterfvSGIS: TglGetPixelTexGenParameterfvSGIS;

  // GL_SGIS_point_parameters
  glPointParameterfSGIS: TglPointParameterfSGIS;
  glPointParameterfvSGIS: TglPointParameterfvSGIS;

  // GL_SGIS_sharpen_texture
  glSharpenTexFuncSGIS: TglSharpenTexFuncSGIS;
  glGetSharpenTexFuncSGIS: TglGetSharpenTexFuncSGIS;

  // GL_SGIS_texture4D
  glTexImage4DSGIS: TglTexImage4DSGIS;
  glTexSubImage4DSGIS: TglTexSubImage4DSGIS;

  // GL_SGIS_texture_color_mask
  glTextureColorMaskSGIS: TglTextureColorMaskSGIS;

  // GL_SGIS_texture_filter4
  glGetTexFilterFuncSGIS: TglGetTexFilterFuncSGIS;
  glTexFilterFuncSGIS: TglTexFilterFuncSGIS;

  // GL_SGIX_async
  glAsyncMarkerSGIX: TglAsyncMarkerSGIX;
  glFinishAsyncSGIX: TglFinishAsyncSGIX;
  glPollAsyncSGIX: TglPollAsyncSGIX;
  glGenAsyncMarkersSGIX: TglGenAsyncMarkersSGIX;
  glDeleteAsyncMarkersSGIX: TglDeleteAsyncMarkersSGIX;
  glIsAsyncMarkerSGIX: TglIsAsyncMarkerSGIX;

  // GL_SGIX_flush_raster
  glFlushRasterSGIX: TglFlushRasterSGIX;

  // GL_SGIX_fragment_lighting
  glFragmentColorMaterialSGIX: TglFragmentColorMaterialSGIX;
  glFragmentLightfSGIX: TglFragmentLightfSGIX;
  glFragmentLightfvSGIX: TglFragmentLightfvSGIX;
  glFragmentLightiSGIX: TglFragmentLightiSGIX;
  glFragmentLightivSGIX: TglFragmentLightivSGIX;
  glFragmentLightModelfSGIX: TglFragmentLightModelfSGIX;
  glFragmentLightModelfvSGIX: TglFragmentLightModelfvSGIX;
  glFragmentLightModeliSGIX: TglFragmentLightModeliSGIX;
  glFragmentLightModelivSGIX: TglFragmentLightModelivSGIX;
  glFragmentMaterialfSGIX: TglFragmentMaterialfSGIX;
  glFragmentMaterialfvSGIX: TglFragmentMaterialfvSGIX;
  glFragmentMaterialiSGIX: TglFragmentMaterialiSGIX;
  glFragmentMaterialivSGIX: TglFragmentMaterialivSGIX;
  glGetFragmentLightfvSGIX: TglGetFragmentLightfvSGIX;
  glGetFragmentLightivSGIX: TglGetFragmentLightivSGIX;
  glGetFragmentMaterialfvSGIX: TglGetFragmentMaterialfvSGIX;
  glGetFragmentMaterialivSGIX: TglGetFragmentMaterialivSGIX;
  glLightEnviSGIX: TglLightEnviSGIX;

  // GL_SGIX_framezoom
  glFrameZoomSGIX: TglFrameZoomSGIX;

  // GL_SGIX_igloo_interface
  glIglooInterfaceSGIX: TglIglooInterfaceSGIX;

  // GL_SGIX_instruments
  glGetInstrumentsSGIX: TglGetInstrumentsSGIX;
  glInstrumentsBufferSGIX: TglInstrumentsBufferSGIX;
  glPollInstrumentsSGIX: TglPollInstrumentsSGIX;
  glReadInstrumentsSGIX: TglReadInstrumentsSGIX;
  glStartInstrumentsSGIX: TglStartInstrumentsSGIX;
  glStopInstrumentsSGIX: TglStopInstrumentsSGIX;

  // GL_SGIX_list_priority
  glGetListParameterfvSGIX: TglGetListParameterfvSGIX;
  glGetListParameterivSGIX: TglGetListParameterivSGIX;
  glListParameterfSGIX: TglListParameterfSGIX;
  glListParameterfvSGIX: TglListParameterfvSGIX;
  glListParameteriSGIX: TglListParameteriSGIX;
  glListParameterivSGIX: TglListParameterivSGIX;

  // GL_SGIX_pixel_texture
  glPixelTexGenSGIX: TglPixelTexGenSGIX;

  // GL_SGIX_polynomial_ffd
  glDeformationMap3dSGIX: TglDeformationMap3dSGIX;
  glDeformationMap3fSGIX: TglDeformationMap3fSGIX;
  glDeformSGIX: TglDeformSGIX;
  glLoadIdentityDeformationMapSGIX: TglLoadIdentityDeformationMapSGIX;

  // GL_SGIX_reference_plane
  glReferencePlaneSGIX: TglReferencePlaneSGIX;

  // GL_SGIX_sprite
  glSpriteParameterfSGIX: TglSpriteParameterfSGIX;
  glSpriteParameterfvSGIX: TglSpriteParameterfvSGIX;
  glSpriteParameteriSGIX: TglSpriteParameteriSGIX;
  glSpriteParameterivSGIX: TglSpriteParameterivSGIX;

  // GL_SGIX_tag_sample_buffer
  glTagSampleBufferSGIX: TglTagSampleBufferSGIX;

  // GL_SGI_color_table
  glColorTableSGI: TglColorTableSGI;
  glColorTableParameterfvSGI: TglColorTableParameterfvSGI;
  glColorTableParameterivSGI: TglColorTableParameterivSGI;
  glCopyColorTableSGI: TglCopyColorTableSGI;
  glGetColorTableSGI: TglGetColorTableSGI;
  glGetColorTableParameterfvSGI: TglGetColorTableParameterfvSGI;
  glGetColorTableParameterivSGI: TglGetColorTableParameterivSGI;

  // GL_SUNX_constant_data
  glFinishTextureSUNX: TglFinishTextureSUNX;

  // GL_SUN_global_alpha
  glGlobalAlphaFactorbSUN: TglGlobalAlphaFactorbSUN;
  glGlobalAlphaFactorsSUN: TglGlobalAlphaFactorsSUN;
  glGlobalAlphaFactoriSUN: TglGlobalAlphaFactoriSUN;
  glGlobalAlphaFactorfSUN: TglGlobalAlphaFactorfSUN;
  glGlobalAlphaFactordSUN: TglGlobalAlphaFactordSUN;
  glGlobalAlphaFactorubSUN: TglGlobalAlphaFactorubSUN;
  glGlobalAlphaFactorusSUN: TglGlobalAlphaFactorusSUN;
  glGlobalAlphaFactoruiSUN: TglGlobalAlphaFactoruiSUN;

  // GL_SUN_mesh_array
  glDrawMeshArraysSUN: TglDrawMeshArraysSUN;

  // GL_SUN_triangle_list
  glReplacementCodeuiSUN: TglReplacementCodeuiSUN;
  glReplacementCodeusSUN: TglReplacementCodeusSUN;
  glReplacementCodeubSUN: TglReplacementCodeubSUN;
  glReplacementCodeuivSUN: TglReplacementCodeuivSUN;
  glReplacementCodeusvSUN: TglReplacementCodeusvSUN;
  glReplacementCodeubvSUN: TglReplacementCodeubvSUN;
  glReplacementCodePointerSUN: TglReplacementCodePointerSUN;

  // GL_SUN_vertex
  glColor4ubVertex2fSUN: TglColor4ubVertex2fSUN;
  glColor4ubVertex2fvSUN: TglColor4ubVertex2fvSUN;
  glColor4ubVertex3fSUN: TglColor4ubVertex3fSUN;
  glColor4ubVertex3fvSUN: TglColor4ubVertex3fvSUN;
  glColor3fVertex3fSUN: TglColor3fVertex3fSUN;
  glColor3fVertex3fvSUN: TglColor3fVertex3fvSUN;
  glNormal3fVertex3fSUN: TglNormal3fVertex3fSUN;
  glNormal3fVertex3fvSUN: TglNormal3fVertex3fvSUN;
  glColor4fNormal3fVertex3fSUN: TglColor4fNormal3fVertex3fSUN;
  glColor4fNormal3fVertex3fvSUN: TglColor4fNormal3fVertex3fvSUN;
  glTexCoord2fVertex3fSUN: TglTexCoord2fVertex3fSUN;
  glTexCoord2fVertex3fvSUN: TglTexCoord2fVertex3fvSUN;
  glTexCoord4fVertex4fSUN: TglTexCoord4fVertex4fSUN;
  glTexCoord4fVertex4fvSUN: TglTexCoord4fVertex4fvSUN;
  glTexCoord2fColor4ubVertex3fSUN: TglTexCoord2fColor4ubVertex3fSUN;
  glTexCoord2fColor4ubVertex3fvSUN: TglTexCoord2fColor4ubVertex3fvSUN;
  glTexCoord2fColor3fVertex3fSUN: TglTexCoord2fColor3fVertex3fSUN;
  glTexCoord2fColor3fVertex3fvSUN: TglTexCoord2fColor3fVertex3fvSUN;
  glTexCoord2fNormal3fVertex3fSUN: TglTexCoord2fNormal3fVertex3fSUN;
  glTexCoord2fNormal3fVertex3fvSUN: TglTexCoord2fNormal3fVertex3fvSUN;
  glTexCoord2fColor4fNormal3fVertex3fSUN: TglTexCoord2fColor4fNormal3fVertex3fSUN;
  glTexCoord2fColor4fNormal3fVertex3fvSUN: TglTexCoord2fColor4fNormal3fVertex3fvSUN;
  glTexCoord4fColor4fNormal3fVertex4fSUN: TglTexCoord4fColor4fNormal3fVertex4fSUN;
  glTexCoord4fColor4fNormal3fVertex4fvSUN: TglTexCoord4fColor4fNormal3fVertex4fvSUN;
  glReplacementCodeuiVertex3fSUN: TglReplacementCodeuiVertex3fSUN;
  glReplacementCodeuiVertex3fvSUN: TglReplacementCodeuiVertex3fvSUN;
  glReplacementCodeuiColor4ubVertex3fSUN: TglReplacementCodeuiColor4ubVertex3fSUN;
  glReplacementCodeuiColor4ubVertex3fvSUN: TglReplacementCodeuiColor4ubVertex3fvSUN;
  glReplacementCodeuiColor3fVertex3fSUN: TglReplacementCodeuiColor3fVertex3fSUN;
  glReplacementCodeuiColor3fVertex3fvSUN: TglReplacementCodeuiColor3fVertex3fvSUN;
  glReplacementCodeuiNormal3fVertex3fSUN: TglReplacementCodeuiNormal3fVertex3fSUN;
  glReplacementCodeuiNormal3fVertex3fvSUN: TglReplacementCodeuiNormal3fVertex3fvSUN;
  glReplacementCodeuiColor4fNormal3fVertex3fSUN: TglReplacementCodeuiColor4fNormal3fVertex3fSUN;
  glReplacementCodeuiColor4fNormal3fVertex3fvSUN: TglReplacementCodeuiColor4fNormal3fVertex3fvSUN;
  glReplacementCodeuiTexCoord2fVertex3fSUN: TglReplacementCodeuiTexCoord2fVertex3fSUN;
  glReplacementCodeuiTexCoord2fVertex3fvSUN: TglReplacementCodeuiTexCoord2fVertex3fvSUN;
  glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN: TglReplacementCodeuiTexCoord2fNormal3fVertex3fSUN;
  glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN: TglReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN;
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN: TglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN;
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN: TglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN;


{$ENDIF}

end.