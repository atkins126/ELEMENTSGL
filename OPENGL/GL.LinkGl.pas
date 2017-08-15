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


namespace OpenGL;
{$GLOBALS ON}

interface
uses 
    rtl;

    method RaiseLastOSError;

    method ReadExtensions;
    method ReadImplementationProperties;


    method ReadOpenGLCore;
    method Read_GL_3DFX_tbuffer;
    method Read_GL_APPLE_element_array;
    method Read_GL_APPLE_fence;
    method Read_GL_APPLE_vertex_array_object;
    method Read_GL_APPLE_vertex_array_range;
    method Read_GL_APPLE_texture_range;
    method Read_GL_APPLE_vertex_program_evaluators;
    method Read_GL_APPLE_object_purgeable;
    method Read_GL_ARB_matrix_palette;
    method Read_GL_ARB_multitexture;
    method Read_GL_ARB_point_parameters;
    method Read_GL_ARB_texture_compression;
    method Read_GL_ARB_transpose_matrix;
    method Read_GL_ARB_vertex_blend;
    method Read_GL_ARB_vertex_buffer_object;
    method Read_GL_ARB_vertex_program;
    method Read_GL_ARB_window_pos;
    method Read_GL_ARB_color_buffer_float;
    method Read_GL_ARB_Shader_Objects;
    method Read_GL_ARB_occlusion_query;
    method Read_GL_ARB_draw_instanced;
    method Read_GL_ARB_framebuffer_object;
    method Read_GL_ARB_geometry_shader4;
    method Read_GL_ARB_instanced_arrays;
    method Read_GL_ARB_map_buffer_range;
    method Read_GL_ARB_texture_buffer_object;
    method Read_GL_ARB_vertex_array_object;
    method Read_GL_ARB_uniform_buffer_object;
    method Read_GL_ARB_copy_buffer;
    method Read_GL_ARB_draw_elements_base_vertex;
    method Read_GL_ARB_provoking_vertex;
    method Read_GL_ARB_sync;
    method Read_GL_ARB_texture_multisample;
    method Read_GL_ARB_draw_buffers_blend;
    method Read_GL_ARB_sample_shading;
    method Read_GL_ARB_sample_locations;
    method Read_GL_ARB_shading_language_include;
    method Read_GL_ARB_blend_func_extended;
    method Read_GL_ARB_sampler_objects;
    method Read_GL_ARB_timer_query;
    method Read_GL_ARB_vertex_type_2_10_10_10_rev;
    method Read_GL_ARB_draw_indirect;
    method Read_GL_ARB_gpu_shader_fp64;
    method Read_GL_ARB_gpu_shader_int64;
    method Read_GL_ARB_shader_subroutine;
    method Read_GL_ARB_tessellation_shader;
    method Read_GL_ARB_transform_feedback2;
    method Read_GL_ARB_transform_feedback3;
    method Read_GL_ARB_ES2_compatibility;
    method Read_GL_ARB_get_program_binary;
    method Read_GL_ARB_separate_shader_objects;
    method Read_GL_ARB_vertex_attrib_64bit;
    method Read_GL_ARB_viewport_array;

    method Read_GL_ARB_ES3_2_compatibility;
    method Read_GL_ARB_parallel_shader_compile;

// GL 4.2
    method Read_GL_ARB_base_instance;
    method Read_GL_ARB_transform_feedback_instanced;
    method Read_GL_ARB_internalformat_query;
    method Read_GL_ARB_shader_atomic_counters;
    method Read_GL_ARB_shader_image_load_store;
    method Read_GL_ARB_texture_storage;
// GL 4.3
    method Read_GL_KHR_debug;
    method Read_GL_ARB_clear_buffer_object;
    method Read_GL_ARB_compute_shader;
    method Read_GL_ARB_copy_image;
    method Read_GL_ARB_framebuffer_no_attachments;
    method Read_GL_ARB_internalformat_query2;
    method Read_GL_ARB_invalidate_subdata;
    method Read_GL_ARB_multi_draw_indirect;
    method Read_GL_ARB_program_interface_query;
    method Read_GL_ARB_shader_storage_buffer_object;
    method Read_GL_ARB_texture_buffer_range;
    method Read_GL_ARB_texture_storage_multisample;
    method Read_GL_ARB_texture_view;
    method Read_GL_ARB_vertex_attrib_binding;


    method Read_GL_4_4;
    method Read_GL_4_5;

//
    method Read_GL_ARB_cl_event;
    method Read_GL_ARB_compute_variable_group_size;
    method Read_GL_ARB_debug_output;
    method Read_GL_ARB_robustness;
    method Read_GL_ATI_draw_buffers;
    method Read_GL_ATI_element_array;
    method Read_GL_ATI_envmap_bumpmap;
    method Read_GL_ATI_fragment_shader;
    method Read_GL_ATI_map_object_buffer;
    method Read_GL_ATI_pn_triangles;
    method Read_GL_ATI_separate_stencil;
    method Read_GL_ATI_vertex_array_object;
    method Read_GL_ATI_vertex_attrib_array_object;
    method Read_GL_ATI_vertex_streams;
    method Read_GL_AMD_performance_monitor;
    method Read_GL_AMD_vertex_shader_tesselator;
    method Read_GL_AMD_draw_buffers_blend;
    method Read_GL_AMD_name_gen_delete;
    method Read_GL_AMD_debug_output;
    method Read_GL_EXT_blend_color;
    method Read_GL_EXT_blend_func_separate;
    method Read_GL_EXT_blend_minmax;
    method Read_GL_EXT_color_subtable;
    method Read_GL_EXT_compiled_vertex_array;
    method Read_GL_EXT_convolution;
    method Read_GL_EXT_coordinate_frame;
    method Read_GL_EXT_copy_texture;
    method Read_GL_EXT_cull_vertex;
    method Read_GL_EXT_draw_range_elements;
    method Read_GL_EXT_fog_coord;
    method Read_GL_EXT_framebuffer_object;
    method Read_GL_EXT_histogram;
    method Read_GL_EXT_index_func;
    method Read_GL_EXT_index_material;
    method Read_GL_EXT_multi_draw_arrays;
    method Read_GL_EXT_multisample;
    method Read_GL_EXT_paletted_texture;
    method Read_GL_EXT_pixel_transform;
    method Read_GL_EXT_point_parameters;
    method Read_GL_EXT_polygon_offset;
    method Read_GL_EXT_secondary_color;
    method Read_GL_EXT_stencil_two_side;
    method Read_GL_EXT_subtexture;
    method Read_GL_EXT_texture3D;
    method Read_GL_EXT_texture_object;
    method Read_GL_EXT_texture_perturb_normal;
    method Read_GL_EXT_vertex_array;
    method Read_GL_EXT_vertex_shader;
    method Read_GL_EXT_vertex_weighting;
    method Read_GL_EXT_depth_bounds_test;
    method Read_GL_EXT_blend_equation_separate;
    method Read_GL_EXT_stencil_clear_tag;
    method Read_GL_EXT_framebuffer_blit;
    method Read_GL_EXT_framebuffer_multisample;
    method Read_GL_EXT_timer_query;
    method Read_GL_EXT_gpu_program_parameters;
    method Read_GL_EXT_bindable_uniform;
    method Read_GL_EXT_draw_buffers2;
    method Read_GL_EXT_draw_instanced;
    method Read_GL_EXT_geometry_shader4;
    method Read_GL_EXT_gpu_shader4;
    method Read_GL_EXT_texture_array;
    method Read_GL_EXT_texture_buffer_object;
    method Read_GL_EXT_texture_integer;
    method Read_GL_EXT_transform_feedback;
    method Read_GL_EXT_direct_state_access;
    method Read_GL_EXT_separate_shader_objects;
    method Read_GL_EXT_shader_image_load_store;
    method Read_GL_EXT_vertex_attrib_64bit;
    method Read_GL_HP_image_transform;
    method Read_GL_IBM_multimode_draw_arrays;
    method Read_GL_IBM_vertex_array_lists;
    method Read_GL_INGR_blend_func_separate;
    method Read_GL_INTEL_parallel_arrays;
    method Read_GL_INTEL_framebuffer_CMAA;
    method Read_GL_MESA_resize_buffers;
    method Read_GL_MESA_window_pos;
    method Read_GL_NV_evaluators;
    method Read_GL_NV_fence;
    method Read_GL_NV_fragment_program;
    method Read_GL_NV_half_float;
    method Read_GL_NV_occlusion_query;
    method Read_GL_NV_pixel_data_range;
    method Read_GL_NV_point_sprite;
    method Read_GL_NV_primitive_restart;
    method Read_GL_NV_register_combiners;
    method Read_GL_NV_register_combiners2;
    method Read_GL_NV_vertex_array_range;
    method Read_GL_NV_vertex_program;
    method Read_GL_NV_depth_buffer_float;
    method Read_GL_NV_framebuffer_multisample_coverage;
    method Read_GL_NV_geometry_program4;
    method Read_GL_NV_gpu_program4;
    method Read_GL_NV_parameter_buffer_object;
    method Read_GL_NV_transform_feedback;
    method Read_GL_NV_conditional_render;
    method Read_GL_NV_conservative_raster;
    method Read_GL_NV_conservative_raster_dilate;
    method Read_GL_NV_present_video;
    method Read_GL_NV_explicit_multisample;
    method Read_GL_NV_transform_feedback2;
    method Read_GL_NV_video_capture;
    method Read_GL_NV_copy_image;
    method Read_GL_NV_shader_buffer_load;
    method Read_GL_NV_vertex_buffer_unified_memory;
    method Read_GL_NV_gpu_program5;
    method Read_GL_NV_gpu_shader5;
    method Read_GL_NV_vertex_attrib_integer_64bit;
    method Read_GL_NV_vdpau_interop;
    method Read_GL_NV_texture_barrier;
    method Read_GL_PGI_misc_hints;
    method Read_GL_OVR_multiview;
    method Read_GL_SGIS_detail_texture;
    method Read_GL_SGIS_fog_function;
    method Read_GL_SGIS_multisample;
    method Read_GL_SGIS_pixel_texture;
    method Read_GL_SGIS_point_parameters;
    method Read_GL_SGIS_sharpen_texture;
    method Read_GL_SGIS_texture4D;
    method Read_GL_SGIS_texture_color_mask;
    method Read_GL_SGIS_texture_filter4;
    method Read_GL_SGIX_async;
    method Read_GL_SGIX_flush_raster;
    method Read_GL_SGIX_fragment_lighting;
    method Read_GL_SGIX_framezoom;
    method Read_GL_SGIX_igloo_interface;
    method Read_GL_SGIX_instruments;
    method Read_GL_SGIX_list_priority;
    method Read_GL_SGIX_pixel_texture;
    method Read_GL_SGIX_polynomial_ffd;
    method Read_GL_SGIX_reference_plane;
    method Read_GL_SGIX_sprite;
    method Read_GL_SGIX_tag_sample_buffer;
    method Read_GL_SGI_color_table;
    method Read_GL_SUNX_constant_data;
    method Read_GL_SUN_global_alpha;
    method Read_GL_SUN_mesh_array;
    method Read_GL_SUN_triangle_list;
    method Read_GL_SUN_vertex;


implementation

method Int_CheckExtension(AllExtensions, CheckExtension: String): Boolean;
begin
    Result := AllExtensions.Contains(#32 + CheckExtension + #32);
end;


method ReadOpenGLCore;
begin
  // GL_VERSION_1_0
    glCullFace := tglCullFace(dglGetProcAddress('glCullFace'));
    glFrontFace := tglFrontFace(dglGetProcAddress('glFrontFace'));
    glHint := tglHint(dglGetProcAddress('glHint'));
    glLineWidth := tglLineWidth(dglGetProcAddress('glLineWidth'));
    glPointSize := tglPointSize(dglGetProcAddress('glPointSize'));
    glPolygonMode := tglPolygonMode(dglGetProcAddress('glPolygonMode'));
    glScissor := tglScissor(dglGetProcAddress('glScissor'));
    glTexParameterf := tglTexParameterf(dglGetProcAddress('glTexParameterf'));
    glTexParameterfv := tglTexParameterfv(dglGetProcAddress('glTexParameterfv'));
    glTexParameteri := tglTexParameteri(dglGetProcAddress('glTexParameteri'));
    glTexParameteriv := tglTexParameteriv(dglGetProcAddress('glTexParameteriv'));
    glTexImage1D := tglTexImage1D(dglGetProcAddress('glTexImage1D'));
    glTexImage2D := tglTexImage2D(dglGetProcAddress('glTexImage2D'));
    glDrawBuffer := tglDrawBuffer(dglGetProcAddress('glDrawBuffer'));
    glClear := tglClear(dglGetProcAddress('glClear'));
    glClearColor := tglClearColor(dglGetProcAddress('glClearColor'));
    glClearStencil := tglClearStencil(dglGetProcAddress('glClearStencil'));
    glClearDepth := tglClearDepth(dglGetProcAddress('glClearDepth'));
    glStencilMask := tglStencilMask(dglGetProcAddress('glStencilMask'));
    glColorMask := tglColorMask(dglGetProcAddress('glColorMask'));
    glDepthMask := tglDepthMask(dglGetProcAddress('glDepthMask'));
    glDisable := tglDisable(dglGetProcAddress('glDisable'));
    glEnable := tglEnable(dglGetProcAddress('glEnable'));
    glFinish := tglFinish(dglGetProcAddress('glFinish'));
    glFlush := tglFlush(dglGetProcAddress('glFlush'));
    glBlendFunc := tglBlendFunc(dglGetProcAddress('glBlendFunc'));
    glLogicOp := tglLogicOp(dglGetProcAddress('glLogicOp'));
    glStencilFunc := tglStencilFunc(dglGetProcAddress('glStencilFunc'));
    glStencilOp := tglStencilOp(dglGetProcAddress('glStencilOp'));
    glDepthFunc := tglDepthFunc(dglGetProcAddress('glDepthFunc'));
    glPixelStoref := tglPixelStoref(dglGetProcAddress('glPixelStoref'));
    glPixelStorei := tglPixelStorei(dglGetProcAddress('glPixelStorei'));
    glReadBuffer := tglReadBuffer(dglGetProcAddress('glReadBuffer'));
    glReadPixels := tglReadPixels(dglGetProcAddress('glReadPixels'));
    glGetBooleanv := tglGetBooleanv(dglGetProcAddress('glGetBooleanv'));
    glGetDoublev := tglGetDoublev(dglGetProcAddress('glGetDoublev'));
    glGetError := tglGetError(dglGetProcAddress('glGetError'));
    glGetFloatv := tglGetFloatv(dglGetProcAddress('glGetFloatv'));
    glGetIntegerv := tglGetIntegerv(dglGetProcAddress('glGetIntegerv'));
    glGetString := tglGetString(dglGetProcAddress('glGetString'));
    glGetTexImage := tglGetTexImage(dglGetProcAddress('glGetTexImage'));
    glGetTexParameteriv := tglGetTexParameteriv(dglGetProcAddress('glGetTexParameteriv'));
    glGetTexParameterfv := tglGetTexParameterfv(dglGetProcAddress('glGetTexParameterfv'));
    glGetTexLevelParameterfv := tglGetTexLevelParameterfv(dglGetProcAddress('glGetTexLevelParameterfv'));
    glGetTexLevelParameteriv := tglGetTexLevelParameteriv(dglGetProcAddress('glGetTexLevelParameteriv'));
    glIsEnabled := tglIsEnabled(dglGetProcAddress('glIsEnabled'));
    glDepthRange := tglDepthRange(dglGetProcAddress('glDepthRange'));
    glViewport := tglViewport(dglGetProcAddress('glViewport'));

  // GL_VERSION_1_1
    glDrawArrays := tglDrawArrays(dglGetProcAddress('glDrawArrays'));
    glDrawElements := tglDrawElements(dglGetProcAddress('glDrawElements'));
    glGetPointerv := tglGetPointerv(dglGetProcAddress('glGetPointerv'));
    glPolygonOffset := tglPolygonOffset(dglGetProcAddress('glPolygonOffset'));
    glCopyTexImage1D := tglCopyTexImage1D(dglGetProcAddress('glCopyTexImage1D'));
    glCopyTexImage2D := tglCopyTexImage2D(dglGetProcAddress('glCopyTexImage2D'));
    glCopyTexSubImage1D := tglCopyTexSubImage1D(dglGetProcAddress('glCopyTexSubImage1D'));
    glCopyTexSubImage2D := tglCopyTexSubImage2D(dglGetProcAddress('glCopyTexSubImage2D'));
    glTexSubImage1D := tglTexSubImage1D(dglGetProcAddress('glTexSubImage1D'));
    glTexSubImage2D := tglTexSubImage2D(dglGetProcAddress('glTexSubImage2D'));
    glBindTexture := tglBindTexture(dglGetProcAddress('glBindTexture'));
    glDeleteTextures := tglDeleteTextures(dglGetProcAddress('glDeleteTextures'));
    glGenTextures := tglGenTextures(dglGetProcAddress('glGenTextures'));



  // GL_VERSION_1_2
    glBlendColor := tglBlendColor(dglGetProcAddress('glBlendColor'));
    glBlendEquation := tglBlendEquation(dglGetProcAddress('glBlendEquation'));
    glDrawRangeElements := tglDrawRangeElements(dglGetProcAddress('glDrawRangeElements'));
    glTexImage3D := tglTexImage3D(dglGetProcAddress('glTexImage3D'));
    glTexSubImage3D := tglTexSubImage3D(dglGetProcAddress('glTexSubImage3D'));
    glCopyTexSubImage3D := tglCopyTexSubImage3D(dglGetProcAddress('glCopyTexSubImage3D'));


  // GL_VERSION_1_3
    glActiveTexture := tglActiveTexture(dglGetProcAddress('glActiveTexture'));
    glSampleCoverage := tglSampleCoverage(dglGetProcAddress('glSampleCoverage'));
    glCompressedTexImage3D := tglCompressedTexImage3D(dglGetProcAddress('glCompressedTexImage3D'));
    glCompressedTexImage2D := tglCompressedTexImage2D(dglGetProcAddress('glCompressedTexImage2D'));
    glCompressedTexImage1D := tglCompressedTexImage1D(dglGetProcAddress('glCompressedTexImage1D'));
    glCompressedTexSubImage3D := tglCompressedTexSubImage3D(dglGetProcAddress('glCompressedTexSubImage3D'));
    glCompressedTexSubImage2D := tglCompressedTexSubImage2D(dglGetProcAddress('glCompressedTexSubImage2D'));
    glCompressedTexSubImage1D := tglCompressedTexSubImage1D(dglGetProcAddress('glCompressedTexSubImage1D'));
    glGetCompressedTexImage := tglGetCompressedTexImage(dglGetProcAddress('glGetCompressedTexImage'));


  // GL_VERSION_1_4
    glBlendFuncSeparate := tglBlendFuncSeparate(dglGetProcAddress('glBlendFuncSeparate'));
    glMultiDrawArrays := tglMultiDrawArrays(dglGetProcAddress('glMultiDrawArrays'));
    glMultiDrawElements := tglMultiDrawElements(dglGetProcAddress('glMultiDrawElements'));
    glPointParameterf := tglPointParameterf(dglGetProcAddress('glPointParameterf'));
    glPointParameterfv := tglPointParameterfv(dglGetProcAddress('glPointParameterfv'));
    glPointParameteri := tglPointParameteri(dglGetProcAddress('glPointParameteri'));
    glPointParameteriv := tglPointParameteriv(dglGetProcAddress('glPointParameteriv'));


  // GL_VERSION_1_5
    glGenQueries := tglGenQueries(dglGetProcAddress('glGenQueries'));
    glDeleteQueries := tglDeleteQueries(dglGetProcAddress('glDeleteQueries'));
    glIsQuery := tglIsQuery(dglGetProcAddress('glIsQuery'));
    glBeginQuery := tglBeginQuery(dglGetProcAddress('glBeginQuery'));
    glEndQuery := tglEndQuery(dglGetProcAddress('glEndQuery'));
    glGetQueryiv := tglGetQueryiv(dglGetProcAddress('glGetQueryiv'));
    glGetQueryObjectiv := tglGetQueryObjectiv(dglGetProcAddress('glGetQueryObjectiv'));
    glGetQueryObjectuiv := tglGetQueryObjectuiv(dglGetProcAddress('glGetQueryObjectuiv'));
    glBindBuffer := tglBindBuffer(dglGetProcAddress('glBindBuffer'));
    glDeleteBuffers := tglDeleteBuffers(dglGetProcAddress('glDeleteBuffers'));
    glGenBuffers := tglGenBuffers(dglGetProcAddress('glGenBuffers'));
    glIsBuffer := tglIsBuffer(dglGetProcAddress('glIsBuffer'));
    glBufferData := tglBufferData(dglGetProcAddress('glBufferData'));
    glBufferSubData := tglBufferSubData(dglGetProcAddress('glBufferSubData'));
    glGetBufferSubData := tglGetBufferSubData(dglGetProcAddress('glGetBufferSubData'));
    glMapBuffer := tglMapBuffer(dglGetProcAddress('glMapBuffer'));
    glUnmapBuffer := tglUnmapBuffer(dglGetProcAddress('glUnmapBuffer'));
    glGetBufferParameteriv := tglGetBufferParameteriv(dglGetProcAddress('glGetBufferParameteriv'));
    glGetBufferPointerv := tglGetBufferPointerv(dglGetProcAddress('glGetBufferPointerv'));

  // GL_VERSION_2_0
    glBlendEquationSeparate := tglBlendEquationSeparate(dglGetProcAddress('glBlendEquationSeparate'));
    glDrawBuffers := tglDrawBuffers(dglGetProcAddress('glDrawBuffers'));
    glStencilOpSeparate := tglStencilOpSeparate(dglGetProcAddress('glStencilOpSeparate'));
    glStencilFuncSeparate := tglStencilFuncSeparate(dglGetProcAddress('glStencilFuncSeparate'));
    glStencilMaskSeparate := tglStencilMaskSeparate(dglGetProcAddress('glStencilMaskSeparate'));
    glAttachShader := tglAttachShader(dglGetProcAddress('glAttachShader'));
    glBindAttribLocation := tglBindAttribLocation(dglGetProcAddress('glBindAttribLocation'));
    glCompileShader := tglCompileShader(dglGetProcAddress('glCompileShader'));
  glCreateProgram := tglCreateProgram(dglGetProcAddress('glCreateProgram'));
  glCreateShader := tglCreateShader(dglGetProcAddress('glCreateShader'));
  glDeleteProgram := tglDeleteProgram(dglGetProcAddress('glDeleteProgram'));
  glDeleteShader := tglDeleteShader(dglGetProcAddress('glDeleteShader'));
  glDetachShader := tglDetachShader(dglGetProcAddress('glDetachShader'));
  glDisableVertexAttribArray := tglDisableVertexAttribArray(dglGetProcAddress('glDisableVertexAttribArray'));
  glEnableVertexAttribArray := tglEnableVertexAttribArray(dglGetProcAddress('glEnableVertexAttribArray'));
  glGetActiveAttrib := tglGetActiveAttrib(dglGetProcAddress('glGetActiveAttrib'));
  glGetActiveUniform := tglGetActiveUniform(dglGetProcAddress('glGetActiveUniform'));
  glGetAttachedShaders := tglGetAttachedShaders(dglGetProcAddress('glGetAttachedShaders'));
  glGetAttribLocation := tglGetAttribLocation(dglGetProcAddress('glGetAttribLocation'));
  glGetProgramiv := tglGetProgramiv(dglGetProcAddress('glGetProgramiv'));
  glGetProgramInfoLog := tglGetProgramInfoLog(dglGetProcAddress('glGetProgramInfoLog'));
  glGetShaderiv := tglGetShaderiv(dglGetProcAddress('glGetShaderiv'));
  glGetShaderInfoLog := tglGetShaderInfoLog(dglGetProcAddress('glGetShaderInfoLog'));
  glGetShaderSource := tglGetShaderSource(dglGetProcAddress('glGetShaderSource'));
  glGetUniformLocation := tglGetUniformLocation(dglGetProcAddress('glGetUniformLocation'));
  glGetUniformfv := tglGetUniformfv(dglGetProcAddress('glGetUniformfv'));
  glGetUniformiv := tglGetUniformiv(dglGetProcAddress('glGetUniformiv'));
  glGetVertexAttribfv := tglGetVertexAttribfv(dglGetProcAddress('glGetVertexAttribfv'));
  glGetVertexAttribiv := tglGetVertexAttribiv(dglGetProcAddress('glGetVertexAttribiv'));
  glGetVertexAttribPointerv := tglGetVertexAttribPointerv(dglGetProcAddress('glGetVertexAttribPointerv'));
  glIsProgram := tglIsProgram(dglGetProcAddress('glIsProgram'));
  glIsShader := tglIsShader(dglGetProcAddress('glIsShader'));
  glLinkProgram := tglLinkProgram(dglGetProcAddress('glLinkProgram'));
  glShaderSource := tglShaderSource(dglGetProcAddress('glShaderSource'));
  glUseProgram := tglUseProgram(dglGetProcAddress('glUseProgram'));
  glUniform1f := tglUniform1f(dglGetProcAddress('glUniform1f'));
  glUniform2f := tglUniform2f(dglGetProcAddress('glUniform2f'));
  glUniform3f := tglUniform3f(dglGetProcAddress('glUniform3f'));
  glUniform4f := tglUniform4f(dglGetProcAddress('glUniform4f'));
  glUniform1i := tglUniform1i(dglGetProcAddress('glUniform1i'));
  glUniform2i := tglUniform2i(dglGetProcAddress('glUniform2i'));
  glUniform3i := tglUniform3i(dglGetProcAddress('glUniform3i'));
  glUniform4i := tglUniform4i(dglGetProcAddress('glUniform4i'));
  glUniform1fv := tglUniform1fv(dglGetProcAddress('glUniform1fv'));
  glUniform2fv := tglUniform2fv(dglGetProcAddress('glUniform2fv'));
  glUniform3fv := tglUniform3fv(dglGetProcAddress('glUniform3fv'));
  glUniform4fv := tglUniform4fv(dglGetProcAddress('glUniform4fv'));
  glUniform1iv := tglUniform1iv(dglGetProcAddress('glUniform1iv'));
  glUniform2iv := tglUniform2iv(dglGetProcAddress('glUniform2iv'));
  glUniform3iv := tglUniform3iv(dglGetProcAddress('glUniform3iv'));
  glUniform4iv := tglUniform4iv(dglGetProcAddress('glUniform4iv'));
  glUniformMatrix2fv := tglUniformMatrix2fv(dglGetProcAddress('glUniformMatrix2fv'));
  glUniformMatrix3fv := tglUniformMatrix3fv(dglGetProcAddress('glUniformMatrix3fv'));
  glUniformMatrix4fv := tglUniformMatrix4fv(dglGetProcAddress('glUniformMatrix4fv'));
  glValidateProgram := tglValidateProgram(dglGetProcAddress('glValidateProgram'));
  glVertexAttrib1d := tglVertexAttrib1d(dglGetProcAddress('glVertexAttrib1d'));
  glVertexAttrib1dv := tglVertexAttrib1dv(dglGetProcAddress('glVertexAttrib1dv'));
  glVertexAttrib1f := tglVertexAttrib1f(dglGetProcAddress('glVertexAttrib1f'));
  glVertexAttrib1fv := tglVertexAttrib1fv(dglGetProcAddress('glVertexAttrib1fv'));
  glVertexAttrib1s := tglVertexAttrib1s(dglGetProcAddress('glVertexAttrib1s'));
  glVertexAttrib1sv := tglVertexAttrib1sv(dglGetProcAddress('glVertexAttrib1sv'));
  glVertexAttrib2d := tglVertexAttrib2d(dglGetProcAddress('glVertexAttrib2d'));
  glVertexAttrib2dv := tglVertexAttrib2dv(dglGetProcAddress('glVertexAttrib2dv'));
  glVertexAttrib2f := tglVertexAttrib2f(dglGetProcAddress('glVertexAttrib2f'));
  glVertexAttrib2fv := tglVertexAttrib2fv(dglGetProcAddress('glVertexAttrib2fv'));
  glVertexAttrib2s := tglVertexAttrib2s(dglGetProcAddress('glVertexAttrib2s'));
  glVertexAttrib2sv := tglVertexAttrib2sv(dglGetProcAddress('glVertexAttrib2sv'));
  glVertexAttrib3d := tglVertexAttrib3d(dglGetProcAddress('glVertexAttrib3d'));
  glVertexAttrib3dv := tglVertexAttrib3dv(dglGetProcAddress('glVertexAttrib3dv'));
  glVertexAttrib3f := tglVertexAttrib3f(dglGetProcAddress('glVertexAttrib3f'));
  glVertexAttrib3fv := tglVertexAttrib3fv(dglGetProcAddress('glVertexAttrib3fv'));
  glVertexAttrib3s := tglVertexAttrib3s(dglGetProcAddress('glVertexAttrib3s'));
  glVertexAttrib3sv := tglVertexAttrib3sv(dglGetProcAddress('glVertexAttrib3sv'));
  glVertexAttrib4Nbv := tglVertexAttrib4Nbv(dglGetProcAddress('glVertexAttrib4Nbv'));
  glVertexAttrib4Niv := tglVertexAttrib4Niv(dglGetProcAddress('glVertexAttrib4Niv'));
  glVertexAttrib4Nsv := tglVertexAttrib4Nsv(dglGetProcAddress('glVertexAttrib4Nsv'));
  glVertexAttrib4Nub := tglVertexAttrib4Nub(dglGetProcAddress('glVertexAttrib4Nub'));
  glVertexAttrib4Nubv := tglVertexAttrib4Nubv(dglGetProcAddress('glVertexAttrib4Nubv'));
  glVertexAttrib4Nuiv := tglVertexAttrib4Nuiv(dglGetProcAddress('glVertexAttrib4Nuiv'));
  glVertexAttrib4Nusv := tglVertexAttrib4Nusv(dglGetProcAddress('glVertexAttrib4Nusv'));
  glVertexAttrib4bv := tglVertexAttrib4bv(dglGetProcAddress('glVertexAttrib4bv'));
  glVertexAttrib4d := tglVertexAttrib4d(dglGetProcAddress('glVertexAttrib4d'));
  glVertexAttrib4dv := tglVertexAttrib4dv(dglGetProcAddress('glVertexAttrib4dv'));
  glVertexAttrib4f := tglVertexAttrib4f(dglGetProcAddress('glVertexAttrib4f'));
  glVertexAttrib4fv := tglVertexAttrib4fv(dglGetProcAddress('glVertexAttrib4fv'));
  glVertexAttrib4iv := tglVertexAttrib4iv(dglGetProcAddress('glVertexAttrib4iv'));
  glVertexAttrib4s := tglVertexAttrib4s(dglGetProcAddress('glVertexAttrib4s'));
  glVertexAttrib4sv := tglVertexAttrib4sv(dglGetProcAddress('glVertexAttrib4sv'));
  glVertexAttrib4ubv := tglVertexAttrib4ubv(dglGetProcAddress('glVertexAttrib4ubv'));
  glVertexAttrib4uiv := tglVertexAttrib4uiv(dglGetProcAddress('glVertexAttrib4uiv'));
  glVertexAttrib4usv := tglVertexAttrib4usv(dglGetProcAddress('glVertexAttrib4usv'));
  glVertexAttribPointer := tglVertexAttribPointer(dglGetProcAddress('glVertexAttribPointer'));

  // GL_VERSION_2_1
  glUniformMatrix2x3fv := tglUniformMatrix2x3fv(dglGetProcAddress('glUniformMatrix2x3fv'));
  glUniformMatrix3x2fv := tglUniformMatrix3x2fv(dglGetProcAddress('glUniformMatrix3x2fv'));
  glUniformMatrix2x4fv := tglUniformMatrix2x4fv(dglGetProcAddress('glUniformMatrix2x4fv'));
  glUniformMatrix4x2fv := tglUniformMatrix4x2fv(dglGetProcAddress('glUniformMatrix4x2fv'));
  glUniformMatrix3x4fv := tglUniformMatrix3x4fv(dglGetProcAddress('glUniformMatrix3x4fv'));
  glUniformMatrix4x3fv := tglUniformMatrix4x3fv(dglGetProcAddress('glUniformMatrix4x3fv'));

  // GL_VERSION_3_0
  { OpenGL 3.0 also reuses entry points from these extensions: }
  Read_GL_ARB_framebuffer_object;
  Read_GL_ARB_map_buffer_range;
  Read_GL_ARB_vertex_array_object;

  glColorMaski := tglColorMaski(dglGetProcAddress('glColorMaski'));
  glGetBooleani_v := tglGetBooleani_v(dglGetProcAddress('glGetBooleani_v'));
  glGetIntegeri_v := tglGetIntegeri_v(dglGetProcAddress('glGetIntegeri_v'));
  glEnablei := tglEnablei(dglGetProcAddress('glEnablei'));
  glDisablei := tglDisablei(dglGetProcAddress('glDisablei'));
  glIsEnabledi := tglIsEnabledi(dglGetProcAddress('glIsEnabledi'));
  glBeginTransformFeedback := tglBeginTransformFeedback(dglGetProcAddress('glBeginTransformFeedback'));
  glEndTransformFeedback := tglEndTransformFeedback(dglGetProcAddress('glEndTransformFeedback'));
  glBindBufferRange := tglBindBufferRange(dglGetProcAddress('glBindBufferRange'));
  glBindBufferBase := tglBindBufferBase(dglGetProcAddress('glBindBufferBase'));
  glTransformFeedbackVaryings := tglTransformFeedbackVaryings(dglGetProcAddress('glTransformFeedbackVaryings'));
  glGetTransformFeedbackVarying := tglGetTransformFeedbackVarying(dglGetProcAddress('glGetTransformFeedbackVarying'));
  glClampColor := tglClampColor(dglGetProcAddress('glClampColor'));
  glBeginConditionalRender := tglBeginConditionalRender(dglGetProcAddress('glBeginConditionalRender'));
  glEndConditionalRender := tglEndConditionalRender(dglGetProcAddress('glEndConditionalRender'));
  glVertexAttribI1i := tglVertexAttribI1i(dglGetProcAddress('glVertexAttribI1i'));
  glVertexAttribI2i := tglVertexAttribI2i(dglGetProcAddress('glVertexAttribI2i'));
  glVertexAttribI3i := tglVertexAttribI3i(dglGetProcAddress('glVertexAttribI3i'));
  glVertexAttribI4i := tglVertexAttribI4i(dglGetProcAddress('glVertexAttribI4i'));
  glVertexAttribI1ui := tglVertexAttribI1ui(dglGetProcAddress('glVertexAttribI1ui'));
  glVertexAttribI2ui := tglVertexAttribI2ui(dglGetProcAddress('glVertexAttribI2ui'));
  glVertexAttribI3ui := tglVertexAttribI3ui(dglGetProcAddress('glVertexAttribI3ui'));
  glVertexAttribI4ui := tglVertexAttribI4ui(dglGetProcAddress('glVertexAttribI4ui'));
  glVertexAttribI1iv := tglVertexAttribI1iv(dglGetProcAddress('glVertexAttribI1iv'));
  glVertexAttribI2iv := tglVertexAttribI2iv(dglGetProcAddress('glVertexAttribI2iv'));
  glVertexAttribI3iv := tglVertexAttribI3iv(dglGetProcAddress('glVertexAttribI3iv'));
  glVertexAttribI4iv := tglVertexAttribI4iv(dglGetProcAddress('glVertexAttribI4iv'));
  glVertexAttribI1uiv := tglVertexAttribI1uiv(dglGetProcAddress('glVertexAttribI1uiv'));
  glVertexAttribI2uiv := tglVertexAttribI2uiv(dglGetProcAddress('glVertexAttribI2uiv'));
  glVertexAttribI3uiv := tglVertexAttribI3uiv(dglGetProcAddress('glVertexAttribI3uiv'));
  glVertexAttribI4uiv := tglVertexAttribI4uiv(dglGetProcAddress('glVertexAttribI4uiv'));
  glVertexAttribI4bv := tglVertexAttribI4bv(dglGetProcAddress('glVertexAttribI4bv'));
  glVertexAttribI4sv := tglVertexAttribI4sv(dglGetProcAddress('glVertexAttribI4sv'));
  glVertexAttribI4ubv := tglVertexAttribI4ubv(dglGetProcAddress('glVertexAttribI4ubv'));
  glVertexAttribI4usv := tglVertexAttribI4usv(dglGetProcAddress('glVertexAttribI4usv'));
  glVertexAttribIPointer := tglVertexAttribIPointer(dglGetProcAddress('glVertexAttribIPointer'));
  glGetVertexAttribIiv := tglGetVertexAttribIiv(dglGetProcAddress('glGetVertexAttribIiv'));
  glGetVertexAttribIuiv := tglGetVertexAttribIuiv(dglGetProcAddress('glGetVertexAttribIuiv'));
  glGetUniformuiv := tglGetUniformuiv(dglGetProcAddress('glGetUniformuiv'));
  glBindFragDataLocation := tglBindFragDataLocation(dglGetProcAddress('glBindFragDataLocation'));
  glGetFragDataLocation := tglGetFragDataLocation(dglGetProcAddress('glGetFragDataLocation'));
  glUniform1ui := tglUniform1ui(dglGetProcAddress('glUniform1ui'));
  glUniform2ui := tglUniform2ui(dglGetProcAddress('glUniform2ui'));
  glUniform3ui := tglUniform3ui(dglGetProcAddress('glUniform3ui'));
  glUniform4ui := tglUniform4ui(dglGetProcAddress('glUniform4ui'));
  glUniform1uiv := tglUniform1uiv(dglGetProcAddress('glUniform1uiv'));
  glUniform2uiv := tglUniform2uiv(dglGetProcAddress('glUniform2uiv'));
  glUniform3uiv := tglUniform3uiv(dglGetProcAddress('glUniform3uiv'));
  glUniform4uiv := tglUniform4uiv(dglGetProcAddress('glUniform4uiv'));
  glTexParameterIiv := tglTexParameterIiv(dglGetProcAddress('glTexParameterIiv'));
  glTexParameterIuiv := tglTexParameterIuiv(dglGetProcAddress('glTexParameterIuiv'));
  glGetTexParameterIiv := tglGetTexParameterIiv(dglGetProcAddress('glGetTexParameterIiv'));
  glGetTexParameterIuiv := tglGetTexParameterIuiv(dglGetProcAddress('glGetTexParameterIuiv'));
  glClearBufferiv := tglClearBufferiv(dglGetProcAddress('glClearBufferiv'));
  glClearBufferuiv := tglClearBufferuiv(dglGetProcAddress('glClearBufferuiv'));
  glClearBufferfv := tglClearBufferfv(dglGetProcAddress('glClearBufferfv'));
  glClearBufferfi := tglClearBufferfi(dglGetProcAddress('glClearBufferfi'));
  glGetStringi := tglGetStringi(dglGetProcAddress('glGetStringi'));

  // GL_VERSION_2_1
  glEnableVertexArrayEXT := tglEnableVertexArrayEXT(dglGetProcAddress('glEnableVertexArrayEXT'));
  glEnableVertexArrayAttribEXT := tglEnableVertexArrayAttribEXT(dglGetProcAddress('glEnableVertexArrayAttribEXT'));
  glVertexArrayVertexAttribOffsetEXT := tglVertexArrayVertexAttribOffsetEXT(dglGetProcAddress('glVertexArrayVertexAttribOffsetEXT'));

  // GL_VERSION_3_1
  { OpenGL 3.1 also reuses entry points from these extensions: }
  Read_GL_ARB_copy_buffer;
  Read_GL_ARB_uniform_buffer_object;

  glDrawArraysInstanced := tglDrawArraysInstanced(dglGetProcAddress('glDrawArraysInstanced'));
  glDrawElementsInstanced := tglDrawElementsInstanced(dglGetProcAddress('glDrawElementsInstanced'));
  glTexBuffer := tglTexBuffer(dglGetProcAddress('glTexBuffer'));
  glPrimitiveRestartIndex := tglPrimitiveRestartIndex(dglGetProcAddress('glPrimitiveRestartIndex'));

  // GL_VERSION_3_2
  { OpenGL 3.2 also reuses entry points from these extensions: }
  Read_GL_ARB_draw_elements_base_vertex;
  Read_GL_ARB_provoking_vertex;
  Read_GL_ARB_sync;
  Read_GL_ARB_texture_multisample;

  glGetInteger64i_v := tglGetInteger64i_v(dglGetProcAddress('glGetInteger64i_v'));
  glGetBufferParameteri64v := tglGetBufferParameteri64v(dglGetProcAddress('glGetBufferParameteri64v'));
  glFramebufferTexture := tglFramebufferTexture(dglGetProcAddress('glFramebufferTexture'));
  //  glFramebufferTextureFace := t//  glFramebufferTextureFace(dglGetProcAddress('glFramebufferTextureFace'));

  // GL_VERSION_3_3
  { OpenGL 3.3 also reuses entry points from these extensions: }
  Read_GL_ARB_blend_func_extended;
  Read_GL_ARB_sampler_objects;
  { ARB_explicit_attrib_location, but it has none }
  { ARB_occlusion_query2 (no entry points) }
  { ARB_shader_bit_encoding (no entry points) }
  { ARB_texture_rgb10_a2ui (no entry points) }
  { ARB_texture_swizzle (no entry points) }
  Read_GL_ARB_timer_query;
  Read_GL_ARB_vertex_type_2_10_10_10_rev;

  glVertexAttribDivisor := tglVertexAttribDivisor(dglGetProcAddress('glVertexAttribDivisor'));

  // GL_VERSION_4_0
  { OpenGL 4.0 also reuses entry points from these extensions: }
  { ARB_texture_query_lod (no entry points) }
  Read_GL_ARB_draw_indirect;
  { ARB_gpu_shader5 (no entry points) }
  Read_GL_ARB_gpu_shader_fp64;
  Read_GL_ARB_shader_subroutine;
  Read_GL_ARB_tessellation_shader;
  { ARB_texture_buffer_object_rgb32 (no entry points) }
  { ARB_texture_cube_map_array (no entry points) }
  { ARB_texture_gather (no entry points) }
  Read_GL_ARB_transform_feedback2;
  Read_GL_ARB_transform_feedback3;

  glMinSampleShading := tglMinSampleShading(dglGetProcAddress('glMinSampleShading'));
  glBlendEquationi := tglBlendEquationi(dglGetProcAddress('glBlendEquationi'));
  glBlendEquationSeparatei := tglBlendEquationSeparatei(dglGetProcAddress('glBlendEquationSeparatei'));
  glBlendFunci := tglBlendFunci(dglGetProcAddress('glBlendFunci'));
  glBlendFuncSeparatei := tglBlendFuncSeparatei(dglGetProcAddress('glBlendFuncSeparatei'));

  // GL_VERSION_4_1
  { OpenGL 4.1 also reuses entry points from these extensions: }
  Read_GL_ARB_ES2_compatibility;
  Read_GL_ARB_get_program_binary;
  Read_GL_ARB_separate_shader_objects;
  { ARB_shader_precision (no entry points) }
  Read_GL_ARB_vertex_attrib_64bit;
  Read_GL_ARB_viewport_array;

  // GL_VERSION_4_2
  { OpenGL 4.2 reuses entry points from these extensions: }
  Read_GL_ARB_base_instance;
  //Read_GL_ARB_shading_language_420pack (no entry points)
  Read_GL_ARB_transform_feedback_instanced;
  //Read_GL_ARB_compressed_texture_pixel_storage (no entry points)
  //Read_GL_ARB_conservative_depth;
  Read_GL_ARB_internalformat_query;
  //Read_GL_ARB_map_buffer_alignment;
  Read_GL_ARB_shader_atomic_counters;
  Read_GL_ARB_shader_image_load_store;
  //Read_GL_ARB_shading_language_packing;
  Read_GL_ARB_texture_storage;

  // GL_VERSION_4_3
  // OpenGL 4.3 reuses entry points from these extensions:
  // Read_GL_ARB_arrays_of_arrays (none, GLSL only) (no entry points)
  // Read_GL_ARB_fragment_layer_viewport (none, GLSL only) (no entry points)
  // Read_GL_ARB_shader_image_size (none, GLSL only) (no entry points)
  // Read_GL_ARB_ES3_compatibility (no entry points)
  Read_GL_ARB_clear_buffer_object;
  Read_GL_ARB_compute_shader;
  Read_GL_ARB_copy_image;
  Read_GL_KHR_debug;
  // Read_GL_ARB_explicit_uniform_location  (no entry points)
  Read_GL_ARB_framebuffer_no_attachments;
  Read_GL_ARB_internalformat_query2;
  Read_GL_ARB_invalidate_subdata;
  Read_GL_ARB_multi_draw_indirect;
  Read_GL_ARB_program_interface_query;
  // Read_GL_ARB_robust_buffer_access_behavior (none)  (no entry points)
  Read_GL_ARB_shader_storage_buffer_object;
  // Read_GL_ARB_stencil_texturing  (no entry points)
  Read_GL_ARB_texture_buffer_range;
  // Read_GL_ARB_texture_query_levels (none)  (no entry points)
  Read_GL_ARB_texture_storage_multisample;
  Read_GL_ARB_texture_view;
  Read_GL_ARB_vertex_attrib_binding;

  Read_GL_4_4;
  Read_GL_4_5;
end;

method Read_GL_3DFX_tbuffer;
begin
  glTbufferMask3DFX := tglTbufferMask3DFX(dglGetProcAddress('glTbufferMask3DFX'));
end;

method Read_GL_APPLE_element_array;
begin
  glElementPointerAPPLE := tglElementPointerAPPLE(dglGetProcAddress('glElementPointerAPPLE'));
  glDrawElementArrayAPPLE := tglDrawElementArrayAPPLE(dglGetProcAddress('glDrawElementArrayAPPLE'));
  glDrawRangeElementArrayAPPLE := tglDrawRangeElementArrayAPPLE(dglGetProcAddress('glDrawRangeElementArrayAPPLE'));
  glMultiDrawElementArrayAPPLE := tglMultiDrawElementArrayAPPLE(dglGetProcAddress('glMultiDrawElementArrayAPPLE'));
  glMultiDrawRangeElementArrayAPPLE := tglMultiDrawRangeElementArrayAPPLE(dglGetProcAddress('glMultiDrawRangeElementArrayAPPLE'));
end;

method Read_GL_APPLE_fence;
begin
  glGenFencesAPPLE := tglGenFencesAPPLE(dglGetProcAddress('glGenFencesAPPLE'));
  glDeleteFencesAPPLE := tglDeleteFencesAPPLE(dglGetProcAddress('glDeleteFencesAPPLE'));
  glSetFenceAPPLE := tglSetFenceAPPLE(dglGetProcAddress('glSetFenceAPPLE'));
  glIsFenceAPPLE := tglIsFenceAPPLE(dglGetProcAddress('glIsFenceAPPLE'));
  glTestFenceAPPLE := tglTestFenceAPPLE(dglGetProcAddress('glTestFenceAPPLE'));
  glFinishFenceAPPLE := tglFinishFenceAPPLE(dglGetProcAddress('glFinishFenceAPPLE'));
  glTestObjectAPPLE := tglTestObjectAPPLE(dglGetProcAddress('glTestObjectAPPLE'));
  glFinishObjectAPPLE := tglFinishObjectAPPLE(dglGetProcAddress('glFinishObjectAPPLE'));
end;

method Read_GL_APPLE_vertex_array_object;
begin
  glBindVertexArrayAPPLE := tglBindVertexArrayAPPLE(dglGetProcAddress('glBindVertexArrayAPPLE'));
  glDeleteVertexArraysAPPLE := tglDeleteVertexArraysAPPLE(dglGetProcAddress('glDeleteVertexArraysAPPLE'));
  glGenVertexArraysAPPLE := tglGenVertexArraysAPPLE(dglGetProcAddress('glGenVertexArraysAPPLE'));
  glIsVertexArrayAPPLE := tglIsVertexArrayAPPLE(dglGetProcAddress('glIsVertexArrayAPPLE'));
end;

method Read_GL_APPLE_vertex_array_range;
begin
  glVertexArrayRangeAPPLE := tglVertexArrayRangeAPPLE(dglGetProcAddress('glVertexArrayRangeAPPLE'));
  glFlushVertexArrayRangeAPPLE := tglFlushVertexArrayRangeAPPLE(dglGetProcAddress('glFlushVertexArrayRangeAPPLE'));
  glVertexArrayParameteriAPPLE := tglVertexArrayParameteriAPPLE(dglGetProcAddress('glVertexArrayParameteriAPPLE'));
end;

method Read_GL_APPLE_texture_range;
begin
  glTextureRangeAPPLE := tglTextureRangeAPPLE(dglGetProcAddress('glTextureRangeAPPLE'));
  glGetTexParameterPointervAPPLE := tglGetTexParameterPointervAPPLE(dglGetProcAddress('glGetTexParameterPointervAPPLE'));
end;

method Read_GL_APPLE_vertex_program_evaluators;
begin
  glEnableVertexAttribAPPLE := tglEnableVertexAttribAPPLE(dglGetProcAddress('glEnableVertexAttribAPPLE'));
  glDisableVertexAttribAPPLE := tglDisableVertexAttribAPPLE(dglGetProcAddress('glDisableVertexAttribAPPLE'));
  glIsVertexAttribEnabledAPPLE := tglIsVertexAttribEnabledAPPLE(dglGetProcAddress('glIsVertexAttribEnabledAPPLE'));
  glMapVertexAttrib1dAPPLE := tglMapVertexAttrib1dAPPLE(dglGetProcAddress('glMapVertexAttrib1dAPPLE'));
  glMapVertexAttrib1fAPPLE := tglMapVertexAttrib1fAPPLE(dglGetProcAddress('glMapVertexAttrib1fAPPLE'));
  glMapVertexAttrib2dAPPLE := tglMapVertexAttrib2dAPPLE(dglGetProcAddress('glMapVertexAttrib2dAPPLE'));
  glMapVertexAttrib2fAPPLE := tglMapVertexAttrib2fAPPLE(dglGetProcAddress('glMapVertexAttrib2fAPPLE'));
end;

method Read_GL_APPLE_object_purgeable;
begin
  glObjectPurgeableAPPLE := tglObjectPurgeableAPPLE(dglGetProcAddress('glObjectPurgeableAPPLE'));
  glObjectUnpurgeableAPPLE := tglObjectUnpurgeableAPPLE(dglGetProcAddress('glObjectUnpurgeableAPPLE'));
  glGetObjectParameterivAPPLE := tglGetObjectParameterivAPPLE(dglGetProcAddress('glGetObjectParameterivAPPLE'));
end;

method Read_GL_ARB_matrix_palette;
begin
  glCurrentPaletteMatrixARB := tglCurrentPaletteMatrixARB(dglGetProcAddress('glCurrentPaletteMatrixARB'));
  glMatrixIndexubvARB := tglMatrixIndexubvARB(dglGetProcAddress('glMatrixIndexubvARB'));
  glMatrixIndexusvARB := tglMatrixIndexusvARB(dglGetProcAddress('glMatrixIndexusvARB'));
  glMatrixIndexuivARB := tglMatrixIndexuivARB(dglGetProcAddress('glMatrixIndexuivARB'));
  glMatrixIndexPointerARB := tglMatrixIndexPointerARB(dglGetProcAddress('glMatrixIndexPointerARB'));
end;

method Read_GL_ARB_multisample;
begin
  glSampleCoverageARB := tglSampleCoverageARB(dglGetProcAddress('glSampleCoverageARB'));
end;

method Read_GL_ARB_multitexture;
begin
  glActiveTextureARB := tglActiveTextureARB(dglGetProcAddress('glActiveTextureARB'));
  glClientActiveTextureARB := tglClientActiveTextureARB(dglGetProcAddress('glClientActiveTextureARB'));
  glMultiTexCoord1dARB := tglMultiTexCoord1dARB(dglGetProcAddress('glMultiTexCoord1dARB'));
  glMultiTexCoord1dvARB := tglMultiTexCoord1dvARB(dglGetProcAddress('glMultiTexCoord1dvARB'));
  glMultiTexCoord1fARB := tglMultiTexCoord1fARB(dglGetProcAddress('glMultiTexCoord1fARB'));
  glMultiTexCoord1fvARB := tglMultiTexCoord1fvARB(dglGetProcAddress('glMultiTexCoord1fvARB'));
  glMultiTexCoord1iARB := tglMultiTexCoord1iARB(dglGetProcAddress('glMultiTexCoord1iARB'));
  glMultiTexCoord1ivARB := tglMultiTexCoord1ivARB(dglGetProcAddress('glMultiTexCoord1ivARB'));
  glMultiTexCoord1sARB := tglMultiTexCoord1sARB(dglGetProcAddress('glMultiTexCoord1sARB'));
  glMultiTexCoord1svARB := tglMultiTexCoord1svARB(dglGetProcAddress('glMultiTexCoord1svARB'));
  glMultiTexCoord2dARB := tglMultiTexCoord2dARB(dglGetProcAddress('glMultiTexCoord2dARB'));
  glMultiTexCoord2dvARB := tglMultiTexCoord2dvARB(dglGetProcAddress('glMultiTexCoord2dvARB'));
  glMultiTexCoord2fARB := tglMultiTexCoord2fARB(dglGetProcAddress('glMultiTexCoord2fARB'));
  glMultiTexCoord2fvARB := tglMultiTexCoord2fvARB(dglGetProcAddress('glMultiTexCoord2fvARB'));
  glMultiTexCoord2iARB := tglMultiTexCoord2iARB(dglGetProcAddress('glMultiTexCoord2iARB'));
  glMultiTexCoord2ivARB := tglMultiTexCoord2ivARB(dglGetProcAddress('glMultiTexCoord2ivARB'));
  glMultiTexCoord2sARB := tglMultiTexCoord2sARB(dglGetProcAddress('glMultiTexCoord2sARB'));
  glMultiTexCoord2svARB := tglMultiTexCoord2svARB(dglGetProcAddress('glMultiTexCoord2svARB'));
  glMultiTexCoord3dARB := tglMultiTexCoord3dARB(dglGetProcAddress('glMultiTexCoord3dARB'));
  glMultiTexCoord3dvARB := tglMultiTexCoord3dvARB(dglGetProcAddress('glMultiTexCoord3dvARB'));
  glMultiTexCoord3fARB := tglMultiTexCoord3fARB(dglGetProcAddress('glMultiTexCoord3fARB'));
  glMultiTexCoord3fvARB := tglMultiTexCoord3fvARB(dglGetProcAddress('glMultiTexCoord3fvARB'));
  glMultiTexCoord3iARB := tglMultiTexCoord3iARB(dglGetProcAddress('glMultiTexCoord3iARB'));
  glMultiTexCoord3ivARB := tglMultiTexCoord3ivARB(dglGetProcAddress('glMultiTexCoord3ivARB'));
  glMultiTexCoord3sARB := tglMultiTexCoord3sARB(dglGetProcAddress('glMultiTexCoord3sARB'));
  glMultiTexCoord3svARB := tglMultiTexCoord3svARB(dglGetProcAddress('glMultiTexCoord3svARB'));
  glMultiTexCoord4dARB := tglMultiTexCoord4dARB(dglGetProcAddress('glMultiTexCoord4dARB'));
  glMultiTexCoord4dvARB := tglMultiTexCoord4dvARB(dglGetProcAddress('glMultiTexCoord4dvARB'));
  glMultiTexCoord4fARB := tglMultiTexCoord4fARB(dglGetProcAddress('glMultiTexCoord4fARB'));
  glMultiTexCoord4fvARB := tglMultiTexCoord4fvARB(dglGetProcAddress('glMultiTexCoord4fvARB'));
  glMultiTexCoord4iARB := tglMultiTexCoord4iARB(dglGetProcAddress('glMultiTexCoord4iARB'));
  glMultiTexCoord4ivARB := tglMultiTexCoord4ivARB(dglGetProcAddress('glMultiTexCoord4ivARB'));
  glMultiTexCoord4sARB := tglMultiTexCoord4sARB(dglGetProcAddress('glMultiTexCoord4sARB'));
  glMultiTexCoord4svARB := tglMultiTexCoord4svARB(dglGetProcAddress('glMultiTexCoord4svARB'));
end;

method Read_GL_ARB_point_parameters;
begin
  glPointParameterfARB := tglPointParameterfARB(dglGetProcAddress('glPointParameterfARB'));
  glPointParameterfvARB := tglPointParameterfvARB(dglGetProcAddress('glPointParameterfvARB'));
end;

method Read_GL_ARB_texture_compression;
begin
  glCompressedTexImage3DARB := tglCompressedTexImage3DARB(dglGetProcAddress('glCompressedTexImage3DARB'));
  glCompressedTexImage2DARB := tglCompressedTexImage2DARB(dglGetProcAddress('glCompressedTexImage2DARB'));
  glCompressedTexImage1DARB := tglCompressedTexImage1DARB(dglGetProcAddress('glCompressedTexImage1DARB'));
  glCompressedTexSubImage3DARB := tglCompressedTexSubImage3DARB(dglGetProcAddress('glCompressedTexSubImage3DARB'));
  glCompressedTexSubImage2DARB := tglCompressedTexSubImage2DARB(dglGetProcAddress('glCompressedTexSubImage2DARB'));
  glCompressedTexSubImage1DARB := tglCompressedTexSubImage1DARB(dglGetProcAddress('glCompressedTexSubImage1DARB'));
  glGetCompressedTexImageARB := tglGetCompressedTexImageARB(dglGetProcAddress('glGetCompressedTexImageARB'));
end;

method Read_GL_ARB_transpose_matrix;
begin
  glLoadTransposeMatrixfARB := tglLoadTransposeMatrixfARB(dglGetProcAddress('glLoadTransposeMatrixfARB'));
  glLoadTransposeMatrixdARB := tglLoadTransposeMatrixdARB(dglGetProcAddress('glLoadTransposeMatrixdARB'));
  glMultTransposeMatrixfARB := tglMultTransposeMatrixfARB(dglGetProcAddress('glMultTransposeMatrixfARB'));
  glMultTransposeMatrixdARB := tglMultTransposeMatrixdARB(dglGetProcAddress('glMultTransposeMatrixdARB'));
end;

method Read_GL_ARB_vertex_blend;
begin
  glWeightbvARB := tglWeightbvARB(dglGetProcAddress('glWeightbvARB'));
  glWeightsvARB := tglWeightsvARB(dglGetProcAddress('glWeightsvARB'));
  glWeightivARB := tglWeightivARB(dglGetProcAddress('glWeightivARB'));
  glWeightfvARB := tglWeightfvARB(dglGetProcAddress('glWeightfvARB'));
  glWeightdvARB := tglWeightdvARB(dglGetProcAddress('glWeightdvARB'));
  glWeightubvARB := tglWeightubvARB(dglGetProcAddress('glWeightubvARB'));
  glWeightusvARB := tglWeightusvARB(dglGetProcAddress('glWeightusvARB'));
  glWeightuivARB := tglWeightuivARB(dglGetProcAddress('glWeightuivARB'));
  glWeightPointerARB := tglWeightPointerARB(dglGetProcAddress('glWeightPointerARB'));
  glVertexBlendARB := tglVertexBlendARB(dglGetProcAddress('glVertexBlendARB'));
end;

method Read_GL_ARB_vertex_buffer_object;
begin
  glBindBufferARB := tglBindBufferARB(dglGetProcAddress('glBindBufferARB'));
  glDeleteBuffersARB := tglDeleteBuffersARB(dglGetProcAddress('glDeleteBuffersARB'));
  glGenBuffersARB := tglGenBuffersARB(dglGetProcAddress('glGenBuffersARB'));
  glIsBufferARB := tglIsBufferARB(dglGetProcAddress('glIsBufferARB'));
  glBufferDataARB := tglBufferDataARB(dglGetProcAddress('glBufferDataARB'));
  glBufferSubDataARB := tglBufferSubDataARB(dglGetProcAddress('glBufferSubDataARB'));
  glGetBufferSubDataARB := tglGetBufferSubDataARB(dglGetProcAddress('glGetBufferSubDataARB'));
  glMapBufferARB := tglMapBufferARB(dglGetProcAddress('glMapBufferARB'));
  glUnmapBufferARB := tglUnmapBufferARB(dglGetProcAddress('glUnmapBufferARB'));
  glGetBufferParameterivARB := tglGetBufferParameterivARB(dglGetProcAddress('glGetBufferParameterivARB'));
  glGetBufferPointervARB := tglGetBufferPointervARB(dglGetProcAddress('glGetBufferPointervARB'));
end;

method Read_GL_ARB_vertex_program;
begin
  glVertexAttrib1dARB := tglVertexAttrib1dARB(dglGetProcAddress('glVertexAttrib1dARB'));
  glVertexAttrib1dvARB := tglVertexAttrib1dvARB(dglGetProcAddress('glVertexAttrib1dvARB'));
  glVertexAttrib1fARB := tglVertexAttrib1fARB(dglGetProcAddress('glVertexAttrib1fARB'));
  glVertexAttrib1fvARB := tglVertexAttrib1fvARB(dglGetProcAddress('glVertexAttrib1fvARB'));
  glVertexAttrib1sARB := tglVertexAttrib1sARB(dglGetProcAddress('glVertexAttrib1sARB'));
  glVertexAttrib1svARB := tglVertexAttrib1svARB(dglGetProcAddress('glVertexAttrib1svARB'));
  glVertexAttrib2dARB := tglVertexAttrib2dARB(dglGetProcAddress('glVertexAttrib2dARB'));
  glVertexAttrib2dvARB := tglVertexAttrib2dvARB(dglGetProcAddress('glVertexAttrib2dvARB'));
  glVertexAttrib2fARB := tglVertexAttrib2fARB(dglGetProcAddress('glVertexAttrib2fARB'));
  glVertexAttrib2fvARB := tglVertexAttrib2fvARB(dglGetProcAddress('glVertexAttrib2fvARB'));
  glVertexAttrib2sARB := tglVertexAttrib2sARB(dglGetProcAddress('glVertexAttrib2sARB'));
  glVertexAttrib2svARB := tglVertexAttrib2svARB(dglGetProcAddress('glVertexAttrib2svARB'));
  glVertexAttrib3dARB := tglVertexAttrib3dARB(dglGetProcAddress('glVertexAttrib3dARB'));
  glVertexAttrib3dvARB := tglVertexAttrib3dvARB(dglGetProcAddress('glVertexAttrib3dvARB'));
  glVertexAttrib3fARB := tglVertexAttrib3fARB(dglGetProcAddress('glVertexAttrib3fARB'));
  glVertexAttrib3fvARB := tglVertexAttrib3fvARB(dglGetProcAddress('glVertexAttrib3fvARB'));
  glVertexAttrib3sARB := tglVertexAttrib3sARB(dglGetProcAddress('glVertexAttrib3sARB'));
  glVertexAttrib3svARB := tglVertexAttrib3svARB(dglGetProcAddress('glVertexAttrib3svARB'));
  glVertexAttrib4NbvARB := tglVertexAttrib4NbvARB(dglGetProcAddress('glVertexAttrib4NbvARB'));
  glVertexAttrib4NivARB := tglVertexAttrib4NivARB(dglGetProcAddress('glVertexAttrib4NivARB'));
  glVertexAttrib4NsvARB := tglVertexAttrib4NsvARB(dglGetProcAddress('glVertexAttrib4NsvARB'));
  glVertexAttrib4NubARB := tglVertexAttrib4NubARB(dglGetProcAddress('glVertexAttrib4NubARB'));
  glVertexAttrib4NubvARB := tglVertexAttrib4NubvARB(dglGetProcAddress('glVertexAttrib4NubvARB'));
  glVertexAttrib4NuivARB := tglVertexAttrib4NuivARB(dglGetProcAddress('glVertexAttrib4NuivARB'));
  glVertexAttrib4NusvARB := tglVertexAttrib4NusvARB(dglGetProcAddress('glVertexAttrib4NusvARB'));
  glVertexAttrib4bvARB := tglVertexAttrib4bvARB(dglGetProcAddress('glVertexAttrib4bvARB'));
  glVertexAttrib4dARB := tglVertexAttrib4dARB(dglGetProcAddress('glVertexAttrib4dARB'));
  glVertexAttrib4dvARB := tglVertexAttrib4dvARB(dglGetProcAddress('glVertexAttrib4dvARB'));
  glVertexAttrib4fARB := tglVertexAttrib4fARB(dglGetProcAddress('glVertexAttrib4fARB'));
  glVertexAttrib4fvARB := tglVertexAttrib4fvARB(dglGetProcAddress('glVertexAttrib4fvARB'));
  glVertexAttrib4ivARB := tglVertexAttrib4ivARB(dglGetProcAddress('glVertexAttrib4ivARB'));
  glVertexAttrib4sARB := tglVertexAttrib4sARB(dglGetProcAddress('glVertexAttrib4sARB'));
  glVertexAttrib4svARB := tglVertexAttrib4svARB(dglGetProcAddress('glVertexAttrib4svARB'));
  glVertexAttrib4ubvARB := tglVertexAttrib4ubvARB(dglGetProcAddress('glVertexAttrib4ubvARB'));
  glVertexAttrib4uivARB := tglVertexAttrib4uivARB(dglGetProcAddress('glVertexAttrib4uivARB'));
  glVertexAttrib4usvARB := tglVertexAttrib4usvARB(dglGetProcAddress('glVertexAttrib4usvARB'));
  glVertexAttribPointerARB := tglVertexAttribPointerARB(dglGetProcAddress('glVertexAttribPointerARB'));
  glEnableVertexAttribArrayARB := tglEnableVertexAttribArrayARB(dglGetProcAddress('glEnableVertexAttribArrayARB'));
  glDisableVertexAttribArrayARB := tglDisableVertexAttribArrayARB(dglGetProcAddress('glDisableVertexAttribArrayARB'));
  glProgramStringARB := tglProgramStringARB(dglGetProcAddress('glProgramStringARB'));
  glBindProgramARB := tglBindProgramARB(dglGetProcAddress('glBindProgramARB'));
  glDeleteProgramsARB := tglDeleteProgramsARB(dglGetProcAddress('glDeleteProgramsARB'));
  glGenProgramsARB := tglGenProgramsARB(dglGetProcAddress('glGenProgramsARB'));
  glProgramEnvParameter4dARB := tglProgramEnvParameter4dARB(dglGetProcAddress('glProgramEnvParameter4dARB'));
  glProgramEnvParameter4dvARB := tglProgramEnvParameter4dvARB(dglGetProcAddress('glProgramEnvParameter4dvARB'));
  glProgramEnvParameter4fARB := tglProgramEnvParameter4fARB(dglGetProcAddress('glProgramEnvParameter4fARB'));
  glProgramEnvParameter4fvARB := tglProgramEnvParameter4fvARB(dglGetProcAddress('glProgramEnvParameter4fvARB'));
  glProgramLocalParameter4dARB := tglProgramLocalParameter4dARB(dglGetProcAddress('glProgramLocalParameter4dARB'));
  glProgramLocalParameter4dvARB := tglProgramLocalParameter4dvARB(dglGetProcAddress('glProgramLocalParameter4dvARB'));
  glProgramLocalParameter4fARB := tglProgramLocalParameter4fARB(dglGetProcAddress('glProgramLocalParameter4fARB'));
  glProgramLocalParameter4fvARB := tglProgramLocalParameter4fvARB(dglGetProcAddress('glProgramLocalParameter4fvARB'));
  glGetProgramEnvParameterdvARB := tglGetProgramEnvParameterdvARB(dglGetProcAddress('glGetProgramEnvParameterdvARB'));
  glGetProgramEnvParameterfvARB := tglGetProgramEnvParameterfvARB(dglGetProcAddress('glGetProgramEnvParameterfvARB'));
  glGetProgramLocalParameterdvARB := tglGetProgramLocalParameterdvARB(dglGetProcAddress('glGetProgramLocalParameterdvARB'));
  glGetProgramLocalParameterfvARB := tglGetProgramLocalParameterfvARB(dglGetProcAddress('glGetProgramLocalParameterfvARB'));
  glGetProgramivARB := tglGetProgramivARB(dglGetProcAddress('glGetProgramivARB'));
  glGetProgramStringARB := tglGetProgramStringARB(dglGetProcAddress('glGetProgramStringARB'));
  glGetVertexAttribdvARB := tglGetVertexAttribdvARB(dglGetProcAddress('glGetVertexAttribdvARB'));
  glGetVertexAttribfvARB := tglGetVertexAttribfvARB(dglGetProcAddress('glGetVertexAttribfvARB'));
  glGetVertexAttribivARB := tglGetVertexAttribivARB(dglGetProcAddress('glGetVertexAttribivARB'));
  glGetVertexAttribPointervARB := tglGetVertexAttribPointervARB(dglGetProcAddress('glGetVertexAttribPointervARB'));
  glIsProgramARB := tglIsProgramARB(dglGetProcAddress('glIsProgramARB'));
end;

method Read_GL_ARB_window_pos;
begin
  glWindowPos2dARB := tglWindowPos2dARB(dglGetProcAddress('glWindowPos2dARB'));
  glWindowPos2dvARB := tglWindowPos2dvARB(dglGetProcAddress('glWindowPos2dvARB'));
  glWindowPos2fARB := tglWindowPos2fARB(dglGetProcAddress('glWindowPos2fARB'));
  glWindowPos2fvARB := tglWindowPos2fvARB(dglGetProcAddress('glWindowPos2fvARB'));
  glWindowPos2iARB := tglWindowPos2iARB(dglGetProcAddress('glWindowPos2iARB'));
  glWindowPos2ivARB := tglWindowPos2ivARB(dglGetProcAddress('glWindowPos2ivARB'));
  glWindowPos2sARB := tglWindowPos2sARB(dglGetProcAddress('glWindowPos2sARB'));
  glWindowPos2svARB := tglWindowPos2svARB(dglGetProcAddress('glWindowPos2svARB'));
  glWindowPos3dARB := tglWindowPos3dARB(dglGetProcAddress('glWindowPos3dARB'));
  glWindowPos3dvARB := tglWindowPos3dvARB(dglGetProcAddress('glWindowPos3dvARB'));
  glWindowPos3fARB := tglWindowPos3fARB(dglGetProcAddress('glWindowPos3fARB'));
  glWindowPos3fvARB := tglWindowPos3fvARB(dglGetProcAddress('glWindowPos3fvARB'));
  glWindowPos3iARB := tglWindowPos3iARB(dglGetProcAddress('glWindowPos3iARB'));
  glWindowPos3ivARB := tglWindowPos3ivARB(dglGetProcAddress('glWindowPos3ivARB'));
  glWindowPos3sARB := tglWindowPos3sARB(dglGetProcAddress('glWindowPos3sARB'));
  glWindowPos3svARB := tglWindowPos3svARB(dglGetProcAddress('glWindowPos3svARB'));
end;

method Read_GL_ARB_draw_buffers;
begin
  glDrawBuffersARB := tglDrawBuffersARB(dglGetProcAddress('glDrawBuffersARB'));
end;

method Read_GL_ARB_color_buffer_float;
begin
  glClampColorARB := tglClampColorARB(dglGetProcAddress('glClampColorARB'));
end;

method Read_GL_ARB_Shader_Objects;
begin
  // GL_ARB_Shader_Objects
  glCreateShaderObjectARB := tglCreateShaderObjectARB(dglGetProcAddress('glCreateShaderObjectARB'));
  glShaderSourceARB := tglShaderSourceARB(dglGetProcAddress('glShaderSourceARB'));
  glCompileShaderARB := tglCompileShaderARB(dglGetProcAddress('glCompileShaderARB'));
  glDeleteObjectARB := tglDeleteObjectARB(dglGetProcAddress('glDeleteObjectARB'));
  glGetHandleARB := tglGetHandleARB(dglGetProcAddress('glGetHandleARB'));
  glDetachObjectARB := tglDetachObjectARB(dglGetProcAddress('glDetachObjectARB'));
  glCreateProgramObjectARB := tglCreateProgramObjectARB(dglGetProcAddress('glCreateProgramObjectARB'));
  glAttachObjectARB := tglAttachObjectARB(dglGetProcAddress('glAttachObjectARB'));
  glLinkProgramARB := tglLinkProgramARB(dglGetProcAddress('glLinkProgramARB'));
  glUseProgramObjectARB := tglUseProgramObjectARB(dglGetProcAddress('glUseProgramObjectARB'));
  glValidateProgramARB := tglValidateProgramARB(dglGetProcAddress('glValidateProgramARB'));
  glGetObjectParameterfvARB := tglGetObjectParameterfvARB(dglGetProcAddress('glGetObjectParameterfvARB'));
  glGetObjectParameterivARB := tglGetObjectParameterivARB(dglGetProcAddress('glGetObjectParameterivARB'));
  glGetActiveUniformARB := tglGetActiveUniformARB(dglGetProcAddress('glGetActiveUniformARB'));
  glGetAttachedObjectsARB := tglGetAttachedObjectsARB(dglGetProcAddress('glGetAttachedObjectsARB'));
  glGetShaderSourceARB := tglGetShaderSourceARB(dglGetProcAddress('glGetShaderSourceARB'));
  glGetUniformfvARB := tglGetUniformfvARB(dglGetProcAddress('glGetUniformfvARB'));
  glGetUniformivARB := tglGetUniformivARB(dglGetProcAddress('glGetUniformivARB'));
  glGetUniformLocationARB := tglGetUniformLocationARB(dglGetProcAddress('glGetUniformLocationARB'));
  glGetInfoLogARB := tglGetInfoLogARB(dglGetProcAddress('glGetInfoLogARB'));
  glUniform1fARB := tglUniform1fARB(dglGetProcAddress('glUniform1fARB'));
  glUniform2fARB := tglUniform2fARB(dglGetProcAddress('glUniform2fARB'));
  glUniform3fARB := tglUniform3fARB(dglGetProcAddress('glUniform3fARB'));
  glUniform4fARB := tglUniform4fARB(dglGetProcAddress('glUniform4fARB'));
  glUniform1iARB := tglUniform1iARB(dglGetProcAddress('glUniform1iARB'));
  glUniform2iARB := tglUniform2iARB(dglGetProcAddress('glUniform2iARB'));
  glUniform3iARB := tglUniform3iARB(dglGetProcAddress('glUniform3iARB'));
  glUniform4iARB := tglUniform4iARB(dglGetProcAddress('glUniform4iARB'));
  glUniform1fvARB := tglUniform1fvARB(dglGetProcAddress('glUniform1fvARB'));
  glUniform2fvARB := tglUniform2fvARB(dglGetProcAddress('glUniform2fvARB'));
  glUniform3fvARB := tglUniform3fvARB(dglGetProcAddress('glUniform3fvARB'));
  glUniform4fvARB := tglUniform4fvARB(dglGetProcAddress('glUniform4fvARB'));
  glUniform1ivARB := tglUniform1ivARB(dglGetProcAddress('glUniform1ivARB'));
  glUniform2ivARB := tglUniform2ivARB(dglGetProcAddress('glUniform2ivARB'));
  glUniform3ivARB := tglUniform3ivARB(dglGetProcAddress('glUniform3ivARB'));
  glUniform4ivARB := tglUniform4ivARB(dglGetProcAddress('glUniform4ivARB'));
  glUniformMatrix2fvARB := tglUniformMatrix2fvARB(dglGetProcAddress('glUniformMatrix2fvARB'));
  glUniformMatrix3fvARB := tglUniformMatrix3fvARB(dglGetProcAddress('glUniformMatrix3fvARB'));
  glUniformMatrix4fvARB := tglUniformMatrix4fvARB(dglGetProcAddress('glUniformMatrix4fvARB'));

  // GL_ARB_vertex_shader
  glGetActiveAttribARB := tglGetActiveAttribARB(dglGetProcAddress('glGetActiveAttribARB'));
  glGetAttribLocationARB := tglGetAttribLocationARB(dglGetProcAddress('glGetAttribLocationARB'));
  glBindAttribLocationARB := tglBindAttribLocationARB(dglGetProcAddress('glBindAttribLocationARB'));
  glGetVertexAttribPointervARB := tglGetVertexAttribPointervARB(dglGetProcAddress('glGetVertexAttribPointervARB'));
end;

method Read_GL_ARB_occlusion_query;
begin
  glGenQueriesARB := tglGenQueriesARB(dglGetProcAddress('glGenQueriesARB'));
  glDeleteQueriesARB := tglDeleteQueriesARB(dglGetProcAddress('glDeleteQueriesARB'));
  glIsQueryARB := tglIsQueryARB(dglGetProcAddress('glIsQueryARB'));
  glBeginQueryARB := tglBeginQueryARB(dglGetProcAddress('glBeginQueryARB'));
  glEndQueryARB := tglEndQueryARB(dglGetProcAddress('glEndQueryARB'));
  glGetQueryivARB := tglGetQueryivARB(dglGetProcAddress('glGetQueryivARB'));
  glGetQueryObjectivARB := tglGetQueryObjectivARB(dglGetProcAddress('glGetQueryObjectivARB'));
  glGetQueryObjectuivARB := tglGetQueryObjectuivARB(dglGetProcAddress('glGetQueryObjectuivARB'));
end;

method Read_GL_ARB_draw_instanced;
begin
  glDrawArraysInstancedARB := tglDrawArraysInstancedARB(dglGetProcAddress('glDrawArraysInstancedARB'));
  glDrawElementsInstancedARB := tglDrawElementsInstancedARB(dglGetProcAddress('glDrawElementsInstancedARB'));
end;

method Read_GL_ARB_framebuffer_object;
begin
  glIsRenderbuffer := tglIsRenderbuffer(dglGetProcAddress('glIsRenderbuffer'));
  glBindRenderbuffer := tglBindRenderbuffer(dglGetProcAddress('glBindRenderbuffer'));
  glDeleteRenderbuffers := tglDeleteRenderbuffers(dglGetProcAddress('glDeleteRenderbuffers'));
  glGenRenderbuffers := tglGenRenderbuffers(dglGetProcAddress('glGenRenderbuffers'));
  glRenderbufferStorage := tglRenderbufferStorage(dglGetProcAddress('glRenderbufferStorage'));
  glGetRenderbufferParameteriv := tglGetRenderbufferParameteriv(dglGetProcAddress('glGetRenderbufferParameteriv'));
  glIsFramebuffer := tglIsFramebuffer(dglGetProcAddress('glIsFramebuffer'));
  glBindFramebuffer := tglBindFramebuffer(dglGetProcAddress('glBindFramebuffer'));
  glDeleteFramebuffers := tglDeleteFramebuffers(dglGetProcAddress('glDeleteFramebuffers'));
  glGenFramebuffers := tglGenFramebuffers(dglGetProcAddress('glGenFramebuffers'));
  glCheckFramebufferStatus := tglCheckFramebufferStatus(dglGetProcAddress('glCheckFramebufferStatus'));
  glFramebufferTexture1D := tglFramebufferTexture1D(dglGetProcAddress('glFramebufferTexture1D'));
  glFramebufferTexture2D := tglFramebufferTexture2D(dglGetProcAddress('glFramebufferTexture2D'));
  glFramebufferTexture3D := tglFramebufferTexture3D(dglGetProcAddress('glFramebufferTexture3D'));
  glFramebufferRenderbuffer := tglFramebufferRenderbuffer(dglGetProcAddress('glFramebufferRenderbuffer'));
  glGetFramebufferAttachmentParameteriv := tglGetFramebufferAttachmentParameteriv(dglGetProcAddress('glGetFramebufferAttachmentParameteriv'));
  glGenerateMipmap := tglGenerateMipmap(dglGetProcAddress('glGenerateMipmap'));
  glBlitFramebuffer := tglBlitFramebuffer(dglGetProcAddress('glBlitFramebuffer'));
  glRenderbufferStorageMultisample := tglRenderbufferStorageMultisample(dglGetProcAddress('glRenderbufferStorageMultisample'));
  glFramebufferTextureLayer := tglFramebufferTextureLayer(dglGetProcAddress('glFramebufferTextureLayer'));
end;

method Read_GL_ARB_geometry_shader4;
begin
  glProgramParameteriARB := tglProgramParameteriARB(dglGetProcAddress('glProgramParameteriARB'));
  glFramebufferTextureARB := tglFramebufferTextureARB(dglGetProcAddress('glFramebufferTextureARB'));
  glFramebufferTextureLayerARB := tglFramebufferTextureLayerARB(dglGetProcAddress('glFramebufferTextureLayerARB'));
  glFramebufferTextureFaceARB := tglFramebufferTextureFaceARB(dglGetProcAddress('glFramebufferTextureFaceARB'));
end;

method Read_GL_ARB_instanced_arrays;
begin
  glVertexAttribDivisorARB := tglVertexAttribDivisorARB(dglGetProcAddress('glVertexAttribDivisorARB'));
end;

method Read_GL_ARB_map_buffer_range;
begin
  glMapBufferRange := tglMapBufferRange(dglGetProcAddress('glMapBufferRange'));
  glFlushMappedBufferRange := tglFlushMappedBufferRange(dglGetProcAddress('glFlushMappedBufferRange'));
end;

method Read_GL_ARB_texture_buffer_object;
begin
  glTexBufferARB := tglTexBufferARB(dglGetProcAddress('glTexBufferARB'));
end;

method Read_GL_ARB_vertex_array_object;
begin
  glBindVertexArray := tglBindVertexArray(dglGetProcAddress('glBindVertexArray'));
  glDeleteVertexArrays := tglDeleteVertexArrays(dglGetProcAddress('glDeleteVertexArrays'));
  glGenVertexArrays := tglGenVertexArrays(dglGetProcAddress('glGenVertexArrays'));
  glIsVertexArray := tglIsVertexArray(dglGetProcAddress('glIsVertexArray'));
end;

method Read_GL_ARB_uniform_buffer_object;
begin
  glGetUniformIndices := tglGetUniformIndices(dglGetProcAddress('glGetUniformIndices'));
  glGetActiveUniformsiv := tglGetActiveUniformsiv(dglGetProcAddress('glGetActiveUniformsiv'));
  glGetActiveUniformName := tglGetActiveUniformName(dglGetProcAddress('glGetActiveUniformName'));
  glGetUniformBlockIndex := tglGetUniformBlockIndex(dglGetProcAddress('glGetUniformBlockIndex'));
  glGetActiveUniformBlockiv := tglGetActiveUniformBlockiv(dglGetProcAddress('glGetActiveUniformBlockiv'));
  glGetActiveUniformBlockName := tglGetActiveUniformBlockName(dglGetProcAddress('glGetActiveUniformBlockName'));
  glUniformBlockBinding := tglUniformBlockBinding(dglGetProcAddress('glUniformBlockBinding'));
end;

method Read_GL_ARB_copy_buffer;
begin
  glCopyBufferSubData := tglCopyBufferSubData(dglGetProcAddress('glCopyBufferSubData'));
end;

method Read_GL_ARB_draw_elements_base_vertex;
begin
  glDrawElementsBaseVertex := tglDrawElementsBaseVertex(dglGetProcAddress('glDrawElementsBaseVertex'));
  glDrawRangeElementsBaseVertex := tglDrawRangeElementsBaseVertex(dglGetProcAddress('glDrawRangeElementsBaseVertex'));
  glDrawElementsInstancedBaseVertex := tglDrawElementsInstancedBaseVertex(dglGetProcAddress('glDrawElementsInstancedBaseVertex'));
  glMultiDrawElementsBaseVertex := tglMultiDrawElementsBaseVertex(dglGetProcAddress('glMultiDrawElementsBaseVertex'));
end;

method Read_GL_ARB_provoking_vertex;
begin
  glProvokingVertex := tglProvokingVertex(dglGetProcAddress('glProvokingVertex'));
end;

method Read_GL_ARB_sync;
begin
  glFenceSync := tglFenceSync(dglGetProcAddress('glFenceSync'));
  glIsSync := tglIsSync(dglGetProcAddress('glIsSync'));
  glDeleteSync := tglDeleteSync(dglGetProcAddress('glDeleteSync'));
  glClientWaitSync := tglClientWaitSync(dglGetProcAddress('glClientWaitSync'));
  glWaitSync := tglWaitSync(dglGetProcAddress('glWaitSync'));
  glGetInteger64v := tglGetInteger64v(dglGetProcAddress('glGetInteger64v'));
  glGetSynciv := tglGetSynciv(dglGetProcAddress('glGetSynciv'));
end;

method Read_GL_ARB_texture_multisample;
begin
  glTexImage2DMultisample := tglTexImage2DMultisample(dglGetProcAddress('glTexImage2DMultisample'));
  glTexImage3DMultisample := tglTexImage3DMultisample(dglGetProcAddress('glTexImage3DMultisample'));
  glGetMultisamplefv := tglGetMultisamplefv(dglGetProcAddress('glGetMultisamplefv'));
  glSampleMaski := tglSampleMaski(dglGetProcAddress('glSampleMaski'));
end;

method Read_GL_ARB_draw_buffers_blend;
begin
  glBlendEquationiARB := tglBlendEquationiARB(dglGetProcAddress('glBlendEquationiARB'));
  glBlendEquationSeparateiARB := tglBlendEquationSeparateiARB(dglGetProcAddress('glBlendEquationSeparateiARB'));
  glBlendFunciARB := tglBlendFunciARB(dglGetProcAddress('glBlendFunciARB'));
  glBlendFuncSeparateiARB := tglBlendFuncSeparateiARB(dglGetProcAddress('glBlendFuncSeparateiARB'));
end;

method Read_GL_ARB_sample_shading;
begin
  glMinSampleShadingARB := tglMinSampleShadingARB(dglGetProcAddress('glMinSampleShadingARB'));
end;

method Read_GL_ARB_sample_locations;
begin
  glFramebufferSampleLocationsfvARB := tglFramebufferSampleLocationsfvARB(dglGetProcAddress('glFramebufferSampleLocationsfvARB'));
  glNamedFramebufferSampleLocationsfvARB := tglNamedFramebufferSampleLocationsfvARB(dglGetProcAddress('glNamedFramebufferSampleLocationsfvARB'));
  glEvaluateDepthValuesARB := tglEvaluateDepthValuesARB(dglGetProcAddress('glEvaluateDepthValuesARB'));
end;

method Read_GL_ARB_shading_language_include;
begin
  glNamedStringARB := tglNamedStringARB(dglGetProcAddress('glNamedStringARB'));
  glDeleteNamedStringARB := tglDeleteNamedStringARB(dglGetProcAddress('glDeleteNamedStringARB'));
  glCompileShaderIncludeARB := tglCompileShaderIncludeARB(dglGetProcAddress('glCompileShaderIncludeARB'));
  glIsNamedStringARB := tglIsNamedStringARB(dglGetProcAddress('glIsNamedStringARB'));
  glGetNamedStringARB := tglGetNamedStringARB(dglGetProcAddress('glGetNamedStringARB'));
  glGetNamedStringivARB := tglGetNamedStringivARB(dglGetProcAddress('glGetNamedStringivARB'));
end;

method Read_GL_ARB_sparse_texture;
begin
  glTexPageCommitmentARB := tglTexPageCommitmentARB(dglGetProcAddress('glTexPageCommitmentARB'));
end;

method Read_GL_ARB_sparse_buffer;
begin
  glBufferPageCommitmentARB := tglBufferPageCommitmentARB(dglGetProcAddress('glBufferPageCommitmentARB'));
  glNamedBufferPageCommitmentEXT := tglNamedBufferPageCommitmentEXT(dglGetProcAddress('glNamedBufferPageCommitmentEXT'));
  glNamedBufferPageCommitmentARB := tglNamedBufferPageCommitmentARB(dglGetProcAddress('glNamedBufferPageCommitmentARB'));
end;

method Read_GL_KHR_blend_equation_advanced;
begin
  glBlendBarrierKHR := tglBlendBarrierKHR(dglGetProcAddress('glBlendBarrierKHR'));
end;


method Read_GL_ARB_blend_func_extended;
begin
  glBindFragDataLocationIndexed := tglBindFragDataLocationIndexed(dglGetProcAddress('glBindFragDataLocationIndexed'));
  glGetFragDataIndex := tglGetFragDataIndex(dglGetProcAddress('glGetFragDataIndex'));
end;

method Read_GL_ARB_sampler_objects;
begin
  glGenSamplers := tglGenSamplers(dglGetProcAddress('glGenSamplers'));
  glDeleteSamplers := tglDeleteSamplers(dglGetProcAddress('glDeleteSamplers'));
  glIsSampler := tglIsSampler(dglGetProcAddress('glIsSampler'));
  glBindSampler := tglBindSampler(dglGetProcAddress('glBindSampler'));
  glSamplerParameteri := tglSamplerParameteri(dglGetProcAddress('glSamplerParameteri'));
  glSamplerParameteriv := tglSamplerParameteriv(dglGetProcAddress('glSamplerParameteriv'));
  glSamplerParameterf := tglSamplerParameterf(dglGetProcAddress('glSamplerParameterf'));
  glSamplerParameterfv := tglSamplerParameterfv(dglGetProcAddress('glSamplerParameterfv'));
  glSamplerParameterIiv := tglSamplerParameterIiv(dglGetProcAddress('glSamplerParameterIiv'));
  glSamplerParameterIuiv := tglSamplerParameterIuiv(dglGetProcAddress('glSamplerParameterIuiv'));
  glGetSamplerParameteriv := tglGetSamplerParameteriv(dglGetProcAddress('glGetSamplerParameteriv'));
  glGetSamplerParameterIiv := tglGetSamplerParameterIiv(dglGetProcAddress('glGetSamplerParameterIiv'));
  glGetSamplerParameterfv := tglGetSamplerParameterfv(dglGetProcAddress('glGetSamplerParameterfv'));
  glGetSamplerParameterIuiv := tglGetSamplerParameterIuiv(dglGetProcAddress('glGetSamplerParameterIuiv'));
end;

method Read_GL_ARB_timer_query;
begin
  glQueryCounter := tglQueryCounter(dglGetProcAddress('glQueryCounter'));
  glGetQueryObjecti64v := tglGetQueryObjecti64v(dglGetProcAddress('glGetQueryObjecti64v'));
  glGetQueryObjectui64v := tglGetQueryObjectui64v(dglGetProcAddress('glGetQueryObjectui64v'));
end;

method Read_GL_ARB_vertex_type_2_10_10_10_rev;
begin
  glVertexP2ui := tglVertexP2ui(dglGetProcAddress('glVertexP2ui'));
  glVertexP2uiv := tglVertexP2uiv(dglGetProcAddress('glVertexP2uiv'));
  glVertexP3ui := tglVertexP3ui(dglGetProcAddress('glVertexP3ui'));
  glVertexP3uiv := tglVertexP3uiv(dglGetProcAddress('glVertexP3uiv'));
  glVertexP4ui := tglVertexP4ui(dglGetProcAddress('glVertexP4ui'));
  glVertexP4uiv := tglVertexP4uiv(dglGetProcAddress('glVertexP4uiv'));
  glTexCoordP1ui := tglTexCoordP1ui(dglGetProcAddress('glTexCoordP1ui'));
  glTexCoordP1uiv := tglTexCoordP1uiv(dglGetProcAddress('glTexCoordP1uiv'));
  glTexCoordP2ui := tglTexCoordP2ui(dglGetProcAddress('glTexCoordP2ui'));
  glTexCoordP2uiv := tglTexCoordP2uiv(dglGetProcAddress('glTexCoordP2uiv'));
  glTexCoordP3ui := tglTexCoordP3ui(dglGetProcAddress('glTexCoordP3ui'));
  glTexCoordP3uiv := tglTexCoordP3uiv(dglGetProcAddress('glTexCoordP3uiv'));
  glTexCoordP4ui := tglTexCoordP4ui(dglGetProcAddress('glTexCoordP4ui'));
  glTexCoordP4uiv := tglTexCoordP4uiv(dglGetProcAddress('glTexCoordP4uiv'));
  glMultiTexCoordP1ui := tglMultiTexCoordP1ui(dglGetProcAddress('glMultiTexCoordP1ui'));
  glMultiTexCoordP1uiv := tglMultiTexCoordP1uiv(dglGetProcAddress('glMultiTexCoordP1uiv'));
  glMultiTexCoordP2ui := tglMultiTexCoordP2ui(dglGetProcAddress('glMultiTexCoordP2ui'));
  glMultiTexCoordP2uiv := tglMultiTexCoordP2uiv(dglGetProcAddress('glMultiTexCoordP2uiv'));
  glMultiTexCoordP3ui := tglMultiTexCoordP3ui(dglGetProcAddress('glMultiTexCoordP3ui'));
  glMultiTexCoordP3uiv := tglMultiTexCoordP3uiv(dglGetProcAddress('glMultiTexCoordP3uiv'));
  glMultiTexCoordP4ui := tglMultiTexCoordP4ui(dglGetProcAddress('glMultiTexCoordP4ui'));
  glMultiTexCoordP4uiv := tglMultiTexCoordP4uiv(dglGetProcAddress('glMultiTexCoordP4uiv'));
  glNormalP3ui := tglNormalP3ui(dglGetProcAddress('glNormalP3ui'));
  glNormalP3uiv := tglNormalP3uiv(dglGetProcAddress('glNormalP3uiv'));
  glColorP3ui := tglColorP3ui(dglGetProcAddress('glColorP3ui'));
  glColorP3uiv := tglColorP3uiv(dglGetProcAddress('glColorP3uiv'));
  glColorP4ui := tglColorP4ui(dglGetProcAddress('glColorP4ui'));
  glColorP4uiv := tglColorP4uiv(dglGetProcAddress('glColorP4uiv'));
  glSecondaryColorP3ui := tglSecondaryColorP3ui(dglGetProcAddress('glSecondaryColorP3ui'));
  glSecondaryColorP3uiv := tglSecondaryColorP3uiv(dglGetProcAddress('glSecondaryColorP3uiv'));
  glVertexAttribP1ui := tglVertexAttribP1ui(dglGetProcAddress('glVertexAttribP1ui'));
  glVertexAttribP1uiv := tglVertexAttribP1uiv(dglGetProcAddress('glVertexAttribP1uiv'));
  glVertexAttribP2ui := tglVertexAttribP2ui(dglGetProcAddress('glVertexAttribP2ui'));
  glVertexAttribP2uiv := tglVertexAttribP2uiv(dglGetProcAddress('glVertexAttribP2uiv'));
  glVertexAttribP3ui := tglVertexAttribP3ui(dglGetProcAddress('glVertexAttribP3ui'));
  glVertexAttribP3uiv := tglVertexAttribP3uiv(dglGetProcAddress('glVertexAttribP3uiv'));
  glVertexAttribP4ui := tglVertexAttribP4ui(dglGetProcAddress('glVertexAttribP4ui'));
  glVertexAttribP4uiv := tglVertexAttribP4uiv(dglGetProcAddress('glVertexAttribP4uiv'));
end;

method Read_GL_ARB_draw_indirect;
begin
  glDrawArraysIndirect := tglDrawArraysIndirect(dglGetProcAddress('glDrawArraysIndirect'));
  glDrawElementsIndirect := tglDrawElementsIndirect(dglGetProcAddress('glDrawElementsIndirect'));
end;

method Read_GL_ARB_gpu_shader_fp64;
begin
  glUniform1d := tglUniform1d(dglGetProcAddress('glUniform1d'));
  glUniform2d := tglUniform2d(dglGetProcAddress('glUniform2d'));
  glUniform3d := tglUniform3d(dglGetProcAddress('glUniform3d'));
  glUniform4d := tglUniform4d(dglGetProcAddress('glUniform4d'));
  glUniform1dv := tglUniform1dv(dglGetProcAddress('glUniform1dv'));
  glUniform2dv := tglUniform2dv(dglGetProcAddress('glUniform2dv'));
  glUniform3dv := tglUniform3dv(dglGetProcAddress('glUniform3dv'));
  glUniform4dv := tglUniform4dv(dglGetProcAddress('glUniform4dv'));
  glUniformMatrix2dv := tglUniformMatrix2dv(dglGetProcAddress('glUniformMatrix2dv'));
  glUniformMatrix3dv := tglUniformMatrix3dv(dglGetProcAddress('glUniformMatrix3dv'));
  glUniformMatrix4dv := tglUniformMatrix4dv(dglGetProcAddress('glUniformMatrix4dv'));
  glUniformMatrix2x3dv := tglUniformMatrix2x3dv(dglGetProcAddress('glUniformMatrix2x3dv'));
  glUniformMatrix2x4dv := tglUniformMatrix2x4dv(dglGetProcAddress('glUniformMatrix2x4dv'));
  glUniformMatrix3x2dv := tglUniformMatrix3x2dv(dglGetProcAddress('glUniformMatrix3x2dv'));
  glUniformMatrix3x4dv := tglUniformMatrix3x4dv(dglGetProcAddress('glUniformMatrix3x4dv'));
  glUniformMatrix4x2dv := tglUniformMatrix4x2dv(dglGetProcAddress('glUniformMatrix4x2dv'));
  glUniformMatrix4x3dv := tglUniformMatrix4x3dv(dglGetProcAddress('glUniformMatrix4x3dv'));
  glGetUniformdv := tglGetUniformdv(dglGetProcAddress('glGetUniformdv'));
end;

method Read_GL_ARB_gpu_shader_int64;
begin
  glUniform1i64ARB := tglUniform1i64ARB(dglGetProcAddress('glUniform1i64ARB'));
  glUniform2i64ARB := tglUniform2i64ARB(dglGetProcAddress('glUniform2i64ARB'));
  glUniform3i64ARB := tglUniform3i64ARB(dglGetProcAddress('glUniform3i64ARB'));
  glUniform4i64ARB := tglUniform4i64ARB(dglGetProcAddress('glUniform4i64ARB'));
  glUniform1i64vARB := tglUniform1i64vARB(dglGetProcAddress('glUniform1i64vARB'));
  glUniform2i64vARB := tglUniform2i64vARB(dglGetProcAddress('glUniform2i64vARB'));
  glUniform3i64vARB := tglUniform3i64vARB(dglGetProcAddress('glUniform3i64vARB'));
  glUniform4i64vARB := tglUniform4i64vARB(dglGetProcAddress('glUniform4i64vARB'));
  glUniform1ui64ARB := tglUniform1ui64ARB(dglGetProcAddress('glUniform1ui64ARB'));
  glUniform2ui64ARB := tglUniform2ui64ARB(dglGetProcAddress('glUniform2ui64ARB'));
  glUniform3ui64ARB := tglUniform3ui64ARB(dglGetProcAddress('glUniform3ui64ARB'));
  glUniform4ui64ARB := tglUniform4ui64ARB(dglGetProcAddress('glUniform4ui64ARB'));
  glUniform1ui64vARB := tglUniform1ui64vARB(dglGetProcAddress('glUniform1ui64vARB'));
  glUniform2ui64vARB := tglUniform2ui64vARB(dglGetProcAddress('glUniform2ui64vARB'));
  glUniform3ui64vARB := tglUniform3ui64vARB(dglGetProcAddress('glUniform3ui64vARB'));
  glUniform4ui64vARB := tglUniform4ui64vARB(dglGetProcAddress('glUniform4ui64vARB'));
  glGetUniformi64vARB := tglGetUniformi64vARB(dglGetProcAddress('glGetUniformi64vARB'));
  glGetUniformui64vARB := tglGetUniformui64vARB(dglGetProcAddress('glGetUniformui64vARB'));
  glGetnUniformi64vARB := tglGetnUniformi64vARB(dglGetProcAddress('glGetnUniformi64vARB'));
  glGetnUniformui64vARB := tglGetnUniformui64vARB(dglGetProcAddress('glGetnUniformui64vARB'));
  glProgramUniform1i64ARB := tglProgramUniform1i64ARB(dglGetProcAddress('glProgramUniform1i64ARB'));
  glProgramUniform2i64ARB := tglProgramUniform2i64ARB(dglGetProcAddress('glProgramUniform2i64ARB'));
  glProgramUniform3i64ARB := tglProgramUniform3i64ARB(dglGetProcAddress('glProgramUniform3i64ARB'));
  glProgramUniform4i64ARB := tglProgramUniform4i64ARB(dglGetProcAddress('glProgramUniform4i64ARB'));
  glProgramUniform1i64vARB := tglProgramUniform1i64vARB(dglGetProcAddress('glProgramUniform1i64vARB'));
  glProgramUniform2i64vARB := tglProgramUniform2i64vARB(dglGetProcAddress('glProgramUniform2i64vARB'));
  glProgramUniform3i64vARB := tglProgramUniform3i64vARB(dglGetProcAddress('glProgramUniform3i64vARB'));
  glProgramUniform4i64vARB := tglProgramUniform4i64vARB(dglGetProcAddress('glProgramUniform4i64vARB'));
  glProgramUniform1ui64ARB := tglProgramUniform1ui64ARB(dglGetProcAddress('glProgramUniform1ui64ARB'));
  glProgramUniform2ui64ARB := tglProgramUniform2ui64ARB(dglGetProcAddress('glProgramUniform2ui64ARB'));
  glProgramUniform3ui64ARB := tglProgramUniform3ui64ARB(dglGetProcAddress('glProgramUniform3ui64ARB'));
  glProgramUniform4ui64ARB := tglProgramUniform4ui64ARB(dglGetProcAddress('glProgramUniform4ui64ARB '));
  glProgramUniform1ui64vARB := tglProgramUniform1ui64vARB(dglGetProcAddress('glProgramUniform1ui64vARB'));
  glProgramUniform2ui64vARB := tglProgramUniform2ui64vARB(dglGetProcAddress('glProgramUniform2ui64vARB'));
  glProgramUniform3ui64vARB := tglProgramUniform3ui64vARB(dglGetProcAddress('glProgramUniform3ui64vARB'));
  glProgramUniform4ui64vARB := tglProgramUniform4ui64vARB(dglGetProcAddress('glProgramUniform4ui64vARB'));
end;

method Read_GL_ARB_shader_subroutine;
begin
  glGetSubroutineUniformLocation := tglGetSubroutineUniformLocation(dglGetProcAddress('glGetSubroutineUniformLocation'));
  glGetSubroutineIndex := tglGetSubroutineIndex(dglGetProcAddress('glGetSubroutineIndex'));
  glGetActiveSubroutineUniformiv := tglGetActiveSubroutineUniformiv(dglGetProcAddress('glGetActiveSubroutineUniformiv'));
  glGetActiveSubroutineUniformName := tglGetActiveSubroutineUniformName(dglGetProcAddress('glGetActiveSubroutineUniformName'));
  glGetActiveSubroutineName := tglGetActiveSubroutineName(dglGetProcAddress('glGetActiveSubroutineName'));
  glUniformSubroutinesuiv := tglUniformSubroutinesuiv(dglGetProcAddress('glUniformSubroutinesuiv'));
  glGetUniformSubroutineuiv := tglGetUniformSubroutineuiv(dglGetProcAddress('glGetUniformSubroutineuiv'));
  glGetProgramStageiv := tglGetProgramStageiv(dglGetProcAddress('glGetProgramStageiv'));
end;

method Read_GL_ARB_tessellation_shader;
begin
  glPatchParameteri := tglPatchParameteri(dglGetProcAddress('glPatchParameteri'));
  glPatchParameterfv := tglPatchParameterfv(dglGetProcAddress('glPatchParameterfv'));
end;

method Read_GL_ARB_transform_feedback2;
begin
  glBindTransformFeedback := tglBindTransformFeedback(dglGetProcAddress('glBindTransformFeedback'));
  glDeleteTransformFeedbacks := tglDeleteTransformFeedbacks(dglGetProcAddress('glDeleteTransformFeedbacks'));
  glGenTransformFeedbacks := tglGenTransformFeedbacks(dglGetProcAddress('glGenTransformFeedbacks'));
  glIsTransformFeedback := tglIsTransformFeedback(dglGetProcAddress('glIsTransformFeedback'));
  glPauseTransformFeedback := tglPauseTransformFeedback(dglGetProcAddress('glPauseTransformFeedback'));
  glResumeTransformFeedback := tglResumeTransformFeedback(dglGetProcAddress('glResumeTransformFeedback'));
  glDrawTransformFeedback := tglDrawTransformFeedback(dglGetProcAddress('glDrawTransformFeedback'));
end;

method Read_GL_ARB_transform_feedback3;
begin
  glDrawTransformFeedbackStream := tglDrawTransformFeedbackStream(dglGetProcAddress('glDrawTransformFeedbackStream'));
  glBeginQueryIndexed := tglBeginQueryIndexed(dglGetProcAddress('glBeginQueryIndexed'));
  glEndQueryIndexed := tglEndQueryIndexed(dglGetProcAddress('glEndQueryIndexed'));
  glGetQueryIndexediv := tglGetQueryIndexediv(dglGetProcAddress('glGetQueryIndexediv'));
end;

method Read_GL_ARB_ES2_compatibility;
begin
  glReleaseShaderCompiler := tglReleaseShaderCompiler(dglGetProcAddress('glReleaseShaderCompiler'));
  glShaderBinary := tglShaderBinary(dglGetProcAddress('glShaderBinary'));
  glGetShaderPrecisionFormat := tglGetShaderPrecisionFormat(dglGetProcAddress('glGetShaderPrecisionFormat'));
  glDepthRangef := tglDepthRangef(dglGetProcAddress('glDepthRangef'));
  glClearDepthf := tglClearDepthf(dglGetProcAddress('glClearDepthf'));
end;

method Read_GL_ARB_ES3_2_compatibility;
begin
  glPrimitiveBoundingBoxARB := tglPrimitiveBoundingBoxARB(dglGetProcAddress('glPrimitiveBoundingBoxARB'));
end;

method Read_GL_ARB_parallel_shader_compile;
begin
  glMaxShaderCompilerThreadsARB := tglMaxShaderCompilerThreadsARB(dglGetProcAddress('glMaxShaderCompilerThreadsARB'));
end;

method Read_GL_ARB_get_program_binary;
begin
  glGetProgramBinary := tglGetProgramBinary(dglGetProcAddress('glGetProgramBinary'));
  glProgramBinary := tglProgramBinary(dglGetProcAddress('glProgramBinary'));
  glProgramParameteri := tglProgramParameteri(dglGetProcAddress('glProgramParameteri'));
end;

method Read_GL_ARB_separate_shader_objects;
begin
  glUseProgramStages := tglUseProgramStages(dglGetProcAddress('glUseProgramStages'));
  glActiveShaderProgram := tglActiveShaderProgram(dglGetProcAddress('glActiveShaderProgram'));
  glCreateShaderProgramv := tglCreateShaderProgramv(dglGetProcAddress('glCreateShaderProgramv'));
  glBindProgramPipeline := tglBindProgramPipeline(dglGetProcAddress('glBindProgramPipeline'));
  glDeleteProgramPipelines := tglDeleteProgramPipelines(dglGetProcAddress('glDeleteProgramPipelines'));
  glGenProgramPipelines := tglGenProgramPipelines(dglGetProcAddress('glGenProgramPipelines'));
  glIsProgramPipeline := tglIsProgramPipeline(dglGetProcAddress('glIsProgramPipeline'));
  glGetProgramPipelineiv := tglGetProgramPipelineiv(dglGetProcAddress('glGetProgramPipelineiv'));
  glProgramUniform1i := tglProgramUniform1i(dglGetProcAddress('glProgramUniform1i'));
  glProgramUniform1iv := tglProgramUniform1iv(dglGetProcAddress('glProgramUniform1iv'));
  glProgramUniform1f := tglProgramUniform1f(dglGetProcAddress('glProgramUniform1f'));
  glProgramUniform1fv := tglProgramUniform1fv(dglGetProcAddress('glProgramUniform1fv'));
  glProgramUniform1d := tglProgramUniform1d(dglGetProcAddress('glProgramUniform1d'));
  glProgramUniform1dv := tglProgramUniform1dv(dglGetProcAddress('glProgramUniform1dv'));
  glProgramUniform1ui := tglProgramUniform1ui(dglGetProcAddress('glProgramUniform1ui'));
  glProgramUniform1uiv := tglProgramUniform1uiv(dglGetProcAddress('glProgramUniform1uiv'));
  glProgramUniform2i := tglProgramUniform2i(dglGetProcAddress('glProgramUniform2i'));
  glProgramUniform2iv := tglProgramUniform2iv(dglGetProcAddress('glProgramUniform2iv'));
  glProgramUniform2f := tglProgramUniform2f(dglGetProcAddress('glProgramUniform2f'));
  glProgramUniform2fv := tglProgramUniform2fv(dglGetProcAddress('glProgramUniform2fv'));
  glProgramUniform2d := tglProgramUniform2d(dglGetProcAddress('glProgramUniform2d'));
  glProgramUniform2dv := tglProgramUniform2dv(dglGetProcAddress('glProgramUniform2dv'));
  glProgramUniform2ui := tglProgramUniform2ui(dglGetProcAddress('glProgramUniform2ui'));
  glProgramUniform2uiv := tglProgramUniform2uiv(dglGetProcAddress('glProgramUniform2uiv'));
  glProgramUniform3i := tglProgramUniform3i(dglGetProcAddress('glProgramUniform3i'));
  glProgramUniform3iv := tglProgramUniform3iv(dglGetProcAddress('glProgramUniform3iv'));
  glProgramUniform3f := tglProgramUniform3f(dglGetProcAddress('glProgramUniform3f'));
  glProgramUniform3fv := tglProgramUniform3fv(dglGetProcAddress('glProgramUniform3fv'));
  glProgramUniform3d := tglProgramUniform3d(dglGetProcAddress('glProgramUniform3d'));
  glProgramUniform3dv := tglProgramUniform3dv(dglGetProcAddress('glProgramUniform3dv'));
  glProgramUniform3ui := tglProgramUniform3ui(dglGetProcAddress('glProgramUniform3ui'));
  glProgramUniform3uiv := tglProgramUniform3uiv(dglGetProcAddress('glProgramUniform3uiv'));
  glProgramUniform4i := tglProgramUniform4i(dglGetProcAddress('glProgramUniform4i'));
  glProgramUniform4iv := tglProgramUniform4iv(dglGetProcAddress('glProgramUniform4iv'));
  glProgramUniform4f := tglProgramUniform4f(dglGetProcAddress('glProgramUniform4f'));
  glProgramUniform4fv := tglProgramUniform4fv(dglGetProcAddress('glProgramUniform4fv'));
  glProgramUniform4d := tglProgramUniform4d(dglGetProcAddress('glProgramUniform4d'));
  glProgramUniform4dv := tglProgramUniform4dv(dglGetProcAddress('glProgramUniform4dv'));
  glProgramUniform4ui := tglProgramUniform4ui(dglGetProcAddress('glProgramUniform4ui'));
  glProgramUniform4uiv := tglProgramUniform4uiv(dglGetProcAddress('glProgramUniform4uiv'));
  glProgramUniformMatrix2fv := tglProgramUniformMatrix2fv(dglGetProcAddress('glProgramUniformMatrix2fv'));
  glProgramUniformMatrix3fv := tglProgramUniformMatrix3fv(dglGetProcAddress('glProgramUniformMatrix3fv'));
  glProgramUniformMatrix4fv := tglProgramUniformMatrix4fv(dglGetProcAddress('glProgramUniformMatrix4fv'));
  glProgramUniformMatrix2dv := tglProgramUniformMatrix2dv(dglGetProcAddress('glProgramUniformMatrix2dv'));
  glProgramUniformMatrix3dv := tglProgramUniformMatrix3dv(dglGetProcAddress('glProgramUniformMatrix3dv'));
  glProgramUniformMatrix4dv := tglProgramUniformMatrix4dv(dglGetProcAddress('glProgramUniformMatrix4dv'));
  glProgramUniformMatrix2x3fv := tglProgramUniformMatrix2x3fv(dglGetProcAddress('glProgramUniformMatrix2x3fv'));
  glProgramUniformMatrix3x2fv := tglProgramUniformMatrix3x2fv(dglGetProcAddress('glProgramUniformMatrix3x2fv'));
  glProgramUniformMatrix2x4fv := tglProgramUniformMatrix2x4fv(dglGetProcAddress('glProgramUniformMatrix2x4fv'));
  glProgramUniformMatrix4x2fv := tglProgramUniformMatrix4x2fv(dglGetProcAddress('glProgramUniformMatrix4x2fv'));
  glProgramUniformMatrix3x4fv := tglProgramUniformMatrix3x4fv(dglGetProcAddress('glProgramUniformMatrix3x4fv'));
  glProgramUniformMatrix4x3fv := tglProgramUniformMatrix4x3fv(dglGetProcAddress('glProgramUniformMatrix4x3fv'));
  glProgramUniformMatrix2x3dv := tglProgramUniformMatrix2x3dv(dglGetProcAddress('glProgramUniformMatrix2x3dv'));
  glProgramUniformMatrix3x2dv := tglProgramUniformMatrix3x2dv(dglGetProcAddress('glProgramUniformMatrix3x2dv'));
  glProgramUniformMatrix2x4dv := tglProgramUniformMatrix2x4dv(dglGetProcAddress('glProgramUniformMatrix2x4dv'));
  glProgramUniformMatrix4x2dv := tglProgramUniformMatrix4x2dv(dglGetProcAddress('glProgramUniformMatrix4x2dv'));
  glProgramUniformMatrix3x4dv := tglProgramUniformMatrix3x4dv(dglGetProcAddress('glProgramUniformMatrix3x4dv'));
  glProgramUniformMatrix4x3dv := tglProgramUniformMatrix4x3dv(dglGetProcAddress('glProgramUniformMatrix4x3dv'));
  glValidateProgramPipeline := tglValidateProgramPipeline(dglGetProcAddress('glValidateProgramPipeline'));
  glGetProgramPipelineInfoLog := tglGetProgramPipelineInfoLog(dglGetProcAddress('glGetProgramPipelineInfoLog'));
end;

method Read_GL_ARB_vertex_attrib_64bit;
begin
  glVertexAttribL1d := tglVertexAttribL1d(dglGetProcAddress('glVertexAttribL1d'));
  glVertexAttribL2d := tglVertexAttribL2d(dglGetProcAddress('glVertexAttribL2d'));
  glVertexAttribL3d := tglVertexAttribL3d(dglGetProcAddress('glVertexAttribL3d'));
  glVertexAttribL4d := tglVertexAttribL4d(dglGetProcAddress('glVertexAttribL4d'));
  glVertexAttribL1dv := tglVertexAttribL1dv(dglGetProcAddress('glVertexAttribL1dv'));
  glVertexAttribL2dv := tglVertexAttribL2dv(dglGetProcAddress('glVertexAttribL2dv'));
  glVertexAttribL3dv := tglVertexAttribL3dv(dglGetProcAddress('glVertexAttribL3dv'));
  glVertexAttribL4dv := tglVertexAttribL4dv(dglGetProcAddress('glVertexAttribL4dv'));
  glVertexAttribLPointer := tglVertexAttribLPointer(dglGetProcAddress('glVertexAttribLPointer'));
  glGetVertexAttribLdv := tglGetVertexAttribLdv(dglGetProcAddress('glGetVertexAttribLdv'));
end;

method Read_GL_ARB_viewport_array;
begin
  glViewportArrayv := tglViewportArrayv(dglGetProcAddress('glViewportArrayv'));
  glViewportIndexedf := tglViewportIndexedf(dglGetProcAddress('glViewportIndexedf'));
  glViewportIndexedfv := tglViewportIndexedfv(dglGetProcAddress('glViewportIndexedfv'));
  glScissorArrayv := tglScissorArrayv(dglGetProcAddress('glScissorArrayv'));
  glScissorIndexed := tglScissorIndexed(dglGetProcAddress('glScissorIndexed'));
  glScissorIndexedv := tglScissorIndexedv(dglGetProcAddress('glScissorIndexedv'));
  glDepthRangeArrayv := tglDepthRangeArrayv(dglGetProcAddress('glDepthRangeArrayv'));
  glDepthRangeIndexed := tglDepthRangeIndexed(dglGetProcAddress('glDepthRangeIndexed'));
  glGetFloati_v := tglGetFloati_v(dglGetProcAddress('glGetFloati_v'));
  glGetDoublei_v := tglGetDoublei_v(dglGetProcAddress('glGetDoublei_v'));
end;

// GL 4.2

method Read_GL_ARB_base_instance;
begin
  glDrawArraysInstancedBaseInstance := tglDrawArraysInstancedBaseInstance(dglGetProcAddress('glDrawArraysInstancedBaseInstance'));
  glDrawElementsInstancedBaseInstance := tglDrawElementsInstancedBaseInstance(dglGetProcAddress('glDrawElementsInstancedBaseInstance'));
  glDrawElementsInstancedBaseVertexBaseInstance := tglDrawElementsInstancedBaseVertexBaseInstance(dglGetProcAddress('glDrawElementsInstancedBaseVertexBaseInstance'));
end;

method Read_GL_ARB_transform_feedback_instanced;
begin
  glDrawTransformFeedbackInstanced := tglDrawTransformFeedbackInstanced(dglGetProcAddress('glDrawTransformFeedbackInstanced'));
  glDrawTransformFeedbackStreamInstanced := tglDrawTransformFeedbackStreamInstanced(dglGetProcAddress('glDrawTransformFeedbackStreamInstanced'));
end;

method Read_GL_ARB_internalformat_query;
begin
  glGetInternalformativ := tglGetInternalformativ(dglGetProcAddress('glGetInternalformativ'));
end;

method Read_GL_ARB_shader_atomic_counters;
begin
  glGetActiveAtomicCounterBufferiv := tglGetActiveAtomicCounterBufferiv(dglGetProcAddress('glGetActiveAtomicCounterBufferiv'));
end;

method Read_GL_ARB_shader_image_load_store;
begin
  glBindImageTexture := tglBindImageTexture(dglGetProcAddress('glBindImageTexture'));
  glMemoryBarrier := tglMemoryBarrier(dglGetProcAddress('glMemoryBarrier'));
end;

method Read_GL_ARB_texture_storage;
begin
  glTexStorage1D := tglTexStorage1D(dglGetProcAddress('glTexStorage1D'));
  glTexStorage2D := tglTexStorage2D(dglGetProcAddress('glTexStorage2D'));
  glTexStorage3D := tglTexStorage3D(dglGetProcAddress('glTexStorage3D'));
  glTextureStorage1DEXT := tglTextureStorage1DEXT(dglGetProcAddress('glTextureStorage1DEXT'));
  glTextureStorage2DEXT := tglTextureStorage2DEXT(dglGetProcAddress('glTextureStorage2DEXT'));
  glTextureStorage3DEXT := tglTextureStorage3DEXT(dglGetProcAddress('glTextureStorage3DEXT'));
end;


// GL 4.3
method Read_GL_KHR_debug;
begin
  glDebugMessageControl := tglDebugMessageControl(dglGetProcAddress('glDebugMessageControl'));
  glDebugMessageInsert := tglDebugMessageInsert(dglGetProcAddress('glDebugMessageInsert'));
  glDebugMessageCallback := tglDebugMessageCallback(dglGetProcAddress('glDebugMessageCallback'));
  glGetDebugMessageLog := tglGetDebugMessageLog(dglGetProcAddress('glGetDebugMessageLog'));
  glPushDebugGroup := tglPushDebugGroup(dglGetProcAddress('glPushDebugGroup'));
  glPopDebugGroup := tglPopDebugGroup(dglGetProcAddress('glPopDebugGroup'));
  glObjectLabel := tglObjectLabel(dglGetProcAddress('glObjectLabel'));
  glGetObjectLabel := tglGetObjectLabel(dglGetProcAddress('glGetObjectLabel'));
  glObjectPtrLabel := tglObjectPtrLabel(dglGetProcAddress('glObjectPtrLabel'));
  glGetObjectPtrLabel := tglGetObjectPtrLabel(dglGetProcAddress('glGetObjectPtrLabel'));
end;

method Read_GL_ARB_clear_buffer_object;
begin
  glClearBufferData := tglClearBufferData(dglGetProcAddress('glClearBufferData'));
  glClearBufferSubData := tglClearBufferSubData(dglGetProcAddress('glClearBufferSubData'));
  glClearNamedBufferDataEXT := tglClearNamedBufferDataEXT(dglGetProcAddress('glClearNamedBufferDataEXT'));
  glClearNamedBufferSubDataEXT := tglClearNamedBufferSubDataEXT(dglGetProcAddress('glClearNamedBufferSubDataEXT'));
end;

method Read_GL_ARB_compute_shader;
begin
  glDispatchCompute := tglDispatchCompute(dglGetProcAddress('glDispatchCompute'));
  glDispatchComputeIndirect := tglDispatchComputeIndirect(dglGetProcAddress('glDispatchComputeIndirect'));
end;

method Read_GL_ARB_copy_image;
begin
  glCopyImageSubData := tglCopyImageSubData(dglGetProcAddress('glCopyImageSubData'));
end;

method Read_GL_ARB_framebuffer_no_attachments;
begin
  glFramebufferParameteri := tglFramebufferParameteri(dglGetProcAddress('glFramebufferParameteri'));
  glGetFramebufferParameteriv := tglGetFramebufferParameteriv(dglGetProcAddress('glGetFramebufferParameteriv'));
  glNamedFramebufferParameteriEXT := tglNamedFramebufferParameteriEXT(dglGetProcAddress('glNamedFramebufferParameteriEXT'));
  glGetNamedFramebufferParameterivEXT := tglGetNamedFramebufferParameterivEXT(dglGetProcAddress('glGetNamedFramebufferParameterivEXT'));
end;

method Read_GL_ARB_internalformat_query2;
begin
  glGetInternalformati64v := tglGetInternalformati64v(dglGetProcAddress('glGetInternalformati64v'));
end;

method Read_GL_ARB_invalidate_subdata;
begin
  glInvalidateTexSubImage := tglInvalidateTexSubImage(dglGetProcAddress('glInvalidateTexSubImage'));
  glInvalidateTexImage := tglInvalidateTexImage(dglGetProcAddress('glInvalidateTexImage'));
  glInvalidateBufferSubData := tglInvalidateBufferSubData(dglGetProcAddress('glInvalidateBufferSubData'));
  glInvalidateBufferData := tglInvalidateBufferData(dglGetProcAddress('glInvalidateBufferData'));
  glInvalidateFramebuffer := tglInvalidateFramebuffer(dglGetProcAddress('glInvalidateFramebuffer'));
  glInvalidateSubFramebuffer := tglInvalidateSubFramebuffer(dglGetProcAddress('glInvalidateSubFramebuffer'));
end;

method Read_GL_ARB_multi_draw_indirect;
begin
  glMultiDrawArraysIndirect := tglMultiDrawArraysIndirect(dglGetProcAddress('glMultiDrawArraysIndirect'));
  glMultiDrawElementsIndirect := tglMultiDrawElementsIndirect(dglGetProcAddress('glMultiDrawElementsIndirect'));
end;

method Read_GL_ARB_program_interface_query;
begin
  glGetProgramInterfaceiv := tglGetProgramInterfaceiv(dglGetProcAddress('glGetProgramInterfaceiv'));
  glGetProgramResourceIndex := tglGetProgramResourceIndex(dglGetProcAddress('glGetProgramResourceIndex'));
  glGetProgramResourceName := tglGetProgramResourceName(dglGetProcAddress('glGetProgramResourceName'));
  glGetProgramResourceiv := tglGetProgramResourceiv(dglGetProcAddress('glGetProgramResourceiv'));
  glGetProgramResourceLocation := tglGetProgramResourceLocation(dglGetProcAddress('glGetProgramResourceLocation'));
  glGetProgramResourceLocationIndex := tglGetProgramResourceLocationIndex(dglGetProcAddress('glGetProgramResourceLocationIndex'));
end;

method Read_GL_ARB_shader_storage_buffer_object;
begin
  glShaderStorageBlockBinding := tglShaderStorageBlockBinding(dglGetProcAddress('glShaderStorageBlockBinding'));
end;

method Read_GL_ARB_texture_buffer_range;
begin
  glTexBufferRange := tglTexBufferRange(dglGetProcAddress('glTexBufferRange'));
  glTextureBufferRangeEXT := tglTextureBufferRangeEXT(dglGetProcAddress('glTextureBufferRangeEXT'));
end;

method Read_GL_ARB_texture_storage_multisample;
begin
  glTexStorage2DMultisample := tglTexStorage2DMultisample(dglGetProcAddress('glTexStorage2DMultisample'));
  glTexStorage3DMultisample := tglTexStorage3DMultisample(dglGetProcAddress('glTexStorage3DMultisample'));
  glTextureStorage2DMultisampleEXT := tglTextureStorage2DMultisampleEXT(dglGetProcAddress('glTextureStorage2DMultisampleEXT'));
  glTextureStorage3DMultisampleEXT := tglTextureStorage3DMultisampleEXT(dglGetProcAddress('glTextureStorage3DMultisampleEXT'));
end;

method Read_GL_ARB_texture_view;
begin
  glTextureView := tglTextureView(dglGetProcAddress('glTextureView'));
end;

method Read_GL_ARB_vertex_attrib_binding;
begin
  glBindVertexBuffer := tglBindVertexBuffer(dglGetProcAddress('glBindVertexBuffer'));
  glVertexAttribFormat := tglVertexAttribFormat(dglGetProcAddress('glVertexAttribFormat'));
  glVertexAttribIFormat := tglVertexAttribIFormat(dglGetProcAddress('glVertexAttribIFormat'));
  glVertexAttribLFormat := tglVertexAttribLFormat(dglGetProcAddress('glVertexAttribLFormat'));
  glVertexAttribBinding := tglVertexAttribBinding(dglGetProcAddress('glVertexAttribBinding'));
  glVertexBindingDivisor := tglVertexBindingDivisor(dglGetProcAddress('glVertexBindingDivisor'));
  glVertexArrayBindVertexBufferEXT := tglVertexArrayBindVertexBufferEXT(dglGetProcAddress('glVertexArrayBindVertexBufferEXT'));
  glVertexArrayVertexAttribFormatEXT := tglVertexArrayVertexAttribFormatEXT(dglGetProcAddress('glVertexArrayVertexAttribFormatEXT'));
  glVertexArrayVertexAttribIFormatEXT := tglVertexArrayVertexAttribIFormatEXT(dglGetProcAddress('glVertexArrayVertexAttribIFormatEXT'));
  glVertexArrayVertexAttribLFormatEXT := tglVertexArrayVertexAttribLFormatEXT(dglGetProcAddress('glVertexArrayVertexAttribLFormatEXT'));
  glVertexArrayVertexAttribBindingEXT := tglVertexArrayVertexAttribBindingEXT(dglGetProcAddress('glVertexArrayVertexAttribBindingEXT'));
  glVertexArrayVertexBindingDivisorEXT := tglVertexArrayVertexBindingDivisorEXT(dglGetProcAddress('glVertexArrayVertexBindingDivisorEXT'));
end;

method Read_GL_4_4;
begin
  glBufferStorage := tglBufferStorage(dglGetProcAddress('glBufferStorage'));
  glClearTexImage := tglClearTexImage(dglGetProcAddress('glClearTexImage'));
  glClearTexSubImage := tglClearTexSubImage(dglGetProcAddress('glClearTexSubImage'));
  glBindBuffersBase := tglBindBuffersBase(dglGetProcAddress('glBindBuffersBase'));
  glBindBuffersRange := tglBindBuffersRange(dglGetProcAddress('glBindBuffersRange'));
  glBindTextures := tglBindTextures(dglGetProcAddress('glBindTextures'));
  glBindSamplers := tglBindSamplers(dglGetProcAddress('glBindSamplers'));
  glBindImageTextures := tglBindImageTextures(dglGetProcAddress('glBindImageTextures'));
  glBindVertexBuffers := tglBindVertexBuffers(dglGetProcAddress('glBindVertexBuffers'));
end;

method Read_GL_4_5;
begin
  glClipControl := tglClipControl(dglGetProcAddress('glClipControl'));
  glCreateTransformFeedbacks := tglCreateTransformFeedbacks(dglGetProcAddress('glCreateTransformFeedbacks'));
  glTransformFeedbackBufferBase := tglTransformFeedbackBufferBase(dglGetProcAddress('glTransformFeedbackBufferBase'));
  glTransformFeedbackBufferRange := tglTransformFeedbackBufferRange(dglGetProcAddress('glTransformFeedbackBufferRange'));
  glGetTransformFeedbackiv := tglGetTransformFeedbackiv(dglGetProcAddress('glGetTransformFeedbackiv'));
  glGetTransformFeedbacki_v := tglGetTransformFeedbacki_v(dglGetProcAddress('glGetTransformFeedbacki_v'));
  glGetTransformFeedbacki64_v := tglGetTransformFeedbacki64_v(dglGetProcAddress('glGetTransformFeedbacki64_v'));
  glCreateBuffers := tglCreateBuffers(dglGetProcAddress('glCreateBuffers'));
  glNamedBufferStorage := tglNamedBufferStorage(dglGetProcAddress('glNamedBufferStorage'));
  glNamedBufferData := tglNamedBufferData(dglGetProcAddress('glNamedBufferData'));
  glNamedBufferSubData := tglNamedBufferSubData(dglGetProcAddress('glNamedBufferSubData'));
  glCopyNamedBufferSubData := tglCopyNamedBufferSubData(dglGetProcAddress('glCopyNamedBufferSubData'));
  glClearNamedBufferData := tglClearNamedBufferData(dglGetProcAddress('glClearNamedBufferData'));
  glClearNamedBufferSubData := tglClearNamedBufferSubData(dglGetProcAddress('glClearNamedBufferSubData'));
  glMapNamedBuffer := tglMapNamedBuffer(dglGetProcAddress('glMapNamedBuffer'));
  glMapNamedBufferRange := tglMapNamedBufferRange(dglGetProcAddress('glMapNamedBufferRange'));
  glUnmapNamedBuffer := tglUnmapNamedBuffer(dglGetProcAddress('glUnmapNamedBuffer'));
  glFlushMappedNamedBufferRange := tglFlushMappedNamedBufferRange(dglGetProcAddress('glFlushMappedNamedBufferRange'));
  glGetNamedBufferParameteriv := tglGetNamedBufferParameteriv(dglGetProcAddress('glGetNamedBufferParameteriv'));
  glGetNamedBufferParameteri64v := tglGetNamedBufferParameteri64v(dglGetProcAddress('glGetNamedBufferParameteri64v'));
  glGetNamedBufferPointerv := tglGetNamedBufferPointerv(dglGetProcAddress('glGetNamedBufferPointerv'));
  glGetNamedBufferSubData := tglGetNamedBufferSubData(dglGetProcAddress('glGetNamedBufferSubData'));
  glCreateFramebuffers := tglCreateFramebuffers(dglGetProcAddress('glCreateFramebuffers'));
  glNamedFramebufferRenderbuffer := tglNamedFramebufferRenderbuffer(dglGetProcAddress('glNamedFramebufferRenderbuffer'));
  glNamedFramebufferParameteri := tglNamedFramebufferParameteri(dglGetProcAddress('glNamedFramebufferParameteri'));
  glNamedFramebufferTexture := tglNamedFramebufferTexture(dglGetProcAddress('glNamedFramebufferTexture'));
  glNamedFramebufferTextureLayer := tglNamedFramebufferTextureLayer(dglGetProcAddress('glNamedFramebufferTextureLayer'));
  glNamedFramebufferDrawBuffer := tglNamedFramebufferDrawBuffer(dglGetProcAddress('glNamedFramebufferDrawBuffer'));
  glNamedFramebufferDrawBuffers := tglNamedFramebufferDrawBuffers(dglGetProcAddress('glNamedFramebufferDrawBuffers'));
  glNamedFramebufferReadBuffer := tglNamedFramebufferReadBuffer(dglGetProcAddress('glNamedFramebufferReadBuffer'));
  glInvalidateNamedFramebufferData := tglInvalidateNamedFramebufferData(dglGetProcAddress('glInvalidateNamedFramebufferData'));
  glInvalidateNamedFramebufferSubData := tglInvalidateNamedFramebufferSubData(dglGetProcAddress('glInvalidateNamedFramebufferSubData'));
  glClearNamedFramebufferiv := tglClearNamedFramebufferiv(dglGetProcAddress('glClearNamedFramebufferiv'));
  glClearNamedFramebufferuiv := tglClearNamedFramebufferuiv(dglGetProcAddress('glClearNamedFramebufferuiv'));
  glClearNamedFramebufferfv := tglClearNamedFramebufferfv(dglGetProcAddress('glClearNamedFramebufferfv'));
  glClearNamedFramebufferfi := tglClearNamedFramebufferfi(dglGetProcAddress('glClearNamedFramebufferfi'));
  glBlitNamedFramebuffer := tglBlitNamedFramebuffer(dglGetProcAddress('glBlitNamedFramebuffer'));
  glCheckNamedFramebufferStatus := tglCheckNamedFramebufferStatus(dglGetProcAddress('glCheckNamedFramebufferStatus'));
  glGetNamedFramebufferParameteriv := tglGetNamedFramebufferParameteriv(dglGetProcAddress('glGetNamedFramebufferParameteriv'));
  glGetNamedFramebufferAttachmentParameteriv := tglGetNamedFramebufferAttachmentParameteriv(dglGetProcAddress('glGetNamedFramebufferAttachmentParameteriv'));
  glCreateRenderbuffers := tglCreateRenderbuffers(dglGetProcAddress('glCreateRenderbuffers'));
  glNamedRenderbufferStorage := tglNamedRenderbufferStorage(dglGetProcAddress('glNamedRenderbufferStorage'));
  glNamedRenderbufferStorageMultisample := tglNamedRenderbufferStorageMultisample(dglGetProcAddress('glNamedRenderbufferStorageMultisample'));
  glGetNamedRenderbufferParameteriv := tglGetNamedRenderbufferParameteriv(dglGetProcAddress('glGetNamedRenderbufferParameteriv'));
  glCreateTextures := tglCreateTextures(dglGetProcAddress('glCreateTextures'));
  glTextureBuffer := tglTextureBuffer(dglGetProcAddress('glTextureBuffer'));
  glTextureBufferRange := tglTextureBufferRange(dglGetProcAddress('glTextureBufferRange'));
  glTextureStorage1D := tglTextureStorage1D(dglGetProcAddress('glTextureStorage1D'));
  glTextureStorage2D := tglTextureStorage2D(dglGetProcAddress('glTextureStorage2D'));
  glTextureStorage3D := tglTextureStorage3D(dglGetProcAddress('glTextureStorage3D'));
  glTextureStorage2DMultisample := tglTextureStorage2DMultisample(dglGetProcAddress('glTextureStorage2DMultisample'));
  glTextureStorage3DMultisample := tglTextureStorage3DMultisample(dglGetProcAddress('glTextureStorage3DMultisample'));
  glTextureSubImage1D := tglTextureSubImage1D(dglGetProcAddress('glTextureSubImage1D'));
  glTextureSubImage2D := tglTextureSubImage2D(dglGetProcAddress('glTextureSubImage2D'));
  glTextureSubImage3D := tglTextureSubImage3D(dglGetProcAddress('glTextureSubImage3D'));
  glCompressedTextureSubImage1D := tglCompressedTextureSubImage1D(dglGetProcAddress('glCompressedTextureSubImage1D'));
  glCompressedTextureSubImage2D := tglCompressedTextureSubImage2D(dglGetProcAddress('glCompressedTextureSubImage2D'));
  glCompressedTextureSubImage3D := tglCompressedTextureSubImage3D(dglGetProcAddress('glCompressedTextureSubImage3D'));
  glCopyTextureSubImage1D := tglCopyTextureSubImage1D(dglGetProcAddress('glCopyTextureSubImage1D'));
  glCopyTextureSubImage2D := tglCopyTextureSubImage2D(dglGetProcAddress('glCopyTextureSubImage2D'));
  glCopyTextureSubImage3D := tglCopyTextureSubImage3D(dglGetProcAddress('glCopyTextureSubImage3D'));
  glTextureParameterf := tglTextureParameterf(dglGetProcAddress('glTextureParameterf'));
  glTextureParameterfv := tglTextureParameterfv(dglGetProcAddress('glTextureParameterfv'));
  glTextureParameteri := tglTextureParameteri(dglGetProcAddress('glTextureParameteri'));
  glTextureParameterIiv := tglTextureParameterIiv(dglGetProcAddress('glTextureParameterIiv'));
  glTextureParameterIuiv := tglTextureParameterIuiv(dglGetProcAddress('glTextureParameterIuiv'));
  glTextureParameteriv := tglTextureParameteriv(dglGetProcAddress('glTextureParameteriv'));
  glGenerateTextureMipmap := tglGenerateTextureMipmap(dglGetProcAddress('glGenerateTextureMipmap'));
  glBindTextureUnit := tglBindTextureUnit(dglGetProcAddress('glBindTextureUnit'));
  glGetTextureImage := tglGetTextureImage(dglGetProcAddress('glGetTextureImage'));
  glGetCompressedTextureImage := tglGetCompressedTextureImage(dglGetProcAddress('glGetCompressedTextureImage'));
  glGetTextureLevelParameterfv := tglGetTextureLevelParameterfv(dglGetProcAddress('glGetTextureLevelParameterfv'));
  glGetTextureLevelParameteriv := tglGetTextureLevelParameteriv(dglGetProcAddress('glGetTextureLevelParameteriv'));
  glGetTextureParameterfv := tglGetTextureParameterfv(dglGetProcAddress('glGetTextureParameterfv'));
  glGetTextureParameterIiv := tglGetTextureParameterIiv(dglGetProcAddress('glGetTextureParameterIiv'));
  glGetTextureParameterIuiv := tglGetTextureParameterIuiv(dglGetProcAddress('glGetTextureParameterIuiv'));
  glGetTextureParameteriv := tglGetTextureParameteriv(dglGetProcAddress('glGetTextureParameteriv'));
  glCreateVertexArrays := tglCreateVertexArrays(dglGetProcAddress('glCreateVertexArrays'));
  glDisableVertexArrayAttrib := tglDisableVertexArrayAttrib(dglGetProcAddress('glDisableVertexArrayAttrib'));
  glEnableVertexArrayAttrib := tglEnableVertexArrayAttrib(dglGetProcAddress('glEnableVertexArrayAttrib'));
  glVertexArrayElementBuffer := tglVertexArrayElementBuffer(dglGetProcAddress('glVertexArrayElementBuffer'));
  glVertexArrayVertexBuffer := tglVertexArrayVertexBuffer(dglGetProcAddress('glVertexArrayVertexBuffer'));
  glVertexArrayVertexBuffers := tglVertexArrayVertexBuffers(dglGetProcAddress('glVertexArrayVertexBuffers'));
  glVertexArrayAttribBinding := tglVertexArrayAttribBinding(dglGetProcAddress('glVertexArrayAttribBinding'));
  glVertexArrayAttribFormat := tglVertexArrayAttribFormat(dglGetProcAddress('glVertexArrayAttribFormat'));
  glVertexArrayAttribIFormat := tglVertexArrayAttribIFormat(dglGetProcAddress('glVertexArrayAttribIFormat'));
  glVertexArrayAttribLFormat := tglVertexArrayAttribLFormat(dglGetProcAddress('glVertexArrayAttribLFormat'));
  glVertexArrayBindingDivisor := tglVertexArrayBindingDivisor(dglGetProcAddress('glVertexArrayBindingDivisor'));
  glGetVertexArrayiv := tglGetVertexArrayiv(dglGetProcAddress('glGetVertexArrayiv'));
  glGetVertexArrayIndexediv := tglGetVertexArrayIndexediv(dglGetProcAddress('glGetVertexArrayIndexediv'));
  glGetVertexArrayIndexed64iv := tglGetVertexArrayIndexed64iv(dglGetProcAddress('glGetVertexArrayIndexed64iv'));
  glCreateSamplers := tglCreateSamplers(dglGetProcAddress('glCreateSamplers'));
  glCreateProgramPipelines := tglCreateProgramPipelines(dglGetProcAddress('glCreateProgramPipelines'));
  glCreateQueries := tglCreateQueries(dglGetProcAddress('glCreateQueries'));
  glMemoryBarrierByRegion := tglMemoryBarrierByRegion(dglGetProcAddress('glMemoryBarrierByRegion'));
  glGetTextureSubImage := tglGetTextureSubImage(dglGetProcAddress('glGetTextureSubImage'));
  glGetCompressedTextureSubImage := tglGetCompressedTextureSubImage(dglGetProcAddress('glGetCompressedTextureSubImage'));
  glGetGraphicsResetStatus := tglGetGraphicsResetStatus(dglGetProcAddress('glGetGraphicsResetStatus'));
  glGetnCompressedTexImage := tglGetnCompressedTexImage(dglGetProcAddress('glGetnCompressedTexImage'));
  glGetnTexImage := tglGetnTexImage(dglGetProcAddress('glGetnTexImage'));
  glGetnUniformdv := tglGetnUniformdv(dglGetProcAddress('glGetnUniformdv'));
  glGetnUniformfv := tglGetnUniformfv(dglGetProcAddress('glGetnUniformfv'));
  glGetnUniformiv := tglGetnUniformiv(dglGetProcAddress('glGetnUniformiv'));
  glGetnUniformuiv := tglGetnUniformuiv(dglGetProcAddress('glGetnUniformuiv'));
  glReadnPixels := tglReadnPixels(dglGetProcAddress('glReadnPixels'));
  glGetnMapdv := tglGetnMapdv(dglGetProcAddress('glGetnMapdv'));
  glGetnMapfv := tglGetnMapfv(dglGetProcAddress('glGetnMapfv'));
  glGetnMapiv := tglGetnMapiv(dglGetProcAddress('glGetnMapiv'));
  glGetnPixelMapfv := tglGetnPixelMapfv(dglGetProcAddress('glGetnPixelMapfv'));
  glGetnPixelMapuiv := tglGetnPixelMapuiv(dglGetProcAddress('glGetnPixelMapuiv'));
  glGetnPixelMapusv := tglGetnPixelMapusv(dglGetProcAddress('glGetnPixelMapusv'));
  glGetnPolygonStipple := tglGetnPolygonStipple(dglGetProcAddress('glGetnPolygonStipple'));
  glGetnColorTable := tglGetnColorTable(dglGetProcAddress('glGetnColorTable'));
  glGetnConvolutionFilter := tglGetnConvolutionFilter(dglGetProcAddress('glGetnConvolutionFilter'));
  glGetnSeparableFilter := tglGetnSeparableFilter(dglGetProcAddress('glGetnSeparableFilter'));
  glGetnHistogram := tglGetnHistogram(dglGetProcAddress('glGetnHistogram'));
  glGetnMinmax := tglGetnMinmax(dglGetProcAddress('glGetnMinmax'));
  glTextureBarrier := tglTextureBarrier(dglGetProcAddress('glTextureBarrier'));
end;

method Read_GL_NV_path_rendering;
begin
  glGenPathsNV := tglGenPathsNV(dglGetProcAddress('glGenPathsNV'));
  glDeletePathsNV := tglDeletePathsNV(dglGetProcAddress('glDeletePathsNV'));
  glIsPathNV := tglIsPathNV(dglGetProcAddress('glIsPathNV'));
  glPathCommandsNV := tglPathCommandsNV(dglGetProcAddress('glPathCommandsNV'));
  glPathCoordsNV := tglPathCoordsNV(dglGetProcAddress('glPathCoordsNV'));
  glPathSubCommandsNV := tglPathSubCommandsNV(dglGetProcAddress('glPathSubCommandsNV'));
  glPathSubCoordsNV := tglPathSubCoordsNV(dglGetProcAddress('glPathSubCoordsNV'));
  glPathStringNV := tglPathStringNV(dglGetProcAddress('glPathStringNV'));
  glPathGlyphsNV := tglPathGlyphsNV(dglGetProcAddress('glPathGlyphsNV'));
  glPathGlyphRangeNV := tglPathGlyphRangeNV(dglGetProcAddress('glPathGlyphRangeNV'));
  glWeightPathsNV := tglWeightPathsNV(dglGetProcAddress('glWeightPathsNV'));
  glCopyPathNV := tglCopyPathNV(dglGetProcAddress('glCopyPathNV'));
  glInterpolatePathsNV := tglInterpolatePathsNV(dglGetProcAddress('glInterpolatePathsNV'));
  glTransformPathNV := tglTransformPathNV(dglGetProcAddress('glTransformPathNV'));
  glPathParameterivNV := tglPathParameterivNV(dglGetProcAddress('glPathParameterivNV'));
  glPathParameteriNV := tglPathParameteriNV(dglGetProcAddress('glPathParameteriNV'));
  glPathParameterfvNV := tglPathParameterfvNV(dglGetProcAddress('glPathParameterfvNV'));
  glPathParameterfNV := tglPathParameterfNV(dglGetProcAddress('glPathParameterfNV'));
  glPathDashArrayNV := tglPathDashArrayNV(dglGetProcAddress('glPathDashArrayNV'));
  glPathStencilFuncNV := tglPathStencilFuncNV(dglGetProcAddress('glPathStencilFuncNV'));
  glPathStencilDepthOffsetNV := tglPathStencilDepthOffsetNV(dglGetProcAddress('glPathStencilDepthOffsetNV'));
  glStencilFillPathNV := tglStencilFillPathNV(dglGetProcAddress('glStencilFillPathNV'));
  glStencilStrokePathNV := tglStencilStrokePathNV(dglGetProcAddress('glStencilStrokePathNV'));
  glStencilFillPathInstancedNV := tglStencilFillPathInstancedNV(dglGetProcAddress('glStencilFillPathInstancedNV'));
  glStencilStrokePathInstancedNV := tglStencilStrokePathInstancedNV(dglGetProcAddress('glStencilStrokePathInstancedNV'));
  glPathCoverDepthFuncNV := tglPathCoverDepthFuncNV(dglGetProcAddress('glPathCoverDepthFuncNV'));
  glPathColorGenNV := tglPathColorGenNV(dglGetProcAddress('glPathColorGenNV'));
  glPathTexGenNV := tglPathTexGenNV(dglGetProcAddress('glPathTexGenNV'));
  glPathFogGenNV := tglPathFogGenNV(dglGetProcAddress('glPathFogGenNV'));
  glCoverFillPathNV := tglCoverFillPathNV(dglGetProcAddress('glCoverFillPathNV'));
  glCoverStrokePathNV := tglCoverStrokePathNV(dglGetProcAddress('glCoverStrokePathNV'));
  glCoverFillPathInstancedNV := tglCoverFillPathInstancedNV(dglGetProcAddress('glCoverFillPathInstancedNV'));
  glCoverStrokePathInstancedNV := tglCoverStrokePathInstancedNV(dglGetProcAddress('glCoverStrokePathInstancedNV'));
  glGetPathParameterivNV := tglGetPathParameterivNV(dglGetProcAddress('glGetPathParameterivNV'));
  glGetPathParameterfvNV := tglGetPathParameterfvNV(dglGetProcAddress('glGetPathParameterfvNV'));
  glGetPathCommandsNV := tglGetPathCommandsNV(dglGetProcAddress('glGetPathCommandsNV'));
  glGetPathCoordsNV := tglGetPathCoordsNV(dglGetProcAddress('glGetPathCoordsNV'));
  glGetPathDashArrayNV := tglGetPathDashArrayNV(dglGetProcAddress('glGetPathDashArrayNV'));
  glGetPathMetricsNV := tglGetPathMetricsNV(dglGetProcAddress('glGetPathMetricsNV'));
  glGetPathMetricRangeNV := tglGetPathMetricRangeNV(dglGetProcAddress('glGetPathMetricRangeNV'));
  glGetPathSpacingNV := tglGetPathSpacingNV(dglGetProcAddress('glGetPathSpacingNV'));
  glGetPathColorGenivNV := tglGetPathColorGenivNV(dglGetProcAddress('glGetPathColorGenivNV'));
  glGetPathColorGenfvNV := tglGetPathColorGenfvNV(dglGetProcAddress('glGetPathColorGenfvNV'));
  glGetPathTexGenivNV := tglGetPathTexGenivNV(dglGetProcAddress('glGetPathTexGenivNV'));
  glGetPathTexGenfvNV := tglGetPathTexGenfvNV(dglGetProcAddress('glGetPathTexGenfvNV'));
  glIsPointInFillPathNV := tglIsPointInFillPathNV(dglGetProcAddress('glIsPointInFillPathNV'));
  glIsPointInStrokePathNV := tglIsPointInStrokePathNV(dglGetProcAddress('glIsPointInStrokePathNV'));
  glGetPathLengthNV := tglGetPathLengthNV(dglGetProcAddress('glGetPathLengthNV'));
  glPointAlongPathNV := tglPointAlongPathNV(dglGetProcAddress('glPointAlongPathNV'));
end;

method Read_GL_AMD_stencil_operation_extended;
begin
  glStencilOpValueAMD := tglStencilOpValueAMD(dglGetProcAddress('glStencilOpValueAMD'));
end;

method Read_GL_NV_bindless_texture;
begin
  glGetTextureHandleNV := tglGetTextureHandleNV(dglGetProcAddress('glGetTextureHandleNV'));
  glGetTextureSamplerHandleNV := tglGetTextureSamplerHandleNV(dglGetProcAddress('glGetTextureSamplerHandleNV'));
  glMakeTextureHandleResidentNV := tglMakeTextureHandleResidentNV(dglGetProcAddress('glMakeTextureHandleResidentNV'));
  glMakeTextureHandleNonResidentNV := tglMakeTextureHandleNonResidentNV(dglGetProcAddress('glMakeTextureHandleNonResidentNV'));
  glGetImageHandleNV := tglGetImageHandleNV(dglGetProcAddress('glGetImageHandleNV'));
  glMakeImageHandleResidentNV := tglMakeImageHandleResidentNV(dglGetProcAddress('glMakeImageHandleResidentNV'));
  glMakeImageHandleNonResidentNV := tglMakeImageHandleNonResidentNV(dglGetProcAddress('glMakeImageHandleNonResidentNV'));
  glUniformHandleui64NV := tglUniformHandleui64NV(dglGetProcAddress('glUniformHandleui64NV'));
  glUniformHandleui64vNV := tglUniformHandleui64vNV(dglGetProcAddress('glUniformHandleui64vNV'));
  glProgramUniformHandleui64NV := tglProgramUniformHandleui64NV(dglGetProcAddress('glProgramUniformHandleui64NV'));
  glProgramUniformHandleui64vNV := tglProgramUniformHandleui64vNV(dglGetProcAddress('glProgramUniformHandleui64vNV'));
  glIsTextureHandleResidentNV := tglIsTextureHandleResidentNV(dglGetProcAddress('glIsTextureHandleResidentNV'));
  glIsImageHandleResidentNV := tglIsImageHandleResidentNV(dglGetProcAddress('glIsImageHandleResidentNV'));
end;

method Read_GL_ARB_bindless_texture;
begin
  glGetTextureHandleARB := tglGetTextureHandleARB(dglGetProcAddress('TglGetTextureHandleARB'));
  glGetTextureSamplerHandleARB := tglGetTextureSamplerHandleARB(dglGetProcAddress('TglGetTextureSamplerHandleARB'));
  glMakeTextureHandleResidentARB := tglMakeTextureHandleResidentARB(dglGetProcAddress('TglMakeTextureHandleResidentARB'));
  glMakeTextureHandleNonResidentARB := tglMakeTextureHandleNonResidentARB(dglGetProcAddress('TglMakeTextureHandleNonResidentARB'));
  glGetImageHandleARB := tglGetImageHandleARB(dglGetProcAddress('TglGetImageHandleARB'));
  glMakeImageHandleResidentARB := tglMakeImageHandleResidentARB(dglGetProcAddress('TglMakeImageHandleResidentARB'));
  glMakeImageHandleNonResidentARB := tglMakeImageHandleNonResidentARB(dglGetProcAddress('TglMakeImageHandleNonResidentARB'));
  glUniformHandleui64ARB := tglUniformHandleui64ARB(dglGetProcAddress('TglUniformHandleui64ARB'));
  glUniformHandleui64vARB := tglUniformHandleui64vARB(dglGetProcAddress('TglUniformHandleui64vARB'));
  glProgramUniformHandleui64ARB := tglProgramUniformHandleui64ARB(dglGetProcAddress('TglProgramUniformHandleui64ARB'));
  glProgramUniformHandleui64vARB := tglProgramUniformHandleui64vARB(dglGetProcAddress('TglProgramUniformHandleui64vARB'));
  glIsTextureHandleResidentARB := tglIsTextureHandleResidentARB(dglGetProcAddress('TglIsTextureHandleResidentARB'));
  glIsImageHandleResidentARB := tglIsImageHandleResidentARB(dglGetProcAddress('TglIsImageHandleResidentARB'));
  glVertexAttribL1ui64ARB := tglVertexAttribL1ui64ARB(dglGetProcAddress('TglVertexAttribL1ui64ARB'));
  glVertexAttribL1ui64vARB := tglVertexAttribL1ui64vARB(dglGetProcAddress('TglVertexAttribL1ui64vARB'));
  glGetVertexAttribLui64vARB := tglGetVertexAttribLui64vARB(dglGetProcAddress('TglGetVertexAttribLui64vARB'));
end;

method Read_GL_ARB_cl_event;
begin
  glCreateSyncFromCLeventARB := tglCreateSyncFromCLeventARB(dglGetProcAddress('glCreateSyncFromCLeventARB'));
end;

method Read_GL_ARB_compute_variable_group_size;
begin
  glDispatchComputeGroupSizeARB := tglDispatchComputeGroupSizeARB(dglGetProcAddress('glDispatchComputeGroupSizeARB'));
end;

method Read_GL_ARB_debug_output;
begin
  glDebugMessageControlARB := tglDebugMessageControlARB(dglGetProcAddress('glDebugMessageControlARB'));
  glDebugMessageInsertARB := tglDebugMessageInsertARB(dglGetProcAddress('glDebugMessageInsertARB'));
  glDebugMessageCallbackARB := tglDebugMessageCallbackARB(dglGetProcAddress('glDebugMessageCallbackARB'));
  glGetDebugMessageLogARB := tglGetDebugMessageLogARB(dglGetProcAddress('glGetDebugMessageLogARB'));
end;

method Read_GL_ARB_robustness;
begin
  glGetGraphicsResetStatusARB := tglGetGraphicsResetStatusARB(dglGetProcAddress('glGetGraphicsResetStatusARB'));
  glGetnMapdvARB := tglGetnMapdvARB(dglGetProcAddress('glGetnMapdvARB'));
  glGetnMapfvARB := tglGetnMapfvARB(dglGetProcAddress('glGetnMapfvARB'));
  glGetnMapivARB := tglGetnMapivARB(dglGetProcAddress('glGetnMapivARB'));
  glGetnPixelMapfvARB := tglGetnPixelMapfvARB(dglGetProcAddress('glGetnPixelMapfvARB'));
  glGetnPixelMapuivARB := tglGetnPixelMapuivARB(dglGetProcAddress('glGetnPixelMapuivARB'));
  glGetnPixelMapusvARB := tglGetnPixelMapusvARB(dglGetProcAddress('glGetnPixelMapusvARB'));
  glGetnPolygonStippleARB := tglGetnPolygonStippleARB(dglGetProcAddress('glGetnPolygonStippleARB'));
  glGetnColorTableARB := tglGetnColorTableARB(dglGetProcAddress('glGetnColorTableARB'));
  glGetnConvolutionFilterARB := tglGetnConvolutionFilterARB(dglGetProcAddress('glGetnConvolutionFilterARB'));
  glGetnSeparableFilterARB := tglGetnSeparableFilterARB(dglGetProcAddress('glGetnSeparableFilterARB'));
  glGetnHistogramARB := tglGetnHistogramARB(dglGetProcAddress('glGetnHistogramARB'));
  glGetnMinmaxARB := tglGetnMinmaxARB(dglGetProcAddress('glGetnMinmaxARB'));
  glGetnTexImageARB := tglGetnTexImageARB(dglGetProcAddress('glGetnTexImageARB'));
  glReadnPixelsARB := tglReadnPixelsARB(dglGetProcAddress('glReadnPixelsARB'));
  glGetnCompressedTexImageARB := tglGetnCompressedTexImageARB(dglGetProcAddress('glGetnCompressedTexImageARB'));
  glGetnUniformfvARB := tglGetnUniformfvARB(dglGetProcAddress('glGetnUniformfvARB'));
  glGetnUniformivARB := tglGetnUniformivARB(dglGetProcAddress('glGetnUniformivARB'));
  glGetnUniformuivARB := tglGetnUniformuivARB(dglGetProcAddress('glGetnUniformuivARB'));
  glGetnUniformdvARB := tglGetnUniformdvARB(dglGetProcAddress('glGetnUniformdvARB'));
end;

method Read_GL_ATI_draw_buffers;
begin
  glDrawBuffersATI := tglDrawBuffersATI(dglGetProcAddress('glDrawBuffersATI'));
end;

method Read_GL_ATI_element_array;
begin
  glElementPointerATI := tglElementPointerATI(dglGetProcAddress('glElementPointerATI'));
  glDrawElementArrayATI := tglDrawElementArrayATI(dglGetProcAddress('glDrawElementArrayATI'));
  glDrawRangeElementArrayATI := tglDrawRangeElementArrayATI(dglGetProcAddress('glDrawRangeElementArrayATI'));
end;

method Read_GL_ATI_envmap_bumpmap;
begin
  glTexBumpParameterivATI := tglTexBumpParameterivATI(dglGetProcAddress('glTexBumpParameterivATI'));
  glTexBumpParameterfvATI := tglTexBumpParameterfvATI(dglGetProcAddress('glTexBumpParameterfvATI'));
  glGetTexBumpParameterivATI := tglGetTexBumpParameterivATI(dglGetProcAddress('glGetTexBumpParameterivATI'));
  glGetTexBumpParameterfvATI := tglGetTexBumpParameterfvATI(dglGetProcAddress('glGetTexBumpParameterfvATI'));
end;

method Read_GL_ATI_fragment_shader;
begin
  glGenFragmentShadersATI := tglGenFragmentShadersATI(dglGetProcAddress('glGenFragmentShadersATI'));
  glBindFragmentShaderATI := tglBindFragmentShaderATI(dglGetProcAddress('glBindFragmentShaderATI'));
  glDeleteFragmentShaderATI := tglDeleteFragmentShaderATI(dglGetProcAddress('glDeleteFragmentShaderATI'));
  glBeginFragmentShaderATI := tglBeginFragmentShaderATI(dglGetProcAddress('glBeginFragmentShaderATI'));
  glEndFragmentShaderATI := tglEndFragmentShaderATI(dglGetProcAddress('glEndFragmentShaderATI'));
  glPassTexCoordATI := tglPassTexCoordATI(dglGetProcAddress('glPassTexCoordATI'));
  glSampleMapATI := tglSampleMapATI(dglGetProcAddress('glSampleMapATI'));
  glColorFragmentOp1ATI := tglColorFragmentOp1ATI(dglGetProcAddress('glColorFragmentOp1ATI'));
  glColorFragmentOp2ATI := tglColorFragmentOp2ATI(dglGetProcAddress('glColorFragmentOp2ATI'));
  glColorFragmentOp3ATI := tglColorFragmentOp3ATI(dglGetProcAddress('glColorFragmentOp3ATI'));
  glAlphaFragmentOp1ATI := tglAlphaFragmentOp1ATI(dglGetProcAddress('glAlphaFragmentOp1ATI'));
  glAlphaFragmentOp2ATI := tglAlphaFragmentOp2ATI(dglGetProcAddress('glAlphaFragmentOp2ATI'));
  glAlphaFragmentOp3ATI := tglAlphaFragmentOp3ATI(dglGetProcAddress('glAlphaFragmentOp3ATI'));
  glSetFragmentShaderConstantATI := tglSetFragmentShaderConstantATI(dglGetProcAddress('glSetFragmentShaderConstantATI'));
end;

method Read_GL_ATI_map_object_buffer;
begin
  glMapObjectBufferATI := tglMapObjectBufferATI(dglGetProcAddress('glMapObjectBufferATI'));
  glUnmapObjectBufferATI := tglUnmapObjectBufferATI(dglGetProcAddress('glUnmapObjectBufferATI'));
end;

method Read_GL_ATI_pn_triangles;
begin
  glPNTrianglesiATI := tglPNTrianglesiATI(dglGetProcAddress('glPNTrianglesiATI'));
  glPNTrianglesfATI := tglPNTrianglesfATI(dglGetProcAddress('glPNTrianglesfATI'));
end;

method Read_GL_ATI_separate_stencil;
begin
  glStencilOpSeparateATI := tglStencilOpSeparateATI(dglGetProcAddress('glStencilOpSeparateATI'));
  glStencilFuncSeparateATI := tglStencilFuncSeparateATI(dglGetProcAddress('glStencilFuncSeparateATI'));
end;

method Read_GL_ATI_vertex_array_object;
begin
  glNewObjectBufferATI := tglNewObjectBufferATI(dglGetProcAddress('glNewObjectBufferATI'));
  glIsObjectBufferATI := tglIsObjectBufferATI(dglGetProcAddress('glIsObjectBufferATI'));
  glUpdateObjectBufferATI := tglUpdateObjectBufferATI(dglGetProcAddress('glUpdateObjectBufferATI'));
  glGetObjectBufferfvATI := tglGetObjectBufferfvATI(dglGetProcAddress('glGetObjectBufferfvATI'));
  glGetObjectBufferivATI := tglGetObjectBufferivATI(dglGetProcAddress('glGetObjectBufferivATI'));
  glFreeObjectBufferATI := tglFreeObjectBufferATI(dglGetProcAddress('glFreeObjectBufferATI'));
  glArrayObjectATI := tglArrayObjectATI(dglGetProcAddress('glArrayObjectATI'));
  glGetArrayObjectfvATI := tglGetArrayObjectfvATI(dglGetProcAddress('glGetArrayObjectfvATI'));
  glGetArrayObjectivATI := tglGetArrayObjectivATI(dglGetProcAddress('glGetArrayObjectivATI'));
  glVariantArrayObjectATI := tglVariantArrayObjectATI(dglGetProcAddress('glVariantArrayObjectATI'));
  glGetVariantArrayObjectfvATI := tglGetVariantArrayObjectfvATI(dglGetProcAddress('glGetVariantArrayObjectfvATI'));
  glGetVariantArrayObjectivATI := tglGetVariantArrayObjectivATI(dglGetProcAddress('glGetVariantArrayObjectivATI'));

end;

method Read_GL_ATI_vertex_attrib_array_object;
begin
  glVertexAttribArrayObjectATI := tglVertexAttribArrayObjectATI(dglGetProcAddress('glVertexAttribArrayObjectATI'));
  glGetVertexAttribArrayObjectfvATI := tglGetVertexAttribArrayObjectfvATI(dglGetProcAddress('glGetVertexAttribArrayObjectfvATI'));
  glGetVertexAttribArrayObjectivATI := tglGetVertexAttribArrayObjectivATI(dglGetProcAddress('glGetVertexAttribArrayObjectivATI'));
end;

method Read_GL_ATI_vertex_streams;
begin
  glVertexStream1sATI := tglVertexStream1sATI(dglGetProcAddress('glVertexStream1sATI'));
  glVertexStream1svATI := tglVertexStream1svATI(dglGetProcAddress('glVertexStream1svATI'));
  glVertexStream1iATI := tglVertexStream1iATI(dglGetProcAddress('glVertexStream1iATI'));
  glVertexStream1ivATI := tglVertexStream1ivATI(dglGetProcAddress('glVertexStream1ivATI'));
  glVertexStream1fATI := tglVertexStream1fATI(dglGetProcAddress('glVertexStream1fATI'));
  glVertexStream1fvATI := tglVertexStream1fvATI(dglGetProcAddress('glVertexStream1fvATI'));
  glVertexStream1dATI := tglVertexStream1dATI(dglGetProcAddress('glVertexStream1dATI'));
  glVertexStream1dvATI := tglVertexStream1dvATI(dglGetProcAddress('glVertexStream1dvATI'));
  glVertexStream2sATI := tglVertexStream2sATI(dglGetProcAddress('glVertexStream2sATI'));
  glVertexStream2svATI := tglVertexStream2svATI(dglGetProcAddress('glVertexStream2svATI'));
  glVertexStream2iATI := tglVertexStream2iATI(dglGetProcAddress('glVertexStream2iATI'));
  glVertexStream2ivATI := tglVertexStream2ivATI(dglGetProcAddress('glVertexStream2ivATI'));
  glVertexStream2fATI := tglVertexStream2fATI(dglGetProcAddress('glVertexStream2fATI'));
  glVertexStream2fvATI := tglVertexStream2fvATI(dglGetProcAddress('glVertexStream2fvATI'));
  glVertexStream2dATI := tglVertexStream2dATI(dglGetProcAddress('glVertexStream2dATI'));
  glVertexStream2dvATI := tglVertexStream2dvATI(dglGetProcAddress('glVertexStream2dvATI'));
  glVertexStream3sATI := tglVertexStream3sATI(dglGetProcAddress('glVertexStream3sATI'));
  glVertexStream3svATI := tglVertexStream3svATI(dglGetProcAddress('glVertexStream3svATI'));
  glVertexStream3iATI := tglVertexStream3iATI(dglGetProcAddress('glVertexStream3iATI'));
  glVertexStream3ivATI := tglVertexStream3ivATI(dglGetProcAddress('glVertexStream3ivATI'));
  glVertexStream3fATI := tglVertexStream3fATI(dglGetProcAddress('glVertexStream3fATI'));
  glVertexStream3fvATI := tglVertexStream3fvATI(dglGetProcAddress('glVertexStream3fvATI'));
  glVertexStream3dATI := tglVertexStream3dATI(dglGetProcAddress('glVertexStream3dATI'));
  glVertexStream3dvATI := tglVertexStream3dvATI(dglGetProcAddress('glVertexStream3dvATI'));
  glVertexStream4sATI := tglVertexStream4sATI(dglGetProcAddress('glVertexStream4sATI'));
  glVertexStream4svATI := tglVertexStream4svATI(dglGetProcAddress('glVertexStream4svATI'));
  glVertexStream4iATI := tglVertexStream4iATI(dglGetProcAddress('glVertexStream4iATI'));
  glVertexStream4ivATI := tglVertexStream4ivATI(dglGetProcAddress('glVertexStream4ivATI'));
  glVertexStream4fATI := tglVertexStream4fATI(dglGetProcAddress('glVertexStream4fATI'));
  glVertexStream4fvATI := tglVertexStream4fvATI(dglGetProcAddress('glVertexStream4fvATI'));
  glVertexStream4dATI := tglVertexStream4dATI(dglGetProcAddress('glVertexStream4dATI'));
  glVertexStream4dvATI := tglVertexStream4dvATI(dglGetProcAddress('glVertexStream4dvATI'));
  glNormalStream3bATI := tglNormalStream3bATI(dglGetProcAddress('glNormalStream3bATI'));
  glNormalStream3bvATI := tglNormalStream3bvATI(dglGetProcAddress('glNormalStream3bvATI'));
  glNormalStream3sATI := tglNormalStream3sATI(dglGetProcAddress('glNormalStream3sATI'));
  glNormalStream3svATI := tglNormalStream3svATI(dglGetProcAddress('glNormalStream3svATI'));
  glNormalStream3iATI := tglNormalStream3iATI(dglGetProcAddress('glNormalStream3iATI'));
  glNormalStream3ivATI := tglNormalStream3ivATI(dglGetProcAddress('glNormalStream3ivATI'));
  glNormalStream3fATI := tglNormalStream3fATI(dglGetProcAddress('glNormalStream3fATI'));
  glNormalStream3fvATI := tglNormalStream3fvATI(dglGetProcAddress('glNormalStream3fvATI'));
  glNormalStream3dATI := tglNormalStream3dATI(dglGetProcAddress('glNormalStream3dATI'));
  glNormalStream3dvATI := tglNormalStream3dvATI(dglGetProcAddress('glNormalStream3dvATI'));
  glClientActiveVertexStreamATI := tglClientActiveVertexStreamATI(dglGetProcAddress('glClientActiveVertexStreamATI'));
  glVertexBlendEnviATI := tglVertexBlendEnviATI(dglGetProcAddress('glVertexBlendEnviATI'));
  glVertexBlendEnvfATI := tglVertexBlendEnvfATI(dglGetProcAddress('glVertexBlendEnvfATI'));
end;

method Read_GL_AMD_performance_monitor;
begin
  glGetPerfMonitorGroupsAMD := tglGetPerfMonitorGroupsAMD(dglGetProcAddress('glGetPerfMonitorGroupsAMD'));
  glGetPerfMonitorCountersAMD := tglGetPerfMonitorCountersAMD(dglGetProcAddress('glGetPerfMonitorCountersAMD'));
  glGetPerfMonitorGroupStringAMD := tglGetPerfMonitorGroupStringAMD(dglGetProcAddress('glGetPerfMonitorGroupStringAMD'));
  glGetPerfMonitorCounterStringAMD := tglGetPerfMonitorCounterStringAMD(dglGetProcAddress('glGetPerfMonitorCounterStringAMD'));
  glGetPerfMonitorCounterInfoAMD := tglGetPerfMonitorCounterInfoAMD(dglGetProcAddress('glGetPerfMonitorCounterInfoAMD'));
  glGenPerfMonitorsAMD := tglGenPerfMonitorsAMD(dglGetProcAddress('glGenPerfMonitorsAMD'));
  glDeletePerfMonitorsAMD := tglDeletePerfMonitorsAMD(dglGetProcAddress('glDeletePerfMonitorsAMD'));
  glSelectPerfMonitorCountersAMD := tglSelectPerfMonitorCountersAMD(dglGetProcAddress('glSelectPerfMonitorCountersAMD'));
  glBeginPerfMonitorAMD := tglBeginPerfMonitorAMD(dglGetProcAddress('glBeginPerfMonitorAMD'));
  glEndPerfMonitorAMD := tglEndPerfMonitorAMD(dglGetProcAddress('glEndPerfMonitorAMD'));
  glGetPerfMonitorCounterDataAMD := tglGetPerfMonitorCounterDataAMD(dglGetProcAddress('glGetPerfMonitorCounterDataAMD'));
end;

method Read_GL_AMD_vertex_shader_tesselator;
begin
  glTessellationFactorAMD := tglTessellationFactorAMD(dglGetProcAddress('glTessellationFactorAMD'));
  glTessellationModeAMD := tglTessellationModeAMD(dglGetProcAddress('glTessellationModeAMD'));
end;

method Read_GL_AMD_draw_buffers_blend;
begin
  glBlendFuncIndexedAMD := tglBlendFuncIndexedAMD(dglGetProcAddress('glBlendFuncIndexedAMD'));
  glBlendFuncSeparateIndexedAMD := tglBlendFuncSeparateIndexedAMD(dglGetProcAddress('glBlendFuncSeparateIndexedAMD'));
  glBlendEquationIndexedAMD := tglBlendEquationIndexedAMD(dglGetProcAddress('glBlendEquationIndexedAMD'));
  glBlendEquationSeparateIndexedAMD := tglBlendEquationSeparateIndexedAMD(dglGetProcAddress('glBlendEquationSeparateIndexedAMD'));
end;

method Read_GL_AMD_name_gen_delete;
begin
  glGenNamesAMD := tglGenNamesAMD(dglGetProcAddress('glGenNamesAMD'));
  glDeleteNamesAMD := tglDeleteNamesAMD(dglGetProcAddress('glDeleteNamesAMD'));
  glIsNameAMD := tglIsNameAMD(dglGetProcAddress('glIsNameAMD'));
end;

method Read_GL_AMD_debug_output;
begin
  glDebugMessageEnableAMD := tglDebugMessageEnableAMD(dglGetProcAddress('glDebugMessageEnableAMD'));
  glDebugMessageInsertAMD := tglDebugMessageInsertAMD(dglGetProcAddress('glDebugMessageInsertAMD'));
  glDebugMessageCallbackAMD := tglDebugMessageCallbackAMD(dglGetProcAddress('glDebugMessageCallbackAMD'));
  glGetDebugMessageLogAMD := tglGetDebugMessageLogAMD(dglGetProcAddress('glGetDebugMessageLogAMD'));
end;

method Read_GL_EXT_blend_color;
begin
  glBlendColorEXT := tglBlendColorEXT(dglGetProcAddress('glBlendColorEXT'));
end;

method Read_GL_EXT_blend_func_separate;
begin
  glBlendFuncSeparateEXT := tglBlendFuncSeparateEXT(dglGetProcAddress('glBlendFuncSeparateEXT'));
end;

method Read_GL_EXT_blend_minmax;
begin
  glBlendEquationEXT := tglBlendEquationEXT(dglGetProcAddress('glBlendEquationEXT'));
end;

method Read_GL_EXT_color_subtable;
begin
  glColorSubTableEXT := tglColorSubTableEXT(dglGetProcAddress('glColorSubTableEXT'));
  glCopyColorSubTableEXT := tglCopyColorSubTableEXT(dglGetProcAddress('glCopyColorSubTableEXT'));
end;

method Read_GL_EXT_compiled_vertex_array;
begin
  glLockArraysEXT := tglLockArraysEXT(dglGetProcAddress('glLockArraysEXT'));
  glUnlockArraysEXT := tglUnlockArraysEXT(dglGetProcAddress('glUnlockArraysEXT'));
end;

method Read_GL_EXT_convolution;
begin
  glConvolutionFilter1DEXT := tglConvolutionFilter1DEXT(dglGetProcAddress('glConvolutionFilter1DEXT'));
  glConvolutionFilter2DEXT := tglConvolutionFilter2DEXT(dglGetProcAddress('glConvolutionFilter2DEXT'));
  glConvolutionParameterfEXT := tglConvolutionParameterfEXT(dglGetProcAddress('glConvolutionParameterfEXT'));
  glConvolutionParameterfvEXT := tglConvolutionParameterfvEXT(dglGetProcAddress('glConvolutionParameterfvEXT'));
  glConvolutionParameteriEXT := tglConvolutionParameteriEXT(dglGetProcAddress('glConvolutionParameteriEXT'));
  glConvolutionParameterivEXT := tglConvolutionParameterivEXT(dglGetProcAddress('glConvolutionParameterivEXT'));
  glCopyConvolutionFilter1DEXT := tglCopyConvolutionFilter1DEXT(dglGetProcAddress('glCopyConvolutionFilter1DEXT'));
  glCopyConvolutionFilter2DEXT := tglCopyConvolutionFilter2DEXT(dglGetProcAddress('glCopyConvolutionFilter2DEXT'));
  glGetConvolutionFilterEXT := tglGetConvolutionFilterEXT(dglGetProcAddress('glGetConvolutionFilterEXT'));
  glGetConvolutionParameterfvEXT := tglGetConvolutionParameterfvEXT(dglGetProcAddress('glGetConvolutionParameterfvEXT'));
  glGetConvolutionParameterivEXT := tglGetConvolutionParameterivEXT(dglGetProcAddress('glGetConvolutionParameterivEXT'));
  glGetSeparableFilterEXT := tglGetSeparableFilterEXT(dglGetProcAddress('glGetSeparableFilterEXT'));
  glSeparableFilter2DEXT := tglSeparableFilter2DEXT(dglGetProcAddress('glSeparableFilter2DEXT'));
end;

method Read_GL_EXT_coordinate_frame;
begin
  glTangent3bEXT := tglTangent3bEXT(dglGetProcAddress('glTangent3bEXT'));
  glTangent3bvEXT := tglTangent3bvEXT(dglGetProcAddress('glTangent3bvEXT'));
  glTangent3dEXT := tglTangent3dEXT(dglGetProcAddress('glTangent3dEXT'));
  glTangent3dvEXT := tglTangent3dvEXT(dglGetProcAddress('glTangent3dvEXT'));
  glTangent3fEXT := tglTangent3fEXT(dglGetProcAddress('glTangent3fEXT'));
  glTangent3fvEXT := tglTangent3fvEXT(dglGetProcAddress('glTangent3fvEXT'));
  glTangent3iEXT := tglTangent3iEXT(dglGetProcAddress('glTangent3iEXT'));
  glTangent3ivEXT := tglTangent3ivEXT(dglGetProcAddress('glTangent3ivEXT'));
  glTangent3sEXT := tglTangent3sEXT(dglGetProcAddress('glTangent3sEXT'));
  glTangent3svEXT := tglTangent3svEXT(dglGetProcAddress('glTangent3svEXT'));
  glBinormal3bEXT := tglBinormal3bEXT(dglGetProcAddress('glBinormal3bEXT'));
  glBinormal3bvEXT := tglBinormal3bvEXT(dglGetProcAddress('glBinormal3bvEXT'));
  glBinormal3dEXT := tglBinormal3dEXT(dglGetProcAddress('glBinormal3dEXT'));
  glBinormal3dvEXT := tglBinormal3dvEXT(dglGetProcAddress('glBinormal3dvEXT'));
  glBinormal3fEXT := tglBinormal3fEXT(dglGetProcAddress('glBinormal3fEXT'));
  glBinormal3fvEXT := tglBinormal3fvEXT(dglGetProcAddress('glBinormal3fvEXT'));
  glBinormal3iEXT := tglBinormal3iEXT(dglGetProcAddress('glBinormal3iEXT'));
  glBinormal3ivEXT := tglBinormal3ivEXT(dglGetProcAddress('glBinormal3ivEXT'));
  glBinormal3sEXT := tglBinormal3sEXT(dglGetProcAddress('glBinormal3sEXT'));
  glBinormal3svEXT := tglBinormal3svEXT(dglGetProcAddress('glBinormal3svEXT'));
  glTangentPointerEXT := tglTangentPointerEXT(dglGetProcAddress('glTangentPointerEXT'));
  glBinormalPointerEXT := tglBinormalPointerEXT(dglGetProcAddress('glBinormalPointerEXT'));
end;

method Read_GL_EXT_copy_texture;
begin
  glCopyTexImage1DEXT := tglCopyTexImage1DEXT(dglGetProcAddress('glCopyTexImage1DEXT'));
  glCopyTexImage2DEXT := tglCopyTexImage2DEXT(dglGetProcAddress('glCopyTexImage2DEXT'));
  glCopyTexSubImage1DEXT := tglCopyTexSubImage1DEXT(dglGetProcAddress('glCopyTexSubImage1DEXT'));
  glCopyTexSubImage2DEXT := tglCopyTexSubImage2DEXT(dglGetProcAddress('glCopyTexSubImage2DEXT'));
  glCopyTexSubImage3DEXT := tglCopyTexSubImage3DEXT(dglGetProcAddress('glCopyTexSubImage3DEXT'));
end;

method Read_GL_EXT_cull_vertex;
begin
  glCullParameterdvEXT := tglCullParameterdvEXT(dglGetProcAddress('glCullParameterdvEXT'));
  glCullParameterfvEXT := tglCullParameterfvEXT(dglGetProcAddress('glCullParameterfvEXT'));
end;

method Read_GL_EXT_draw_range_elements;
begin
  glDrawRangeElementsEXT := tglDrawRangeElementsEXT(dglGetProcAddress('glDrawRangeElementsEXT'));
end;

method Read_GL_EXT_fog_coord;
begin
  glFogCoordfEXT := tglFogCoordfEXT(dglGetProcAddress('glFogCoordfEXT'));
  glFogCoordfvEXT := tglFogCoordfvEXT(dglGetProcAddress('glFogCoordfvEXT'));
  glFogCoorddEXT := tglFogCoorddEXT(dglGetProcAddress('glFogCoorddEXT'));
  glFogCoorddvEXT := tglFogCoorddvEXT(dglGetProcAddress('glFogCoorddvEXT'));
  glFogCoordPointerEXT := tglFogCoordPointerEXT(dglGetProcAddress('glFogCoordPointerEXT'));
end;

method Read_GL_EXT_framebuffer_object;
begin
  glIsRenderbufferEXT := tglIsRenderbufferEXT(dglGetProcAddress('glIsRenderbufferEXT'));
  glBindRenderbufferEXT := tglBindRenderbufferEXT(dglGetProcAddress('glBindRenderbufferEXT'));
  glDeleteRenderbuffersEXT := tglDeleteRenderbuffersEXT(dglGetProcAddress('glDeleteRenderbuffersEXT'));
  glGenRenderbuffersEXT := tglGenRenderbuffersEXT(dglGetProcAddress('glGenRenderbuffersEXT'));
  glRenderbufferStorageEXT := tglRenderbufferStorageEXT(dglGetProcAddress('glRenderbufferStorageEXT'));
  glGetRenderbufferParameterivEXT := tglGetRenderbufferParameterivEXT(dglGetProcAddress('glGetRenderbufferParameterivEXT'));
  glIsFramebufferEXT := tglIsFramebufferEXT(dglGetProcAddress('glIsFramebufferEXT'));
  glBindFramebufferEXT := tglBindFramebufferEXT(dglGetProcAddress('glBindFramebufferEXT'));
  glDeleteFramebuffersEXT := tglDeleteFramebuffersEXT(dglGetProcAddress('glDeleteFramebuffersEXT'));
  glGenFramebuffersEXT := tglGenFramebuffersEXT(dglGetProcAddress('glGenFramebuffersEXT'));
  glCheckFramebufferStatusEXT := tglCheckFramebufferStatusEXT(dglGetProcAddress('glCheckFramebufferStatusEXT'));
  glFramebufferTexture1DEXT := tglFramebufferTexture1DEXT(dglGetProcAddress('glFramebufferTexture1DEXT'));
  glFramebufferTexture2DEXT := tglFramebufferTexture2DEXT(dglGetProcAddress('glFramebufferTexture2DEXT'));
  glFramebufferTexture3DEXT := tglFramebufferTexture3DEXT(dglGetProcAddress('glFramebufferTexture3DEXT'));
  glFramebufferRenderbufferEXT := tglFramebufferRenderbufferEXT(dglGetProcAddress('glFramebufferRenderbufferEXT'));
  glGetFramebufferAttachmentParameterivEXT := tglGetFramebufferAttachmentParameterivEXT(dglGetProcAddress('glGetFramebufferAttachmentParameterivEXT'));
  glGenerateMipmapEXT := tglGenerateMipmapEXT(dglGetProcAddress('glGenerateMipmapEXT'));
end;

method Read_GL_EXT_histogram;
begin
  glGetHistogramEXT := tglGetHistogramEXT(dglGetProcAddress('glGetHistogramEXT'));
  glGetHistogramParameterfvEXT := tglGetHistogramParameterfvEXT(dglGetProcAddress('glGetHistogramParameterfvEXT'));
  glGetHistogramParameterivEXT := tglGetHistogramParameterivEXT(dglGetProcAddress('glGetHistogramParameterivEXT'));
  glGetMinmaxEXT := tglGetMinmaxEXT(dglGetProcAddress('glGetMinmaxEXT'));
  glGetMinmaxParameterfvEXT := tglGetMinmaxParameterfvEXT(dglGetProcAddress('glGetMinmaxParameterfvEXT'));
  glGetMinmaxParameterivEXT := tglGetMinmaxParameterivEXT(dglGetProcAddress('glGetMinmaxParameterivEXT'));
  glHistogramEXT := tglHistogramEXT(dglGetProcAddress('glHistogramEXT'));
  glMinmaxEXT := tglMinmaxEXT(dglGetProcAddress('glMinmaxEXT'));
  glResetHistogramEXT := tglResetHistogramEXT(dglGetProcAddress('glResetHistogramEXT'));
  glResetMinmaxEXT := tglResetMinmaxEXT(dglGetProcAddress('glResetMinmaxEXT'));
end;

method Read_GL_EXT_index_func;
begin
  glIndexFuncEXT := tglIndexFuncEXT(dglGetProcAddress('glIndexFuncEXT'));
end;

method Read_GL_EXT_index_material;
begin
  glIndexMaterialEXT := tglIndexMaterialEXT(dglGetProcAddress('glIndexMaterialEXT'));
end;

method Read_GL_EXT_light_texture;
begin
  glApplyTextureEXT := tglApplyTextureEXT(dglGetProcAddress('glApplyTextureEXT'));
  glTextureLightEXT := tglTextureLightEXT(dglGetProcAddress('glTextureLightEXT'));
  glTextureMaterialEXT := tglTextureMaterialEXT(dglGetProcAddress('glTextureMaterialEXT'));
end;

method Read_GL_EXT_multi_draw_arrays;
begin
  glMultiDrawArraysEXT := tglMultiDrawArraysEXT(dglGetProcAddress('glMultiDrawArraysEXT'));
  glMultiDrawElementsEXT := tglMultiDrawElementsEXT(dglGetProcAddress('glMultiDrawElementsEXT'));
end;

method Read_GL_EXT_multisample;
begin
  glSampleMaskEXT := tglSampleMaskEXT(dglGetProcAddress('glSampleMaskEXT'));
  glSamplePatternEXT := tglSamplePatternEXT(dglGetProcAddress('glSamplePatternEXT'));
end;

method Read_GL_EXT_paletted_texture;
begin
  glColorTableEXT := tglColorTableEXT(dglGetProcAddress('glColorTableEXT'));
  glGetColorTableEXT := tglGetColorTableEXT(dglGetProcAddress('glGetColorTableEXT'));
  glGetColorTableParameterivEXT := tglGetColorTableParameterivEXT(dglGetProcAddress('glGetColorTableParameterivEXT'));
  glGetColorTableParameterfvEXT := tglGetColorTableParameterfvEXT(dglGetProcAddress('glGetColorTableParameterfvEXT'));
end;

method Read_GL_EXT_pixel_transform;
begin
  glPixelTransformParameteriEXT := tglPixelTransformParameteriEXT(dglGetProcAddress('glPixelTransformParameteriEXT'));
  glPixelTransformParameterfEXT := tglPixelTransformParameterfEXT(dglGetProcAddress('glPixelTransformParameterfEXT'));
  glPixelTransformParameterivEXT := tglPixelTransformParameterivEXT(dglGetProcAddress('glPixelTransformParameterivEXT'));
  glPixelTransformParameterfvEXT := tglPixelTransformParameterfvEXT(dglGetProcAddress('glPixelTransformParameterfvEXT'));
end;

method Read_GL_EXT_point_parameters;
begin
  glPointParameterfEXT := tglPointParameterfEXT(dglGetProcAddress('glPointParameterfEXT'));
  glPointParameterfvEXT := tglPointParameterfvEXT(dglGetProcAddress('glPointParameterfvEXT'));
end;

method Read_GL_EXT_polygon_offset;
begin
  glPolygonOffsetEXT := tglPolygonOffsetEXT(dglGetProcAddress('glPolygonOffsetEXT'));
end;

method Read_GL_EXT_secondary_color;
begin
  glSecondaryColor3bEXT := tglSecondaryColor3bEXT(dglGetProcAddress('glSecondaryColor3bEXT'));
  glSecondaryColor3bvEXT := tglSecondaryColor3bvEXT(dglGetProcAddress('glSecondaryColor3bvEXT'));
  glSecondaryColor3dEXT := tglSecondaryColor3dEXT(dglGetProcAddress('glSecondaryColor3dEXT'));
  glSecondaryColor3dvEXT := tglSecondaryColor3dvEXT(dglGetProcAddress('glSecondaryColor3dvEXT'));
  glSecondaryColor3fEXT := tglSecondaryColor3fEXT(dglGetProcAddress('glSecondaryColor3fEXT'));
  glSecondaryColor3fvEXT := tglSecondaryColor3fvEXT(dglGetProcAddress('glSecondaryColor3fvEXT'));
  glSecondaryColor3iEXT := tglSecondaryColor3iEXT(dglGetProcAddress('glSecondaryColor3iEXT'));
  glSecondaryColor3ivEXT := tglSecondaryColor3ivEXT(dglGetProcAddress('glSecondaryColor3ivEXT'));
  glSecondaryColor3sEXT := tglSecondaryColor3sEXT(dglGetProcAddress('glSecondaryColor3sEXT'));
  glSecondaryColor3svEXT := tglSecondaryColor3svEXT(dglGetProcAddress('glSecondaryColor3svEXT'));
  glSecondaryColor3ubEXT := tglSecondaryColor3ubEXT(dglGetProcAddress('glSecondaryColor3ubEXT'));
  glSecondaryColor3ubvEXT := tglSecondaryColor3ubvEXT(dglGetProcAddress('glSecondaryColor3ubvEXT'));
  glSecondaryColor3uiEXT := tglSecondaryColor3uiEXT(dglGetProcAddress('glSecondaryColor3uiEXT'));
  glSecondaryColor3uivEXT := tglSecondaryColor3uivEXT(dglGetProcAddress('glSecondaryColor3uivEXT'));
  glSecondaryColor3usEXT := tglSecondaryColor3usEXT(dglGetProcAddress('glSecondaryColor3usEXT'));
  glSecondaryColor3usvEXT := tglSecondaryColor3usvEXT(dglGetProcAddress('glSecondaryColor3usvEXT'));
  glSecondaryColorPointerEXT := tglSecondaryColorPointerEXT(dglGetProcAddress('glSecondaryColorPointerEXT'));
end;

method Read_GL_EXT_stencil_two_side;
begin
  glActiveStencilFaceEXT := tglActiveStencilFaceEXT(dglGetProcAddress('glActiveStencilFaceEXT'));
end;

method Read_GL_EXT_subtexture;
begin
  glTexSubImage1DEXT := tglTexSubImage1DEXT(dglGetProcAddress('glTexSubImage1DEXT'));
  glTexSubImage2DEXT := tglTexSubImage2DEXT(dglGetProcAddress('glTexSubImage2DEXT'));
end;

method Read_GL_EXT_texture3D;
begin
  glTexImage3DEXT := tglTexImage3DEXT(dglGetProcAddress('glTexImage3DEXT'));
  glTexSubImage3DEXT := tglTexSubImage3DEXT(dglGetProcAddress('glTexSubImage3DEXT'));
end;

method Read_GL_EXT_texture_object;
begin
  glAreTexturesResidentEXT := tglAreTexturesResidentEXT(dglGetProcAddress('glAreTexturesResidentEXT'));
  glBindTextureEXT := tglBindTextureEXT(dglGetProcAddress('glBindTextureEXT'));
  glDeleteTexturesEXT := tglDeleteTexturesEXT(dglGetProcAddress('glDeleteTexturesEXT'));
  glGenTexturesEXT := tglGenTexturesEXT(dglGetProcAddress('glGenTexturesEXT'));
  glIsTextureEXT := tglIsTextureEXT(dglGetProcAddress('glIsTextureEXT'));
  glPrioritizeTexturesEXT := tglPrioritizeTexturesEXT(dglGetProcAddress('glPrioritizeTexturesEXT'));
end;

method Read_GL_EXT_texture_perturb_normal;
begin
  glTextureNormalEXT := tglTextureNormalEXT(dglGetProcAddress('glTextureNormalEXT'));
end;

method Read_GL_EXT_vertex_array;
begin
  glArrayElementEXT := tglArrayElementEXT(dglGetProcAddress('glArrayElementEXT'));
  glColorPointerEXT := tglColorPointerEXT(dglGetProcAddress('glColorPointerEXT'));
  glDrawArraysEXT := tglDrawArraysEXT(dglGetProcAddress('glDrawArraysEXT'));
  glEdgeFlagPointerEXT := tglEdgeFlagPointerEXT(dglGetProcAddress('glEdgeFlagPointerEXT'));
  glGetPointervEXT := tglGetPointervEXT(dglGetProcAddress('glGetPointervEXT'));
  glIndexPointerEXT := tglIndexPointerEXT(dglGetProcAddress('glIndexPointerEXT'));
  glNormalPointerEXT := tglNormalPointerEXT(dglGetProcAddress('glNormalPointerEXT'));
  glTexCoordPointerEXT := tglTexCoordPointerEXT(dglGetProcAddress('glTexCoordPointerEXT'));
  glVertexPointerEXT := tglVertexPointerEXT(dglGetProcAddress('glVertexPointerEXT'));
end;

method Read_GL_EXT_vertex_shader;
begin
  glBeginVertexShaderEXT := tglBeginVertexShaderEXT(dglGetProcAddress('glBeginVertexShaderEXT'));
  glEndVertexShaderEXT := tglEndVertexShaderEXT(dglGetProcAddress('glEndVertexShaderEXT'));
  glBindVertexShaderEXT := tglBindVertexShaderEXT(dglGetProcAddress('glBindVertexShaderEXT'));
  glGenVertexShadersEXT := tglGenVertexShadersEXT(dglGetProcAddress('glGenVertexShadersEXT'));
  glDeleteVertexShaderEXT := tglDeleteVertexShaderEXT(dglGetProcAddress('glDeleteVertexShaderEXT'));
  glShaderOp1EXT := tglShaderOp1EXT(dglGetProcAddress('glShaderOp1EXT'));
  glShaderOp2EXT := tglShaderOp2EXT(dglGetProcAddress('glShaderOp2EXT'));
  glShaderOp3EXT := tglShaderOp3EXT(dglGetProcAddress('glShaderOp3EXT'));
  glSwizzleEXT := tglSwizzleEXT(dglGetProcAddress('glSwizzleEXT'));
  glWriteMaskEXT := tglWriteMaskEXT(dglGetProcAddress('glWriteMaskEXT'));
  glInsertComponentEXT := tglInsertComponentEXT(dglGetProcAddress('glInsertComponentEXT'));
  glExtractComponentEXT := tglExtractComponentEXT(dglGetProcAddress('glExtractComponentEXT'));
  glGenSymbolsEXT := tglGenSymbolsEXT(dglGetProcAddress('glGenSymbolsEXT'));
  glSetInvariantEXT := tglSetInvariantEXT(dglGetProcAddress('glSetInvariantEXT'));
  glSetLocalConstantEXT := tglSetLocalConstantEXT(dglGetProcAddress('glSetLocalConstantEXT'));
  glVariantbvEXT := tglVariantbvEXT(dglGetProcAddress('glVariantbvEXT'));
  glVariantsvEXT := tglVariantsvEXT(dglGetProcAddress('glVariantsvEXT'));
  glVariantivEXT := tglVariantivEXT(dglGetProcAddress('glVariantivEXT'));
  glVariantfvEXT := tglVariantfvEXT(dglGetProcAddress('glVariantfvEXT'));
  glVariantdvEXT := tglVariantdvEXT(dglGetProcAddress('glVariantdvEXT'));
  glVariantubvEXT := tglVariantubvEXT(dglGetProcAddress('glVariantubvEXT'));
  glVariantusvEXT := tglVariantusvEXT(dglGetProcAddress('glVariantusvEXT'));
  glVariantuivEXT := tglVariantuivEXT(dglGetProcAddress('glVariantuivEXT'));
  glVariantPointerEXT := tglVariantPointerEXT(dglGetProcAddress('glVariantPointerEXT'));
  glEnableVariantClientStateEXT := tglEnableVariantClientStateEXT(dglGetProcAddress('glEnableVariantClientStateEXT'));
  glDisableVariantClientStateEXT := tglDisableVariantClientStateEXT(dglGetProcAddress('glDisableVariantClientStateEXT'));
  glBindLightParameterEXT := tglBindLightParameterEXT(dglGetProcAddress('glBindLightParameterEXT'));
  glBindMaterialParameterEXT := tglBindMaterialParameterEXT(dglGetProcAddress('glBindMaterialParameterEXT'));
  glBindTexGenParameterEXT := tglBindTexGenParameterEXT(dglGetProcAddress('glBindTexGenParameterEXT'));
  glBindTextureUnitParameterEXT := tglBindTextureUnitParameterEXT(dglGetProcAddress('glBindTextureUnitParameterEXT'));
  glBindParameterEXT := tglBindParameterEXT(dglGetProcAddress('glBindParameterEXT'));
  glIsVariantEnabledEXT := tglIsVariantEnabledEXT(dglGetProcAddress('glIsVariantEnabledEXT'));
  glGetVariantBooleanvEXT := tglGetVariantBooleanvEXT(dglGetProcAddress('glGetVariantBooleanvEXT'));
  glGetVariantIntegervEXT := tglGetVariantIntegervEXT(dglGetProcAddress('glGetVariantIntegervEXT'));
  glGetVariantFloatvEXT := tglGetVariantFloatvEXT(dglGetProcAddress('glGetVariantFloatvEXT'));
  glGetVariantPointervEXT := tglGetVariantPointervEXT(dglGetProcAddress('glGetVariantPointervEXT'));
  glGetInvariantBooleanvEXT := tglGetInvariantBooleanvEXT(dglGetProcAddress('glGetInvariantBooleanvEXT'));
  glGetInvariantIntegervEXT := tglGetInvariantIntegervEXT(dglGetProcAddress('glGetInvariantIntegervEXT'));
  glGetInvariantFloatvEXT := tglGetInvariantFloatvEXT(dglGetProcAddress('glGetInvariantFloatvEXT'));
  glGetLocalConstantBooleanvEXT := tglGetLocalConstantBooleanvEXT(dglGetProcAddress('glGetLocalConstantBooleanvEXT'));
  glGetLocalConstantIntegervEXT := tglGetLocalConstantIntegervEXT(dglGetProcAddress('glGetLocalConstantIntegervEXT'));
  glGetLocalConstantFloatvEXT := tglGetLocalConstantFloatvEXT(dglGetProcAddress('glGetLocalConstantFloatvEXT'));
end;

method Read_GL_EXT_vertex_weighting;
begin
  glVertexWeightfEXT := tglVertexWeightfEXT(dglGetProcAddress('glVertexWeightfEXT'));
  glVertexWeightfvEXT := tglVertexWeightfvEXT(dglGetProcAddress('glVertexWeightfvEXT'));
  glVertexWeightPointerEXT := tglVertexWeightPointerEXT(dglGetProcAddress('glVertexWeightPointerEXT'));
end;

method Read_GL_EXT_depth_bounds_test;
begin
  glImageTransformParameteriHP := tglImageTransformParameteriHP(dglGetProcAddress('glImageTransformParameteriHP'));
  glDepthBoundsEXT := tglDepthBoundsEXT(dglGetProcAddress('glDepthBoundsEXT'));
end;

method Read_GL_EXT_blend_equation_separate;
begin
  glBlendEquationSeparateEXT := tglBlendEquationSeparateEXT(dglGetProcAddress('glBlendEquationSeparateEXT'));
end;

method Read_GL_EXT_stencil_clear_tag;
begin
  glStencilClearTagEXT := tglStencilClearTagEXT(dglGetProcAddress('glStencilClearTagEXT'));
end;

method Read_GL_EXT_framebuffer_blit;
begin
  glBlitFramebufferEXT := tglBlitFramebufferEXT(dglGetProcAddress('glBlitFramebufferEXT'));
end;

method Read_GL_EXT_framebuffer_multisample;
begin
  glRenderbufferStorageMultisampleEXT := tglRenderbufferStorageMultisampleEXT(dglGetProcAddress('glRenderbufferStorageMultisampleEXT'));
end;

method Read_GL_EXT_timer_query;
begin
  glGetQueryObjecti64vEXT := tglGetQueryObjecti64vEXT(dglGetProcAddress('glGetQueryObjecti64vEXT'));
  glGetQueryObjectui64vEXT := tglGetQueryObjectui64vEXT(dglGetProcAddress('glGetQueryObjectui64vEXT'));
end;

method Read_GL_EXT_gpu_program_parameters;
begin
  glProgramEnvParameters4fvEXT := tglProgramEnvParameters4fvEXT(dglGetProcAddress('glProgramEnvParameters4fvEXT'));
  glProgramLocalParameters4fvEXT := tglProgramLocalParameters4fvEXT(dglGetProcAddress('glProgramLocalParameters4fvEXT'));
end;

method Read_GL_EXT_bindable_uniform;
begin
  glUniformBufferEXT := tglUniformBufferEXT(dglGetProcAddress('glUniformBufferEXT'));
  glGetUniformBufferSizeEXT := tglGetUniformBufferSizeEXT(dglGetProcAddress('glGetUniformBufferSizeEXT'));
  glGetUniformOffsetEXT := tglGetUniformOffsetEXT(dglGetProcAddress('glGetUniformOffsetEXT'));
end;

method Read_GL_EXT_draw_buffers2;
begin
  glColorMaskIndexedEXT := tglColorMaskIndexedEXT(dglGetProcAddress('glColorMaskIndexedEXT'));
  glGetBooleanIndexedvEXT := tglGetBooleanIndexedvEXT(dglGetProcAddress('glGetBooleanIndexedvEXT'));
  glGetIntegerIndexedvEXT := tglGetIntegerIndexedvEXT(dglGetProcAddress('glGetIntegerIndexedvEXT'));
  glEnableIndexedEXT := tglEnableIndexedEXT(dglGetProcAddress('glEnableIndexedEXT'));
  glDisableIndexedEXT := tglDisableIndexedEXT(dglGetProcAddress('glDisableIndexedEXT'));
  glIsEnabledIndexedEXT := tglIsEnabledIndexedEXT(dglGetProcAddress('glIsEnabledIndexedEXT'));
end;

method Read_GL_EXT_draw_instanced;
begin
  glDrawArraysInstancedEXT := tglDrawArraysInstancedEXT(dglGetProcAddress('glDrawArraysInstancedEXT'));
  glDrawElementsInstancedEXT := tglDrawElementsInstancedEXT(dglGetProcAddress('glDrawElementsInstancedEXT'));
end;

method Read_GL_EXT_geometry_shader4;
begin
  glProgramParameteriEXT := tglProgramParameteriEXT(dglGetProcAddress('glProgramParameteriEXT'));
  glFramebufferTextureEXT := tglFramebufferTextureEXT(dglGetProcAddress('glFramebufferTextureEXT'));
  //  glFramebufferTextureLayerEXT := t//  glFramebufferTextureLayerEXT(dglGetProcAddress('glFramebufferTextureLayerEXT'));
  glFramebufferTextureFaceEXT := tglFramebufferTextureFaceEXT(dglGetProcAddress('glFramebufferTextureFaceEXT'));
end;

method Read_GL_EXT_gpu_shader4;
begin
  glVertexAttribI1iEXT := tglVertexAttribI1iEXT(dglGetProcAddress('glVertexAttribI1iEXT'));
  glVertexAttribI2iEXT := tglVertexAttribI2iEXT(dglGetProcAddress('glVertexAttribI2iEXT'));
  glVertexAttribI3iEXT := tglVertexAttribI3iEXT(dglGetProcAddress('glVertexAttribI3iEXT'));
  glVertexAttribI4iEXT := tglVertexAttribI4iEXT(dglGetProcAddress('glVertexAttribI4iEXT'));
  glVertexAttribI1uiEXT := tglVertexAttribI1uiEXT(dglGetProcAddress('glVertexAttribI1uiEXT'));
  glVertexAttribI2uiEXT := tglVertexAttribI2uiEXT(dglGetProcAddress('glVertexAttribI2uiEXT'));
  glVertexAttribI3uiEXT := tglVertexAttribI3uiEXT(dglGetProcAddress('glVertexAttribI3uiEXT'));
  glVertexAttribI4uiEXT := tglVertexAttribI4uiEXT(dglGetProcAddress('glVertexAttribI4uiEXT'));
  glVertexAttribI1ivEXT := tglVertexAttribI1ivEXT(dglGetProcAddress('glVertexAttribI1ivEXT'));
  glVertexAttribI2ivEXT := tglVertexAttribI2ivEXT(dglGetProcAddress('glVertexAttribI2ivEXT'));
  glVertexAttribI3ivEXT := tglVertexAttribI3ivEXT(dglGetProcAddress('glVertexAttribI3ivEXT'));
  glVertexAttribI4ivEXT := tglVertexAttribI4ivEXT(dglGetProcAddress('glVertexAttribI4ivEXT'));
  glVertexAttribI1uivEXT := tglVertexAttribI1uivEXT(dglGetProcAddress('glVertexAttribI1uivEXT'));
  glVertexAttribI2uivEXT := tglVertexAttribI2uivEXT(dglGetProcAddress('glVertexAttribI2uivEXT'));
  glVertexAttribI3uivEXT := tglVertexAttribI3uivEXT(dglGetProcAddress('glVertexAttribI3uivEXT'));
  glVertexAttribI4uivEXT := tglVertexAttribI4uivEXT(dglGetProcAddress('glVertexAttribI4uivEXT'));
  glVertexAttribI4bvEXT := tglVertexAttribI4bvEXT(dglGetProcAddress('glVertexAttribI4bvEXT'));
  glVertexAttribI4svEXT := tglVertexAttribI4svEXT(dglGetProcAddress('glVertexAttribI4svEXT'));
  glVertexAttribI4ubvEXT := tglVertexAttribI4ubvEXT(dglGetProcAddress('glVertexAttribI4ubvEXT'));
  glVertexAttribI4usvEXT := tglVertexAttribI4usvEXT(dglGetProcAddress('glVertexAttribI4usvEXT'));
  glVertexAttribIPointerEXT := tglVertexAttribIPointerEXT(dglGetProcAddress('glVertexAttribIPointerEXT'));
  glGetVertexAttribIivEXT := tglGetVertexAttribIivEXT(dglGetProcAddress('glGetVertexAttribIivEXT'));
  glGetVertexAttribIuivEXT := tglGetVertexAttribIuivEXT(dglGetProcAddress('glGetVertexAttribIuivEXT'));
  glUniform1uiEXT := tglUniform1uiEXT(dglGetProcAddress('glUniform1uiEXT'));
  glUniform2uiEXT := tglUniform2uiEXT(dglGetProcAddress('glUniform2uiEXT'));
  glUniform3uiEXT := tglUniform3uiEXT(dglGetProcAddress('glUniform3uiEXT'));
  glUniform4uiEXT := tglUniform4uiEXT(dglGetProcAddress('glUniform4uiEXT'));
  glUniform1uivEXT := tglUniform1uivEXT(dglGetProcAddress('glUniform1uivEXT'));
  glUniform2uivEXT := tglUniform2uivEXT(dglGetProcAddress('glUniform2uivEXT'));
  glUniform3uivEXT := tglUniform3uivEXT(dglGetProcAddress('glUniform3uivEXT'));
  glUniform4uivEXT := tglUniform4uivEXT(dglGetProcAddress('glUniform4uivEXT'));
  glGetUniformuivEXT := tglGetUniformuivEXT(dglGetProcAddress('glGetUniformuivEXT'));
  glBindFragDataLocationEXT := tglBindFragDataLocationEXT(dglGetProcAddress('glBindFragDataLocationEXT'));
  glGetFragDataLocationEXT := tglGetFragDataLocationEXT(dglGetProcAddress('glGetFragDataLocationEXT'));
end;

method Read_GL_EXT_texture_array;
begin
  glFramebufferTextureLayerEXT := tglFramebufferTextureLayerEXT(dglGetProcAddress('glFramebufferTextureLayerEXT'));
end;

method Read_GL_EXT_texture_buffer_object;
begin
  glTexBufferEXT := tglTexBufferEXT(dglGetProcAddress('glTexBufferEXT'));
end;

method Read_GL_EXT_texture_integer;
begin
  glClearColorIiEXT := tglClearColorIiEXT(dglGetProcAddress('glClearColorIiEXT'));
  glClearColorIuiEXT := tglClearColorIuiEXT(dglGetProcAddress('glClearColorIuiEXT'));
  glTexParameterIivEXT := tglTexParameterIivEXT(dglGetProcAddress('glTexParameterIivEXT'));
  glTexParameterIuivEXT := tglTexParameterIuivEXT(dglGetProcAddress('glTexParameterIuivEXT'));
  glGetTexParameterIivEXT := tglGetTexParameterIivEXT(dglGetProcAddress('glGetTexParameterIivEXT'));
  glGetTexParameterIiuvEXT := tglGetTexParameterIiuvEXT(dglGetProcAddress('glGetTexParameterIiuvEXT'));
end;

method Read_GL_EXT_transform_feedback;
begin
  glBeginTransformFeedbackEXT := tglBeginTransformFeedbackEXT(dglGetProcAddress('lBeginTransformFeedbackEXT'));
  glEndTransformFeedbackEXT := tglEndTransformFeedbackEXT(dglGetProcAddress('glEndTransformFeedbackEXT'));
  glBindBufferRangeEXT := tglBindBufferRangeEXT(dglGetProcAddress('glBindBufferRangeEXT'));
  glBindBufferOffsetEXT := tglBindBufferOffsetEXT(dglGetProcAddress('glBindBufferOffsetEXT'));
  glBindBufferBaseEXT := tglBindBufferBaseEXT(dglGetProcAddress('glBindBufferBaseEXT'));
  glTransformFeedbackVaryingsEXT := tglTransformFeedbackVaryingsEXT(dglGetProcAddress('glTransformFeedbackVaryingsEXT'));
  glGetTransformFeedbackVaryingEXT := tglGetTransformFeedbackVaryingEXT(dglGetProcAddress('glGetTransformFeedbackVaryingEXT'));
end;

method Read_GL_EXT_direct_state_access;
begin
  glClientAttribDefaultEXT := tglClientAttribDefaultEXT(dglGetProcAddress('glClientAttribDefaultEXT'));
  glPushClientAttribDefaultEXT := tglPushClientAttribDefaultEXT(dglGetProcAddress('glPushClientAttribDefaultEXT'));
  glMatrixLoadfEXT := tglMatrixLoadfEXT(dglGetProcAddress('glMatrixLoadfEXT'));
  glMatrixLoaddEXT := tglMatrixLoaddEXT(dglGetProcAddress('glMatrixLoaddEXT'));
  glMatrixMultfEXT := tglMatrixMultfEXT(dglGetProcAddress('glMatrixMultfEXT'));
  glMatrixMultdEXT := tglMatrixMultdEXT(dglGetProcAddress('glMatrixMultdEXT'));
  glMatrixLoadIdentityEXT := tglMatrixLoadIdentityEXT(dglGetProcAddress('glMatrixLoadIdentityEXT'));
  glMatrixRotatefEXT := tglMatrixRotatefEXT(dglGetProcAddress('glMatrixRotatefEXT'));
  glMatrixRotatedEXT := tglMatrixRotatedEXT(dglGetProcAddress('glMatrixRotatedEXT'));
  glMatrixScalefEXT := tglMatrixScalefEXT(dglGetProcAddress('glMatrixScalefEXT'));
  glMatrixScaledEXT := tglMatrixScaledEXT(dglGetProcAddress('glMatrixScaledEXT'));
  glMatrixTranslatefEXT := tglMatrixTranslatefEXT(dglGetProcAddress('glMatrixTranslatefEXT'));
  glMatrixTranslatedEXT := tglMatrixTranslatedEXT(dglGetProcAddress('glMatrixTranslatedEXT'));
  glMatrixFrustumEXT := tglMatrixFrustumEXT(dglGetProcAddress('glMatrixFrustumEXT'));
  glMatrixOrthoEXT := tglMatrixOrthoEXT(dglGetProcAddress('glMatrixOrthoEXT'));
  glMatrixPopEXT := tglMatrixPopEXT(dglGetProcAddress('glMatrixPopEXT'));
  glMatrixPushEXT := tglMatrixPushEXT(dglGetProcAddress('glMatrixPushEXT'));
  glMatrixLoadTransposefEXT := tglMatrixLoadTransposefEXT(dglGetProcAddress('glMatrixLoadTransposefEXT'));
  glMatrixLoadTransposedEXT := tglMatrixLoadTransposedEXT(dglGetProcAddress('glMatrixLoadTransposedEXT'));
  glMatrixMultTransposefEXT := tglMatrixMultTransposefEXT(dglGetProcAddress('glMatrixMultTransposefEXT'));
  glMatrixMultTransposedEXT := tglMatrixMultTransposedEXT(dglGetProcAddress('glMatrixMultTransposedEXT'));
  glTextureParameterfEXT := tglTextureParameterfEXT(dglGetProcAddress('glTextureParameterfEXT'));
  glTextureParameterfvEXT := tglTextureParameterfvEXT(dglGetProcAddress('glTextureParameterfvEXT'));
  glTextureParameteriEXT := tglTextureParameteriEXT(dglGetProcAddress('glTextureParameteriEXT'));
  glTextureParameterivEXT := tglTextureParameterivEXT(dglGetProcAddress('glTextureParameterivEXT'));
  glTextureImage1DEXT := tglTextureImage1DEXT(dglGetProcAddress('glTextureImage1DEXT'));
  glTextureImage2DEXT := tglTextureImage2DEXT(dglGetProcAddress('glTextureImage2DEXT'));
  glTextureSubImage1DEXT := tglTextureSubImage1DEXT(dglGetProcAddress('glTextureSubImage1DEXT'));
  glTextureSubImage2DEXT := tglTextureSubImage2DEXT(dglGetProcAddress('glTextureSubImage2DEXT'));
  glCopyTextureImage1DEXT := tglCopyTextureImage1DEXT(dglGetProcAddress('glCopyTextureImage1DEXT'));
  glCopyTextureImage2DEXT := tglCopyTextureImage2DEXT(dglGetProcAddress('glCopyTextureImage2DEXT'));
  glCopyTextureSubImage1DEXT := tglCopyTextureSubImage1DEXT(dglGetProcAddress('glCopyTextureSubImage1DEXT'));
  glCopyTextureSubImage2DEXT := tglCopyTextureSubImage2DEXT(dglGetProcAddress('glCopyTextureSubImage2DEXT'));
  glGetTextureImageEXT := tglGetTextureImageEXT(dglGetProcAddress('glGetTextureImageEXT'));
  glGetTextureParameterfvEXT := tglGetTextureParameterfvEXT(dglGetProcAddress('glGetTextureParameterfvEXT'));
  glGetTextureParameterivEXT := tglGetTextureParameterivEXT(dglGetProcAddress('glGetTextureParameterivEXT'));
  glGetTextureLevelParameterfvEXT := tglGetTextureLevelParameterfvEXT(dglGetProcAddress('glGetTextureLevelParameterfvEXT'));
  glGetTextureLevelParameterivEXT := tglGetTextureLevelParameterivEXT(dglGetProcAddress('glGetTextureLevelParameterivEXT'));
  glTextureImage3DEXT := tglTextureImage3DEXT(dglGetProcAddress('glTextureImage3DEXT'));
  glTextureSubImage3DEXT := tglTextureSubImage3DEXT(dglGetProcAddress('glTextureSubImage3DEXT'));
  glCopyTextureSubImage3DEXT := tglCopyTextureSubImage3DEXT(dglGetProcAddress('glCopyTextureSubImage3DEXT'));
  glMultiTexParameterfEXT := tglMultiTexParameterfEXT(dglGetProcAddress('glMultiTexParameterfEXT'));
  glMultiTexParameterfvEXT := tglMultiTexParameterfvEXT(dglGetProcAddress('glMultiTexParameterfvEXT'));
  glMultiTexParameteriEXT := tglMultiTexParameteriEXT(dglGetProcAddress('glMultiTexParameteriEXT'));
  glMultiTexParameterivEXT := tglMultiTexParameterivEXT(dglGetProcAddress('glMultiTexParameterivEXT'));
  glMultiTexImage1DEXT := tglMultiTexImage1DEXT(dglGetProcAddress('glMultiTexImage1DEXT'));
  glMultiTexImage2DEXT := tglMultiTexImage2DEXT(dglGetProcAddress('glMultiTexImage2DEXT'));
  glMultiTexSubImage1DEXT := tglMultiTexSubImage1DEXT(dglGetProcAddress('glMultiTexSubImage1DEXT'));
  glMultiTexSubImage2DEXT := tglMultiTexSubImage2DEXT(dglGetProcAddress('glMultiTexSubImage2DEXT'));
  glCopyMultiTexImage1DEXT := tglCopyMultiTexImage1DEXT(dglGetProcAddress('glCopyMultiTexImage1DEXT'));
  glCopyMultiTexImage2DEXT := tglCopyMultiTexImage2DEXT(dglGetProcAddress('glCopyMultiTexImage2DEXT'));
  glCopyMultiTexSubImage1DEXT := tglCopyMultiTexSubImage1DEXT(dglGetProcAddress('glCopyMultiTexSubImage1DEXT'));
  glCopyMultiTexSubImage2DEXT := tglCopyMultiTexSubImage2DEXT(dglGetProcAddress('glCopyMultiTexSubImage2DEXT'));
  glGetMultiTexImageEXT := tglGetMultiTexImageEXT(dglGetProcAddress('glGetMultiTexImageEXT'));
  glGetMultiTexParameterfvEXT := tglGetMultiTexParameterfvEXT(dglGetProcAddress('glGetMultiTexParameterfvEXT'));
  glGetMultiTexParameterivEXT := tglGetMultiTexParameterivEXT(dglGetProcAddress('glGetMultiTexParameterivEXT'));
  glGetMultiTexLevelParameterfvEXT := tglGetMultiTexLevelParameterfvEXT(dglGetProcAddress('glGetMultiTexLevelParameterfvEXT'));
  glGetMultiTexLevelParameterivEXT := tglGetMultiTexLevelParameterivEXT(dglGetProcAddress('glGetMultiTexLevelParameterivEXT'));
  glMultiTexImage3DEXT := tglMultiTexImage3DEXT(dglGetProcAddress('glMultiTexImage3DEXT'));
  glMultiTexSubImage3DEXT := tglMultiTexSubImage3DEXT(dglGetProcAddress('glMultiTexSubImage3DEXT'));
  glCopyMultiTexSubImage3DEXT := tglCopyMultiTexSubImage3DEXT(dglGetProcAddress('glCopyMultiTexSubImage3DEXT'));
  glBindMultiTextureEXT := tglBindMultiTextureEXT(dglGetProcAddress('glBindMultiTextureEXT'));
  glEnableClientStateIndexedEXT := tglEnableClientStateIndexedEXT(dglGetProcAddress('glEnableClientStateIndexedEXT'));
  glDisableClientStateIndexedEXT := tglDisableClientStateIndexedEXT(dglGetProcAddress('glDisableClientStateIndexedEXT'));
  glMultiTexCoordPointerEXT := tglMultiTexCoordPointerEXT(dglGetProcAddress('glMultiTexCoordPointerEXT'));
  glMultiTexEnvfEXT := tglMultiTexEnvfEXT(dglGetProcAddress('glMultiTexEnvfEXT'));
  glMultiTexEnvfvEXT := tglMultiTexEnvfvEXT(dglGetProcAddress('glMultiTexEnvfvEXT'));
  glMultiTexEnviEXT := tglMultiTexEnviEXT(dglGetProcAddress('glMultiTexEnviEXT'));
  glMultiTexEnvivEXT := tglMultiTexEnvivEXT(dglGetProcAddress('glMultiTexEnvivEXT'));
  glMultiTexGendEXT := tglMultiTexGendEXT(dglGetProcAddress('glMultiTexGendEXT'));
  glMultiTexGendvEXT := tglMultiTexGendvEXT(dglGetProcAddress('glMultiTexGendvEXT'));
  glMultiTexGenfEXT := tglMultiTexGenfEXT(dglGetProcAddress('glMultiTexGenfEXT'));
  glMultiTexGenfvEXT := tglMultiTexGenfvEXT(dglGetProcAddress('glMultiTexGenfvEXT'));
  glMultiTexGeniEXT := tglMultiTexGeniEXT(dglGetProcAddress('glMultiTexGeniEXT'));
  glMultiTexGenivEXT := tglMultiTexGenivEXT(dglGetProcAddress('glMultiTexGenivEXT'));
  glGetMultiTexEnvfvEXT := tglGetMultiTexEnvfvEXT(dglGetProcAddress('glGetMultiTexEnvfvEXT'));
  glGetMultiTexEnvivEXT := tglGetMultiTexEnvivEXT(dglGetProcAddress('glGetMultiTexEnvivEXT'));
  glGetMultiTexGendvEXT := tglGetMultiTexGendvEXT(dglGetProcAddress('glGetMultiTexGendvEXT'));
  glGetMultiTexGenfvEXT := tglGetMultiTexGenfvEXT(dglGetProcAddress('glGetMultiTexGenfvEXT'));
  glGetMultiTexGenivEXT := tglGetMultiTexGenivEXT(dglGetProcAddress('glGetMultiTexGenivEXT'));
  glGetFloatIndexedvEXT := tglGetFloatIndexedvEXT(dglGetProcAddress('glGetFloatIndexedvEXT'));
  glGetDoubleIndexedvEXT := tglGetDoubleIndexedvEXT(dglGetProcAddress('glGetDoubleIndexedvEXT'));
  glGetPointerIndexedvEXT := tglGetPointerIndexedvEXT(dglGetProcAddress('glGetPointerIndexedvEXT'));
  glCompressedTextureImage3DEXT := tglCompressedTextureImage3DEXT(dglGetProcAddress('glCompressedTextureImage3DEXT'));
  glCompressedTextureImage2DEXT := tglCompressedTextureImage2DEXT(dglGetProcAddress('glCompressedTextureImage2DEXT'));
  glCompressedTextureImage1DEXT := tglCompressedTextureImage1DEXT(dglGetProcAddress('glCompressedTextureImage1DEXT'));
  glCompressedTextureSubImage3DEXT := tglCompressedTextureSubImage3DEXT(dglGetProcAddress('glCompressedTextureSubImage3DEXT'));
  glCompressedTextureSubImage2DEXT := tglCompressedTextureSubImage2DEXT(dglGetProcAddress('glCompressedTextureSubImage2DEXT'));
  glCompressedTextureSubImage1DEXT := tglCompressedTextureSubImage1DEXT(dglGetProcAddress('glCompressedTextureSubImage1DEXT'));
  glGetCompressedTextureImageEXT := tglGetCompressedTextureImageEXT(dglGetProcAddress('glGetCompressedTextureImageEXT'));
  glCompressedMultiTexImage3DEXT := tglCompressedMultiTexImage3DEXT(dglGetProcAddress('glCompressedMultiTexImage3DEXT'));
  glCompressedMultiTexImage2DEXT := tglCompressedMultiTexImage2DEXT(dglGetProcAddress('glCompressedMultiTexImage2DEXT'));
  glCompressedMultiTexImage1DEXT := tglCompressedMultiTexImage1DEXT(dglGetProcAddress('glCompressedMultiTexImage1DEXT'));
  glCompressedMultiTexSubImage3DEXT := tglCompressedMultiTexSubImage3DEXT(dglGetProcAddress('glCompressedMultiTexSubImage3DEXT'));
  glCompressedMultiTexSubImage2DEXT := tglCompressedMultiTexSubImage2DEXT(dglGetProcAddress('glCompressedMultiTexSubImage2DEXT'));
  glCompressedMultiTexSubImage1DEXT := tglCompressedMultiTexSubImage1DEXT(dglGetProcAddress('glCompressedMultiTexSubImage1DEXT'));
  glGetCompressedMultiTexImageEXT := tglGetCompressedMultiTexImageEXT(dglGetProcAddress('glGetCompressedMultiTexImageEXT'));
  glNamedProgramStringEXT := tglNamedProgramStringEXT(dglGetProcAddress('glNamedProgramStringEXT'));
  glNamedProgramLocalParameter4dEXT := tglNamedProgramLocalParameter4dEXT(dglGetProcAddress('glNamedProgramLocalParameter4dEXT'));
  glNamedProgramLocalParameter4dvEXT := tglNamedProgramLocalParameter4dvEXT(dglGetProcAddress('glNamedProgramLocalParameter4dvEXT'));
  glNamedProgramLocalParameter4fEXT := tglNamedProgramLocalParameter4fEXT(dglGetProcAddress('glNamedProgramLocalParameter4fEXT'));
  glNamedProgramLocalParameter4fvEXT := tglNamedProgramLocalParameter4fvEXT(dglGetProcAddress('glNamedProgramLocalParameter4fvEXT'));
  glGetNamedProgramLocalParameterdvEXT := tglGetNamedProgramLocalParameterdvEXT(dglGetProcAddress('glGetNamedProgramLocalParameterdvEXT'));
  glGetNamedProgramLocalParameterfvEXT := tglGetNamedProgramLocalParameterfvEXT(dglGetProcAddress('glGetNamedProgramLocalParameterfvEXT'));
  glGetNamedProgramivEXT := tglGetNamedProgramivEXT(dglGetProcAddress('glGetNamedProgramivEXT'));
  glGetNamedProgramStringEXT := tglGetNamedProgramStringEXT(dglGetProcAddress('glGetNamedProgramStringEXT'));
  glNamedProgramLocalParameters4fvEXT := tglNamedProgramLocalParameters4fvEXT(dglGetProcAddress('glNamedProgramLocalParameters4fvEXT'));
  glNamedProgramLocalParameterI4iEXT := tglNamedProgramLocalParameterI4iEXT(dglGetProcAddress('glNamedProgramLocalParameterI4iEXT'));
  glNamedProgramLocalParameterI4ivEXT := tglNamedProgramLocalParameterI4ivEXT(dglGetProcAddress('glNamedProgramLocalParameterI4ivEXT'));
  glNamedProgramLocalParametersI4ivEXT := tglNamedProgramLocalParametersI4ivEXT(dglGetProcAddress('glNamedProgramLocalParametersI4ivEXT'));
  glNamedProgramLocalParameterI4uiEXT := tglNamedProgramLocalParameterI4uiEXT(dglGetProcAddress('glNamedProgramLocalParameterI4uiEXT'));
  glNamedProgramLocalParameterI4uivEXT := tglNamedProgramLocalParameterI4uivEXT(dglGetProcAddress('glNamedProgramLocalParameterI4uivEXT'));
  glNamedProgramLocalParametersI4uivEXT := tglNamedProgramLocalParametersI4uivEXT(dglGetProcAddress('glNamedProgramLocalParametersI4uivEXT'));
  glGetNamedProgramLocalParameterIivEXT := tglGetNamedProgramLocalParameterIivEXT(dglGetProcAddress('glGetNamedProgramLocalParameterIivEXT'));
  glGetNamedProgramLocalParameterIuivEXT := tglGetNamedProgramLocalParameterIuivEXT(dglGetProcAddress('glGetNamedProgramLocalParameterIuivEXT'));
  glTextureParameterIivEXT := tglTextureParameterIivEXT(dglGetProcAddress('glTextureParameterIivEXT'));
  glTextureParameterIuivEXT := tglTextureParameterIuivEXT(dglGetProcAddress('glTextureParameterIuivEXT'));
  glGetTextureParameterIivEXT := tglGetTextureParameterIivEXT(dglGetProcAddress('glGetTextureParameterIivEXT'));
  glGetTextureParameterIuivEXT := tglGetTextureParameterIuivEXT(dglGetProcAddress('glGetTextureParameterIuivEXT'));
  glMultiTexParameterIivEXT := tglMultiTexParameterIivEXT(dglGetProcAddress('glMultiTexParameterIivEXT'));
  glMultiTexParameterIuivEXT := tglMultiTexParameterIuivEXT(dglGetProcAddress('glMultiTexParameterIuivEXT'));
  glGetMultiTexParameterIivEXT := tglGetMultiTexParameterIivEXT(dglGetProcAddress('glGetMultiTexParameterIivEXT'));
  glGetMultiTexParameterIuivEXT := tglGetMultiTexParameterIuivEXT(dglGetProcAddress('glGetMultiTexParameterIuivEXT'));
  glProgramUniform1fEXT := tglProgramUniform1fEXT(dglGetProcAddress('glProgramUniform1fEXT'));
  glProgramUniform2fEXT := tglProgramUniform2fEXT(dglGetProcAddress('glProgramUniform2fEXT'));
  glProgramUniform3fEXT := tglProgramUniform3fEXT(dglGetProcAddress('glProgramUniform3fEXT'));
  glProgramUniform4fEXT := tglProgramUniform4fEXT(dglGetProcAddress('glProgramUniform4fEXT'));
  glProgramUniform1iEXT := tglProgramUniform1iEXT(dglGetProcAddress('glProgramUniform1iEXT'));
  glProgramUniform2iEXT := tglProgramUniform2iEXT(dglGetProcAddress('glProgramUniform2iEXT'));
  glProgramUniform3iEXT := tglProgramUniform3iEXT(dglGetProcAddress('glProgramUniform3iEXT'));
  glProgramUniform4iEXT := tglProgramUniform4iEXT(dglGetProcAddress('glProgramUniform4iEXT'));
  glProgramUniform1fvEXT := tglProgramUniform1fvEXT(dglGetProcAddress('glProgramUniform1fvEXT'));
  glProgramUniform2fvEXT := tglProgramUniform2fvEXT(dglGetProcAddress('glProgramUniform2fvEXT'));
  glProgramUniform3fvEXT := tglProgramUniform3fvEXT(dglGetProcAddress('glProgramUniform3fvEXT'));
  glProgramUniform4fvEXT := tglProgramUniform4fvEXT(dglGetProcAddress('glProgramUniform4fvEXT'));
  glProgramUniform1ivEXT := tglProgramUniform1ivEXT(dglGetProcAddress('glProgramUniform1ivEXT'));
  glProgramUniform2ivEXT := tglProgramUniform2ivEXT(dglGetProcAddress('glProgramUniform2ivEXT'));
  glProgramUniform3ivEXT := tglProgramUniform3ivEXT(dglGetProcAddress('glProgramUniform3ivEXT'));
  glProgramUniform4ivEXT := tglProgramUniform4ivEXT(dglGetProcAddress('glProgramUniform4ivEXT'));
  glProgramUniformMatrix2fvEXT := tglProgramUniformMatrix2fvEXT(dglGetProcAddress('glProgramUniformMatrix2fvEXT'));
  glProgramUniformMatrix3fvEXT := tglProgramUniformMatrix3fvEXT(dglGetProcAddress('glProgramUniformMatrix3fvEXT'));
  glProgramUniformMatrix4fvEXT := tglProgramUniformMatrix4fvEXT(dglGetProcAddress('glProgramUniformMatrix4fvEXT'));
  glProgramUniformMatrix2x3fvEXT := tglProgramUniformMatrix2x3fvEXT(dglGetProcAddress('glProgramUniformMatrix2x3fvEXT'));
  glProgramUniformMatrix3x2fvEXT := tglProgramUniformMatrix3x2fvEXT(dglGetProcAddress('glProgramUniformMatrix3x2fvEXT'));
  glProgramUniformMatrix2x4fvEXT := tglProgramUniformMatrix2x4fvEXT(dglGetProcAddress('glProgramUniformMatrix2x4fvEXT'));
  glProgramUniformMatrix4x2fvEXT := tglProgramUniformMatrix4x2fvEXT(dglGetProcAddress('glProgramUniformMatrix4x2fvEXT'));
  glProgramUniformMatrix3x4fvEXT := tglProgramUniformMatrix3x4fvEXT(dglGetProcAddress('glProgramUniformMatrix3x4fvEXT'));
  glProgramUniformMatrix4x3fvEXT := tglProgramUniformMatrix4x3fvEXT(dglGetProcAddress('glProgramUniformMatrix4x3fvEXT'));
  glProgramUniform1uiEXT := tglProgramUniform1uiEXT(dglGetProcAddress('glProgramUniform1uiEXT'));
  glProgramUniform2uiEXT := tglProgramUniform2uiEXT(dglGetProcAddress('glProgramUniform2uiEXT'));
  glProgramUniform3uiEXT := tglProgramUniform3uiEXT(dglGetProcAddress('glProgramUniform3uiEXT'));
  glProgramUniform4uiEXT := tglProgramUniform4uiEXT(dglGetProcAddress('glProgramUniform4uiEXT'));
  glProgramUniform1uivEXT := tglProgramUniform1uivEXT(dglGetProcAddress('glProgramUniform1uivEXT'));
  glProgramUniform2uivEXT := tglProgramUniform2uivEXT(dglGetProcAddress('glProgramUniform2uivEXT'));
  glProgramUniform3uivEXT := tglProgramUniform3uivEXT(dglGetProcAddress('glProgramUniform3uivEXT'));
  glProgramUniform4uivEXT := tglProgramUniform4uivEXT(dglGetProcAddress('glProgramUniform4uivEXT'));
  glNamedBufferDataEXT := tglNamedBufferDataEXT(dglGetProcAddress('glNamedBufferDataEXT'));
  glNamedBufferSubDataEXT := tglNamedBufferSubDataEXT(dglGetProcAddress('glNamedBufferSubDataEXT'));
  glMapNamedBufferEXT := tglMapNamedBufferEXT(dglGetProcAddress('glMapNamedBufferEXT'));
  glUnmapNamedBufferEXT := tglUnmapNamedBufferEXT(dglGetProcAddress('glUnmapNamedBufferEXT'));
  glMapNamedBufferRangeEXT := tglMapNamedBufferRangeEXT(dglGetProcAddress('glMapNamedBufferRangeEXT'));
  glFlushMappedNamedBufferRangeEXT := tglFlushMappedNamedBufferRangeEXT(dglGetProcAddress('glFlushMappedNamedBufferRangeEXT'));
  glNamedCopyBufferSubDataEXT := tglNamedCopyBufferSubDataEXT(dglGetProcAddress('glNamedCopyBufferSubDataEXT'));
  glGetNamedBufferParameterivEXT := tglGetNamedBufferParameterivEXT(dglGetProcAddress('glGetNamedBufferParameterivEXT'));
  glGetNamedBufferPointervEXT := tglGetNamedBufferPointervEXT(dglGetProcAddress('glGetNamedBufferPointervEXT'));
  glGetNamedBufferSubDataEXT := tglGetNamedBufferSubDataEXT(dglGetProcAddress('glGetNamedBufferSubDataEXT'));
  glTextureBufferEXT := tglTextureBufferEXT(dglGetProcAddress('glTextureBufferEXT'));
  glMultiTexBufferEXT := tglMultiTexBufferEXT(dglGetProcAddress('glMultiTexBufferEXT'));
  glNamedRenderbufferStorageEXT := tglNamedRenderbufferStorageEXT(dglGetProcAddress('glNamedRenderbufferStorageEXT'));
  glGetNamedRenderbufferParameterivEXT := tglGetNamedRenderbufferParameterivEXT(dglGetProcAddress('glGetNamedRenderbufferParameterivEXT'));
  glCheckNamedFramebufferStatusEXT := tglCheckNamedFramebufferStatusEXT(dglGetProcAddress('glCheckNamedFramebufferStatusEXT'));
  glNamedFramebufferTexture1DEXT := tglNamedFramebufferTexture1DEXT(dglGetProcAddress('glNamedFramebufferTexture1DEXT'));
  glNamedFramebufferTexture2DEXT := tglNamedFramebufferTexture2DEXT(dglGetProcAddress('glNamedFramebufferTexture2DEXT'));
  glNamedFramebufferTexture3DEXT := tglNamedFramebufferTexture3DEXT(dglGetProcAddress('glNamedFramebufferTexture3DEXT'));
  glNamedFramebufferRenderbufferEXT := tglNamedFramebufferRenderbufferEXT(dglGetProcAddress('glNamedFramebufferRenderbufferEXT'));
  glGetNamedFramebufferAttachmentParameterivEXT := tglGetNamedFramebufferAttachmentParameterivEXT(dglGetProcAddress('glGetNamedFramebufferAttachmentParameterivEXT'));
  glGenerateTextureMipmapEXT := tglGenerateTextureMipmapEXT(dglGetProcAddress('glGenerateTextureMipmapEXT'));
  glGenerateMultiTexMipmapEXT := tglGenerateMultiTexMipmapEXT(dglGetProcAddress('glGenerateMultiTexMipmapEXT'));
  glFramebufferDrawBufferEXT := tglFramebufferDrawBufferEXT(dglGetProcAddress('glFramebufferDrawBufferEXT'));
  glFramebufferDrawBuffersEXT := tglFramebufferDrawBuffersEXT(dglGetProcAddress('glFramebufferDrawBuffersEXT'));
  glFramebufferReadBufferEXT := tglFramebufferReadBufferEXT(dglGetProcAddress('glFramebufferReadBufferEXT'));
  glGetFramebufferParameterivEXT := tglGetFramebufferParameterivEXT(dglGetProcAddress('glGetFramebufferParameterivEXT'));
  glNamedRenderbufferStorageMultisampleEXT := tglNamedRenderbufferStorageMultisampleEXT(dglGetProcAddress('glNamedRenderbufferStorageMultisampleEXT'));
  glNamedRenderbufferStorageMultisampleCoverageEXT := tglNamedRenderbufferStorageMultisampleCoverageEXT(dglGetProcAddress('glNamedRenderbufferStorageMultisampleCoverageEXT'));
  glNamedFramebufferTextureEXT := tglNamedFramebufferTextureEXT(dglGetProcAddress('glNamedFramebufferTextureEXT'));
  glNamedFramebufferTextureLayerEXT := tglNamedFramebufferTextureLayerEXT(dglGetProcAddress('glNamedFramebufferTextureLayerEXT'));
  glNamedFramebufferTextureFaceEXT := tglNamedFramebufferTextureFaceEXT(dglGetProcAddress('glNamedFramebufferTextureFaceEXT'));
  glTextureRenderbufferEXT := tglTextureRenderbufferEXT(dglGetProcAddress('glTextureRenderbufferEXT'));
  glMultiTexRenderbufferEXT := tglMultiTexRenderbufferEXT(dglGetProcAddress('glMultiTexRenderbufferEXT'));
  glProgramUniform1dEXT := tglProgramUniform1dEXT(dglGetProcAddress('glProgramUniform1dEXT'));
  glProgramUniform2dEXT := tglProgramUniform2dEXT(dglGetProcAddress('glProgramUniform2dEXT'));
  glProgramUniform3dEXT := tglProgramUniform3dEXT(dglGetProcAddress('glProgramUniform3dEXT'));
  glProgramUniform4dEXT := tglProgramUniform4dEXT(dglGetProcAddress('glProgramUniform4dEXT'));
  glProgramUniform1dvEXT := tglProgramUniform1dvEXT(dglGetProcAddress('glProgramUniform1dvEXT'));
  glProgramUniform2dvEXT := tglProgramUniform2dvEXT(dglGetProcAddress('glProgramUniform2dvEXT'));
  glProgramUniform3dvEXT := tglProgramUniform3dvEXT(dglGetProcAddress('glProgramUniform3dvEXT'));
  glProgramUniform4dvEXT := tglProgramUniform4dvEXT(dglGetProcAddress('glProgramUniform4dvEXT'));
  glProgramUniformMatrix2dvEXT := tglProgramUniformMatrix2dvEXT(dglGetProcAddress('glProgramUniformMatrix2dvEXT'));
  glProgramUniformMatrix3dvEXT := tglProgramUniformMatrix3dvEXT(dglGetProcAddress('glProgramUniformMatrix3dvEXT'));
  glProgramUniformMatrix4dvEXT := tglProgramUniformMatrix4dvEXT(dglGetProcAddress('glProgramUniformMatrix4dvEXT'));
  glProgramUniformMatrix2x3dvEXT := tglProgramUniformMatrix2x3dvEXT(dglGetProcAddress('glProgramUniformMatrix2x3dvEXT'));
  glProgramUniformMatrix2x4dvEXT := tglProgramUniformMatrix2x4dvEXT(dglGetProcAddress('glProgramUniformMatrix2x4dvEXT'));
  glProgramUniformMatrix3x2dvEXT := tglProgramUniformMatrix3x2dvEXT(dglGetProcAddress('glProgramUniformMatrix3x2dvEXT'));
  glProgramUniformMatrix3x4dvEXT := tglProgramUniformMatrix3x4dvEXT(dglGetProcAddress('glProgramUniformMatrix3x4dvEXT'));
  glProgramUniformMatrix4x2dvEXT := tglProgramUniformMatrix4x2dvEXT(dglGetProcAddress('glProgramUniformMatrix4x2dvEXT'));
  glProgramUniformMatrix4x3dvEXT := tglProgramUniformMatrix4x3dvEXT(dglGetProcAddress('glProgramUniformMatrix4x3dvEXT'));
end;

method Read_GL_EXT_separate_shader_objects;
begin
  glUseShaderProgramEXT := tglUseShaderProgramEXT(dglGetProcAddress('glUseShaderProgramEXT'));
  glActiveProgramEXT := tglActiveProgramEXT(dglGetProcAddress('glActiveProgramEXT'));
  glCreateShaderProgramEXT := tglCreateShaderProgramEXT(dglGetProcAddress('glCreateShaderProgramEXT'));
end;

method Read_GL_EXT_shader_image_load_store;
begin
  glBindImageTextureEXT := tglBindImageTextureEXT(dglGetProcAddress('glBindImageTextureEXT'));
  glMemoryBarrierEXT := tglMemoryBarrierEXT(dglGetProcAddress('glMemoryBarrierEXT'));
end;

method Read_GL_EXT_vertex_attrib_64bit;
begin
  glVertexAttribL1dEXT := tglVertexAttribL1dEXT(dglGetProcAddress('glVertexAttribL1dEXT'));
  glVertexAttribL2dEXT := tglVertexAttribL2dEXT(dglGetProcAddress('glVertexAttribL2dEXT'));
  glVertexAttribL3dEXT := tglVertexAttribL3dEXT(dglGetProcAddress('glVertexAttribL3dEXT'));
  glVertexAttribL4dEXT := tglVertexAttribL4dEXT(dglGetProcAddress('glVertexAttribL4dEXT'));
  glVertexAttribL1dvEXT := tglVertexAttribL1dvEXT(dglGetProcAddress('glVertexAttribL1dvEXT'));
  glVertexAttribL2dvEXT := tglVertexAttribL2dvEXT(dglGetProcAddress('glVertexAttribL2dvEXT'));
  glVertexAttribL3dvEXT := tglVertexAttribL3dvEXT(dglGetProcAddress('glVertexAttribL3dvEXT'));
  glVertexAttribL4dvEXT := tglVertexAttribL4dvEXT(dglGetProcAddress('glVertexAttribL4dvEXT'));
  glVertexAttribLPointerEXT := tglVertexAttribLPointerEXT(dglGetProcAddress('glVertexAttribLPointerEXT'));
  glGetVertexAttribLdvEXT := tglGetVertexAttribLdvEXT(dglGetProcAddress('glGetVertexAttribLdvEXT'));
  glVertexArrayVertexAttribLOffsetEXT := tglVertexArrayVertexAttribLOffsetEXT(dglGetProcAddress('glVertexArrayVertexAttribLOffsetEXT'));
end;

method Read_GL_HP_image_transform;
begin
  glImageTransformParameteriHP := tglImageTransformParameteriHP(dglGetProcAddress('glImageTransformParameteriHP'));
  glImageTransformParameterfHP := tglImageTransformParameterfHP(dglGetProcAddress('glImageTransformParameterfHP'));
  glImageTransformParameterivHP := tglImageTransformParameterivHP(dglGetProcAddress('glImageTransformParameterivHP'));
  glImageTransformParameterfvHP := tglImageTransformParameterfvHP(dglGetProcAddress('glImageTransformParameterfvHP'));
  glGetImageTransformParameterivHP := tglGetImageTransformParameterivHP(dglGetProcAddress('glGetImageTransformParameterivHP'));
  glGetImageTransformParameterfvHP := tglGetImageTransformParameterfvHP(dglGetProcAddress('glGetImageTransformParameterfvHP'));
end;

method Read_GL_IBM_multimode_draw_arrays;
begin
  glMultiModeDrawArraysIBM := tglMultiModeDrawArraysIBM(dglGetProcAddress('glMultiModeDrawArraysIBM'));
  glMultiModeDrawElementsIBM := tglMultiModeDrawElementsIBM(dglGetProcAddress('glMultiModeDrawElementsIBM'));
end;

method Read_GL_IBM_vertex_array_lists;
begin
  glColorPointerListIBM := tglColorPointerListIBM(dglGetProcAddress('glColorPointerListIBM'));
  glSecondaryColorPointerListIBM := tglSecondaryColorPointerListIBM(dglGetProcAddress('glSecondaryColorPointerListIBM'));
  glEdgeFlagPointerListIBM := tglEdgeFlagPointerListIBM(dglGetProcAddress('glEdgeFlagPointerListIBM'));
  glFogCoordPointerListIBM := tglFogCoordPointerListIBM(dglGetProcAddress('glFogCoordPointerListIBM'));
  glIndexPointerListIBM := tglIndexPointerListIBM(dglGetProcAddress('glIndexPointerListIBM'));
  glNormalPointerListIBM := tglNormalPointerListIBM(dglGetProcAddress('glNormalPointerListIBM'));
  glTexCoordPointerListIBM := tglTexCoordPointerListIBM(dglGetProcAddress('glTexCoordPointerListIBM'));
  glVertexPointerListIBM := tglVertexPointerListIBM(dglGetProcAddress('glVertexPointerListIBM'));
end;

method Read_GL_INGR_blend_func_separate;
begin
  glBlendFuncSeparateINGR := tglBlendFuncSeparateINGR(dglGetProcAddress('glBlendFuncSeparateINGR'));
end;

method Read_GL_INTEL_parallel_arrays;
begin
  glVertexPointervINTEL := tglVertexPointervINTEL(dglGetProcAddress('glVertexPointervINTEL'));
  glNormalPointervINTEL := tglNormalPointervINTEL(dglGetProcAddress('glNormalPointervINTEL'));
  glColorPointervINTEL := tglColorPointervINTEL(dglGetProcAddress('glColorPointervINTEL'));
  glTexCoordPointervINTEL := tglTexCoordPointervINTEL(dglGetProcAddress('glTexCoordPointervINTEL'));
end;

method Read_GL_INTEL_framebuffer_CMAA;
begin
  glApplyFramebufferAttachmentCMAAINTEL := tglApplyFramebufferAttachmentCMAAINTEL(dglGetProcAddress('glApplyFramebufferAttachmentCMAAINTEL'));
end;

method Read_GL_MESA_resize_buffers;
begin
  glResizeBuffersMESA := tglResizeBuffersMESA(dglGetProcAddress('glResizeBuffersMESA'));
end;

method Read_GL_MESA_window_pos;
begin
  glWindowPos2dMESA := tglWindowPos2dMESA(dglGetProcAddress('glWindowPos2dMESA'));
  glWindowPos2dvMESA := tglWindowPos2dvMESA(dglGetProcAddress('glWindowPos2dvMESA'));
  glWindowPos2fMESA := tglWindowPos2fMESA(dglGetProcAddress('glWindowPos2fMESA'));
  glWindowPos2fvMESA := tglWindowPos2fvMESA(dglGetProcAddress('glWindowPos2fvMESA'));
  glWindowPos2iMESA := tglWindowPos2iMESA(dglGetProcAddress('glWindowPos2iMESA'));
  glWindowPos2ivMESA := tglWindowPos2ivMESA(dglGetProcAddress('glWindowPos2ivMESA'));
  glWindowPos2sMESA := tglWindowPos2sMESA(dglGetProcAddress('glWindowPos2sMESA'));
  glWindowPos2svMESA := tglWindowPos2svMESA(dglGetProcAddress('glWindowPos2svMESA'));
  glWindowPos3dMESA := tglWindowPos3dMESA(dglGetProcAddress('glWindowPos3dMESA'));
  glWindowPos3dvMESA := tglWindowPos3dvMESA(dglGetProcAddress('glWindowPos3dvMESA'));
  glWindowPos3fMESA := tglWindowPos3fMESA(dglGetProcAddress('glWindowPos3fMESA'));
  glWindowPos3fvMESA := tglWindowPos3fvMESA(dglGetProcAddress('glWindowPos3fvMESA'));
  glWindowPos3iMESA := tglWindowPos3iMESA(dglGetProcAddress('glWindowPos3iMESA'));
  glWindowPos3ivMESA := tglWindowPos3ivMESA(dglGetProcAddress('glWindowPos3ivMESA'));
  glWindowPos3sMESA := tglWindowPos3sMESA(dglGetProcAddress('glWindowPos3sMESA'));
  glWindowPos3svMESA := tglWindowPos3svMESA(dglGetProcAddress('glWindowPos3svMESA'));
  glWindowPos4dMESA := tglWindowPos4dMESA(dglGetProcAddress('glWindowPos4dMESA'));
  glWindowPos4dvMESA := tglWindowPos4dvMESA(dglGetProcAddress('glWindowPos4dvMESA'));
  glWindowPos4fMESA := tglWindowPos4fMESA(dglGetProcAddress('glWindowPos4fMESA'));
  glWindowPos4fvMESA := tglWindowPos4fvMESA(dglGetProcAddress('glWindowPos4fvMESA'));
  glWindowPos4iMESA := tglWindowPos4iMESA(dglGetProcAddress('glWindowPos4iMESA'));
  glWindowPos4ivMESA := tglWindowPos4ivMESA(dglGetProcAddress('glWindowPos4ivMESA'));
  glWindowPos4sMESA := tglWindowPos4sMESA(dglGetProcAddress('glWindowPos4sMESA'));
  glWindowPos4svMESA := tglWindowPos4svMESA(dglGetProcAddress('glWindowPos4svMESA'));
end;

method Read_GL_NV_evaluators;
begin
  glMapControlPointsNV := tglMapControlPointsNV(dglGetProcAddress('glMapControlPointsNV'));
  glMapParameterivNV := tglMapParameterivNV(dglGetProcAddress('glMapParameterivNV'));
  glMapParameterfvNV := tglMapParameterfvNV(dglGetProcAddress('glMapParameterfvNV'));
  glGetMapControlPointsNV := tglGetMapControlPointsNV(dglGetProcAddress('glGetMapControlPointsNV'));
  glGetMapParameterivNV := tglGetMapParameterivNV(dglGetProcAddress('glGetMapParameterivNV'));
  glGetMapParameterfvNV := tglGetMapParameterfvNV(dglGetProcAddress('glGetMapParameterfvNV'));
  glGetMapAttribParameterivNV := tglGetMapAttribParameterivNV(dglGetProcAddress('glGetMapAttribParameterivNV'));
  glGetMapAttribParameterfvNV := tglGetMapAttribParameterfvNV(dglGetProcAddress('glGetMapAttribParameterfvNV'));
  glEvalMapsNV := tglEvalMapsNV(dglGetProcAddress('glEvalMapsNV'));
end;

method Read_GL_NV_fence;
begin
  glDeleteFencesNV := tglDeleteFencesNV(dglGetProcAddress('glDeleteFencesNV'));
  glGenFencesNV := tglGenFencesNV(dglGetProcAddress('glGenFencesNV'));
  glIsFenceNV := tglIsFenceNV(dglGetProcAddress('glIsFenceNV'));
  glTestFenceNV := tglTestFenceNV(dglGetProcAddress('glTestFenceNV'));
  glGetFenceivNV := tglGetFenceivNV(dglGetProcAddress('glGetFenceivNV'));
  glFinishFenceNV := tglFinishFenceNV(dglGetProcAddress('glFinishFenceNV'));
  glSetFenceNV := tglSetFenceNV(dglGetProcAddress('glSetFenceNV'));
end;

method Read_GL_NV_fragment_program;
begin
  glProgramNamedParameter4fNV := tglProgramNamedParameter4fNV(dglGetProcAddress('glProgramNamedParameter4fNV'));
  glProgramNamedParameter4dNV := tglProgramNamedParameter4dNV(dglGetProcAddress('glProgramNamedParameter4dNV'));
  glProgramNamedParameter4fvNV := tglProgramNamedParameter4fvNV(dglGetProcAddress('glProgramNamedParameter4fvNV'));
  glProgramNamedParameter4dvNV := tglProgramNamedParameter4dvNV(dglGetProcAddress('glProgramNamedParameter4dvNV'));
  glGetProgramNamedParameterfvNV := tglGetProgramNamedParameterfvNV(dglGetProcAddress('glGetProgramNamedParameterfvNV'));
  glGetProgramNamedParameterdvNV := tglGetProgramNamedParameterdvNV(dglGetProcAddress('glGetProgramNamedParameterdvNV'));
end;

method Read_GL_NV_half_float;
begin
  glVertex2hNV := tglVertex2hNV(dglGetProcAddress('glVertex2hNV'));
  glVertex2hvNV := tglVertex2hvNV(dglGetProcAddress('glVertex2hvNV'));
  glVertex3hNV := tglVertex3hNV(dglGetProcAddress('glVertex3hNV'));
  glVertex3hvNV := tglVertex3hvNV(dglGetProcAddress('glVertex3hvNV'));
  glVertex4hNV := tglVertex4hNV(dglGetProcAddress('glVertex4hNV'));
  glVertex4hvNV := tglVertex4hvNV(dglGetProcAddress('glVertex4hvNV'));
  glNormal3hNV := tglNormal3hNV(dglGetProcAddress('glNormal3hNV'));
  glNormal3hvNV := tglNormal3hvNV(dglGetProcAddress('glNormal3hvNV'));
  glColor3hNV := tglColor3hNV(dglGetProcAddress('glColor3hNV'));
  glColor3hvNV := tglColor3hvNV(dglGetProcAddress('glColor3hvNV'));
  glColor4hNV := tglColor4hNV(dglGetProcAddress('glColor4hNV'));
  glColor4hvNV := tglColor4hvNV(dglGetProcAddress('glColor4hvNV'));
  glTexCoord1hNV := tglTexCoord1hNV(dglGetProcAddress('glTexCoord1hNV'));
  glTexCoord1hvNV := tglTexCoord1hvNV(dglGetProcAddress('glTexCoord1hvNV'));
  glTexCoord2hNV := tglTexCoord2hNV(dglGetProcAddress('glTexCoord2hNV'));
  glTexCoord2hvNV := tglTexCoord2hvNV(dglGetProcAddress('glTexCoord2hvNV'));
  glTexCoord3hNV := tglTexCoord3hNV(dglGetProcAddress('glTexCoord3hNV'));
  glTexCoord3hvNV := tglTexCoord3hvNV(dglGetProcAddress('glTexCoord3hvNV'));
  glTexCoord4hNV := tglTexCoord4hNV(dglGetProcAddress('glTexCoord4hNV'));
  glTexCoord4hvNV := tglTexCoord4hvNV(dglGetProcAddress('glTexCoord4hvNV'));
  glMultiTexCoord1hNV := tglMultiTexCoord1hNV(dglGetProcAddress('glMultiTexCoord1hNV'));
  glMultiTexCoord1hvNV := tglMultiTexCoord1hvNV(dglGetProcAddress('glMultiTexCoord1hvNV'));
  glMultiTexCoord2hNV := tglMultiTexCoord2hNV(dglGetProcAddress('glMultiTexCoord2hNV'));
  glMultiTexCoord2hvNV := tglMultiTexCoord2hvNV(dglGetProcAddress('glMultiTexCoord2hvNV'));
  glMultiTexCoord3hNV := tglMultiTexCoord3hNV(dglGetProcAddress('glMultiTexCoord3hNV'));
  glMultiTexCoord3hvNV := tglMultiTexCoord3hvNV(dglGetProcAddress('glMultiTexCoord3hvNV'));
  glMultiTexCoord4hNV := tglMultiTexCoord4hNV(dglGetProcAddress('glMultiTexCoord4hNV'));
  glMultiTexCoord4hvNV := tglMultiTexCoord4hvNV(dglGetProcAddress('glMultiTexCoord4hvNV'));
  glFogCoordhNV := tglFogCoordhNV(dglGetProcAddress('glFogCoordhNV'));
  glFogCoordhvNV := tglFogCoordhvNV(dglGetProcAddress('glFogCoordhvNV'));
  glSecondaryColor3hNV := tglSecondaryColor3hNV(dglGetProcAddress('glSecondaryColor3hNV'));
  glSecondaryColor3hvNV := tglSecondaryColor3hvNV(dglGetProcAddress('glSecondaryColor3hvNV'));
  glVertexWeighthNV := tglVertexWeighthNV(dglGetProcAddress('glVertexWeighthNV'));
  glVertexWeighthvNV := tglVertexWeighthvNV(dglGetProcAddress('glVertexWeighthvNV'));
  glVertexAttrib1hNV := tglVertexAttrib1hNV(dglGetProcAddress('glVertexAttrib1hNV'));
  glVertexAttrib1hvNV := tglVertexAttrib1hvNV(dglGetProcAddress('glVertexAttrib1hvNV'));
  glVertexAttrib2hNV := tglVertexAttrib2hNV(dglGetProcAddress('glVertexAttrib2hNV'));
  glVertexAttrib2hvNV := tglVertexAttrib2hvNV(dglGetProcAddress('glVertexAttrib2hvNV'));
  glVertexAttrib3hNV := tglVertexAttrib3hNV(dglGetProcAddress('glVertexAttrib3hNV'));
  glVertexAttrib3hvNV := tglVertexAttrib3hvNV(dglGetProcAddress('glVertexAttrib3hvNV'));
  glVertexAttrib4hNV := tglVertexAttrib4hNV(dglGetProcAddress('glVertexAttrib4hNV'));
  glVertexAttrib4hvNV := tglVertexAttrib4hvNV(dglGetProcAddress('glVertexAttrib4hvNV'));
  glVertexAttribs1hvNV := tglVertexAttribs1hvNV(dglGetProcAddress('glVertexAttribs1hvNV'));
  glVertexAttribs2hvNV := tglVertexAttribs2hvNV(dglGetProcAddress('glVertexAttribs2hvNV'));
  glVertexAttribs3hvNV := tglVertexAttribs3hvNV(dglGetProcAddress('glVertexAttribs3hvNV'));
  glVertexAttribs4hvNV := tglVertexAttribs4hvNV(dglGetProcAddress('glVertexAttribs4hvNV'));
end;

method Read_GL_NV_occlusion_query;
begin
  glGenOcclusionQueriesNV := tglGenOcclusionQueriesNV(dglGetProcAddress('glGenOcclusionQueriesNV'));
  glDeleteOcclusionQueriesNV := tglDeleteOcclusionQueriesNV(dglGetProcAddress('glDeleteOcclusionQueriesNV'));
  glIsOcclusionQueryNV := tglIsOcclusionQueryNV(dglGetProcAddress('glIsOcclusionQueryNV'));
  glBeginOcclusionQueryNV := tglBeginOcclusionQueryNV(dglGetProcAddress('glBeginOcclusionQueryNV'));
  glEndOcclusionQueryNV := tglEndOcclusionQueryNV(dglGetProcAddress('glEndOcclusionQueryNV'));
  glGetOcclusionQueryivNV := tglGetOcclusionQueryivNV(dglGetProcAddress('glGetOcclusionQueryivNV'));
  glGetOcclusionQueryuivNV := tglGetOcclusionQueryuivNV(dglGetProcAddress('glGetOcclusionQueryuivNV'));
end;

method Read_GL_NV_pixel_data_range;
begin
  glPixelDataRangeNV := tglPixelDataRangeNV(dglGetProcAddress('glPixelDataRangeNV'));
  glFlushPixelDataRangeNV := tglFlushPixelDataRangeNV(dglGetProcAddress('glFlushPixelDataRangeNV'));
end;

method Read_GL_NV_point_sprite;
begin
  glPointParameteriNV := tglPointParameteriNV(dglGetProcAddress('glPointParameteriNV'));
  glPointParameterivNV := tglPointParameterivNV(dglGetProcAddress('glPointParameterivNV'));
end;

method Read_GL_NV_primitive_restart;
begin
  glPrimitiveRestartNV := tglPrimitiveRestartNV(dglGetProcAddress('glPrimitiveRestartNV'));
  glPrimitiveRestartIndexNV := tglPrimitiveRestartIndexNV(dglGetProcAddress('glPrimitiveRestartIndexNV'));
end;

method Read_GL_NV_register_combiners;
begin
  glCombinerParameterfvNV := tglCombinerParameterfvNV(dglGetProcAddress('glCombinerParameterfvNV'));
  glCombinerParameterfNV := tglCombinerParameterfNV(dglGetProcAddress('glCombinerParameterfNV'));
  glCombinerParameterivNV := tglCombinerParameterivNV(dglGetProcAddress('glCombinerParameterivNV'));
  glCombinerParameteriNV := tglCombinerParameteriNV(dglGetProcAddress('glCombinerParameteriNV'));
  glCombinerInputNV := tglCombinerInputNV(dglGetProcAddress('glCombinerInputNV'));
  glCombinerOutputNV := tglCombinerOutputNV(dglGetProcAddress('glCombinerOutputNV'));
  glFinalCombinerInputNV := tglFinalCombinerInputNV(dglGetProcAddress('glFinalCombinerInputNV'));
  glGetCombinerInputParameterfvNV := tglGetCombinerInputParameterfvNV(dglGetProcAddress('glGetCombinerInputParameterfvNV'));
  glGetCombinerInputParameterivNV := tglGetCombinerInputParameterivNV(dglGetProcAddress('glGetCombinerInputParameterivNV'));
  glGetCombinerOutputParameterfvNV := tglGetCombinerOutputParameterfvNV(dglGetProcAddress('glGetCombinerOutputParameterfvNV'));
  glGetCombinerOutputParameterivNV := tglGetCombinerOutputParameterivNV(dglGetProcAddress('glGetCombinerOutputParameterivNV'));
  glGetFinalCombinerInputParameterfvNV := tglGetFinalCombinerInputParameterfvNV(dglGetProcAddress('glGetFinalCombinerInputParameterfvNV'));
  glGetFinalCombinerInputParameterivNV := tglGetFinalCombinerInputParameterivNV(dglGetProcAddress('glGetFinalCombinerInputParameterivNV'));
end;

method Read_GL_NV_register_combiners2;
begin
  glCombinerStageParameterfvNV := tglCombinerStageParameterfvNV(dglGetProcAddress('glCombinerStageParameterfvNV'));
  glGetCombinerStageParameterfvNV := tglGetCombinerStageParameterfvNV(dglGetProcAddress('glGetCombinerStageParameterfvNV'));
end;

method Read_GL_NV_vertex_array_range;
begin
  glFlushVertexArrayRangeNV := tglFlushVertexArrayRangeNV(dglGetProcAddress('glFlushVertexArrayRangeNV'));
  glVertexArrayRangeNV := tglVertexArrayRangeNV(dglGetProcAddress('glVertexArrayRangeNV'));
end;

method Read_GL_NV_vertex_program;
begin
  glAreProgramsResidentNV := tglAreProgramsResidentNV(dglGetProcAddress('glAreProgramsResidentNV'));
  glBindProgramNV := tglBindProgramNV(dglGetProcAddress('glBindProgramNV'));
  glDeleteProgramsNV := tglDeleteProgramsNV(dglGetProcAddress('glDeleteProgramsNV'));
  glExecuteProgramNV := tglExecuteProgramNV(dglGetProcAddress('glExecuteProgramNV'));
  glGenProgramsNV := tglGenProgramsNV(dglGetProcAddress('glGenProgramsNV'));
  glGetProgramParameterdvNV := tglGetProgramParameterdvNV(dglGetProcAddress('glGetProgramParameterdvNV'));
  glGetProgramParameterfvNV := tglGetProgramParameterfvNV(dglGetProcAddress('glGetProgramParameterfvNV'));
  glGetProgramivNV := tglGetProgramivNV(dglGetProcAddress('glGetProgramivNV'));
  glGetProgramStringNV := tglGetProgramStringNV(dglGetProcAddress('glGetProgramStringNV'));
  glGetTrackMatrixivNV := tglGetTrackMatrixivNV(dglGetProcAddress('glGetTrackMatrixivNV'));
  glGetVertexAttribdvNV := tglGetVertexAttribdvNV(dglGetProcAddress('glGetVertexAttribdvNV'));
  glGetVertexAttribfvNV := tglGetVertexAttribfvNV(dglGetProcAddress('glGetVertexAttribfvNV'));
  glGetVertexAttribivNV := tglGetVertexAttribivNV(dglGetProcAddress('glGetVertexAttribivNV'));
  glGetVertexAttribPointervNV := tglGetVertexAttribPointervNV(dglGetProcAddress('glGetVertexAttribPointervNV'));
  glIsProgramNV := tglIsProgramNV(dglGetProcAddress('glIsProgramNV'));
  glLoadProgramNV := tglLoadProgramNV(dglGetProcAddress('glLoadProgramNV'));
  glProgramParameter4dNV := tglProgramParameter4dNV(dglGetProcAddress('glProgramParameter4dNV'));
  glProgramParameter4dvNV := tglProgramParameter4dvNV(dglGetProcAddress('glProgramParameter4dvNV'));
  glProgramParameter4fNV := tglProgramParameter4fNV(dglGetProcAddress('glProgramParameter4fNV'));
  glProgramParameter4fvNV := tglProgramParameter4fvNV(dglGetProcAddress('glProgramParameter4fvNV'));
  glProgramParameters4dvNV := tglProgramParameters4dvNV(dglGetProcAddress('glProgramParameters4dvNV'));
  glProgramParameters4fvNV := tglProgramParameters4fvNV(dglGetProcAddress('glProgramParameters4fvNV'));
  glRequestResidentProgramsNV := tglRequestResidentProgramsNV(dglGetProcAddress('glRequestResidentProgramsNV'));
  glTrackMatrixNV := tglTrackMatrixNV(dglGetProcAddress('glTrackMatrixNV'));
  glVertexAttribPointerNV := tglVertexAttribPointerNV(dglGetProcAddress('glVertexAttribPointerNV'));
  glVertexAttrib1dNV := tglVertexAttrib1dNV(dglGetProcAddress('glVertexAttrib1dNV'));
  glVertexAttrib1dvNV := tglVertexAttrib1dvNV(dglGetProcAddress('glVertexAttrib1dvNV'));
  glVertexAttrib1fNV := tglVertexAttrib1fNV(dglGetProcAddress('glVertexAttrib1fNV'));
  glVertexAttrib1fvNV := tglVertexAttrib1fvNV(dglGetProcAddress('glVertexAttrib1fvNV'));
  glVertexAttrib1sNV := tglVertexAttrib1sNV(dglGetProcAddress('glVertexAttrib1sNV'));
  glVertexAttrib1svNV := tglVertexAttrib1svNV(dglGetProcAddress('glVertexAttrib1svNV'));
  glVertexAttrib2dNV := tglVertexAttrib2dNV(dglGetProcAddress('glVertexAttrib2dNV'));
  glVertexAttrib2dvNV := tglVertexAttrib2dvNV(dglGetProcAddress('glVertexAttrib2dvNV'));
  glVertexAttrib2fNV := tglVertexAttrib2fNV(dglGetProcAddress('glVertexAttrib2fNV'));
  glVertexAttrib2fvNV := tglVertexAttrib2fvNV(dglGetProcAddress('glVertexAttrib2fvNV'));
  glVertexAttrib2sNV := tglVertexAttrib2sNV(dglGetProcAddress('glVertexAttrib2sNV'));
  glVertexAttrib2svNV := tglVertexAttrib2svNV(dglGetProcAddress('glVertexAttrib2svNV'));
  glVertexAttrib3dNV := tglVertexAttrib3dNV(dglGetProcAddress('glVertexAttrib3dNV'));
  glVertexAttrib3dvNV := tglVertexAttrib3dvNV(dglGetProcAddress('glVertexAttrib3dvNV'));
  glVertexAttrib3fNV := tglVertexAttrib3fNV(dglGetProcAddress('glVertexAttrib3fNV'));
  glVertexAttrib3fvNV := tglVertexAttrib3fvNV(dglGetProcAddress('glVertexAttrib3fvNV'));
  glVertexAttrib3sNV := tglVertexAttrib3sNV(dglGetProcAddress('glVertexAttrib3sNV'));
  glVertexAttrib3svNV := tglVertexAttrib3svNV(dglGetProcAddress('glVertexAttrib3svNV'));
  glVertexAttrib4dNV := tglVertexAttrib4dNV(dglGetProcAddress('glVertexAttrib4dNV'));
  glVertexAttrib4dvNV := tglVertexAttrib4dvNV(dglGetProcAddress('glVertexAttrib4dvNV'));
  glVertexAttrib4fNV := tglVertexAttrib4fNV(dglGetProcAddress('glVertexAttrib4fNV'));
  glVertexAttrib4fvNV := tglVertexAttrib4fvNV(dglGetProcAddress('glVertexAttrib4fvNV'));
  glVertexAttrib4sNV := tglVertexAttrib4sNV(dglGetProcAddress('glVertexAttrib4sNV'));
  glVertexAttrib4svNV := tglVertexAttrib4svNV(dglGetProcAddress('glVertexAttrib4svNV'));
  glVertexAttrib4ubNV := tglVertexAttrib4ubNV(dglGetProcAddress('glVertexAttrib4ubNV'));
  glVertexAttrib4ubvNV := tglVertexAttrib4ubvNV(dglGetProcAddress('glVertexAttrib4ubvNV'));
  glVertexAttribs1dvNV := tglVertexAttribs1dvNV(dglGetProcAddress('glVertexAttribs1dvNV'));
  glVertexAttribs1fvNV := tglVertexAttribs1fvNV(dglGetProcAddress('glVertexAttribs1fvNV'));
  glVertexAttribs1svNV := tglVertexAttribs1svNV(dglGetProcAddress('glVertexAttribs1svNV'));
  glVertexAttribs2dvNV := tglVertexAttribs2dvNV(dglGetProcAddress('glVertexAttribs2dvNV'));
  glVertexAttribs2fvNV := tglVertexAttribs2fvNV(dglGetProcAddress('glVertexAttribs2fvNV'));
  glVertexAttribs2svNV := tglVertexAttribs2svNV(dglGetProcAddress('glVertexAttribs2svNV'));
  glVertexAttribs3dvNV := tglVertexAttribs3dvNV(dglGetProcAddress('glVertexAttribs3dvNV'));
  glVertexAttribs3fvNV := tglVertexAttribs3fvNV(dglGetProcAddress('glVertexAttribs3fvNV'));
  glVertexAttribs3svNV := tglVertexAttribs3svNV(dglGetProcAddress('glVertexAttribs3svNV'));
  glVertexAttribs4dvNV := tglVertexAttribs4dvNV(dglGetProcAddress('glVertexAttribs4dvNV'));
  glVertexAttribs4fvNV := tglVertexAttribs4fvNV(dglGetProcAddress('glVertexAttribs4fvNV'));
  glVertexAttribs4svNV := tglVertexAttribs4svNV(dglGetProcAddress('glVertexAttribs4svNV'));
  glVertexAttribs4ubvNV := tglVertexAttribs4ubvNV(dglGetProcAddress('glVertexAttribs4ubvNV'));
end;

method Read_GL_NV_depth_buffer_float;
begin
  glDepthRangedNV := tglDepthRangedNV(dglGetProcAddress('glDepthRangedNV'));
  glClearDepthdNV := tglClearDepthdNV(dglGetProcAddress('glClearDepthdNV'));
  glDepthBoundsdNV := tglDepthBoundsdNV(dglGetProcAddress('glDepthBoundsdNV'));
end;

method Read_GL_NV_framebuffer_multisample_coverage;
begin
  glRenderbufferStorageMultsampleCoverageNV := tglRenderbufferStorageMultsampleCoverageNV(dglGetProcAddress('glRenderbufferStorageMultsampleCoverageNV'));
end;

method Read_GL_NV_geometry_program4;
begin
  glProgramVertexLimitNV := tglProgramVertexLimitNV(dglGetProcAddress('glProgramVertexLimitNV'));
end;

method Read_GL_NV_gpu_program4;
begin
  glProgramLocalParameterI4iNV := tglProgramLocalParameterI4iNV(dglGetProcAddress('glProgramLocalParameterI4iNV'));
  glProgramLocalParameterI4ivNV := tglProgramLocalParameterI4ivNV(dglGetProcAddress('glProgramLocalParameterI4ivNV'));
  glProgramLocalParametersI4ivNV := tglProgramLocalParametersI4ivNV(dglGetProcAddress('glProgramLocalParametersI4ivNV'));
  glProgramLocalParameterI4uiNV := tglProgramLocalParameterI4uiNV(dglGetProcAddress('glProgramLocalParameterI4uiNV'));
  glProgramLocalParameterI4uivNV := tglProgramLocalParameterI4uivNV(dglGetProcAddress('glProgramLocalParameterI4uivNV'));
  glProgramLocalParametersI4uivNV := tglProgramLocalParametersI4uivNV(dglGetProcAddress('glProgramLocalParametersI4uivNV'));
  glProgramEnvParameterI4iNV := tglProgramEnvParameterI4iNV(dglGetProcAddress('glProgramEnvParameterI4iNV'));
  glProgramEnvParameterI4ivNV := tglProgramEnvParameterI4ivNV(dglGetProcAddress('glProgramEnvParameterI4ivNV'));
  glProgramEnvParametersI4ivNV := tglProgramEnvParametersI4ivNV(dglGetProcAddress('glProgramEnvParametersI4ivNV'));
  glProgramEnvParameterI4uiNV := tglProgramEnvParameterI4uiNV(dglGetProcAddress('glProgramEnvParameterI4uiNV'));
  glProgramEnvParameterI4uivNV := tglProgramEnvParameterI4uivNV(dglGetProcAddress('glProgramEnvParameterI4uivNV'));
  glProgramEnvParametersI4uivNV := tglProgramEnvParametersI4uivNV(dglGetProcAddress('glProgramEnvParametersI4uivNV'));
  glGetProgramLocalParameterIivNV := tglGetProgramLocalParameterIivNV(dglGetProcAddress('glGetProgramLocalParameterIivNV'));
  glGetProgramLocalParameterIuivNV := tglGetProgramLocalParameterIuivNV(dglGetProcAddress('glGetProgramLocalParameterIuivNV'));
  glGetProgramEnvParameterIivNV := tglGetProgramEnvParameterIivNV(dglGetProcAddress('glGetProgramEnvParameterIivNV'));
  glGetProgramEnvParameterIuivNV := tglGetProgramEnvParameterIuivNV(dglGetProcAddress('glGetProgramEnvParameterIuivNV'));
end;

method Read_GL_NV_parameter_buffer_object;
begin
  glProgramBufferParametersfvNV := tglProgramBufferParametersfvNV(dglGetProcAddress('glProgramBufferParametersfvNV'));
  glProgramBufferParametersIivNV := tglProgramBufferParametersIivNV(dglGetProcAddress('glProgramBufferParametersIivNV'));
  glProgramBufferParametersIuivNV := tglProgramBufferParametersIuivNV(dglGetProcAddress('glProgramBufferParametersIuivNV'));
end;

method Read_GL_NV_transform_feedback;
begin
  glBeginTransformFeedbackNV := tglBeginTransformFeedbackNV(dglGetProcAddress('glBeginTransformFeedbackNV'));
  glEndTransformFeedbackNV := tglEndTransformFeedbackNV(dglGetProcAddress('glEndTransformFeedbackNV'));
  glTransformFeedbackAttribsNV := tglTransformFeedbackAttribsNV(dglGetProcAddress('glTransformFeedbackAttribsNV'));
  glBindBufferRangeNV := tglBindBufferRangeNV(dglGetProcAddress('glBindBufferRangeNV'));
  glBindBufferOffsetNV := tglBindBufferOffsetNV(dglGetProcAddress('glBindBufferOffsetNV'));
  glBindBufferBaseNV := tglBindBufferBaseNV(dglGetProcAddress('glBindBufferBaseNV'));
  glTransformFeedbackVaryingsNV := tglTransformFeedbackVaryingsNV(dglGetProcAddress('glTransformFeedbackVaryingsNV'));
  glActiveVaryingNV := tglActiveVaryingNV(dglGetProcAddress('glActiveVaryingNV'));
  glGetVaryingLocationNV := tglGetVaryingLocationNV(dglGetProcAddress('glGetVaryingLocationNV'));
  glGetActiveVaryingNV := tglGetActiveVaryingNV(dglGetProcAddress('glGetActiveVaryingNV'));
  glGetTransformFeedbackVaryingNV := tglGetTransformFeedbackVaryingNV(dglGetProcAddress('glGetTransformFeedbackVaryingNV'));
  glTransformFeedbackStreamAttribsNV := tglTransformFeedbackStreamAttribsNV(dglGetProcAddress('glTransformFeedbackStreamAttribsNV'));
end;

method Read_GL_NV_conditional_render;
begin
  glBeginConditionalRenderNV := tglBeginConditionalRenderNV(dglGetProcAddress('glBeginConditionalRenderNV'));
  glEndConditionalRenderNV := tglEndConditionalRenderNV(dglGetProcAddress('glEndConditionalRenderNV'));
end;

method Read_GL_NV_conservative_raster;
begin
  glSubpixelPrecisionBiasNV := tglSubpixelPrecisionBiasNV(dglGetProcAddress('glSubpixelPrecisionBiasNV'));
end;

method Read_GL_NV_conservative_raster_dilate;
begin
  glConservativeRasterParameterfNV := tglConservativeRasterParameterfNV(dglGetProcAddress('glConservativeRasterParameterfNV'));
end;


method Read_GL_NV_present_video;
begin
  glPresentFrameKeyedNV := tglPresentFrameKeyedNV(dglGetProcAddress('glPresentFrameKeyedNV'));
  glPresentFrameDualFillNV := tglPresentFrameDualFillNV(dglGetProcAddress('glPresentFrameDualFillNV'));
  glGetVideoivNV := tglGetVideoivNV(dglGetProcAddress('glGetVideoivNV'));
  glGetVideouivNV := tglGetVideouivNV(dglGetProcAddress('glGetVideouivNV'));
  glGetVideoi64vNV := tglGetVideoi64vNV(dglGetProcAddress('glGetVideoi64vNV'));
  glGetVideoui64vNV := tglGetVideoui64vNV(dglGetProcAddress('glGetVideoui64vNV'));
  //  glVideoParameterivNV := t//  glVideoParameterivNV(dglGetProcAddress('glVideoParameterivNV'));
end;

method Read_GL_NV_explicit_multisample;
begin
  glGetMultisamplefvNV := tglGetMultisamplefvNV(dglGetProcAddress('glGetMultisamplefvNV'));
  glSampleMaskIndexedNV := tglSampleMaskIndexedNV(dglGetProcAddress('glSampleMaskIndexedNV'));
  glTexRenderbufferNV := tglTexRenderbufferNV(dglGetProcAddress('glTexRenderbufferNV'));
end;

method Read_GL_NV_transform_feedback2;
begin
  glBindTransformFeedbackNV := tglBindTransformFeedbackNV(dglGetProcAddress('glBindTransformFeedbackNV'));
  glDeleteTransformFeedbacksNV := tglDeleteTransformFeedbacksNV(dglGetProcAddress('glDeleteTransformFeedbacksNV'));
  glGenTransformFeedbacksNV := tglGenTransformFeedbacksNV(dglGetProcAddress('glGenTransformFeedbacksNV'));
  glIsTransformFeedbackNV := tglIsTransformFeedbackNV(dglGetProcAddress('glIsTransformFeedbackNV'));
  glPauseTransformFeedbackNV := tglPauseTransformFeedbackNV(dglGetProcAddress('glPauseTransformFeedbackNV'));
  glResumeTransformFeedbackNV := tglResumeTransformFeedbackNV(dglGetProcAddress('glResumeTransformFeedbackNV'));
  glDrawTransformFeedbackNV := tglDrawTransformFeedbackNV(dglGetProcAddress('glDrawTransformFeedbackNV'));
end;

method Read_GL_NV_video_capture;
begin
  glBeginVideoCaptureNV := tglBeginVideoCaptureNV(dglGetProcAddress('glBeginVideoCaptureNV'));
  glBindVideoCaptureStreamBufferNV := tglBindVideoCaptureStreamBufferNV(dglGetProcAddress('glBindVideoCaptureStreamBufferNV'));
  glBindVideoCaptureStreamTextureNV := tglBindVideoCaptureStreamTextureNV(dglGetProcAddress('glBindVideoCaptureStreamTextureNV'));
  glEndVideoCaptureNV := tglEndVideoCaptureNV(dglGetProcAddress('glEndVideoCaptureNV'));
  glGetVideoCaptureivNV := tglGetVideoCaptureivNV(dglGetProcAddress('glGetVideoCaptureivNV'));
  glGetVideoCaptureStreamivNV := tglGetVideoCaptureStreamivNV(dglGetProcAddress('glGetVideoCaptureStreamivNV'));
  glGetVideoCaptureStreamfvNV := tglGetVideoCaptureStreamfvNV(dglGetProcAddress('glGetVideoCaptureStreamfvNV'));
  glGetVideoCaptureStreamdvNV := tglGetVideoCaptureStreamdvNV(dglGetProcAddress('glGetVideoCaptureStreamdvNV'));
  glVideoCaptureNV := tglVideoCaptureNV(dglGetProcAddress('glVideoCaptureNV'));
  glVideoCaptureStreamParameterivNV := tglVideoCaptureStreamParameterivNV(dglGetProcAddress('glVideoCaptureStreamParameterivNV'));
  glVideoCaptureStreamParameterfvNV := tglVideoCaptureStreamParameterfvNV(dglGetProcAddress('glVideoCaptureStreamParameterfvNV'));
  glVideoCaptureStreamParameterdvNV := tglVideoCaptureStreamParameterdvNV(dglGetProcAddress('glVideoCaptureStreamParameterdvNV'));
end;

method Read_GL_NV_copy_image;
begin
  glCopyImageSubDataNV := tglCopyImageSubDataNV(dglGetProcAddress('glCopyImageSubDataNV'));
end;

method Read_GL_NV_shader_buffer_load;
begin
  glMakeBufferResidentNV := tglMakeBufferResidentNV(dglGetProcAddress('glMakeBufferResidentNV'));
  glMakeBufferNonResidentNV := tglMakeBufferNonResidentNV(dglGetProcAddress('glMakeBufferNonResidentNV'));
  glIsBufferResidentNV := tglIsBufferResidentNV(dglGetProcAddress('glIsBufferResidentNV'));
  glMakeNamedBufferResidentNV := tglMakeNamedBufferResidentNV(dglGetProcAddress('glMakeNamedBufferResidentNV'));
  glMakeNamedBufferNonResidentNV := tglMakeNamedBufferNonResidentNV(dglGetProcAddress('glMakeNamedBufferNonResidentNV'));
  glIsNamedBufferResidentNV := tglIsNamedBufferResidentNV(dglGetProcAddress('glIsNamedBufferResidentNV'));
  glGetBufferParameterui64vNV := tglGetBufferParameterui64vNV(dglGetProcAddress('glGetBufferParameterui64vNV'));
  glGetNamedBufferParameterui64vNV := tglGetNamedBufferParameterui64vNV(dglGetProcAddress('glGetNamedBufferParameterui64vNV'));
  glGetIntegerui64vNV := tglGetIntegerui64vNV(dglGetProcAddress('glGetIntegerui64vNV'));
  glUniformui64NV := tglUniformui64NV(dglGetProcAddress('glUniformui64NV'));
  glUniformui64vNV := tglUniformui64vNV(dglGetProcAddress('glUniformui64vNV'));
  glGetUniformui64vNV := tglGetUniformui64vNV(dglGetProcAddress('glGetUniformui64vNV'));
  glProgramUniformui64NV := tglProgramUniformui64NV(dglGetProcAddress('glProgramUniformui64NV'));
  glProgramUniformui64vNV := tglProgramUniformui64vNV(dglGetProcAddress('glProgramUniformui64vNV'));
end;

method Read_GL_NV_vertex_buffer_unified_memory;
begin
  glBufferAddressRangeNV := tglBufferAddressRangeNV(dglGetProcAddress('glBufferAddressRangeNV'));
  glVertexFormatNV := tglVertexFormatNV(dglGetProcAddress('glVertexFormatNV'));
  glNormalFormatNV := tglNormalFormatNV(dglGetProcAddress('glNormalFormatNV'));
  glColorFormatNV := tglColorFormatNV(dglGetProcAddress('glColorFormatNV'));
  glIndexFormatNV := tglIndexFormatNV(dglGetProcAddress('glIndexFormatNV'));
  glTexCoordFormatNV := tglTexCoordFormatNV(dglGetProcAddress('glTexCoordFormatNV'));
  glEdgeFlagFormatNV := tglEdgeFlagFormatNV(dglGetProcAddress('glEdgeFlagFormatNV'));
  glSecondaryColorFormatNV := tglSecondaryColorFormatNV(dglGetProcAddress('glSecondaryColorFormatNV'));
  glFogCoordFormatNV := tglFogCoordFormatNV(dglGetProcAddress('glFogCoordFormatNV'));
  glVertexAttribFormatNV := tglVertexAttribFormatNV(dglGetProcAddress('glVertexAttribFormatNV'));
  glVertexAttribIFormatNV := tglVertexAttribIFormatNV(dglGetProcAddress('glVertexAttribIFormatNV'));
  glGetIntegerui64i_vNV := tglGetIntegerui64i_vNV(dglGetProcAddress('glGetIntegerui64i_vNV'));
end;

method Read_GL_NV_gpu_program5;
begin
  glProgramSubroutineParametersuivNV := tglProgramSubroutineParametersuivNV(dglGetProcAddress('glProgramSubroutineParametersuivNV'));
  glGetProgramSubroutineParameteruivNV := tglGetProgramSubroutineParameteruivNV(dglGetProcAddress('glGetProgramSubroutineParameteruivNV'));
end;

method Read_GL_NV_gpu_shader5;
begin
  glUniform1i64NV := tglUniform1i64NV(dglGetProcAddress('glUniform1i64NV'));
  glUniform2i64NV := tglUniform2i64NV(dglGetProcAddress('glUniform2i64NV'));
  glUniform3i64NV := tglUniform3i64NV(dglGetProcAddress('glUniform3i64NV'));
  glUniform4i64NV := tglUniform4i64NV(dglGetProcAddress('glUniform4i64NV'));
  glUniform1i64vNV := tglUniform1i64vNV(dglGetProcAddress('glUniform1i64vNV'));
  glUniform2i64vNV := tglUniform2i64vNV(dglGetProcAddress('glUniform2i64vNV'));
  glUniform3i64vNV := tglUniform3i64vNV(dglGetProcAddress('glUniform3i64vNV'));
  glUniform4i64vNV := tglUniform4i64vNV(dglGetProcAddress('glUniform4i64vNV'));
  glUniform1ui64NV := tglUniform1ui64NV(dglGetProcAddress('glUniform1ui64NV'));
  glUniform2ui64NV := tglUniform2ui64NV(dglGetProcAddress('glUniform2ui64NV'));
  glUniform3ui64NV := tglUniform3ui64NV(dglGetProcAddress('glUniform3ui64NV'));
  glUniform4ui64NV := tglUniform4ui64NV(dglGetProcAddress('glUniform4ui64NV'));
  glUniform1ui64vNV := tglUniform1ui64vNV(dglGetProcAddress('glUniform1ui64vNV'));
  glUniform2ui64vNV := tglUniform2ui64vNV(dglGetProcAddress('glUniform2ui64vNV'));
  glUniform3ui64vNV := tglUniform3ui64vNV(dglGetProcAddress('glUniform3ui64vNV'));
  glUniform4ui64vNV := tglUniform4ui64vNV(dglGetProcAddress('glUniform4ui64vNV'));
  glGetUniformi64vNV := tglGetUniformi64vNV(dglGetProcAddress('glGetUniformi64vNV'));
  glProgramUniform1i64NV := tglProgramUniform1i64NV(dglGetProcAddress('glProgramUniform1i64NV'));
  glProgramUniform2i64NV := tglProgramUniform2i64NV(dglGetProcAddress('glProgramUniform2i64NV'));
  glProgramUniform3i64NV := tglProgramUniform3i64NV(dglGetProcAddress('glProgramUniform3i64NV'));
  glProgramUniform4i64NV := tglProgramUniform4i64NV(dglGetProcAddress('glProgramUniform4i64NV'));
  glProgramUniform1i64vNV := tglProgramUniform1i64vNV(dglGetProcAddress('glProgramUniform1i64vNV'));
  glProgramUniform2i64vNV := tglProgramUniform2i64vNV(dglGetProcAddress('glProgramUniform2i64vNV'));
  glProgramUniform3i64vNV := tglProgramUniform3i64vNV(dglGetProcAddress('glProgramUniform3i64vNV'));
  glProgramUniform4i64vNV := tglProgramUniform4i64vNV(dglGetProcAddress('glProgramUniform4i64vNV'));
  glProgramUniform1ui64NV := tglProgramUniform1ui64NV(dglGetProcAddress('glProgramUniform1ui64NV'));
  glProgramUniform2ui64NV := tglProgramUniform2ui64NV(dglGetProcAddress('glProgramUniform2ui64NV'));
  glProgramUniform3ui64NV := tglProgramUniform3ui64NV(dglGetProcAddress('glProgramUniform3ui64NV'));
  glProgramUniform4ui64NV := tglProgramUniform4ui64NV(dglGetProcAddress('glProgramUniform4ui64NV'));
  glProgramUniform1ui64vNV := tglProgramUniform1ui64vNV(dglGetProcAddress('glProgramUniform1ui64vNV'));
  glProgramUniform2ui64vNV := tglProgramUniform2ui64vNV(dglGetProcAddress('glProgramUniform2ui64vNV'));
  glProgramUniform3ui64vNV := tglProgramUniform3ui64vNV(dglGetProcAddress('glProgramUniform3ui64vNV'));
  glProgramUniform4ui64vNV := tglProgramUniform4ui64vNV(dglGetProcAddress('glProgramUniform4ui64vNV'));
end;

method Read_GL_NV_vertex_attrib_integer_64bit;
begin
  glVertexAttribL1i64NV := tglVertexAttribL1i64NV(dglGetProcAddress('glVertexAttribL1i64NV'));
  glVertexAttribL2i64NV := tglVertexAttribL2i64NV(dglGetProcAddress('glVertexAttribL2i64NV'));
  glVertexAttribL3i64NV := tglVertexAttribL3i64NV(dglGetProcAddress('glVertexAttribL3i64NV'));
  glVertexAttribL4i64NV := tglVertexAttribL4i64NV(dglGetProcAddress('glVertexAttribL4i64NV'));
  glVertexAttribL1i64vNV := tglVertexAttribL1i64vNV(dglGetProcAddress('glVertexAttribL1i64vNV'));
  glVertexAttribL2i64vNV := tglVertexAttribL2i64vNV(dglGetProcAddress('glVertexAttribL2i64vNV'));
  glVertexAttribL3i64vNV := tglVertexAttribL3i64vNV(dglGetProcAddress('glVertexAttribL3i64vNV'));
  glVertexAttribL4i64vNV := tglVertexAttribL4i64vNV(dglGetProcAddress('glVertexAttribL4i64vNV'));
  glVertexAttribL1ui64NV := tglVertexAttribL1ui64NV(dglGetProcAddress('glVertexAttribL1ui64NV'));
  glVertexAttribL2ui64NV := tglVertexAttribL2ui64NV(dglGetProcAddress('glVertexAttribL2ui64NV'));
  glVertexAttribL3ui64NV := tglVertexAttribL3ui64NV(dglGetProcAddress('glVertexAttribL3ui64NV'));
  glVertexAttribL4ui64NV := tglVertexAttribL4ui64NV(dglGetProcAddress('glVertexAttribL4ui64NV'));
  glVertexAttribL1ui64vNV := tglVertexAttribL1ui64vNV(dglGetProcAddress('glVertexAttribL1ui64vNV'));
  glVertexAttribL2ui64vNV := tglVertexAttribL2ui64vNV(dglGetProcAddress('glVertexAttribL2ui64vNV'));
  glVertexAttribL3ui64vNV := tglVertexAttribL3ui64vNV(dglGetProcAddress('glVertexAttribL3ui64vNV'));
  glVertexAttribL4ui64vNV := tglVertexAttribL4ui64vNV(dglGetProcAddress('glVertexAttribL4ui64vNV'));
  glGetVertexAttribLi64vNV := tglGetVertexAttribLi64vNV(dglGetProcAddress('glGetVertexAttribLi64vNV'));
  glGetVertexAttribLui64vNV := tglGetVertexAttribLui64vNV(dglGetProcAddress('glGetVertexAttribLui64vNV'));
  glVertexAttribLFormatNV := tglVertexAttribLFormatNV(dglGetProcAddress('glVertexAttribLFormatNV'));
end;

method Read_GL_NV_vdpau_interop;
begin
  glVDPAUInitNV := tglVDPAUInitNV(dglGetProcAddress('glVDPAUInitNV'));
  glVDPAUFiniNV := tglVDPAUFiniNV(dglGetProcAddress('glVDPAUFiniNV'));
  glVDPAURegisterVideoSurfaceNV := tglVDPAURegisterVideoSurfaceNV(dglGetProcAddress('glVDPAURegisterVideoSurfaceNV'));
  glVDPAURegisterOutputSurfaceNV := tglVDPAURegisterOutputSurfaceNV(dglGetProcAddress('glVDPAURegisterOutputSurfaceNV'));
  glVDPAUIsSurfaceNV := tglVDPAUIsSurfaceNV(dglGetProcAddress('glVDPAUIsSurfaceNV'));
  glVDPAUUnregisterSurfaceNV := tglVDPAUUnregisterSurfaceNV(dglGetProcAddress('glVDPAUUnregisterSurfaceNV'));
  glVDPAUGetSurfaceivNV := tglVDPAUGetSurfaceivNV(dglGetProcAddress('glVDPAUGetSurfaceivNV'));
  glVDPAUSurfaceAccessNV := tglVDPAUSurfaceAccessNV(dglGetProcAddress('glVDPAUSurfaceAccessNV'));
  glVDPAUMapSurfacesNV := tglVDPAUMapSurfacesNV(dglGetProcAddress('glVDPAUMapSurfacesNV'));
  glVDPAUUnmapSurfacesNV := tglVDPAUUnmapSurfacesNV(dglGetProcAddress('glVDPAUUnmapSurfacesNV'));
end;

method Read_GL_NV_texture_barrier;
begin
  glTextureBarrierNV := tglTextureBarrierNV(dglGetProcAddress('glTextureBarrierNV'));
end;

method Read_GL_PGI_misc_hints;
begin
  glHintPGI := tglHintPGI(dglGetProcAddress('glHintPGI'));
end;

method Read_GL_OVR_multiview;
begin
  glFramebufferTextureMultiviewOVR := tglFramebufferTextureMultiviewOVR(dglGetProcAddress('glFramebufferTextureMultiviewOVR'));
end;

method Read_GL_SGIS_detail_texture;
begin
  glDetailTexFuncSGIS := tglDetailTexFuncSGIS(dglGetProcAddress('glDetailTexFuncSGIS'));
  glGetDetailTexFuncSGIS := tglGetDetailTexFuncSGIS(dglGetProcAddress('glGetDetailTexFuncSGIS'));
end;

method Read_GL_SGIS_fog_function;
begin
  glFogFuncSGIS := tglFogFuncSGIS(dglGetProcAddress('glFogFuncSGIS'));
  glGetFogFuncSGIS := tglGetFogFuncSGIS(dglGetProcAddress('glGetFogFuncSGIS'));
end;

method Read_GL_SGIS_multisample;
begin
  glSampleMaskSGIS := tglSampleMaskSGIS(dglGetProcAddress('glSampleMaskSGIS'));
  glSamplePatternSGIS := tglSamplePatternSGIS(dglGetProcAddress('glSamplePatternSGIS'));
end;

method Read_GL_SGIS_pixel_texture;
begin
  glPixelTexGenParameteriSGIS := tglPixelTexGenParameteriSGIS(dglGetProcAddress('glPixelTexGenParameteriSGIS'));
  glPixelTexGenParameterivSGIS := tglPixelTexGenParameterivSGIS(dglGetProcAddress('glPixelTexGenParameterivSGIS'));
  glPixelTexGenParameterfSGIS := tglPixelTexGenParameterfSGIS(dglGetProcAddress('glPixelTexGenParameterfSGIS'));
  glPixelTexGenParameterfvSGIS := tglPixelTexGenParameterfvSGIS(dglGetProcAddress('glPixelTexGenParameterfvSGIS'));
  glGetPixelTexGenParameterivSGIS := tglGetPixelTexGenParameterivSGIS(dglGetProcAddress('glGetPixelTexGenParameterivSGIS'));
  glGetPixelTexGenParameterfvSGIS := tglGetPixelTexGenParameterfvSGIS(dglGetProcAddress('glGetPixelTexGenParameterfvSGIS'));
end;

method Read_GL_SGIS_point_parameters;
begin
  glPointParameterfSGIS := tglPointParameterfSGIS(dglGetProcAddress('glPointParameterfSGIS'));
  glPointParameterfvSGIS := tglPointParameterfvSGIS(dglGetProcAddress('glPointParameterfvSGIS'));
end;

method Read_GL_SGIS_sharpen_texture;
begin
  glSharpenTexFuncSGIS := tglSharpenTexFuncSGIS(dglGetProcAddress('glSharpenTexFuncSGIS'));
  glGetSharpenTexFuncSGIS := tglGetSharpenTexFuncSGIS(dglGetProcAddress('glGetSharpenTexFuncSGIS'));
end;

method Read_GL_SGIS_texture4D;
begin
  glTexImage4DSGIS := tglTexImage4DSGIS(dglGetProcAddress('glTexImage4DSGIS'));
  glTexSubImage4DSGIS := tglTexSubImage4DSGIS(dglGetProcAddress('glTexSubImage4DSGIS'));
end;

method Read_GL_SGIS_texture_color_mask;
begin
  glTextureColorMaskSGIS := tglTextureColorMaskSGIS(dglGetProcAddress('glTextureColorMaskSGIS'));
end;

method Read_GL_SGIS_texture_filter4;
begin
  glGetTexFilterFuncSGIS := tglGetTexFilterFuncSGIS(dglGetProcAddress('glGetTexFilterFuncSGIS'));
  glTexFilterFuncSGIS := tglTexFilterFuncSGIS(dglGetProcAddress('glTexFilterFuncSGIS'));
end;

method Read_GL_SGIX_async;
begin
  glAsyncMarkerSGIX := tglAsyncMarkerSGIX(dglGetProcAddress('glAsyncMarkerSGIX'));
  glFinishAsyncSGIX := tglFinishAsyncSGIX(dglGetProcAddress('glFinishAsyncSGIX'));
  glPollAsyncSGIX := tglPollAsyncSGIX(dglGetProcAddress('glPollAsyncSGIX'));
  glGenAsyncMarkersSGIX := tglGenAsyncMarkersSGIX(dglGetProcAddress('glGenAsyncMarkersSGIX'));
  glDeleteAsyncMarkersSGIX := tglDeleteAsyncMarkersSGIX(dglGetProcAddress('glDeleteAsyncMarkersSGIX'));
  glIsAsyncMarkerSGIX := tglIsAsyncMarkerSGIX(dglGetProcAddress('glIsAsyncMarkerSGIX'));
end;

method Read_GL_SGIX_flush_raster;
begin
  glFlushRasterSGIX := tglFlushRasterSGIX(dglGetProcAddress('glFlushRasterSGIX'));
end;

method Read_GL_SGIX_fragment_lighting;
begin
  glFragmentColorMaterialSGIX := tglFragmentColorMaterialSGIX(dglGetProcAddress('glFragmentColorMaterialSGIX'));
  glFragmentLightfSGIX := tglFragmentLightfSGIX(dglGetProcAddress('glFragmentLightfSGIX'));
  glFragmentLightfvSGIX := tglFragmentLightfvSGIX(dglGetProcAddress('glFragmentLightfvSGIX'));
  glFragmentLightiSGIX := tglFragmentLightiSGIX(dglGetProcAddress('glFragmentLightiSGIX'));
  glFragmentLightivSGIX := tglFragmentLightivSGIX(dglGetProcAddress('glFragmentLightivSGIX'));
  glFragmentLightModelfSGIX := tglFragmentLightModelfSGIX(dglGetProcAddress('glFragmentLightModelfSGIX'));
  glFragmentLightModelfvSGIX := tglFragmentLightModelfvSGIX(dglGetProcAddress('glFragmentLightModelfvSGIX'));
  glFragmentLightModeliSGIX := tglFragmentLightModeliSGIX(dglGetProcAddress('glFragmentLightModeliSGIX'));
  glFragmentLightModelivSGIX := tglFragmentLightModelivSGIX(dglGetProcAddress('glFragmentLightModelivSGIX'));
  glFragmentMaterialfSGIX := tglFragmentMaterialfSGIX(dglGetProcAddress('glFragmentMaterialfSGIX'));
  glFragmentMaterialfvSGIX := tglFragmentMaterialfvSGIX(dglGetProcAddress('glFragmentMaterialfvSGIX'));
  glFragmentMaterialiSGIX := tglFragmentMaterialiSGIX(dglGetProcAddress('glFragmentMaterialiSGIX'));
  glFragmentMaterialivSGIX := tglFragmentMaterialivSGIX(dglGetProcAddress('glFragmentMaterialivSGIX'));
  glGetFragmentLightfvSGIX := tglGetFragmentLightfvSGIX(dglGetProcAddress('glGetFragmentLightfvSGIX'));
  glGetFragmentLightivSGIX := tglGetFragmentLightivSGIX(dglGetProcAddress('glGetFragmentLightivSGIX'));
  glGetFragmentMaterialfvSGIX := tglGetFragmentMaterialfvSGIX(dglGetProcAddress('glGetFragmentMaterialfvSGIX'));
  glGetFragmentMaterialivSGIX := tglGetFragmentMaterialivSGIX(dglGetProcAddress('glGetFragmentMaterialivSGIX'));
  glLightEnviSGIX := tglLightEnviSGIX(dglGetProcAddress('glLightEnviSGIX'));
end;

method Read_GL_SGIX_framezoom;
begin
  glFrameZoomSGIX := tglFrameZoomSGIX(dglGetProcAddress('glFrameZoomSGIX'));
end;

method Read_GL_SGIX_igloo_interface;
begin
  glIglooInterfaceSGIX := tglIglooInterfaceSGIX(dglGetProcAddress('glIglooInterfaceSGIX'));
end;

method Read_GL_SGIX_instruments;
begin
  glGetInstrumentsSGIX := tglGetInstrumentsSGIX(dglGetProcAddress('glGetInstrumentsSGIX'));
  glInstrumentsBufferSGIX := tglInstrumentsBufferSGIX(dglGetProcAddress('glInstrumentsBufferSGIX'));
  glPollInstrumentsSGIX := tglPollInstrumentsSGIX(dglGetProcAddress('glPollInstrumentsSGIX'));
  glReadInstrumentsSGIX := tglReadInstrumentsSGIX(dglGetProcAddress('glReadInstrumentsSGIX'));
  glStartInstrumentsSGIX := tglStartInstrumentsSGIX(dglGetProcAddress('glStartInstrumentsSGIX'));
  glStopInstrumentsSGIX := tglStopInstrumentsSGIX(dglGetProcAddress('glStopInstrumentsSGIX'));
end;

method Read_GL_SGIX_list_priority;
begin
  glGetListParameterfvSGIX := tglGetListParameterfvSGIX(dglGetProcAddress('glGetListParameterfvSGIX'));
  glGetListParameterivSGIX := tglGetListParameterivSGIX(dglGetProcAddress('glGetListParameterivSGIX'));
  glListParameterfSGIX := tglListParameterfSGIX(dglGetProcAddress('glListParameterfSGIX'));
  glListParameterfvSGIX := tglListParameterfvSGIX(dglGetProcAddress('glListParameterfvSGIX'));
  glListParameteriSGIX := tglListParameteriSGIX(dglGetProcAddress('glListParameteriSGIX'));
  glListParameterivSGIX := tglListParameterivSGIX(dglGetProcAddress('glListParameterivSGIX'));
end;

method Read_GL_SGIX_pixel_texture;
begin
  glPixelTexGenSGIX := tglPixelTexGenSGIX(dglGetProcAddress('glPixelTexGenSGIX'));
end;

method Read_GL_SGIX_polynomial_ffd;
begin
  glDeformationMap3dSGIX := tglDeformationMap3dSGIX(dglGetProcAddress('glDeformationMap3dSGIX'));
  glDeformationMap3fSGIX := tglDeformationMap3fSGIX(dglGetProcAddress('glDeformationMap3fSGIX'));
  glDeformSGIX := tglDeformSGIX(dglGetProcAddress('glDeformSGIX'));
  glLoadIdentityDeformationMapSGIX := tglLoadIdentityDeformationMapSGIX(dglGetProcAddress('glLoadIdentityDeformationMapSGIX'));
end;

method Read_GL_SGIX_reference_plane;
begin
  glReferencePlaneSGIX := tglReferencePlaneSGIX(dglGetProcAddress('glReferencePlaneSGIX'));
end;

method Read_GL_SGIX_sprite;
begin
  glSpriteParameterfSGIX := tglSpriteParameterfSGIX(dglGetProcAddress('glSpriteParameterfSGIX'));
  glSpriteParameterfvSGIX := tglSpriteParameterfvSGIX(dglGetProcAddress('glSpriteParameterfvSGIX'));
  glSpriteParameteriSGIX := tglSpriteParameteriSGIX(dglGetProcAddress('glSpriteParameteriSGIX'));
  glSpriteParameterivSGIX := tglSpriteParameterivSGIX(dglGetProcAddress('glSpriteParameterivSGIX'));
end;

method Read_GL_SGIX_tag_sample_buffer;
begin
  glTagSampleBufferSGIX := tglTagSampleBufferSGIX(dglGetProcAddress('glTagSampleBufferSGIX'));
end;

method Read_GL_SGI_color_table;
begin
  glColorTableSGI := tglColorTableSGI(dglGetProcAddress('glColorTableSGI'));
  glColorTableParameterfvSGI := tglColorTableParameterfvSGI(dglGetProcAddress('glColorTableParameterfvSGI'));
  glColorTableParameterivSGI := tglColorTableParameterivSGI(dglGetProcAddress('glColorTableParameterivSGI'));
  glCopyColorTableSGI := tglCopyColorTableSGI(dglGetProcAddress('glCopyColorTableSGI'));
  glGetColorTableSGI := tglGetColorTableSGI(dglGetProcAddress('glGetColorTableSGI'));
  glGetColorTableParameterfvSGI := tglGetColorTableParameterfvSGI(dglGetProcAddress('glGetColorTableParameterfvSGI'));
  glGetColorTableParameterivSGI := tglGetColorTableParameterivSGI(dglGetProcAddress('glGetColorTableParameterivSGI'));
end;

method Read_GL_SUNX_constant_data;
begin
  glFinishTextureSUNX := tglFinishTextureSUNX(dglGetProcAddress('glFinishTextureSUNX'));
end;

method Read_GL_SUN_global_alpha;
begin
  glGlobalAlphaFactorbSUN := tglGlobalAlphaFactorbSUN(dglGetProcAddress('glGlobalAlphaFactorbSUN'));
  glGlobalAlphaFactorsSUN := tglGlobalAlphaFactorsSUN(dglGetProcAddress('glGlobalAlphaFactorsSUN'));
  glGlobalAlphaFactoriSUN := tglGlobalAlphaFactoriSUN(dglGetProcAddress('glGlobalAlphaFactoriSUN'));
  glGlobalAlphaFactorfSUN := tglGlobalAlphaFactorfSUN(dglGetProcAddress('glGlobalAlphaFactorfSUN'));
  glGlobalAlphaFactordSUN := tglGlobalAlphaFactordSUN(dglGetProcAddress('glGlobalAlphaFactordSUN'));
  glGlobalAlphaFactorubSUN := tglGlobalAlphaFactorubSUN(dglGetProcAddress('glGlobalAlphaFactorubSUN'));
  glGlobalAlphaFactorusSUN := tglGlobalAlphaFactorusSUN(dglGetProcAddress('glGlobalAlphaFactorusSUN'));
  glGlobalAlphaFactoruiSUN := tglGlobalAlphaFactoruiSUN(dglGetProcAddress('glGlobalAlphaFactoruiSUN'));
end;

method Read_GL_SUN_mesh_array;
begin
  glDrawMeshArraysSUN := tglDrawMeshArraysSUN(dglGetProcAddress('glDrawMeshArraysSUN'));
end;

method Read_GL_SUN_triangle_list;
begin
  glReplacementCodeuiSUN := tglReplacementCodeuiSUN(dglGetProcAddress('glReplacementCodeuiSUN'));
  glReplacementCodeusSUN := tglReplacementCodeusSUN(dglGetProcAddress('glReplacementCodeusSUN'));
  glReplacementCodeubSUN := tglReplacementCodeubSUN(dglGetProcAddress('glReplacementCodeubSUN'));
  glReplacementCodeuivSUN := tglReplacementCodeuivSUN(dglGetProcAddress('glReplacementCodeuivSUN'));
  glReplacementCodeusvSUN := tglReplacementCodeusvSUN(dglGetProcAddress('glReplacementCodeusvSUN'));
  glReplacementCodeubvSUN := tglReplacementCodeubvSUN(dglGetProcAddress('glReplacementCodeubvSUN'));
  glReplacementCodePointerSUN := tglReplacementCodePointerSUN(dglGetProcAddress('glReplacementCodePointerSUN'));
end;

method Read_GL_SUN_vertex;
begin
  glColor4ubVertex2fSUN := tglColor4ubVertex2fSUN(dglGetProcAddress('glColor4ubVertex2fSUN'));
  glColor4ubVertex2fvSUN := tglColor4ubVertex2fvSUN(dglGetProcAddress('glColor4ubVertex2fvSUN'));
  glColor4ubVertex3fSUN := tglColor4ubVertex3fSUN(dglGetProcAddress('glColor4ubVertex3fSUN'));
  glColor4ubVertex3fvSUN := tglColor4ubVertex3fvSUN(dglGetProcAddress('glColor4ubVertex3fvSUN'));
  glColor3fVertex3fSUN := tglColor3fVertex3fSUN(dglGetProcAddress('glColor3fVertex3fSUN'));
  glColor3fVertex3fvSUN := tglColor3fVertex3fvSUN(dglGetProcAddress('glColor3fVertex3fvSUN'));
  glNormal3fVertex3fSUN := tglNormal3fVertex3fSUN(dglGetProcAddress('glNormal3fVertex3fSUN'));
  glNormal3fVertex3fvSUN := tglNormal3fVertex3fvSUN(dglGetProcAddress('glNormal3fVertex3fvSUN'));
  glColor4fNormal3fVertex3fSUN := tglColor4fNormal3fVertex3fSUN(dglGetProcAddress('glColor4fNormal3fVertex3fSUN'));
  glColor4fNormal3fVertex3fvSUN := tglColor4fNormal3fVertex3fvSUN(dglGetProcAddress('glColor4fNormal3fVertex3fvSUN'));
  glTexCoord2fVertex3fSUN := tglTexCoord2fVertex3fSUN(dglGetProcAddress('glTexCoord2fVertex3fSUN'));
  glTexCoord2fVertex3fvSUN := tglTexCoord2fVertex3fvSUN(dglGetProcAddress('glTexCoord2fVertex3fvSUN'));
  glTexCoord4fVertex4fSUN := tglTexCoord4fVertex4fSUN(dglGetProcAddress('glTexCoord4fVertex4fSUN'));
  glTexCoord4fVertex4fvSUN := tglTexCoord4fVertex4fvSUN(dglGetProcAddress('glTexCoord4fVertex4fvSUN'));
  glTexCoord2fColor4ubVertex3fSUN := tglTexCoord2fColor4ubVertex3fSUN(dglGetProcAddress('glTexCoord2fColor4ubVertex3fSUN'));
  glTexCoord2fColor4ubVertex3fvSUN := tglTexCoord2fColor4ubVertex3fvSUN(dglGetProcAddress('glTexCoord2fColor4ubVertex3fvSUN'));
  glTexCoord2fColor3fVertex3fSUN := tglTexCoord2fColor3fVertex3fSUN(dglGetProcAddress('glTexCoord2fColor3fVertex3fSUN'));
  glTexCoord2fColor3fVertex3fvSUN := tglTexCoord2fColor3fVertex3fvSUN(dglGetProcAddress('glTexCoord2fColor3fVertex3fvSUN'));
  glTexCoord2fNormal3fVertex3fSUN := tglTexCoord2fNormal3fVertex3fSUN(dglGetProcAddress('glTexCoord2fNormal3fVertex3fSUN'));
  glTexCoord2fNormal3fVertex3fvSUN := tglTexCoord2fNormal3fVertex3fvSUN(dglGetProcAddress('glTexCoord2fNormal3fVertex3fvSUN'));
  glTexCoord2fColor4fNormal3fVertex3fSUN := tglTexCoord2fColor4fNormal3fVertex3fSUN(dglGetProcAddress('glTexCoord2fColor4fNormal3fVertex3fSUN'));
  glTexCoord2fColor4fNormal3fVertex3fvSUN := tglTexCoord2fColor4fNormal3fVertex3fvSUN(dglGetProcAddress('glTexCoord2fColor4fNormal3fVertex3fvSUN'));
  glTexCoord4fColor4fNormal3fVertex4fSUN := tglTexCoord4fColor4fNormal3fVertex4fSUN(dglGetProcAddress('glTexCoord4fColor4fNormal3fVertex4fSUN'));
  glTexCoord4fColor4fNormal3fVertex4fvSUN := tglTexCoord4fColor4fNormal3fVertex4fvSUN(dglGetProcAddress('glTexCoord4fColor4fNormal3fVertex4fvSUN'));
  glReplacementCodeuiVertex3fSUN := tglReplacementCodeuiVertex3fSUN(dglGetProcAddress('glReplacementCodeuiVertex3fSUN'));
  glReplacementCodeuiVertex3fvSUN := tglReplacementCodeuiVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiVertex3fvSUN'));
  glReplacementCodeuiColor4ubVertex3fSUN := tglReplacementCodeuiColor4ubVertex3fSUN(dglGetProcAddress('glReplacementCodeuiColor4ubVertex3fSUN'));
  glReplacementCodeuiColor4ubVertex3fvSUN := tglReplacementCodeuiColor4ubVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiColor4ubVertex3fvSUN'));
  glReplacementCodeuiColor3fVertex3fSUN := tglReplacementCodeuiColor3fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiColor3fVertex3fSUN'));
  glReplacementCodeuiColor3fVertex3fvSUN := tglReplacementCodeuiColor3fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiColor3fVertex3fvSUN'));
  glReplacementCodeuiNormal3fVertex3fSUN := tglReplacementCodeuiNormal3fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiNormal3fVertex3fSUN'));
  glReplacementCodeuiNormal3fVertex3fvSUN := tglReplacementCodeuiNormal3fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiNormal3fVertex3fvSUN'));
  glReplacementCodeuiColor4fNormal3fVertex3fSUN := tglReplacementCodeuiColor4fNormal3fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiColor4fNormal3fVertex3fSUN'));
  glReplacementCodeuiColor4fNormal3fVertex3fvSUN := tglReplacementCodeuiColor4fNormal3fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiColor4fNormal3fVertex3fvSUN'));
  glReplacementCodeuiTexCoord2fVertex3fSUN := tglReplacementCodeuiTexCoord2fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fVertex3fSUN'));
  glReplacementCodeuiTexCoord2fVertex3fvSUN := tglReplacementCodeuiTexCoord2fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fVertex3fvSUN'));
  glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN := tglReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN'));
  glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN := tglReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN'));
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN := tglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN'));
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN := tglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(dglGetProcAddress('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN'));
end;



method ReadExtensions;
begin
  ReadOpenGLCore;
    // todo ???
 // ReadOpenGLCoreDeprecated;

  Read_GL_3DFX_tbuffer;
  Read_GL_APPLE_element_array;
  Read_GL_APPLE_fence;
  Read_GL_APPLE_vertex_array_object;
  Read_GL_APPLE_vertex_array_range;
  Read_GL_APPLE_texture_range;
  Read_GL_APPLE_vertex_program_evaluators;
  Read_GL_APPLE_object_purgeable;
  Read_GL_ARB_matrix_palette;
  Read_GL_ARB_multitexture;
  Read_GL_ARB_point_parameters;
  Read_GL_ARB_texture_compression;
  Read_GL_ARB_transpose_matrix;
  Read_GL_ARB_vertex_blend;
  Read_GL_ARB_vertex_buffer_object;
  Read_GL_ARB_vertex_program;
  Read_GL_ARB_window_pos;
  Read_GL_ARB_color_buffer_float;
  Read_GL_ARB_Shader_Objects;
  Read_GL_ARB_occlusion_query;
  Read_GL_ARB_draw_instanced;
  Read_GL_ARB_framebuffer_object;
  Read_GL_ARB_geometry_shader4;
  Read_GL_ARB_gpu_shader_int64;
  Read_GL_ARB_instanced_arrays;
  Read_GL_ARB_map_buffer_range;
  Read_GL_ARB_texture_buffer_object;
  Read_GL_ARB_vertex_array_object;
  Read_GL_ARB_uniform_buffer_object;
  Read_GL_ARB_copy_buffer;
  Read_GL_ARB_draw_elements_base_vertex;
  Read_GL_ARB_provoking_vertex;
  Read_GL_ARB_sync;
  Read_GL_ARB_texture_multisample;
  Read_GL_ARB_draw_buffers_blend;
  Read_GL_ARB_sample_shading;
  Read_GL_ARB_sample_locations;
  Read_GL_ARB_shading_language_include;
  Read_GL_ARB_sparse_texture;
  Read_GL_ARB_sparse_buffer;
  Read_GL_ARB_blend_func_extended;
  Read_GL_ARB_sampler_objects;
  Read_GL_ARB_timer_query;
  Read_GL_ARB_vertex_type_2_10_10_10_rev;
  Read_GL_ARB_draw_indirect;
  Read_GL_ARB_gpu_shader_fp64;
  Read_GL_ARB_shader_subroutine;
  Read_GL_ARB_tessellation_shader;
  Read_GL_ARB_transform_feedback2;
  Read_GL_ARB_transform_feedback3;
  Read_GL_ARB_get_program_binary;
  Read_GL_ARB_separate_shader_objects;
  Read_GL_ARB_vertex_attrib_64bit;
  Read_GL_ARB_viewport_array;
  Read_GL_ARB_cl_event;
  Read_GL_ARB_compute_variable_group_size;
  Read_GL_ARB_debug_output;
  Read_GL_ARB_robustness;
  Read_GL_ARB_ES2_compatibility;
  //
  Read_GL_ATI_draw_buffers;
  Read_GL_ATI_element_array;
  Read_GL_ATI_envmap_bumpmap;
  Read_GL_ATI_fragment_shader;
  Read_GL_ATI_map_object_buffer;
  Read_GL_ATI_pn_triangles;
  Read_GL_ATI_separate_stencil;
  Read_GL_ATI_vertex_array_object;
  Read_GL_ATI_vertex_attrib_array_object;
  Read_GL_ATI_vertex_streams;
  Read_GL_AMD_performance_monitor;
  Read_GL_AMD_vertex_shader_tesselator;
  Read_GL_AMD_draw_buffers_blend;
  Read_GL_AMD_name_gen_delete;
  Read_GL_AMD_debug_output;
  Read_GL_AMD_stencil_operation_extended;
  Read_GL_EXT_blend_color;
  Read_GL_EXT_blend_func_separate;
  Read_GL_EXT_blend_minmax;
  Read_GL_EXT_color_subtable;
  Read_GL_EXT_compiled_vertex_array;
  Read_GL_EXT_convolution;
  Read_GL_EXT_coordinate_frame;
  Read_GL_EXT_copy_texture;
  Read_GL_EXT_cull_vertex;
  Read_GL_EXT_draw_range_elements;
  Read_GL_EXT_fog_coord;
  Read_GL_EXT_framebuffer_object;
  Read_GL_EXT_histogram;
  Read_GL_EXT_index_func;
  Read_GL_EXT_index_material;
  Read_GL_EXT_multi_draw_arrays;
  Read_GL_EXT_multisample;
  Read_GL_EXT_paletted_texture;
  Read_GL_EXT_pixel_transform;
  Read_GL_EXT_point_parameters;
  Read_GL_EXT_polygon_offset;
  Read_GL_EXT_secondary_color;
  Read_GL_EXT_stencil_two_side;
  Read_GL_EXT_subtexture;
  Read_GL_EXT_texture3D;
  Read_GL_EXT_texture_object;
  Read_GL_EXT_texture_perturb_normal;
  Read_GL_EXT_vertex_array;
  Read_GL_EXT_vertex_shader;
  Read_GL_EXT_vertex_weighting;
  Read_GL_EXT_depth_bounds_test;
  Read_GL_EXT_blend_equation_separate;
  Read_GL_EXT_stencil_clear_tag;
  Read_GL_EXT_framebuffer_blit;
  Read_GL_EXT_framebuffer_multisample;
  Read_GL_EXT_timer_query;
  Read_GL_EXT_gpu_program_parameters;
  Read_GL_EXT_bindable_uniform;
  Read_GL_EXT_draw_buffers2;
  Read_GL_EXT_draw_instanced;
  Read_GL_EXT_geometry_shader4;
  Read_GL_EXT_gpu_shader4;
  Read_GL_EXT_texture_array;
  Read_GL_EXT_texture_buffer_object;
  Read_GL_EXT_texture_integer;
  Read_GL_EXT_transform_feedback;
  Read_GL_EXT_direct_state_access;
  Read_GL_EXT_separate_shader_objects;
  Read_GL_EXT_shader_image_load_store;
  Read_GL_EXT_vertex_attrib_64bit;
  Read_GL_HP_image_transform;
  Read_GL_IBM_multimode_draw_arrays;
  Read_GL_IBM_vertex_array_lists;
  Read_GL_INGR_blend_func_separate;
  Read_GL_INTEL_parallel_arrays;
  Read_GL_INTEL_framebuffer_CMAA;
  Read_GL_KHR_blend_equation_advanced;
  Read_GL_MESA_resize_buffers;
  Read_GL_MESA_window_pos;
  Read_GL_NV_evaluators;
  Read_GL_NV_fence;
  Read_GL_NV_fragment_program;
  Read_GL_NV_half_float;
  Read_GL_NV_occlusion_query;
  Read_GL_NV_pixel_data_range;
  Read_GL_NV_point_sprite;
  Read_GL_NV_primitive_restart;
  Read_GL_NV_register_combiners;
  Read_GL_NV_register_combiners2;
  Read_GL_NV_vertex_array_range;
  Read_GL_NV_vertex_program;
  Read_GL_NV_depth_buffer_float;
  Read_GL_NV_framebuffer_multisample_coverage;
  Read_GL_NV_geometry_program4;
  Read_GL_NV_gpu_program4;
  Read_GL_NV_parameter_buffer_object;
  Read_GL_NV_transform_feedback;
  Read_GL_NV_conditional_render;
  Read_GL_NV_conservative_raster;
  Read_GL_NV_conservative_raster_dilate;
  Read_GL_NV_present_video;
  Read_GL_NV_explicit_multisample;
  Read_GL_NV_transform_feedback2;
  Read_GL_NV_video_capture;
  Read_GL_NV_copy_image;
  Read_GL_NV_shader_buffer_load;
  Read_GL_NV_vertex_buffer_unified_memory;
  Read_GL_NV_gpu_program5;
  Read_GL_NV_gpu_shader5;
  Read_GL_NV_vertex_attrib_integer_64bit;
  Read_GL_NV_vdpau_interop;
  Read_GL_NV_texture_barrier;
  Read_GL_NV_path_rendering;
  Read_GL_NV_bindless_texture;
  Read_GL_PGI_misc_hints;
  Read_GL_OVR_multiview;
  Read_GL_SGIS_detail_texture;
  Read_GL_SGIS_fog_function;
  Read_GL_SGIS_multisample;
  Read_GL_SGIS_pixel_texture;
  Read_GL_SGIS_point_parameters;
  Read_GL_SGIS_sharpen_texture;
  Read_GL_SGIS_texture4D;
  Read_GL_SGIS_texture_color_mask;
  Read_GL_SGIS_texture_filter4;
  Read_GL_SGIX_async;
  Read_GL_SGIX_flush_raster;
  Read_GL_SGIX_fragment_lighting;
  Read_GL_SGIX_framezoom;
  Read_GL_SGIX_igloo_interface;
  Read_GL_SGIX_instruments;
  Read_GL_SGIX_list_priority;
  Read_GL_SGIX_pixel_texture;
  Read_GL_SGIX_polynomial_ffd;
  Read_GL_SGIX_reference_plane;
  Read_GL_SGIX_sprite;
  Read_GL_SGIX_tag_sample_buffer;
  Read_GL_SGI_color_table;
  Read_GL_SUNX_constant_data;
  Read_GL_SUN_global_alpha;
  Read_GL_SUN_mesh_array;
  Read_GL_SUN_triangle_list;
  Read_GL_SUN_vertex;

  Read_GL_ARB_ES3_2_compatibility;
  Read_GL_ARB_parallel_shader_compile;

{$IF ISLAND AND WINDOWS}
 ReadWGLExtensions;
 
{$ENDIF}

  ExtensionsRead := True;
end;

// =============================================================================
//  ReadCoreVersion
// =============================================================================

method ReadCoreVersion : boolean;
var
  AnsiBuffer: String;
  Buffer: String;
  MajorVersion, MinorVersion: Integer;

  
begin
    result := false;
  // determine version of implementation
  // GL

  if not Assigned(glGetString) then
  glGetString := tglGetString(dglGetProcAddress('glGetString'));
//
    //temp := glGetString(GL_VERSION);
if Assigned(glGetString) then
   AnsiBuffer := String.FromPAnsiChars(glGetString(GL_VERSION));
  
 //   AnsiBuffer := '"2.1';
  Buffer := String(AnsiBuffer);
//
if TrimAndSplitVersionString(Buffer, var  MajorVersion, var  MinorVersion) then

begin
    GL_VERSION_1_0 := True;
    GL_VERSION_1_1 := False;
    GL_VERSION_1_2 := False;
    GL_VERSION_1_3 := False;
    GL_VERSION_1_4 := False;
    GL_VERSION_1_5 := False;
    GL_VERSION_2_0 := False;
    GL_VERSION_2_1 := False;
    GL_VERSION_3_0 := False;
    GL_VERSION_3_1 := False;
    GL_VERSION_3_2 := False;
    GL_VERSION_3_3 := False;
    GL_VERSION_4_0 := False;
    GL_VERSION_4_1 := False;
    GL_VERSION_4_2 := False;
    GL_VERSION_4_3 := False;
    GL_VERSION_4_4 := False;
    GL_VERSION_4_5 := False;

    if MajorVersion = 1 then
    begin
        if MinorVersion >= 1 then
            GL_VERSION_1_1 := True;
        if MinorVersion >= 2 then
            GL_VERSION_1_2 := True;
        if MinorVersion >= 3 then
            GL_VERSION_1_3 := True;
        if MinorVersion >= 4 then
            GL_VERSION_1_4 := True;
        if MinorVersion >= 5 then
            GL_VERSION_1_5 := True;
    end;

    if MajorVersion >= 2 then
    begin
        GL_VERSION_1_1 := True;
        GL_VERSION_1_2 := True;
        GL_VERSION_1_3 := True;
        GL_VERSION_1_4 := True;
        GL_VERSION_1_5 := True;
        GL_VERSION_2_0 := True;

        if MinorVersion >= 1 then
            GL_VERSION_2_1 := True;
    end;

    if MajorVersion >= 3 then
    begin
        GL_VERSION_2_1 := True;
        GL_VERSION_3_0 := True;

        if MinorVersion >= 1 then
            GL_VERSION_3_1 := True;
        if MinorVersion >= 2 then
            GL_VERSION_3_2 := True;
        if MinorVersion >= 3 then
            GL_VERSION_3_3 := True;
    end;

    if MajorVersion >= 4 then
    begin
        GL_VERSION_3_1 := True;
        GL_VERSION_3_2 := True;
        GL_VERSION_3_3 := True;
        GL_VERSION_4_0 := True;

        if MinorVersion >= 1 then
            GL_VERSION_4_1 := True;
        if MinorVersion >= 2 then
            GL_VERSION_4_2 := True;
        if MinorVersion >= 3 then
            GL_VERSION_4_3 := True;
        if MinorVersion >= 4 then
            GL_VERSION_4_4 := True;
        if MinorVersion >= 5 then
            GL_VERSION_4_5:= True;
    end;
{$REGION 'GLU'}
// GLU
    GLU_VERSION_1_1 := False;
    GLU_VERSION_1_2 := False;
    GLU_VERSION_1_3 := False;

    if Assigned(gluGetString) then 
    begin
        AnsiBuffer :=  String.FromPAnsiChars( gluGetString(GLU_VERSION));
        Buffer := String(AnsiBuffer);
        TrimAndSplitVersionString(Buffer, var  Majorversion, var MinorVersion);

        GLU_VERSION_1_1 := True;

        if MinorVersion >= 2 then
            GLU_VERSION_1_2 := True;

        if MinorVersion >= 3 then
            GLU_VERSION_1_3 := True;
    end;
{$ENDREGION}
 result := true;
end;

end;


// =============================================================================
//  ReadImplementationProperties
// =============================================================================

method ReadImplementationProperties;
var
  Buffer: string;
begin
    if  ReadCoreVersion then
  begin
  // Check all extensions
        Buffer := Int_GetExtensionString;

  // 3DFX
    GL_3DFX_multisample := Int_CheckExtension(Buffer, 'GL_3DFX_multisample');
    GL_3DFX_tbuffer := Int_CheckExtension(Buffer, 'GL_3DFX_tbuffer');
    GL_3DFX_texture_compression_FXT1 := Int_CheckExtension(Buffer, 'GL_3DFX_texture_compression_FXT1');

  // APPLE
    GL_APPLE_client_storage := Int_CheckExtension(Buffer, 'GL_APPLE_client_storage');
    GL_APPLE_element_array := Int_CheckExtension(Buffer, 'GL_APPLE_element_array');
    GL_APPLE_fence := Int_CheckExtension(Buffer, 'GL_APPLE_fence');
    GL_APPLE_specular_vector := Int_CheckExtension(Buffer, 'GL_APPLE_specular_vector');
    GL_APPLE_transform_hint := Int_CheckExtension(Buffer, 'GL_APPLE_transform_hint');
    GL_APPLE_vertex_array_object := Int_CheckExtension(Buffer, 'GL_APPLE_vertex_array_object');
    GL_APPLE_vertex_array_range := Int_CheckExtension(Buffer, 'GL_APPLE_vertex_array_range');
    GL_APPLE_ycbcr_422 := Int_CheckExtension(Buffer, 'GL_APPLE_ycbcr_422');
    GL_APPLE_texture_range := Int_CheckExtension(Buffer, 'GL_APPLE_texture_range');
    GL_APPLE_float_pixels := Int_CheckExtension(Buffer, 'GL_APPLE_float_pixels');
    GL_APPLE_vertex_program_evaluators := Int_CheckExtension(Buffer, 'GL_APPLE_vertex_program_evaluators');
    GL_APPLE_aux_depth_stencil := Int_CheckExtension(Buffer, 'GL_APPLE_aux_depth_stencil');
    GL_APPLE_object_purgeable := Int_CheckExtension(Buffer, 'GL_APPLE_object_purgeable');
    GL_APPLE_row_bytes := Int_CheckExtension(Buffer, 'GL_APPLE_row_bytes');
    GL_APPLE_rgb_422 := Int_CheckExtension(Buffer, 'GL_APPLE_rgb_422');

  // ARB
    GL_ARB_depth_texture := Int_CheckExtension(Buffer, 'GL_ARB_depth_texture');
    GL_ARB_fragment_program := Int_CheckExtension(Buffer, 'GL_ARB_fragment_program');
    GL_ARB_imaging := Int_CheckExtension(Buffer, 'GL_ARB_imaging');
    GL_ARB_matrix_palette := Int_CheckExtension(Buffer, 'GL_ARB_matrix_palette');
    GL_ARB_multisample := Int_CheckExtension(Buffer, 'GL_ARB_multisample');
    GL_ARB_multitexture := Int_CheckExtension(Buffer, 'GL_ARB_multitexture');
    GL_ARB_point_parameters := Int_CheckExtension(Buffer, 'GL_ARB_point_parameters');
    GL_ARB_shadow := Int_CheckExtension(Buffer, 'GL_ARB_shadow');
    GL_ARB_shadow_ambient := Int_CheckExtension(Buffer, 'GL_ARB_shadow_ambient');
    GL_ARB_sparse_texture := Int_CheckExtension(Buffer, 'GL_ARB_sparse_texture');
    GL_ARB_sparse_texture2 := Int_CheckExtension(Buffer, 'GL_ARB_sparse_texture2');
    GL_ARB_sparse_texture_clamp := Int_CheckExtension(Buffer, 'GL_ARB_sparse_texture_clamp');
    GL_ARB_texture_border_clamp := Int_CheckExtension(Buffer, 'GL_ARB_texture_border_clamp');
    GL_ARB_texture_compression := Int_CheckExtension(Buffer, 'GL_ARB_texture_compression');
    GL_ARB_texture_cube_map := Int_CheckExtension(Buffer, 'GL_ARB_texture_cube_map');
    GL_ARB_texture_env_add := Int_CheckExtension(Buffer, 'GL_ARB_texture_env_add');
    GL_ARB_texture_env_combine := Int_CheckExtension(Buffer, 'GL_ARB_texture_env_combine');
    GL_ARB_texture_env_crossbar := Int_CheckExtension(Buffer, 'GL_ARB_texture_env_crossbar');
    GL_ARB_texture_env_dot3 := Int_CheckExtension(Buffer, 'GL_ARB_texture_env_dot3');
    GL_ARB_texture_filter_minmax := Int_CheckExtension(Buffer, 'GL_ARB_texture_filter_minmax');
    GL_ARB_texture_mirrored_repeat := Int_CheckExtension(Buffer, 'GL_ARB_texture_mirrored_repeat');
    GL_ARB_transpose_matrix := Int_CheckExtension(Buffer, 'GL_ARB_transpose_matrix');
    GL_ARB_vertex_blend := Int_CheckExtension(Buffer, 'GL_ARB_vertex_blend');
    GL_ARB_vertex_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_vertex_buffer_object');
    GL_ARB_vertex_program := Int_CheckExtension(Buffer, 'GL_ARB_vertex_program');
    GL_ARB_window_pos := Int_CheckExtension(Buffer, 'GL_ARB_window_pos');
    GL_ARB_shader_objects := Int_CheckExtension(Buffer, 'GL_ARB_shader_objects');
    GL_ARB_vertex_shader := Int_CheckExtension(Buffer, 'GL_ARB_vertex_shader');
    GL_ARB_fragment_shader := Int_CheckExtension(Buffer, 'GL_ARB_fragment_shader');
    GL_ARB_fragment_shader_interlock := Int_CheckExtension(Buffer, 'GL_ARB_fragment_shader_interlock');
    GL_ARB_occlusion_query := Int_CheckExtension(Buffer, 'GL_ARB_occlusion_query');
    GL_ARB_shading_language_100 := Int_CheckExtension(Buffer, 'GL_ARB_shading_language_100');
    GL_ARB_point_sprite := Int_CheckExtension(Buffer, 'GL_ARB_point_sprite');
    GL_ARB_texture_non_power_of_two := Int_CheckExtension(Buffer, 'GL_ARB_texture_non_power_of_two');
    GL_ARB_fragment_program_shadow := Int_CheckExtension(Buffer, 'GL_ARB_fragment_program_shadow');
    GL_ARB_draw_buffers := Int_CheckExtension(Buffer, 'GL_ARB_draw_buffers');
    GL_ARB_texture_rectangle := Int_CheckExtension(Buffer, 'GL_ARB_texture_rectangle');
    GL_ARB_color_buffer_float := Int_CheckExtension(Buffer, 'GL_ARB_color_buffer_float');
    GL_ARB_half_float_pixel := Int_CheckExtension(Buffer, 'GL_ARB_half_float_pixel');
    GL_ARB_texture_float := Int_CheckExtension(Buffer, 'GL_ARB_texture_float');
    GL_ARB_pixel_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_pixel_buffer_object');
    GL_ARB_depth_buffer_float := Int_CheckExtension(Buffer, 'GL_ARB_depth_buffer_float');
    GL_ARB_draw_instanced := Int_CheckExtension(Buffer, 'GL_ARB_draw_instanced');
    GL_ARB_framebuffer_object := Int_CheckExtension(Buffer, 'GL_ARB_framebuffer_object');
    GL_ARB_framebuffer_sRGB := Int_CheckExtension(Buffer, 'GL_ARB_framebuffer_sRGB');
    GL_ARB_geometry_shader4 := Int_CheckExtension(Buffer, 'GL_ARB_geometry_shader4');
    GL_ARB_half_float_vertex := Int_CheckExtension(Buffer, 'GL_ARB_half_float_vertex');
    GL_ARB_instanced_arrays := Int_CheckExtension(Buffer, 'GL_ARB_instanced_arrays');
    GL_ARB_map_buffer_range := Int_CheckExtension(Buffer, 'GL_ARB_map_buffer_range');
    GL_ARB_texture_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_texture_buffer_object');
    GL_ARB_texture_compression_rgtc := Int_CheckExtension(Buffer, 'GL_ARB_texture_compression_rgtc');
    GL_ARB_texture_rg := Int_CheckExtension(Buffer, 'GL_ARB_texture_rg');
    GL_ARB_vertex_array_object := Int_CheckExtension(Buffer, 'GL_ARB_vertex_array_object');
    GL_ARB_uniform_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_uniform_buffer_object');
    GL_ARB_compatibility := Int_CheckExtension(Buffer, 'GL_ARB_compatibility');
    GL_ARB_copy_buffer := Int_CheckExtension(Buffer, 'GL_ARB_copy_buffer');
    GL_ARB_shader_texture_lod := Int_CheckExtension(Buffer, 'GL_ARB_shader_texture_lod');
    GL_ARB_shader_viewport_layer_array := Int_CheckExtension(Buffer, 'GL_ARB_shader_viewport_layer_array');
    GL_ARB_depth_clamp := Int_CheckExtension(Buffer, 'GL_ARB_depth_clamp');
    GL_ARB_draw_elements_base_vertex := Int_CheckExtension(Buffer, 'GL_ARB_draw_elements_base_vertex');
    GL_ARB_fragment_coord_conventions := Int_CheckExtension(Buffer, 'GL_ARB_fragment_coord_conventions');
    GL_ARB_provoking_vertex := Int_CheckExtension(Buffer, 'GL_ARB_provoking_vertex');
    GL_ARB_seamless_cube_map := Int_CheckExtension(Buffer, 'GL_ARB_seamless_cube_map');
    GL_ARB_sync := Int_CheckExtension(Buffer, 'GL_ARB_sync');
    GL_ARB_texture_multisample := Int_CheckExtension(Buffer, 'GL_ARB_texture_multisample');
    GL_ARB_vertex_array_bgra := Int_CheckExtension(Buffer, 'GL_ARB_vertex_array_bgra');
    GL_ARB_draw_buffers_blend := Int_CheckExtension(Buffer, 'GL_ARB_draw_buffers_blend');
    GL_ARB_sample_shading := Int_CheckExtension(Buffer, 'GL_ARB_sample_shading');
    GL_ARB_texture_cube_map_array := Int_CheckExtension(Buffer, 'GL_ARB_texture_cube_map_array');
    GL_ARB_texture_gather := Int_CheckExtension(Buffer, 'GL_ARB_texture_gather');
    GL_ARB_texture_query_lod := Int_CheckExtension(Buffer, 'GL_ARB_texture_query_lod');
    GL_ARB_shading_language_include := Int_CheckExtension(Buffer, 'GL_ARB_shading_language_include');
    GL_ARB_texture_compression_bptc := Int_CheckExtension(Buffer, 'GL_ARB_texture_compression_bptc');
    GL_ARB_blend_func_extended := Int_CheckExtension(Buffer, 'GL_ARB_blend_func_extended');
    GL_ARB_explicit_attrib_location := Int_CheckExtension(Buffer, 'GL_ARB_explicit_attrib_location');
    GL_ARB_occlusion_query2 := Int_CheckExtension(Buffer, 'GL_ARB_occlusion_query2');
    GL_ARB_parallel_shader_compile := Int_CheckExtension(Buffer, 'GL_ARB_parallel_shader_compile');
    GL_ARB_post_depth_coverage := Int_CheckExtension(Buffer, 'GL_ARB_post_depth_coverage');
    GL_ARB_sampler_objects := Int_CheckExtension(Buffer, 'GL_ARB_sampler_objects');
    GL_ARB_shader_bit_encoding := Int_CheckExtension(Buffer, 'GL_ARB_shader_bit_encoding');
    GL_ARB_shader_clock := Int_CheckExtension(Buffer, 'GL_ARB_shader_clock');
    GL_ARB_texture_rgb10_a2ui := Int_CheckExtension(Buffer, 'GL_ARB_texture_rgb10_a2ui');
    GL_ARB_texture_swizzle := Int_CheckExtension(Buffer, 'GL_ARB_texture_swizzle');
    GL_ARB_timer_query := Int_CheckExtension(Buffer, 'GL_ARB_timer_query');
    GL_ARB_vertex_type_2_10_10_10_rev := Int_CheckExtension(Buffer, 'GL_ARB_vertex_type_2_10_10_10_rev');
    GL_ARB_draw_indirect := Int_CheckExtension(Buffer, 'GL_ARB_draw_indirect');
    GL_ARB_gpu_shader5 := Int_CheckExtension(Buffer, 'GL_ARB_gpu_shader5');
    GL_ARB_gpu_shader_fp64 := Int_CheckExtension(Buffer, 'GL_ARB_gpu_shader_fp64');
    GL_ARB_gpu_shader_int64 := Int_CheckExtension(Buffer, 'GL_ARB_gpu_shader_int64');
    GL_ARB_shader_subroutine := Int_CheckExtension(Buffer, 'GL_ARB_shader_subroutine');
    GL_ARB_tessellation_shader := Int_CheckExtension(Buffer, 'GL_ARB_tessellation_shader');
    GL_ARB_texture_buffer_object_rgb32 := Int_CheckExtension(Buffer, 'GL_ARB_texture_buffer_object_rgb32');
    GL_ARB_transform_feedback2 := Int_CheckExtension(Buffer, 'GL_ARB_transform_feedback2');
    GL_ARB_transform_feedback3 := Int_CheckExtension(Buffer, 'GL_ARB_transform_feedback3');
    GL_ARB_ES2_compatibility := Int_CheckExtension(Buffer, 'GL_ARB_ES2_compatibility');
    GL_ARB_ES3_2_compatibility := Int_CheckExtension(Buffer, 'GL_ARB_ES3_2_compatibility');
    GL_ARB_get_program_binary := Int_CheckExtension(Buffer, 'GL_ARB_get_program_binary');
    GL_ARB_separate_shader_objects := Int_CheckExtension(Buffer, 'GL_ARB_separate_shader_objects');
    GL_ARB_shader_atomic_counter_ops := Int_CheckExtension(Buffer, 'GL_ARB_shader_atomic_counter_ops');
    GL_ARB_shader_ballot := Int_CheckExtension(Buffer, 'GL_ARB_shader_ballot');
    GL_ARB_shader_precision := Int_CheckExtension(Buffer, 'GL_ARB_shader_precision');
    GL_ARB_vertex_attrib_64bit := Int_CheckExtension(Buffer, 'GL_ARB_vertex_attrib_64bit');
    GL_ARB_viewport_array := Int_CheckExtension(Buffer, 'GL_ARB_viewport_array');
    GL_ARB_compute_variable_group_size := Int_CheckExtension(Buffer, 'GL_ARB_compute_variable_group_size');

  // GL 4.2
    GL_ARB_base_instance := Int_CheckExtension(Buffer, 'GL_ARB_base_instance');
    GL_ARB_shading_language_420pack := Int_CheckExtension(Buffer, 'GL_ARB_shading_language_420pack');
    GL_ARB_transform_feedback_instanced := Int_CheckExtension(Buffer, 'GL_ARB_transform_feedback_instanced');
    GL_ARB_compressed_texture_pixel_storage := Int_CheckExtension(Buffer, 'GL_ARB_compressed_texture_pixel_storage');
    GL_ARB_conservative_depth := Int_CheckExtension(Buffer, 'GL_ARB_conservative_depth');
    GL_ARB_internalformat_query := Int_CheckExtension(Buffer, 'GL_ARB_internalformat_query');
    GL_ARB_map_buffer_alignment := Int_CheckExtension(Buffer, 'GL_ARB_map_buffer_alignment');
    GL_ARB_shader_atomic_counters := Int_CheckExtension(Buffer, 'GL_ARB_shader_atomic_counters');
    GL_ARB_shader_image_load_store := Int_CheckExtension(Buffer, 'GL_ARB_shader_image_load_store');
    GL_ARB_shading_language_packing := Int_CheckExtension(Buffer, 'GL_ARB_shading_language_packing');
    GL_ARB_texture_storage := Int_CheckExtension(Buffer, 'GL_ARB_texture_storage');

  // GL 4.3
    GL_ARB_arrays_of_arrays := Int_CheckExtension(Buffer, 'GL_ARB_arrays_of_arrays');
    GL_ARB_fragment_layer_viewport := Int_CheckExtension(Buffer, 'GL_ARB_fragment_layer_viewport');
    GL_ARB_shader_image_size := Int_CheckExtension(Buffer, 'GL_ARB_shader_image_size');
    GL_ARB_ES3_compatibility := Int_CheckExtension(Buffer, 'GL_ARB_ES3_compatibility');
    GL_ARB_clear_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_clear_buffer_object');
    GL_ARB_compute_shader := Int_CheckExtension(Buffer, 'GL_ARB_compute_shader');
    GL_ARB_copy_image := Int_CheckExtension(Buffer, 'GL_ARB_copy_image');
    GL_KHR_debug := Int_CheckExtension(Buffer, 'GL_KHR_debug');
    GL_ARB_explicit_uniform_location := Int_CheckExtension(Buffer, 'GL_ARB_explicit_uniform_location');
    GL_ARB_framebuffer_no_attachments := Int_CheckExtension(Buffer, 'GL_ARB_framebuffer_no_attachments');
    GL_ARB_internalformat_query2 := Int_CheckExtension(Buffer, 'GL_ARB_internalformat_query2');
    GL_ARB_invalidate_subdata := Int_CheckExtension(Buffer, 'GL_ARB_invalidate_subdata');
    GL_ARB_multi_draw_indirect := Int_CheckExtension(Buffer, 'GL_ARB_multi_draw_indirect');
    GL_ARB_program_interface_query := Int_CheckExtension(Buffer, 'GL_ARB_program_interface_query');
    GL_ARB_robust_buffer_access_behavior := Int_CheckExtension(Buffer, 'GL_ARB_robust_buffer_access_behavior');
    GL_ARB_shader_storage_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_shader_storage_buffer_object');
    GL_ARB_stencil_texturing := Int_CheckExtension(Buffer, 'GL_ARB_stencil_texturing');
    GL_ARB_texture_buffer_range := Int_CheckExtension(Buffer, 'GL_ARB_texture_buffer_range');
    GL_ARB_texture_query_levels := Int_CheckExtension(Buffer, 'GL_ARB_texture_query_levels');
    GL_ARB_texture_storage_multisample := Int_CheckExtension(Buffer, 'GL_ARB_texture_storage_multisample');
    GL_ARB_texture_view := Int_CheckExtension(Buffer, 'GL_ARB_texture_view');
    GL_ARB_vertex_attrib_binding := Int_CheckExtension(Buffer, 'GL_ARB_vertex_attrib_binding');
    GL_ARB_cl_event := Int_CheckExtension(Buffer, 'GL_ARB_cl_event');
    GL_ARB_debug_output := Int_CheckExtension(Buffer, 'GL_ARB_debug_output');
    GL_ARB_robustness := Int_CheckExtension(Buffer, 'GL_ARB_robustness');
    GL_ARB_shader_stencil_export := Int_CheckExtension(Buffer, 'GL_ARB_shader_stencil_export');

  // GL 4.4
    GL_ARB_buffer_storage := Int_CheckExtension(Buffer, 'GL_ARB_buffer_storage');
    GL_ARB_clear_texture := Int_CheckExtension(Buffer, 'GL_ARB_clear_texture');
    GL_ARB_enhanced_layouts := Int_CheckExtension(Buffer, 'GL_ARB_enhanced_layouts');
    GL_ARB_multi_bind := Int_CheckExtension(Buffer, 'GL_ARB_multi_bind');
    GL_ARB_query_buffer_object := Int_CheckExtension(Buffer, 'GL_ARB_query_buffer_object');
    GL_ARB_texture_mirror_clamp_to_edge:= Int_CheckExtension(Buffer, 'GL_ARB_texture_mirror_clamp_to_edge');
    GL_ARB_texture_stencil8 := Int_CheckExtension(Buffer, 'GL_ARB_texture_stencil8');
    GL_ARB_vertex_type_10f_11f_11f_rev := Int_CheckExtension(Buffer, 'GL_ARB_vertex_type_10f_11f_11f_rev');
    GL_ARB_bindless_texture := Int_CheckExtension(Buffer, 'GL_ARB_bindless_texture');
    GL_ARB_sparse_texture	:= Int_CheckExtension(Buffer, 'GL_ARB_sparse_texture');

  // GL 4.5
    GL_ARB_clip_control := Int_CheckExtension(Buffer, 'GL_ARB_clip_control');
    GL_ARB_cull_distance := Int_CheckExtension(Buffer, 'GL_ARB_cull_distance');
    GL_ARB_ES3_1_compatibility := Int_CheckExtension(Buffer, 'GL_ARB_ES3_1_compatibility');
    GL_ARB_conditional_render_inverted := Int_CheckExtension(Buffer, 'GL_ARB_conditional_render_inverted');
    GL_KHR_context_flush_control := Int_CheckExtension(Buffer, 'GL_KHR_context_flush_control');
    GL_ARB_derivative_control := Int_CheckExtension(Buffer, 'GL_ARB_derivative_control');
    GL_ARB_direct_state_access := Int_CheckExtension(Buffer, 'GL_ARB_direct_state_access');
    GL_ARB_get_texture_sub_image := Int_CheckExtension(Buffer, 'GL_ARB_get_texture_sub_image');
    GL_KHR_robustness := Int_CheckExtension(Buffer, 'GL_KHR_robustness');
    GL_ARB_shader_texture_image_samples := Int_CheckExtension(Buffer, 'GL_ARB_shader_texture_image_samples');
    GL_ARB_texture_barrier := Int_CheckExtension(Buffer, 'GL_ARB_texture_barrier');

  // ATI/AMD
    GL_ATI_draw_buffers := Int_CheckExtension(Buffer, 'GL_ATI_draw_buffers');
    GL_ATI_element_array := Int_CheckExtension(Buffer, 'GL_ATI_element_array');
    GL_ATI_envmap_bumpmap := Int_CheckExtension(Buffer, 'GL_ATI_envmap_bumpmap');
    GL_ATI_fragment_shader := Int_CheckExtension(Buffer, 'GL_ATI_fragment_shader');
    GL_ATI_map_object_buffer := Int_CheckExtension(Buffer, 'GL_ATI_map_object_buffer');
    GL_ATI_pn_triangles := Int_CheckExtension(Buffer, 'GL_ATI_pn_triangles');
    GL_ATI_separate_stencil := Int_CheckExtension(Buffer, 'GL_ATI_separate_stencil');
    GL_ATI_text_fragment_shader := Int_CheckExtension(Buffer, 'GL_ATI_text_fragment_shader');
    GL_ATI_texture_env_combine3 := Int_CheckExtension(Buffer, 'GL_ATI_texture_env_combine3');
    GL_ATI_texture_float := Int_CheckExtension(Buffer, 'GL_ATI_texture_float');
    GL_ATI_texture_mirror_once := Int_CheckExtension(Buffer, 'GL_ATI_texture_mirror_once');
    GL_ATI_vertex_array_object := Int_CheckExtension(Buffer, 'GL_ATI_vertex_array_object');
    GL_ATI_vertex_attrib_array_object := Int_CheckExtension(Buffer, 'GL_ATI_vertex_attrib_array_object');
    GL_ATI_vertex_streams := Int_CheckExtension(Buffer, 'GL_ATI_vertex_streams');
    GL_ATI_meminfo := Int_CheckExtension(Buffer, 'GL_ATI_meminfo');
    GL_AMD_performance_monitor := Int_CheckExtension(Buffer, 'GL_AMD_performance_monitor');
    GL_AMD_texture_texture4 := Int_CheckExtension(Buffer, 'GL_AMD_texture_texture4');
    GL_AMD_vertex_shader_tesselator := Int_CheckExtension(Buffer, 'GL_AMD_vertex_shader_tesselator');
    GL_AMD_draw_buffers_blend := Int_CheckExtension(Buffer, 'GL_AMD_draw_buffers_blend');
    GL_AMD_shader_stencil_export := Int_CheckExtension(Buffer, 'GL_AMD_shader_stencil_export');
    GL_AMD_seamless_cubemap_per_texture := Int_CheckExtension(Buffer, 'GL_AMD_seamless_cubemap_per_texture');
    GL_AMD_conservative_depth := Int_CheckExtension(Buffer, 'GL_AMD_conservative_depth');
    GL_AMD_name_gen_delete := Int_CheckExtension(Buffer, 'GL_AMD_name_gen_delete');
    GL_AMD_debug_output := Int_CheckExtension(Buffer, 'GL_AMD_debug_output');
    GL_AMD_transform_feedback3_lines_triangles := Int_CheckExtension(Buffer, 'GL_AMD_transform_feedback3_lines_triangles');
    GL_AMD_depth_clamp_separate := Int_CheckExtension(Buffer, 'GL_AMD_depth_clamp_separate');
  // 4.3
    GL_AMD_pinned_memory := Int_CheckExtension(Buffer, 'GL_AMD_pinned_memory');
    GL_AMD_stencil_operation_extended := Int_CheckExtension(Buffer, 'GL_AMD_stencil_operation_extended');
    GL_AMD_vertex_shader_viewport_index := Int_CheckExtension(Buffer, 'GL_AMD_vertex_shader_viewport_index');
    GL_AMD_vertex_shader_layer := Int_CheckExtension(Buffer, 'GL_AMD_vertex_shader_layer');
    GL_AMD_query_buffer_object := Int_CheckExtension(Buffer, 'GL_AMD_query_buffer_object');

  // EXT
    GL_EXT_422_pixels := Int_CheckExtension(Buffer, 'GL_EXT_422_pixels');
    GL_EXT_abgr := Int_CheckExtension(Buffer, 'GL_EXT_abgr');
    GL_EXT_bgra := Int_CheckExtension(Buffer, 'GL_EXT_bgra');
    GL_EXT_blend_color := Int_CheckExtension(Buffer, 'GL_EXT_blend_color');
    GL_EXT_blend_func_separate := Int_CheckExtension(Buffer, 'GL_EXT_blend_func_separate');
    GL_EXT_blend_logic_op := Int_CheckExtension(Buffer, 'GL_EXT_blend_logic_op');
    GL_EXT_blend_minmax := Int_CheckExtension(Buffer, 'GL_EXT_blend_minmax');
    GL_EXT_blend_subtract := Int_CheckExtension(Buffer, 'GL_EXT_blend_subtract');
    GL_EXT_clip_volume_hint := Int_CheckExtension(Buffer, 'GL_EXT_clip_volume_hint');
    GL_EXT_cmyka := Int_CheckExtension(Buffer, 'GL_EXT_cmyka');
    GL_EXT_color_matrix := Int_CheckExtension(Buffer, 'GL_EXT_color_matrix');
    GL_EXT_color_subtable := Int_CheckExtension(Buffer, 'GL_EXT_color_subtable');
    GL_EXT_compiled_vertex_array := Int_CheckExtension(Buffer, 'GL_EXT_compiled_vertex_array');
    GL_EXT_convolution := Int_CheckExtension(Buffer, 'GL_EXT_convolution');
    GL_EXT_coordinate_frame := Int_CheckExtension(Buffer, 'GL_EXT_coordinate_frame');
    GL_EXT_copy_texture := Int_CheckExtension(Buffer, 'GL_EXT_copy_texture');
    GL_EXT_cull_vertex := Int_CheckExtension(Buffer, 'GL_EXT_cull_vertex');
    GL_EXT_draw_range_elements := Int_CheckExtension(Buffer, 'GL_EXT_draw_range_elements');
    GL_EXT_fog_coord := Int_CheckExtension(Buffer, 'GL_EXT_fog_coord');
    GL_EXT_framebuffer_object := Int_CheckExtension(Buffer, 'GL_EXT_framebuffer_object');
    GL_EXT_histogram := Int_CheckExtension(Buffer, 'GL_EXT_histogram');
    GL_EXT_index_array_formats := Int_CheckExtension(Buffer, 'GL_EXT_index_array_formats');
    GL_EXT_index_func := Int_CheckExtension(Buffer, 'GL_EXT_index_func');
    GL_EXT_index_material := Int_CheckExtension(Buffer, 'GL_EXT_index_material');
    GL_EXT_index_texture := Int_CheckExtension(Buffer, 'GL_EXT_index_texture');
    GL_EXT_light_texture := Int_CheckExtension(Buffer, 'GL_EXT_light_texture');
    GL_EXT_misc_attribute := Int_CheckExtension(Buffer, 'GL_EXT_misc_attribute');
    GL_EXT_multi_draw_arrays := Int_CheckExtension(Buffer, 'GL_EXT_multi_draw_arrays');
    GL_EXT_multisample := Int_CheckExtension(Buffer, 'GL_EXT_multisample');
    GL_EXT_packed_pixels := Int_CheckExtension(Buffer, 'GL_EXT_packed_pixels');
    GL_EXT_paletted_texture := Int_CheckExtension(Buffer, 'GL_EXT_paletted_texture');
    GL_EXT_pixel_transform := Int_CheckExtension(Buffer, 'GL_EXT_pixel_transform');
    GL_EXT_pixel_transform_color_table := Int_CheckExtension(Buffer, 'GL_EXT_pixel_transform_color_table');
    GL_EXT_point_parameters := Int_CheckExtension(Buffer, 'GL_EXT_point_parameters');
    GL_EXT_polygon_offset := Int_CheckExtension(Buffer, 'GL_EXT_polygon_offset');
    GL_EXT_rescale_normal := Int_CheckExtension(Buffer, 'GL_EXT_rescale_normal');
    GL_EXT_secondary_color := Int_CheckExtension(Buffer, 'GL_EXT_secondary_color');
    GL_EXT_separate_specular_color := Int_CheckExtension(Buffer, 'GL_EXT_separate_specular_color');
    GL_EXT_shadow_funcs := Int_CheckExtension(Buffer, 'GL_EXT_shadow_funcs');
    GL_EXT_shared_texture_palette := Int_CheckExtension(Buffer, 'GL_EXT_shared_texture_palette');
    GL_EXT_stencil_two_side := Int_CheckExtension(Buffer, 'GL_EXT_stencil_two_side');
    GL_EXT_stencil_wrap := Int_CheckExtension(Buffer, 'GL_EXT_stencil_wrap');
    GL_EXT_subtexture := Int_CheckExtension(Buffer, 'GL_EXT_subtexture');
    GL_EXT_texture := Int_CheckExtension(Buffer, 'GL_EXT_texture');
    GL_EXT_texture3D := Int_CheckExtension(Buffer, 'GL_EXT_texture3D');
    GL_EXT_texture_compression_s3tc := Int_CheckExtension(Buffer, 'GL_EXT_texture_compression_s3tc');
    GL_EXT_texture_cube_map := Int_CheckExtension(Buffer, 'GL_EXT_texture_cube_map');
    GL_EXT_texture_edge_clamp := Int_CheckExtension(Buffer, 'GL_EXT_texture_edge_clamp');
    GL_EXT_texture_env_add := Int_CheckExtension(Buffer, 'GL_EXT_texture_env_add');
    GL_EXT_texture_env_combine := Int_CheckExtension(Buffer, 'GL_EXT_texture_env_combine');
    GL_EXT_texture_env_dot3 := Int_CheckExtension(Buffer, 'GL_EXT_texture_env_dot3');
    GL_EXT_texture_filter_anisotropic := Int_CheckExtension(Buffer, 'GL_EXT_texture_filter_anisotropic');
    GL_EXT_texture_lod_bias := Int_CheckExtension(Buffer, 'GL_EXT_texture_lod_bias');
    GL_EXT_texture_object := Int_CheckExtension(Buffer, 'GL_EXT_texture_object');
    GL_EXT_texture_perturb_normal := Int_CheckExtension(Buffer, 'GL_EXT_texture_perturb_normal');
    GL_EXT_texture_rectangle := Int_CheckExtension(Buffer, 'GL_EXT_texture_rectangle');
    GL_EXT_vertex_array := Int_CheckExtension(Buffer, 'GL_EXT_vertex_array');
    GL_EXT_vertex_shader := Int_CheckExtension(Buffer, 'GL_EXT_vertex_shader');
    GL_EXT_vertex_weighting := Int_CheckExtension(Buffer, 'GL_EXT_vertex_weighting');
    GL_EXT_depth_bounds_test := Int_CheckExtension(Buffer, 'GL_EXT_depth_bounds_test');
    GL_EXT_texture_mirror_clamp := Int_CheckExtension(Buffer, 'GL_EXT_texture_mirror_clamp');
    GL_EXT_blend_equation_separate := Int_CheckExtension(Buffer, 'GL_EXT_blend_equation_separate');
    GL_EXT_pixel_buffer_object := Int_CheckExtension(Buffer, 'GL_EXT_pixel_buffer_object');
    GL_EXT_texture_compression_dxt1 := Int_CheckExtension(Buffer, 'GL_EXT_texture_compression_dxt1');
    GL_EXT_stencil_clear_tag := Int_CheckExtension(Buffer, 'GL_EXT_stencil_clear_tag');
    GL_EXT_packed_depth_stencil := Int_CheckExtension(Buffer, 'GL_EXT_packed_depth_stencil');
    GL_EXT_texture_sRGB := Int_CheckExtension(Buffer, 'GL_EXT_texture_sRGB');
    GL_EXT_framebuffer_blit := Int_CheckExtension(Buffer, 'GL_EXT_framebuffer_blit');
    GL_EXT_framebuffer_multisample := Int_CheckExtension(Buffer, 'GL_EXT_framebuffer_multisample');
    GL_EXT_timer_query := Int_CheckExtension(Buffer, 'GL_EXT_timer_query');
    GL_EXT_gpu_program_parameters := Int_CheckExtension(Buffer, 'GL_EXT_gpu_program_parameters');
    GL_EXT_bindable_uniform := Int_CheckExtension(Buffer, 'GL_EXT_bindable_uniform');
    GL_EXT_draw_buffers2 := Int_CheckExtension(Buffer, 'GL_EXT_draw_buffers2');
    GL_EXT_draw_instanced := Int_CheckExtension(Buffer, 'GL_EXT_draw_instanced');
    GL_EXT_framebuffer_sRGB := Int_CheckExtension(Buffer, 'GL_EXT_framebuffer_sRGB');
    GL_EXT_geometry_shader4 := Int_CheckExtension(Buffer, 'GL_EXT_geometry_shader4');
    GL_EXT_gpu_shader4 := Int_CheckExtension(Buffer, 'GL_EXT_gpu_shader4');
    GL_EXT_packed_float := Int_CheckExtension(Buffer, 'GL_EXT_packed_float');
    GL_EXT_texture_array := Int_CheckExtension(Buffer, 'GL_EXT_texture_array');
    GL_EXT_texture_buffer_object := Int_CheckExtension(Buffer, 'GL_EXT_texture_buffer_object');
    GL_EXT_texture_compression_latc := Int_CheckExtension(Buffer, 'GL_EXT_texture_compression_latc');
    GL_EXT_texture_compression_rgtc := Int_CheckExtension(Buffer, 'GL_EXT_texture_compression_rgtc');
    GL_EXT_texture_integer := Int_CheckExtension(Buffer, 'GL_EXT_texture_integer');
    GL_EXT_texture_shared_exponent := Int_CheckExtension(Buffer, 'GL_EXT_texture_shared_exponent');
    GL_EXT_transform_feedback := Int_CheckExtension(Buffer, 'GL_EXT_transform_feedback');
    GL_EXT_direct_state_access := Int_CheckExtension(Buffer, 'GL_EXT_direct_state_access');
    GL_EXT_vertex_array_bgra := Int_CheckExtension(Buffer, 'GL_EXT_vertex_array_bgra');
    GL_EXT_texture_swizzle := Int_CheckExtension(Buffer, 'GL_EXT_texture_swizzle');
    GL_EXT_provoking_vertex := Int_CheckExtension(Buffer, 'GL_EXT_provoking_vertex');
    GL_EXT_texture_snorm := Int_CheckExtension(Buffer, 'GL_EXT_texture_snorm');
    GL_EXT_separate_shader_objects := Int_CheckExtension(Buffer, 'GL_EXT_separate_shader_objects');
    GL_EXT_shader_image_load_store := Int_CheckExtension(Buffer, 'GL_EXT_shader_image_load_store');
    GL_EXT_vertex_attrib_64bit := Int_CheckExtension(Buffer, 'GL_EXT_vertex_attrib_64bit');
    GL_EXT_texture_sRGB_decode := Int_CheckExtension(Buffer, 'GL_EXT_texture_sRGB_decode');

  // HP
    GL_HP_convolution_border_modes := Int_CheckExtension(Buffer, 'GL_HP_convolution_border_modes');
    GL_HP_image_transform := Int_CheckExtension(Buffer, 'GL_HP_image_transform');
    GL_HP_occlusion_test := Int_CheckExtension(Buffer, 'GL_HP_occlusion_test');
    GL_HP_texture_lighting := Int_CheckExtension(Buffer, 'GL_HP_texture_lighting');

  // IBM
    GL_IBM_cull_vertex := Int_CheckExtension(Buffer, 'GL_IBM_cull_vertex');
    GL_IBM_multimode_draw_arrays := Int_CheckExtension(Buffer, 'GL_IBM_multimode_draw_arrays');
    GL_IBM_rasterpos_clip := Int_CheckExtension(Buffer, 'GL_IBM_rasterpos_clip');
    GL_IBM_texture_mirrored_repeat := Int_CheckExtension(Buffer, 'GL_IBM_texture_mirrored_repeat');
    GL_IBM_vertex_array_lists := Int_CheckExtension(Buffer, 'GL_IBM_vertex_array_lists');

  // INGR
    GL_INGR_blend_func_separate := Int_CheckExtension(Buffer, 'GL_INGR_blend_func_separate');
    GL_INGR_color_clamp := Int_CheckExtension(Buffer, 'GL_INGR_color_clamp');
    GL_INGR_interlace_read := Int_CheckExtension(Buffer, 'GL_INGR_interlace_read');
    GL_INGR_palette_buffer := Int_CheckExtension(Buffer, 'GL_INGR_palette_buffer');

  // INTEL
    GL_INTEL_framebuffer_CMAA := Int_CheckExtension(Buffer, 'GL_INTEL_framebuffer_CMAA');
    GL_INTEL_parallel_arrays := Int_CheckExtension(Buffer, 'GL_INTEL_parallel_arrays');
    GL_INTEL_texture_scissor := Int_CheckExtension(Buffer, 'GL_INTEL_texture_scissor');

  // MESA
    GL_MESA_resize_buffers := Int_CheckExtension(Buffer, 'GL_MESA_resize_buffers');
    GL_MESA_window_pos := Int_CheckExtension(Buffer, 'GL_MESA_window_pos');

  // Khronos
  // 4.5
    GL_KHR_blend_equation_advanced := Int_CheckExtension(Buffer, 'GL_KHR_blend_equation_advanced');
    GL_KHR_blend_equation_advanced_coherent := Int_CheckExtension(Buffer, 'GL_KHR_blend_equation_advanced_coherent');
    GL_KHR_no_error := Int_CheckExtension(Buffer, 'GL_KHR_no_error');
    GL_KHR_robustness := Int_CheckExtension(Buffer, 'GL_KHR_robustness');
    GL_KHR_robust_buffer_access_behavior := Int_CheckExtension(Buffer, 'GL_KHR_robust_buffer_access_behavior');

  // NVIDIA
    GL_NV_blend_square := Int_CheckExtension(Buffer, 'GL_NV_blend_square');
    GL_NV_copy_depth_to_color := Int_CheckExtension(Buffer, 'GL_NV_copy_depth_to_color');
    GL_NV_depth_clamp := Int_CheckExtension(Buffer, 'GL_NV_depth_clamp');
    GL_NV_evaluators := Int_CheckExtension(Buffer, 'GL_NV_evaluators');
    GL_NV_fence := Int_CheckExtension(Buffer, 'GL_NV_fence');
    GL_NV_float_buffer := Int_CheckExtension(Buffer, 'GL_NV_float_buffer');
    GL_NV_fog_distance := Int_CheckExtension(Buffer, 'GL_NV_fog_distance');
    GL_NV_fragment_program := Int_CheckExtension(Buffer, 'GL_NV_fragment_program');
    GL_NV_half_float := Int_CheckExtension(Buffer, 'GL_NV_half_float');
    GL_NV_light_max_exponent := Int_CheckExtension(Buffer, 'GL_NV_light_max_exponent');
    GL_NV_multisample_filter_hint := Int_CheckExtension(Buffer, 'GL_NV_multisample_filter_hint');
    GL_NV_occlusion_query := Int_CheckExtension(Buffer, 'GL_NV_occlusion_query');
    GL_NV_packed_depth_stencil := Int_CheckExtension(Buffer, 'GL_NV_packed_depth_stencil');
    GL_NV_pixel_data_range := Int_CheckExtension(Buffer, 'GL_NV_pixel_data_range');
    GL_NV_point_sprite := Int_CheckExtension(Buffer, 'GL_NV_point_sprite');
    GL_NV_primitive_restart := Int_CheckExtension(Buffer, 'GL_NV_primitive_restart');
    GL_NV_register_combiners := Int_CheckExtension(Buffer, 'GL_NV_register_combiners');
    GL_NV_register_combiners2 := Int_CheckExtension(Buffer, 'GL_NV_register_combiners2');
    GL_NV_texgen_emboss := Int_CheckExtension(Buffer, 'GL_NV_texgen_emboss');
    GL_NV_texgen_reflection := Int_CheckExtension(Buffer, 'GL_NV_texgen_reflection');
    GL_NV_texture_compression_vtc := Int_CheckExtension(Buffer, 'GL_NV_texture_compression_vtc');
    GL_NV_texture_env_combine4 := Int_CheckExtension(Buffer, 'GL_NV_texture_env_combine4');
    GL_NV_texture_expand_normal := Int_CheckExtension(Buffer, 'GL_NV_texture_expand_normal');
    GL_NV_texture_rectangle := Int_CheckExtension(Buffer, 'GL_NV_texture_rectangle');
    GL_NV_texture_shader := Int_CheckExtension(Buffer, 'GL_NV_texture_shader');
    GL_NV_texture_shader2 := Int_CheckExtension(Buffer, 'GL_NV_texture_shader2');
    GL_NV_texture_shader3 := Int_CheckExtension(Buffer, 'GL_NV_texture_shader3');
    GL_NV_vertex_array_range := Int_CheckExtension(Buffer, 'GL_NV_vertex_array_range');
    GL_NV_vertex_array_range2 := Int_CheckExtension(Buffer, 'GL_NV_vertex_array_range2');
    GL_NV_vertex_program := Int_CheckExtension(Buffer, 'GL_NV_vertex_program');
    GL_NV_vertex_program1_1 := Int_CheckExtension(Buffer, 'GL_NV_vertex_program1_1');
    GL_NV_vertex_program2 := Int_CheckExtension(Buffer, 'GL_NV_vertex_program2');
    GL_NV_fragment_program_option := Int_CheckExtension(Buffer, 'GL_NV_fragment_program_option');
    GL_NV_fragment_program2 := Int_CheckExtension(Buffer, 'GL_NV_fragment_program2');
    GL_NV_vertex_program2_option := Int_CheckExtension(Buffer, 'GL_NV_vertex_program2_option');
    GL_NV_vertex_program3 := Int_CheckExtension(Buffer, 'GL_NV_vertex_program3');
    GL_NV_depth_buffer_float := Int_CheckExtension(Buffer, 'GL_NV_depth_buffer_float');
    GL_NV_fragment_program4 := Int_CheckExtension(Buffer, 'GL_NV_fragment_program4');
    GL_NV_framebuffer_multisample_coverage := Int_CheckExtension(Buffer, 'GL_NV_framebuffer_multisample_coverage');
    GL_NV_geometry_program4 := Int_CheckExtension(Buffer, 'GL_NV_geometry_program4');
    GL_NV_gpu_program4 := Int_CheckExtension(Buffer, 'GL_NV_gpu_program4');
    GL_NV_parameter_buffer_object := Int_CheckExtension(Buffer, 'GL_NV_parameter_buffer_object');
    GL_NV_transform_feedback := Int_CheckExtension(Buffer, 'GL_NV_transform_feedback');
    GL_NV_vertex_program4 := Int_CheckExtension(Buffer, 'GL_NV_vertex_program4');
    GL_NV_conditional_render := Int_CheckExtension(Buffer, 'GL_NV_conditional_render');
    GL_NV_conservative_raster := Int_CheckExtension(Buffer, 'GL_NV_conservative_raster');
    GL_NV_conservative_raster_dilate := Int_CheckExtension(Buffer, 'GL_NV_conservative_raster_dilate');
    GL_NV_present_video := Int_CheckExtension(Buffer, 'GL_NV_present_video');
    GL_NV_explicit_multisample := Int_CheckExtension(Buffer, 'GL_NV_explicit_multisample');
    GL_NV_transform_feedback2 := Int_CheckExtension(Buffer, 'GL_NV_transform_feedback2');
    GL_NV_video_capture := Int_CheckExtension(Buffer, 'GL_NV_video_capture');
    GL_NV_copy_image := Int_CheckExtension(Buffer, 'GL_NV_copy_image');
    GL_NV_parameter_buffer_object2 := Int_CheckExtension(Buffer, 'GL_NV_parameter_buffer_object2');
    GL_NV_shader_buffer_load := Int_CheckExtension(Buffer, 'GL_NV_shader_buffer_load');
    GL_NV_vertex_buffer_unified_memory := Int_CheckExtension(Buffer, 'GL_NV_vertex_buffer_unified_memory');
    GL_NV_gpu_program5 := Int_CheckExtension(Buffer, 'GL_NV_gpu_program5');
    GL_NV_gpu_shader5 := Int_CheckExtension(Buffer, 'GL_NV_gpu_shader5');
    GL_NV_shader_buffer_store := Int_CheckExtension(Buffer, 'GL_NV_shader_buffer_store');
    GL_NV_tessellation_program5 := Int_CheckExtension(Buffer, 'GL_NV_tessellation_program5');
    GL_NV_vertex_attrib_integer_64bit := Int_CheckExtension(Buffer, 'GL_NV_vertex_attrib_integer_64bit');
    GL_NV_multisample_coverage := Int_CheckExtension(Buffer, 'GL_NV_multisample_coverage');
    GL_NV_vdpau_interop := Int_CheckExtension(Buffer, 'GL_NV_vdpau_interop');
    GL_NV_texture_barrier := Int_CheckExtension(Buffer, 'GL_NV_texture_barrier');
  // 4.3
    GL_NV_path_rendering := Int_CheckExtension(Buffer, 'GL_NV_path_rendering');
    GL_NV_bindless_texture := Int_CheckExtension(Buffer, 'GL_NV_bindless_texture');
    GL_NV_shader_atomic_float := Int_CheckExtension(Buffer, 'GL_NV_shader_atomic_float');

  // OML
    GL_OML_interlace := Int_CheckExtension(Buffer, 'GL_OML_interlace');
    GL_OML_resample := Int_CheckExtension(Buffer, 'GL_OML_resample');
    GL_OML_subsample := Int_CheckExtension(Buffer, 'GL_OML_subsample');

  // OVR
    GL_OVR_multiview := Int_CheckExtension(Buffer, 'GL_OVR_multiview');
    GL_OVR_multiview2 := Int_CheckExtension(Buffer, 'GL_OVR_multiview2');

  // PGI
    GL_PGI_misc_hints := Int_CheckExtension(Buffer, 'GL_PGI_misc_hints');
    GL_PGI_vertex_hints := Int_CheckExtension(Buffer, 'GL_PGI_vertex_hints');

  // REND
    GL_REND_screen_coordinates := Int_CheckExtension(Buffer, 'GL_REND_screen_coordinates');

  // S3
    GL_S3_s3tc := Int_CheckExtension(Buffer, 'GL_S3_s3tc');

  // SGIS
    GL_SGIS_detail_texture := Int_CheckExtension(Buffer, 'GL_SGIS_detail_texture');
    GL_SGIS_fog_function := Int_CheckExtension(Buffer, 'GL_SGIS_fog_function');
    GL_SGIS_generate_mipmap := Int_CheckExtension(Buffer, 'GL_SGIS_generate_mipmap');
    GL_SGIS_multisample := Int_CheckExtension(Buffer, 'GL_SGIS_multisample');
    GL_SGIS_pixel_texture := Int_CheckExtension(Buffer, 'GL_SGIS_pixel_texture');
    GL_SGIS_point_line_texgen := Int_CheckExtension(Buffer, 'GL_SGIS_point_line_texgen');
    GL_SGIS_point_parameters := Int_CheckExtension(Buffer, 'GL_SGIS_point_parameters');
    GL_SGIS_sharpen_texture := Int_CheckExtension(Buffer, 'GL_SGIS_sharpen_texture');
    GL_SGIS_texture4D := Int_CheckExtension(Buffer, 'GL_SGIS_texture4D');
    GL_SGIS_texture_border_clamp := Int_CheckExtension(Buffer, 'GL_SGIS_texture_border_clamp');
    GL_SGIS_texture_color_mask := Int_CheckExtension(Buffer, 'GL_SGIS_texture_color_mask');
    GL_SGIS_texture_edge_clamp := Int_CheckExtension(Buffer, 'GL_SGIS_texture_edge_clamp');
    GL_SGIS_texture_filter4 := Int_CheckExtension(Buffer, 'GL_SGIS_texture_filter4');
    GL_SGIS_texture_lod := Int_CheckExtension(Buffer, 'GL_SGIS_texture_lod');
    GL_SGIS_texture_select := Int_CheckExtension(Buffer, 'GL_SGIS_texture_select');

  // SGIX
    GL_FfdMaskSGIX := Int_CheckExtension(Buffer, 'GL_FfdMaskSGIX');
    GL_SGIX_async := Int_CheckExtension(Buffer, 'GL_SGIX_async');
    GL_SGIX_async_histogram := Int_CheckExtension(Buffer, 'GL_SGIX_async_histogram');
    GL_SGIX_async_pixel := Int_CheckExtension(Buffer, 'GL_SGIX_async_pixel');
    GL_SGIX_blend_alpha_minmax := Int_CheckExtension(Buffer, 'GL_SGIX_blend_alpha_minmax');
    GL_SGIX_calligraphic_fragment := Int_CheckExtension(Buffer, 'GL_SGIX_calligraphic_fragment');
    GL_SGIX_clipmap := Int_CheckExtension(Buffer, 'GL_SGIX_clipmap');
    GL_SGIX_convolution_accuracy := Int_CheckExtension(Buffer, 'GL_SGIX_convolution_accuracy');
    GL_SGIX_depth_pass_instrument := Int_CheckExtension(Buffer, 'GL_SGIX_depth_pass_instrument');
    GL_SGIX_depth_texture := Int_CheckExtension(Buffer, 'GL_SGIX_depth_texture');
    GL_SGIX_flush_raster := Int_CheckExtension(Buffer, 'GL_SGIX_flush_raster');
    GL_SGIX_fog_offset := Int_CheckExtension(Buffer, 'GL_SGIX_fog_offset');
    GL_SGIX_fog_scale := Int_CheckExtension(Buffer, 'GL_SGIX_fog_scale');
    GL_SGIX_fragment_lighting := Int_CheckExtension(Buffer, 'GL_SGIX_fragment_lighting');
    GL_SGIX_framezoom := Int_CheckExtension(Buffer, 'GL_SGIX_framezoom');
    GL_SGIX_igloo_interface := Int_CheckExtension(Buffer, 'GL_SGIX_igloo_interface');
    GL_SGIX_impact_pixel_texture := Int_CheckExtension(Buffer, 'GL_SGIX_impact_pixel_texture');
    GL_SGIX_instruments := Int_CheckExtension(Buffer, 'GL_SGIX_instruments');
    GL_SGIX_interlace := Int_CheckExtension(Buffer, 'GL_SGIX_interlace');
    GL_SGIX_ir_instrument1 := Int_CheckExtension(Buffer, 'GL_SGIX_ir_instrument1');
    GL_SGIX_list_priority := Int_CheckExtension(Buffer, 'GL_SGIX_list_priority');
    GL_SGIX_pixel_texture := Int_CheckExtension(Buffer, 'GL_SGIX_pixel_texture');
    GL_SGIX_pixel_tiles := Int_CheckExtension(Buffer, 'GL_SGIX_pixel_tiles');
    GL_SGIX_polynomial_ffd := Int_CheckExtension(Buffer, 'GL_SGIX_polynomial_ffd');
    GL_SGIX_reference_plane := Int_CheckExtension(Buffer, 'GL_SGIX_reference_plane');
    GL_SGIX_resample := Int_CheckExtension(Buffer, 'GL_SGIX_resample');
    GL_SGIX_scalebias_hint := Int_CheckExtension(Buffer, 'GL_SGIX_scalebias_hint');
    GL_SGIX_shadow := Int_CheckExtension(Buffer, 'GL_SGIX_shadow');
    GL_SGIX_shadow_ambient := Int_CheckExtension(Buffer, 'GL_SGIX_shadow_ambient');
    GL_SGIX_sprite := Int_CheckExtension(Buffer, 'GL_SGIX_sprite');
    GL_SGIX_subsample := Int_CheckExtension(Buffer, 'GL_SGIX_subsample');
    GL_SGIX_tag_sample_buffer := Int_CheckExtension(Buffer, 'GL_SGIX_tag_sample_buffer');
    GL_SGIX_texture_add_env := Int_CheckExtension(Buffer, 'GL_SGIX_texture_add_env');
    GL_SGIX_texture_coordinate_clamp := Int_CheckExtension(Buffer, 'GL_SGIX_texture_coordinate_clamp');
    GL_SGIX_texture_lod_bias := Int_CheckExtension(Buffer, 'GL_SGIX_texture_lod_bias');
    GL_SGIX_texture_multi_buffer := Int_CheckExtension(Buffer, 'GL_SGIX_texture_multi_buffer');
    GL_SGIX_texture_scale_bias := Int_CheckExtension(Buffer, 'GL_SGIX_texture_scale_bias');
    GL_SGIX_texture_select := Int_CheckExtension(Buffer, 'GL_SGIX_texture_select');
    GL_SGIX_vertex_preclip := Int_CheckExtension(Buffer, 'GL_SGIX_vertex_preclip');
    GL_SGIX_ycrcb := Int_CheckExtension(Buffer, 'GL_SGIX_ycrcb');
    GL_SGIX_ycrcb_subsample := Int_CheckExtension(Buffer, 'GL_SGIX_ycrcb_subsample');
    GL_SGIX_ycrcba := Int_CheckExtension(Buffer, 'GL_SGIX_ycrcba');

  // SGI
    GL_SGI_color_matrix := Int_CheckExtension(Buffer, 'GL_SGI_color_matrix');
    GL_SGI_color_table := Int_CheckExtension(Buffer, 'GL_SGI_color_table');
    GL_SGI_depth_pass_instrument := Int_CheckExtension(Buffer, 'GL_SGI_depth_pass_instrument');
    GL_SGI_texture_color_table := Int_CheckExtension(Buffer, 'GL_SGI_texture_color_table');

  // SUN
    GL_SUNX_constant_data := Int_CheckExtension(Buffer, 'GL_SUNX_constant_data');
    GL_SUN_convolution_border_modes := Int_CheckExtension(Buffer, 'GL_SUN_convolution_border_modes');
    GL_SUN_global_alpha := Int_CheckExtension(Buffer, 'GL_SUN_global_alpha');
    GL_SUN_mesh_array := Int_CheckExtension(Buffer, 'GL_SUN_mesh_array');
    GL_SUN_slice_accum := Int_CheckExtension(Buffer, 'GL_SUN_slice_accum');
    GL_SUN_triangle_list := Int_CheckExtension(Buffer, 'GL_SUN_triangle_list');
    GL_SUN_vertex := Int_CheckExtension(Buffer, 'GL_SUN_vertex');

// WIN
    GL_WIN_phong_shading := Int_CheckExtension(Buffer, 'GL_WIN_phong_shading');
    GL_WIN_specular_fog := Int_CheckExtension(Buffer, 'GL_WIN_specular_fog');  

  {$IFDEF ISLAND AND WINDOWS}
  // WGL
  WGL_3DFX_multisample := Int_CheckExtension(Buffer, 'WGL_3DFX_multisample');
    WGL_ARB_buffer_region := Int_CheckExtension(Buffer, 'WGL_ARB_buffer_region');
    WGL_ARB_extensions_string := Int_CheckExtension(Buffer, 'WGL_ARB_extensions_string');
    WGL_ARB_make_current_read := Int_CheckExtension(Buffer, 'WGL_ARB_make_current_read');
    WGL_ARB_multisample := Int_CheckExtension(Buffer, 'WGL_ARB_multisample');
    WGL_ARB_pbuffer := Int_CheckExtension(Buffer, 'WGL_ARB_pbuffer');
    WGL_ARB_pixel_format := Int_CheckExtension(Buffer, 'WGL_ARB_pixel_format');
    WGL_ARB_pixel_format_float := Int_CheckExtension(Buffer, 'WGL_ARB_pixel_format_float');
    WGL_ARB_render_texture := Int_CheckExtension(Buffer, 'WGL_ARB_render_texture');
    WGL_ARB_create_context := Int_CheckExtension(Buffer, 'WGL_ARB_create_context');
    WGL_ARB_create_context_profile := Int_CheckExtension(Buffer, 'WGL_ARB_create_context_profile');
    WGL_ARB_framebuffer_sRGB := Int_CheckExtension(Buffer, 'WGL_ARB_framebuffer_sRGB');
    WGL_ARB_create_context_robustness := Int_CheckExtension(Buffer, 'WGL_ARB_create_context_robustness');
    WGL_ATI_pixel_format_float := Int_CheckExtension(Buffer, 'WGL_ATI_pixel_format_float');
    WGL_AMD_gpu_association := Int_CheckExtension(Buffer, 'WGL_AMD_gpu_association');
    WGL_EXT_depth_float := Int_CheckExtension(Buffer, 'WGL_EXT_depth_float');
    WGL_EXT_display_color_table := Int_CheckExtension(Buffer, 'WGL_EXT_display_color_table');
    WGL_EXT_extensions_string := Int_CheckExtension(Buffer, 'WGL_EXT_extensions_string');
    WGL_EXT_make_current_read := Int_CheckExtension(Buffer, 'WGL_EXT_make_current_read');
    WGL_EXT_multisample := Int_CheckExtension(Buffer, 'WGL_EXT_multisample');
    WGL_EXT_pbuffer := Int_CheckExtension(Buffer, 'WGL_EXT_pbuffer');
    WGL_EXT_pixel_format := Int_CheckExtension(Buffer, 'WGL_EXT_pixel_format');
    WGL_EXT_swap_control := Int_CheckExtension(Buffer, 'WGL_EXT_swap_control');
    WGL_EXT_create_context_es2_profile := Int_CheckExtension(Buffer, 'WGL_EXT_create_context_es2_profile');
    WGL_I3D_digital_video_control := Int_CheckExtension(Buffer, 'WGL_I3D_digital_video_control');
    WGL_I3D_gamma := Int_CheckExtension(Buffer, 'WGL_I3D_gamma');
    WGL_I3D_genlock := Int_CheckExtension(Buffer, 'WGL_I3D_genlock');
    WGL_I3D_image_buffer := Int_CheckExtension(Buffer, 'WGL_I3D_image_buffer');
    WGL_I3D_swap_frame_lock := Int_CheckExtension(Buffer, 'WGL_I3D_swap_frame_lock');
    WGL_I3D_swap_frame_usage := Int_CheckExtension(Buffer, 'WGL_I3D_swap_frame_usage');
    WGL_NV_float_buffer := Int_CheckExtension(Buffer, 'WGL_NV_float_buffer');
    WGL_NV_render_depth_texture := Int_CheckExtension(Buffer, 'WGL_NV_render_depth_texture');
    WGL_NV_render_texture_rectangle := Int_CheckExtension(Buffer, 'WGL_NV_render_texture_rectangle');
    WGL_NV_vertex_array_range := Int_CheckExtension(Buffer, 'WGL_NV_vertex_array_range');
    WGL_NV_present_video := Int_CheckExtension(Buffer, 'WGL_NV_present_video');
    WGL_NV_video_output := Int_CheckExtension(Buffer, 'WGL_NV_video_output');
    WGL_NV_swap_group := Int_CheckExtension(Buffer, 'WGL_NV_swap_group');
    WGL_NV_gpu_affinity := Int_CheckExtension(Buffer, 'WGL_NV_gpu_affinity');
    WGL_NV_video_capture := Int_CheckExtension(Buffer, 'WGL_NV_video_capture');
    WGL_NV_copy_image := Int_CheckExtension(Buffer, 'WGL_NV_copy_image');
    WGL_NV_multisample_coverage := Int_CheckExtension(Buffer, 'WGL_NV_multisample_coverage');
    WGL_NV_DX_interop := Int_CheckExtension(Buffer, 'WGL_NV_multisample_coverage');
    WGL_OML_sync_control := Int_CheckExtension(Buffer, 'WGL_OML_sync_control');
    WGL_3DL_stereo_control := Int_CheckExtension(Buffer, 'WGL_3DL_stereo_control');
    WGL_ARB_context_flush_control := Int_CheckExtension(Buffer, 'WGL_ARB_context_flush_control');
    WIN_draw_range_elements := Int_CheckExtension(Buffer, 'WIN_draw_range_elements');
    WIN_swap_hint := Int_CheckExtension(Buffer, 'WIN_swap_hint');
  {$ENDIF}

  {$IFDEF DGL_LINUX}
  // GLX
  GLX_ARB_multisample := Int_CheckExtension(Buffer, 'GLX_ARB_multisample');
  GLX_ARB_fbconfig_float := Int_CheckExtension(Buffer, 'GLX_ARB_fbconfig_float');
  GLX_ARB_get_proc_address := Int_CheckExtension(Buffer, 'GLX_ARB_get_proc_address');
  GLX_ARB_create_context := Int_CheckExtension(Buffer, 'GLX_ARB_create_context');
  GLX_ARB_create_context_profile := Int_CheckExtension(Buffer, 'GLX_ARB_create_context_profile');
  GLX_ARB_vertex_buffer_object := Int_CheckExtension(Buffer, 'GLX_ARB_vertex_buffer_object');
  GLX_ARB_framebuffer_sRGB := Int_CheckExtension(Buffer, 'GLX_ARB_framebuffer_sRGB');
  GLX_ARB_create_context_robustness := Int_CheckExtension(Buffer, 'GLX_ARB_create_context_robustness');
  GLX_EXT_visual_info := Int_CheckExtension(Buffer, 'GLX_EXT_visual_info');
  GLX_EXT_visual_rating := Int_CheckExtension(Buffer, 'GLX_EXT_visual_rating');
  GLX_EXT_import_context := Int_CheckExtension(Buffer, 'GLX_EXT_import_context');
  GLX_EXT_fbconfig_packed_float := Int_CheckExtension(Buffer, 'GLX_EXT_fbconfig_packed_float');
  GLX_EXT_framebuffer_sRGB := Int_CheckExtension(Buffer, 'GLX_EXT_framebuffer_sRGB');
  GLX_EXT_texture_from_pixmap := Int_CheckExtension(Buffer, 'GLX_EXT_texture_from_pixmap');
  GLX_EXT_swap_control := Int_CheckExtension(Buffer, 'GLX_EXT_swap_control');
  GLX_EXT_create_context_es2_profile := Int_CheckExtension(Buffer, 'GLX_EXT_create_context_es2_profile');
  GLX_ARB_context_flush_control := Int_CheckExtension(Buffer, 'GLX_ARB_context_flush_control');
  {$ENDIF}

    ImplementationRead := True;
end;
end;


// =============================================================================
// RaiseLastOSError
// =============================================================================
// Needed for compatibility with older Delphiversions
// =============================================================================

method RaiseLastOSError;
begin
 
  {$IF ISLAND AND WINDOWS} // If Delphi 6 or later
   // SysUtils.RaiseLastWin32Error;
 var error := GetLastError;
 if Error <> 0 then
    raise new Exception('OS Error '+Error.ToString);
  {$ELSE}
   Raise new excption();
{$ENDIF}
end;


end.

