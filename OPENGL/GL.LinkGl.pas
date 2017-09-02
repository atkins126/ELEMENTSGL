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

{$IF ISLAND}
{$GLOBALS ON}
interface
uses
    RemObjects.Elements.System,
    rtl;

    method RaiseLastOSError;

type

    GLfwLoadProc = public Block(const procname: ^AnsiChar) : Pointer;

    GL = static Class
    public

       class method InitGL(const aLoadProc : GLfwLoadProc; const LoadExtensions : Boolean := false);

        class method ReadExtensions;
        class method ReadImplementationProperties;
        class method ReadCoreVersion : boolean;
        class method ReadOpenGLCore;

    private
        class var LoadProc : GLfwLoadProc;
        class method GetImportAddress(ProcName: String): ^Void;

        class method Int_GetExtensionString: String;

        class method Read_GL_3DFX_tbuffer;
        class method Read_GL_APPLE_element_array;
        class method Read_GL_APPLE_fence;
        class method Read_GL_APPLE_vertex_array_object;
        class method Read_GL_APPLE_vertex_array_range;
        class method Read_GL_APPLE_texture_range;
        class method Read_GL_APPLE_vertex_program_evaluators;
        class method Read_GL_APPLE_object_purgeable;
        class method Read_GL_ARB_matrix_palette;
        class method Read_GL_ARB_multitexture;
        class method Read_GL_ARB_point_parameters;
        class method Read_GL_ARB_texture_compression;
        class method Read_GL_ARB_transpose_matrix;
        class method Read_GL_ARB_vertex_blend;
        class method Read_GL_ARB_vertex_buffer_object;
        class method Read_GL_ARB_vertex_program;
        class method Read_GL_ARB_window_pos;
        class method Read_GL_ARB_color_buffer_float;
        class method Read_GL_ARB_Shader_Objects;
        class method Read_GL_ARB_occlusion_query;
        class method Read_GL_ARB_draw_instanced;
        class method Read_GL_ARB_framebuffer_object;
        class method Read_GL_ARB_geometry_shader4;
        class method Read_GL_ARB_instanced_arrays;
        class method Read_GL_ARB_map_buffer_range;
        class method Read_GL_ARB_texture_buffer_object;
        class method Read_GL_ARB_vertex_array_object;
        class method Read_GL_ARB_uniform_buffer_object;
        class method Read_GL_ARB_copy_buffer;
        class method Read_GL_ARB_draw_elements_base_vertex;
        class method Read_GL_ARB_provoking_vertex;
        class method Read_GL_ARB_sync;
        class method Read_GL_ARB_texture_multisample;
        class method Read_GL_ARB_draw_buffers_blend;
        class method Read_GL_ARB_sample_shading;
        class method Read_GL_ARB_sample_locations;
        class method Read_GL_ARB_shading_language_include;
        class method Read_GL_ARB_blend_func_extended;
        class method Read_GL_ARB_sampler_objects;
        class method Read_GL_ARB_timer_query;
        class method Read_GL_ARB_vertex_type_2_10_10_10_rev;
        class method Read_GL_ARB_draw_indirect;
        class method Read_GL_ARB_gpu_shader_fp64;
        class method Read_GL_ARB_gpu_shader_int64;
        class method Read_GL_ARB_shader_subroutine;
        class method Read_GL_ARB_tessellation_shader;
        class method Read_GL_ARB_transform_feedback2;
        class method Read_GL_ARB_transform_feedback3;
        class method Read_GL_ARB_ES2_compatibility;
        class method Read_GL_ARB_get_program_binary;
        class method Read_GL_ARB_separate_shader_objects;
        class method Read_GL_ARB_vertex_attrib_64bit;
        class method Read_GL_ARB_viewport_array;

        class method Read_GL_ARB_ES3_2_compatibility;
        class method Read_GL_ARB_parallel_shader_compile;

// GL 4.2
        class method Read_GL_ARB_base_instance;
        class method Read_GL_ARB_transform_feedback_instanced;
        class method Read_GL_ARB_internalformat_query;
        class method Read_GL_ARB_shader_atomic_counters;
        class method Read_GL_ARB_shader_image_load_store;
        class method Read_GL_ARB_texture_storage;
// GL 4.3
        class method Read_GL_KHR_debug;
        class method Read_GL_ARB_clear_buffer_object;
        class method Read_GL_ARB_compute_shader;
        class method Read_GL_ARB_copy_image;
        class method Read_GL_ARB_framebuffer_no_attachments;
        class method Read_GL_ARB_internalformat_query2;
        class method Read_GL_ARB_invalidate_subdata;
        class method Read_GL_ARB_multi_draw_indirect;
        class method Read_GL_ARB_program_interface_query;
        class method Read_GL_ARB_shader_storage_buffer_object;
        class method Read_GL_ARB_texture_buffer_range;
        class method Read_GL_ARB_texture_storage_multisample;
        class method Read_GL_ARB_texture_view;
        class method Read_GL_ARB_vertex_attrib_binding;


        class method Read_GL_4_4;
        class method Read_GL_4_5;

//
        class method Read_GL_ARB_cl_event;
        class method Read_GL_ARB_compute_variable_group_size;
        class method Read_GL_ARB_debug_output;
        class method Read_GL_ARB_robustness;
        class method Read_GL_ATI_draw_buffers;
        class method Read_GL_ATI_element_array;
        class method Read_GL_ATI_envmap_bumpmap;
        class method Read_GL_ATI_fragment_shader;
        class method Read_GL_ATI_map_object_buffer;
        class method Read_GL_ATI_pn_triangles;
        class method Read_GL_ATI_separate_stencil;
        class method Read_GL_ATI_vertex_array_object;
        class method Read_GL_ATI_vertex_attrib_array_object;
        class method Read_GL_ATI_vertex_streams;
        class method Read_GL_AMD_performance_monitor;
        class method Read_GL_AMD_vertex_shader_tesselator;
        class method Read_GL_AMD_draw_buffers_blend;
        class method Read_GL_AMD_name_gen_delete;
        class method Read_GL_AMD_debug_output;
        class method Read_GL_EXT_blend_color;
        class method Read_GL_EXT_blend_func_separate;
        class method Read_GL_EXT_blend_minmax;
        class method Read_GL_EXT_color_subtable;
        class method Read_GL_EXT_compiled_vertex_array;
        class method Read_GL_EXT_convolution;
        class method Read_GL_EXT_coordinate_frame;
        class method Read_GL_EXT_copy_texture;
        class method Read_GL_EXT_cull_vertex;
        class method Read_GL_EXT_draw_range_elements;
        class method Read_GL_EXT_fog_coord;
        class method Read_GL_EXT_framebuffer_object;
        class method Read_GL_EXT_histogram;
        class method Read_GL_EXT_index_func;
        class method Read_GL_EXT_index_material;
        class method Read_GL_EXT_multi_draw_arrays;
        class method Read_GL_EXT_multisample;
        class method Read_GL_EXT_paletted_texture;
        class method Read_GL_EXT_pixel_transform;
        class method Read_GL_EXT_point_parameters;
        class method Read_GL_EXT_polygon_offset;
        class method Read_GL_EXT_secondary_color;
        class method Read_GL_EXT_stencil_two_side;
        class method Read_GL_EXT_subtexture;
        class method Read_GL_EXT_texture3D;
        class method Read_GL_EXT_texture_object;
        class method Read_GL_EXT_texture_perturb_normal;
        class method Read_GL_EXT_vertex_array;
        class method Read_GL_EXT_vertex_shader;
        class method Read_GL_EXT_vertex_weighting;
        class method Read_GL_EXT_depth_bounds_test;
        class method Read_GL_EXT_blend_equation_separate;
        class method Read_GL_EXT_stencil_clear_tag;
        class method Read_GL_EXT_framebuffer_blit;
        class method Read_GL_EXT_framebuffer_multisample;
        class method Read_GL_EXT_timer_query;
        class method Read_GL_EXT_gpu_program_parameters;
        class method Read_GL_EXT_bindable_uniform;
        class method Read_GL_EXT_draw_buffers2;
        class method Read_GL_EXT_draw_instanced;
        class method Read_GL_EXT_geometry_shader4;
        class method Read_GL_EXT_gpu_shader4;
        class method Read_GL_EXT_texture_array;
        class method Read_GL_EXT_texture_buffer_object;
        class method Read_GL_EXT_texture_integer;
        class method Read_GL_EXT_transform_feedback;
        class method Read_GL_EXT_direct_state_access;
        class method Read_GL_EXT_separate_shader_objects;
        class method Read_GL_EXT_shader_image_load_store;
        class method Read_GL_EXT_vertex_attrib_64bit;
        class method Read_GL_HP_image_transform;
        class method Read_GL_IBM_multimode_draw_arrays;
        class method Read_GL_IBM_vertex_array_lists;
        class method Read_GL_INGR_blend_func_separate;
        class method Read_GL_INTEL_parallel_arrays;
        class method Read_GL_INTEL_framebuffer_CMAA;
        class method Read_GL_MESA_resize_buffers;
        class method Read_GL_MESA_window_pos;
        class method Read_GL_NV_evaluators;
        class method Read_GL_NV_fence;
        class method Read_GL_NV_fragment_program;
        class method Read_GL_NV_half_float;
        class method Read_GL_NV_occlusion_query;
        class method Read_GL_NV_pixel_data_range;
        class method Read_GL_NV_point_sprite;
        class method Read_GL_NV_primitive_restart;
        class method Read_GL_NV_register_combiners;
        class method Read_GL_NV_register_combiners2;
        class method Read_GL_NV_vertex_array_range;
        class method Read_GL_NV_vertex_program;
        class method Read_GL_NV_depth_buffer_float;
        class method Read_GL_NV_framebuffer_multisample_coverage;
        class method Read_GL_NV_geometry_program4;
        class method Read_GL_NV_gpu_program4;
        class method Read_GL_NV_parameter_buffer_object;
        class method Read_GL_NV_transform_feedback;
        class method Read_GL_NV_conditional_render;
        class method Read_GL_NV_conservative_raster;
        class method Read_GL_NV_conservative_raster_dilate;
        class method Read_GL_NV_present_video;
        class method Read_GL_NV_explicit_multisample;
        class method Read_GL_NV_transform_feedback2;
        class method Read_GL_NV_video_capture;
        class method Read_GL_NV_copy_image;
        class method Read_GL_NV_shader_buffer_load;
        class method Read_GL_NV_vertex_buffer_unified_memory;
        class method Read_GL_NV_gpu_program5;
        class method Read_GL_NV_gpu_shader5;
        class method Read_GL_NV_vertex_attrib_integer_64bit;
        class method Read_GL_NV_vdpau_interop;
        class method Read_GL_NV_texture_barrier;
        class method Read_GL_PGI_misc_hints;
        class method Read_GL_OVR_multiview;
        class method Read_GL_SGIS_detail_texture;
        class method Read_GL_SGIS_fog_function;
        class method Read_GL_SGIS_multisample;
        class method Read_GL_SGIS_pixel_texture;
        class method Read_GL_SGIS_point_parameters;
        class method Read_GL_SGIS_sharpen_texture;
        class method Read_GL_SGIS_texture4D;
        class method Read_GL_SGIS_texture_color_mask;
        class method Read_GL_SGIS_texture_filter4;
        class method Read_GL_SGIX_async;
        class method Read_GL_SGIX_flush_raster;
        class method Read_GL_SGIX_fragment_lighting;
        class method Read_GL_SGIX_framezoom;
        class method Read_GL_SGIX_igloo_interface;
        class method Read_GL_SGIX_instruments;
        class method Read_GL_SGIX_list_priority;
        class method Read_GL_SGIX_pixel_texture;
        class method Read_GL_SGIX_polynomial_ffd;
        class method Read_GL_SGIX_reference_plane;
        class method Read_GL_SGIX_sprite;
        class method Read_GL_SGIX_tag_sample_buffer;
        class method Read_GL_SGI_color_table;
        class method Read_GL_SUNX_constant_data;
        class method Read_GL_SUN_global_alpha;
        class method Read_GL_SUN_mesh_array;
        class method Read_GL_SUN_triangle_list;
        class method Read_GL_SUN_vertex;

        class method Read_GL_ARB_multisample;
        class method Read_GL_ARB_draw_buffers;
        class method Read_GL_ARB_sparse_texture;
        class method Read_GL_ARB_sparse_buffer;
        class method Read_GL_KHR_blend_equation_advanced;
        class method Read_GL_NV_path_rendering;
        class method Read_GL_AMD_stencil_operation_extended;
        class method Read_GL_NV_bindless_texture;
        class method Read_GL_ARB_bindless_texture;
        class method Read_GL_EXT_light_texture;

        class method Int_CheckExtension(AllExtensions, CheckExtension: String): Boolean;
    end;

implementation


class method GL.GetImportAddress(ProcName: String): ^Void;
begin
    result := nil;
    try
        if Assigned(LoadProc) then
            exit  LoadProc(@ProcName.ToAnsiChars(true)[0]);
    except
        on e : Exception do writeLn('GetImportAddress '+Procname+' ->'+e.message);
    end;

end;

class method GL.Int_CheckExtension(AllExtensions, CheckExtension: String): Boolean;
begin
    Result := AllExtensions.Contains(#32 + CheckExtension + #32);
end;


class method Gl.InitGL(const aLoadProc : GLfwLoadProc; const LoadExtensions : Boolean := false);
require assigned(aLoadProc);
begin
    LoadProc := aLoadProc;
    ReadImplementationProperties;
    if LoadExtensions then
        ReadExtensions
    else  ReadOpenGLCore;
    LoadProc := nil;
end;


class method GL.ReadOpenGLCore;
begin
  // GL_VERSION_1_0
    glCullFace := tglCullFace(GetImportAddress('glCullFace'));
    glFrontFace := tglFrontFace(GetImportAddress('glFrontFace'));
    glHint := tglHint(GetImportAddress('glHint'));
    glLineWidth := tglLineWidth(GetImportAddress('glLineWidth'));
    glPointSize := tglPointSize(GetImportAddress('glPointSize'));
    glPolygonMode := tglPolygonMode(GetImportAddress('glPolygonMode'));
    glScissor := tglScissor(GetImportAddress('glScissor'));
    glTexParameterf := tglTexParameterf(GetImportAddress('glTexParameterf'));
    glTexParameterfv := tglTexParameterfv(GetImportAddress('glTexParameterfv'));
    glTexParameteri := tglTexParameteri(GetImportAddress('glTexParameteri'));
    glTexParameteriv := tglTexParameteriv(GetImportAddress('glTexParameteriv'));
    glTexImage1D := tglTexImage1D(GetImportAddress('glTexImage1D'));
    glTexImage2D := tglTexImage2D(GetImportAddress('glTexImage2D'));
    glDrawBuffer := tglDrawBuffer(GetImportAddress('glDrawBuffer'));
    glClear := tglClear(GetImportAddress('glClear'));
    glClearColor := tglClearColor(GetImportAddress('glClearColor'));
    glClearStencil := tglClearStencil(GetImportAddress('glClearStencil'));
    glClearDepth := tglClearDepth(GetImportAddress('glClearDepth'));
    glStencilMask := tglStencilMask(GetImportAddress('glStencilMask'));
    glColorMask := tglColorMask(GetImportAddress('glColorMask'));
    glDepthMask := tglDepthMask(GetImportAddress('glDepthMask'));
    glDisable := tglDisable(GetImportAddress('glDisable'));
    glEnable := tglEnable(GetImportAddress('glEnable'));
    glFinish := tglFinish(GetImportAddress('glFinish'));
    glFlush := tglFlush(GetImportAddress('glFlush'));
    glBlendFunc := tglBlendFunc(GetImportAddress('glBlendFunc'));
    glLogicOp := tglLogicOp(GetImportAddress('glLogicOp'));
    glStencilFunc := tglStencilFunc(GetImportAddress('glStencilFunc'));
    glStencilOp := tglStencilOp(GetImportAddress('glStencilOp'));
    glDepthFunc := tglDepthFunc(GetImportAddress('glDepthFunc'));
    glPixelStoref := tglPixelStoref(GetImportAddress('glPixelStoref'));
    glPixelStorei := tglPixelStorei(GetImportAddress('glPixelStorei'));
    glReadBuffer := tglReadBuffer(GetImportAddress('glReadBuffer'));
    glReadPixels := tglReadPixels(GetImportAddress('glReadPixels'));
    glGetBooleanv := tglGetBooleanv(GetImportAddress('glGetBooleanv'));
    glGetDoublev := tglGetDoublev(GetImportAddress('glGetDoublev'));
    glGetError := tglGetError(GetImportAddress('glGetError'));
    glGetFloatv := tglGetFloatv(GetImportAddress('glGetFloatv'));
    glGetIntegerv := tglGetIntegerv(GetImportAddress('glGetIntegerv'));
    glGetString := tglGetString(GetImportAddress('glGetString'));
    glGetTexImage := tglGetTexImage(GetImportAddress('glGetTexImage'));
    glGetTexParameteriv := tglGetTexParameteriv(GetImportAddress('glGetTexParameteriv'));
    glGetTexParameterfv := tglGetTexParameterfv(GetImportAddress('glGetTexParameterfv'));
    glGetTexLevelParameterfv := tglGetTexLevelParameterfv(GetImportAddress('glGetTexLevelParameterfv'));
    glGetTexLevelParameteriv := tglGetTexLevelParameteriv(GetImportAddress('glGetTexLevelParameteriv'));
    glIsEnabled := tglIsEnabled(GetImportAddress('glIsEnabled'));
    glDepthRange := tglDepthRange(GetImportAddress('glDepthRange'));
    glViewport := tglViewport(GetImportAddress('glViewport'));

  // GL_VERSION_1_1
    glDrawArrays := tglDrawArrays(GetImportAddress('glDrawArrays'));
    glDrawElements := tglDrawElements(GetImportAddress('glDrawElements'));
    glGetPointerv := tglGetPointerv(GetImportAddress('glGetPointerv'));
    glPolygonOffset := tglPolygonOffset(GetImportAddress('glPolygonOffset'));
    glCopyTexImage1D := tglCopyTexImage1D(GetImportAddress('glCopyTexImage1D'));
    glCopyTexImage2D := tglCopyTexImage2D(GetImportAddress('glCopyTexImage2D'));
    glCopyTexSubImage1D := tglCopyTexSubImage1D(GetImportAddress('glCopyTexSubImage1D'));
    glCopyTexSubImage2D := tglCopyTexSubImage2D(GetImportAddress('glCopyTexSubImage2D'));
    glTexSubImage1D := tglTexSubImage1D(GetImportAddress('glTexSubImage1D'));
    glTexSubImage2D := tglTexSubImage2D(GetImportAddress('glTexSubImage2D'));
    glBindTexture := tglBindTexture(GetImportAddress('glBindTexture'));
    glDeleteTextures := tglDeleteTextures(GetImportAddress('glDeleteTextures'));
    glGenTextures := tglGenTextures(GetImportAddress('glGenTextures'));



  // GL_VERSION_1_2
    glBlendColor := tglBlendColor(GetImportAddress('glBlendColor'));
    glBlendEquation := tglBlendEquation(GetImportAddress('glBlendEquation'));
    glDrawRangeElements := tglDrawRangeElements(GetImportAddress('glDrawRangeElements'));
    glTexImage3D := tglTexImage3D(GetImportAddress('glTexImage3D'));
    glTexSubImage3D := tglTexSubImage3D(GetImportAddress('glTexSubImage3D'));
    glCopyTexSubImage3D := tglCopyTexSubImage3D(GetImportAddress('glCopyTexSubImage3D'));


  // GL_VERSION_1_3
    glActiveTexture := tglActiveTexture(GetImportAddress('glActiveTexture'));
    glSampleCoverage := tglSampleCoverage(GetImportAddress('glSampleCoverage'));
    glCompressedTexImage3D := tglCompressedTexImage3D(GetImportAddress('glCompressedTexImage3D'));
    glCompressedTexImage2D := tglCompressedTexImage2D(GetImportAddress('glCompressedTexImage2D'));
    glCompressedTexImage1D := tglCompressedTexImage1D(GetImportAddress('glCompressedTexImage1D'));
    glCompressedTexSubImage3D := tglCompressedTexSubImage3D(GetImportAddress('glCompressedTexSubImage3D'));
    glCompressedTexSubImage2D := tglCompressedTexSubImage2D(GetImportAddress('glCompressedTexSubImage2D'));
    glCompressedTexSubImage1D := tglCompressedTexSubImage1D(GetImportAddress('glCompressedTexSubImage1D'));
    glGetCompressedTexImage := tglGetCompressedTexImage(GetImportAddress('glGetCompressedTexImage'));


  // GL_VERSION_1_4
    glBlendFuncSeparate := tglBlendFuncSeparate(GetImportAddress('glBlendFuncSeparate'));
    glMultiDrawArrays := tglMultiDrawArrays(GetImportAddress('glMultiDrawArrays'));
    glMultiDrawElements := tglMultiDrawElements(GetImportAddress('glMultiDrawElements'));
    glPointParameterf := tglPointParameterf(GetImportAddress('glPointParameterf'));
    glPointParameterfv := tglPointParameterfv(GetImportAddress('glPointParameterfv'));
    glPointParameteri := tglPointParameteri(GetImportAddress('glPointParameteri'));
    glPointParameteriv := tglPointParameteriv(GetImportAddress('glPointParameteriv'));


  // GL_VERSION_1_5
    glGenQueries := tglGenQueries(GetImportAddress('glGenQueries'));
    glDeleteQueries := tglDeleteQueries(GetImportAddress('glDeleteQueries'));
    glIsQuery := tglIsQuery(GetImportAddress('glIsQuery'));
    glBeginQuery := tglBeginQuery(GetImportAddress('glBeginQuery'));
    glEndQuery := tglEndQuery(GetImportAddress('glEndQuery'));
    glGetQueryiv := tglGetQueryiv(GetImportAddress('glGetQueryiv'));
    glGetQueryObjectiv := tglGetQueryObjectiv(GetImportAddress('glGetQueryObjectiv'));
    glGetQueryObjectuiv := tglGetQueryObjectuiv(GetImportAddress('glGetQueryObjectuiv'));
    glBindBuffer := tglBindBuffer(GetImportAddress('glBindBuffer'));
    glDeleteBuffers := tglDeleteBuffers(GetImportAddress('glDeleteBuffers'));
    glGenBuffers := tglGenBuffers(GetImportAddress('glGenBuffers'));
    glIsBuffer := tglIsBuffer(GetImportAddress('glIsBuffer'));
    glBufferData := tglBufferData(GetImportAddress('glBufferData'));
    glBufferSubData := tglBufferSubData(GetImportAddress('glBufferSubData'));
    glGetBufferSubData := tglGetBufferSubData(GetImportAddress('glGetBufferSubData'));
    glMapBuffer := tglMapBuffer(GetImportAddress('glMapBuffer'));
    glUnmapBuffer := tglUnmapBuffer(GetImportAddress('glUnmapBuffer'));
    glGetBufferParameteriv := tglGetBufferParameteriv(GetImportAddress('glGetBufferParameteriv'));
    glGetBufferPointerv := tglGetBufferPointerv(GetImportAddress('glGetBufferPointerv'));

  // GL_VERSION_2_0
    glBlendEquationSeparate := tglBlendEquationSeparate(GetImportAddress('glBlendEquationSeparate'));
    glDrawBuffers := tglDrawBuffers(GetImportAddress('glDrawBuffers'));
    glStencilOpSeparate := tglStencilOpSeparate(GetImportAddress('glStencilOpSeparate'));
    glStencilFuncSeparate := tglStencilFuncSeparate(GetImportAddress('glStencilFuncSeparate'));
    glStencilMaskSeparate := tglStencilMaskSeparate(GetImportAddress('glStencilMaskSeparate'));
    glAttachShader := tglAttachShader(GetImportAddress('glAttachShader'));
    glBindAttribLocation := tglBindAttribLocation(GetImportAddress('glBindAttribLocation'));
    glCompileShader := tglCompileShader(GetImportAddress('glCompileShader'));
    glCreateProgram := tglCreateProgram(GetImportAddress('glCreateProgram'));
    glCreateShader := tglCreateShader(GetImportAddress('glCreateShader'));
    glDeleteProgram := tglDeleteProgram(GetImportAddress('glDeleteProgram'));
    glDeleteShader := tglDeleteShader(GetImportAddress('glDeleteShader'));
    glDetachShader := tglDetachShader(GetImportAddress('glDetachShader'));
    glDisableVertexAttribArray := tglDisableVertexAttribArray(GetImportAddress('glDisableVertexAttribArray'));
    glEnableVertexAttribArray := tglEnableVertexAttribArray(GetImportAddress('glEnableVertexAttribArray'));
    glGetActiveAttrib := tglGetActiveAttrib(GetImportAddress('glGetActiveAttrib'));
    glGetActiveUniform := tglGetActiveUniform(GetImportAddress('glGetActiveUniform'));
    glGetAttachedShaders := tglGetAttachedShaders(GetImportAddress('glGetAttachedShaders'));
    glGetAttribLocation := tglGetAttribLocation(GetImportAddress('glGetAttribLocation'));
    glGetProgramiv := tglGetProgramiv(GetImportAddress('glGetProgramiv'));
    glGetProgramInfoLog := tglGetProgramInfoLog(GetImportAddress('glGetProgramInfoLog'));
    glGetShaderiv := tglGetShaderiv(GetImportAddress('glGetShaderiv'));
    glGetShaderInfoLog := tglGetShaderInfoLog(GetImportAddress('glGetShaderInfoLog'));
    glGetShaderSource := tglGetShaderSource(GetImportAddress('glGetShaderSource'));
    glGetUniformLocation := tglGetUniformLocation(GetImportAddress('glGetUniformLocation'));
    glGetUniformfv := tglGetUniformfv(GetImportAddress('glGetUniformfv'));
    glGetUniformiv := tglGetUniformiv(GetImportAddress('glGetUniformiv'));
    glGetVertexAttribfv := tglGetVertexAttribfv(GetImportAddress('glGetVertexAttribfv'));
    glGetVertexAttribiv := tglGetVertexAttribiv(GetImportAddress('glGetVertexAttribiv'));
    glGetVertexAttribPointerv := tglGetVertexAttribPointerv(GetImportAddress('glGetVertexAttribPointerv'));
    glIsProgram := tglIsProgram(GetImportAddress('glIsProgram'));
    glIsShader := tglIsShader(GetImportAddress('glIsShader'));
    glLinkProgram := tglLinkProgram(GetImportAddress('glLinkProgram'));
    glShaderSource := tglShaderSource(GetImportAddress('glShaderSource'));
    glUseProgram := tglUseProgram(GetImportAddress('glUseProgram'));
    glUniform1f := tglUniform1f(GetImportAddress('glUniform1f'));
    glUniform2f := tglUniform2f(GetImportAddress('glUniform2f'));
    glUniform3f := tglUniform3f(GetImportAddress('glUniform3f'));
    glUniform4f := tglUniform4f(GetImportAddress('glUniform4f'));
    glUniform1i := tglUniform1i(GetImportAddress('glUniform1i'));
    glUniform2i := tglUniform2i(GetImportAddress('glUniform2i'));
    glUniform3i := tglUniform3i(GetImportAddress('glUniform3i'));
    glUniform4i := tglUniform4i(GetImportAddress('glUniform4i'));
    glUniform1fv := tglUniform1fv(GetImportAddress('glUniform1fv'));
    glUniform2fv := tglUniform2fv(GetImportAddress('glUniform2fv'));
    glUniform3fv := tglUniform3fv(GetImportAddress('glUniform3fv'));
    glUniform4fv := tglUniform4fv(GetImportAddress('glUniform4fv'));
    glUniform1iv := tglUniform1iv(GetImportAddress('glUniform1iv'));
    glUniform2iv := tglUniform2iv(GetImportAddress('glUniform2iv'));
    glUniform3iv := tglUniform3iv(GetImportAddress('glUniform3iv'));
    glUniform4iv := tglUniform4iv(GetImportAddress('glUniform4iv'));
    glUniformMatrix2fv := tglUniformMatrix2fv(GetImportAddress('glUniformMatrix2fv'));
    glUniformMatrix3fv := tglUniformMatrix3fv(GetImportAddress('glUniformMatrix3fv'));
    glUniformMatrix4fv := tglUniformMatrix4fv(GetImportAddress('glUniformMatrix4fv'));
    glValidateProgram := tglValidateProgram(GetImportAddress('glValidateProgram'));
    glVertexAttrib1d := tglVertexAttrib1d(GetImportAddress('glVertexAttrib1d'));
    glVertexAttrib1dv := tglVertexAttrib1dv(GetImportAddress('glVertexAttrib1dv'));
    glVertexAttrib1f := tglVertexAttrib1f(GetImportAddress('glVertexAttrib1f'));
    glVertexAttrib1fv := tglVertexAttrib1fv(GetImportAddress('glVertexAttrib1fv'));
    glVertexAttrib1s := tglVertexAttrib1s(GetImportAddress('glVertexAttrib1s'));
    glVertexAttrib1sv := tglVertexAttrib1sv(GetImportAddress('glVertexAttrib1sv'));
    glVertexAttrib2d := tglVertexAttrib2d(GetImportAddress('glVertexAttrib2d'));
    glVertexAttrib2dv := tglVertexAttrib2dv(GetImportAddress('glVertexAttrib2dv'));
    glVertexAttrib2f := tglVertexAttrib2f(GetImportAddress('glVertexAttrib2f'));
    glVertexAttrib2fv := tglVertexAttrib2fv(GetImportAddress('glVertexAttrib2fv'));
    glVertexAttrib2s := tglVertexAttrib2s(GetImportAddress('glVertexAttrib2s'));
    glVertexAttrib2sv := tglVertexAttrib2sv(GetImportAddress('glVertexAttrib2sv'));
    glVertexAttrib3d := tglVertexAttrib3d(GetImportAddress('glVertexAttrib3d'));
    glVertexAttrib3dv := tglVertexAttrib3dv(GetImportAddress('glVertexAttrib3dv'));
    glVertexAttrib3f := tglVertexAttrib3f(GetImportAddress('glVertexAttrib3f'));
    glVertexAttrib3fv := tglVertexAttrib3fv(GetImportAddress('glVertexAttrib3fv'));
    glVertexAttrib3s := tglVertexAttrib3s(GetImportAddress('glVertexAttrib3s'));
    glVertexAttrib3sv := tglVertexAttrib3sv(GetImportAddress('glVertexAttrib3sv'));
    glVertexAttrib4Nbv := tglVertexAttrib4Nbv(GetImportAddress('glVertexAttrib4Nbv'));
    glVertexAttrib4Niv := tglVertexAttrib4Niv(GetImportAddress('glVertexAttrib4Niv'));
    glVertexAttrib4Nsv := tglVertexAttrib4Nsv(GetImportAddress('glVertexAttrib4Nsv'));
    glVertexAttrib4Nub := tglVertexAttrib4Nub(GetImportAddress('glVertexAttrib4Nub'));
    glVertexAttrib4Nubv := tglVertexAttrib4Nubv(GetImportAddress('glVertexAttrib4Nubv'));
    glVertexAttrib4Nuiv := tglVertexAttrib4Nuiv(GetImportAddress('glVertexAttrib4Nuiv'));
    glVertexAttrib4Nusv := tglVertexAttrib4Nusv(GetImportAddress('glVertexAttrib4Nusv'));
    glVertexAttrib4bv := tglVertexAttrib4bv(GetImportAddress('glVertexAttrib4bv'));
    glVertexAttrib4d := tglVertexAttrib4d(GetImportAddress('glVertexAttrib4d'));
    glVertexAttrib4dv := tglVertexAttrib4dv(GetImportAddress('glVertexAttrib4dv'));
    glVertexAttrib4f := tglVertexAttrib4f(GetImportAddress('glVertexAttrib4f'));
    glVertexAttrib4fv := tglVertexAttrib4fv(GetImportAddress('glVertexAttrib4fv'));
    glVertexAttrib4iv := tglVertexAttrib4iv(GetImportAddress('glVertexAttrib4iv'));
    glVertexAttrib4s := tglVertexAttrib4s(GetImportAddress('glVertexAttrib4s'));
    glVertexAttrib4sv := tglVertexAttrib4sv(GetImportAddress('glVertexAttrib4sv'));
    glVertexAttrib4ubv := tglVertexAttrib4ubv(GetImportAddress('glVertexAttrib4ubv'));
    glVertexAttrib4uiv := tglVertexAttrib4uiv(GetImportAddress('glVertexAttrib4uiv'));
    glVertexAttrib4usv := tglVertexAttrib4usv(GetImportAddress('glVertexAttrib4usv'));
    glVertexAttribPointer := tglVertexAttribPointer(GetImportAddress('glVertexAttribPointer'));

  // GL_VERSION_2_1
    glUniformMatrix2x3fv := tglUniformMatrix2x3fv(GetImportAddress('glUniformMatrix2x3fv'));
    glUniformMatrix3x2fv := tglUniformMatrix3x2fv(GetImportAddress('glUniformMatrix3x2fv'));
    glUniformMatrix2x4fv := tglUniformMatrix2x4fv(GetImportAddress('glUniformMatrix2x4fv'));
    glUniformMatrix4x2fv := tglUniformMatrix4x2fv(GetImportAddress('glUniformMatrix4x2fv'));
    glUniformMatrix3x4fv := tglUniformMatrix3x4fv(GetImportAddress('glUniformMatrix3x4fv'));
    glUniformMatrix4x3fv := tglUniformMatrix4x3fv(GetImportAddress('glUniformMatrix4x3fv'));

  // GL_VERSION_3_0
  { OpenGL 3.0 also reuses entry points from these extensions: }
    Read_GL_ARB_framebuffer_object;
    Read_GL_ARB_map_buffer_range;
    Read_GL_ARB_vertex_array_object;

    glColorMaski := tglColorMaski(GetImportAddress('glColorMaski'));
    glGetBooleani_v := tglGetBooleani_v(GetImportAddress('glGetBooleani_v'));
    glGetIntegeri_v := tglGetIntegeri_v(GetImportAddress('glGetIntegeri_v'));
    glEnablei := tglEnablei(GetImportAddress('glEnablei'));
    glDisablei := tglDisablei(GetImportAddress('glDisablei'));
    glIsEnabledi := tglIsEnabledi(GetImportAddress('glIsEnabledi'));
    glBeginTransformFeedback := tglBeginTransformFeedback(GetImportAddress('glBeginTransformFeedback'));
    glEndTransformFeedback := tglEndTransformFeedback(GetImportAddress('glEndTransformFeedback'));
    glBindBufferRange := tglBindBufferRange(GetImportAddress('glBindBufferRange'));
    glBindBufferBase := tglBindBufferBase(GetImportAddress('glBindBufferBase'));
    glTransformFeedbackVaryings := tglTransformFeedbackVaryings(GetImportAddress('glTransformFeedbackVaryings'));
    glGetTransformFeedbackVarying := tglGetTransformFeedbackVarying(GetImportAddress('glGetTransformFeedbackVarying'));
    glClampColor := tglClampColor(GetImportAddress('glClampColor'));
    glBeginConditionalRender := tglBeginConditionalRender(GetImportAddress('glBeginConditionalRender'));
    glEndConditionalRender := tglEndConditionalRender(GetImportAddress('glEndConditionalRender'));
    glVertexAttribI1i := tglVertexAttribI1i(GetImportAddress('glVertexAttribI1i'));
    glVertexAttribI2i := tglVertexAttribI2i(GetImportAddress('glVertexAttribI2i'));
    glVertexAttribI3i := tglVertexAttribI3i(GetImportAddress('glVertexAttribI3i'));
    glVertexAttribI4i := tglVertexAttribI4i(GetImportAddress('glVertexAttribI4i'));
    glVertexAttribI1ui := tglVertexAttribI1ui(GetImportAddress('glVertexAttribI1ui'));
    glVertexAttribI2ui := tglVertexAttribI2ui(GetImportAddress('glVertexAttribI2ui'));
    glVertexAttribI3ui := tglVertexAttribI3ui(GetImportAddress('glVertexAttribI3ui'));
    glVertexAttribI4ui := tglVertexAttribI4ui(GetImportAddress('glVertexAttribI4ui'));
    glVertexAttribI1iv := tglVertexAttribI1iv(GetImportAddress('glVertexAttribI1iv'));
    glVertexAttribI2iv := tglVertexAttribI2iv(GetImportAddress('glVertexAttribI2iv'));
    glVertexAttribI3iv := tglVertexAttribI3iv(GetImportAddress('glVertexAttribI3iv'));
    glVertexAttribI4iv := tglVertexAttribI4iv(GetImportAddress('glVertexAttribI4iv'));
    glVertexAttribI1uiv := tglVertexAttribI1uiv(GetImportAddress('glVertexAttribI1uiv'));
    glVertexAttribI2uiv := tglVertexAttribI2uiv(GetImportAddress('glVertexAttribI2uiv'));
    glVertexAttribI3uiv := tglVertexAttribI3uiv(GetImportAddress('glVertexAttribI3uiv'));
    glVertexAttribI4uiv := tglVertexAttribI4uiv(GetImportAddress('glVertexAttribI4uiv'));
    glVertexAttribI4bv := tglVertexAttribI4bv(GetImportAddress('glVertexAttribI4bv'));
    glVertexAttribI4sv := tglVertexAttribI4sv(GetImportAddress('glVertexAttribI4sv'));
    glVertexAttribI4ubv := tglVertexAttribI4ubv(GetImportAddress('glVertexAttribI4ubv'));
    glVertexAttribI4usv := tglVertexAttribI4usv(GetImportAddress('glVertexAttribI4usv'));
    glVertexAttribIPointer := tglVertexAttribIPointer(GetImportAddress('glVertexAttribIPointer'));
    glGetVertexAttribIiv := tglGetVertexAttribIiv(GetImportAddress('glGetVertexAttribIiv'));
    glGetVertexAttribIuiv := tglGetVertexAttribIuiv(GetImportAddress('glGetVertexAttribIuiv'));
    glGetUniformuiv := tglGetUniformuiv(GetImportAddress('glGetUniformuiv'));
    glBindFragDataLocation := tglBindFragDataLocation(GetImportAddress('glBindFragDataLocation'));
    glGetFragDataLocation := tglGetFragDataLocation(GetImportAddress('glGetFragDataLocation'));
    glUniform1ui := tglUniform1ui(GetImportAddress('glUniform1ui'));
    glUniform2ui := tglUniform2ui(GetImportAddress('glUniform2ui'));
    glUniform3ui := tglUniform3ui(GetImportAddress('glUniform3ui'));
    glUniform4ui := tglUniform4ui(GetImportAddress('glUniform4ui'));
    glUniform1uiv := tglUniform1uiv(GetImportAddress('glUniform1uiv'));
    glUniform2uiv := tglUniform2uiv(GetImportAddress('glUniform2uiv'));
    glUniform3uiv := tglUniform3uiv(GetImportAddress('glUniform3uiv'));
    glUniform4uiv := tglUniform4uiv(GetImportAddress('glUniform4uiv'));
    glTexParameterIiv := tglTexParameterIiv(GetImportAddress('glTexParameterIiv'));
    glTexParameterIuiv := tglTexParameterIuiv(GetImportAddress('glTexParameterIuiv'));
    glGetTexParameterIiv := tglGetTexParameterIiv(GetImportAddress('glGetTexParameterIiv'));
    glGetTexParameterIuiv := tglGetTexParameterIuiv(GetImportAddress('glGetTexParameterIuiv'));
    glClearBufferiv := tglClearBufferiv(GetImportAddress('glClearBufferiv'));
    glClearBufferuiv := tglClearBufferuiv(GetImportAddress('glClearBufferuiv'));
    glClearBufferfv := tglClearBufferfv(GetImportAddress('glClearBufferfv'));
    glClearBufferfi := tglClearBufferfi(GetImportAddress('glClearBufferfi'));
    glGetStringi := tglGetStringi(GetImportAddress('glGetStringi'));

  // GL_VERSION_2_1
    glEnableVertexArrayEXT := tglEnableVertexArrayEXT(GetImportAddress('glEnableVertexArrayEXT'));
    glEnableVertexArrayAttribEXT := tglEnableVertexArrayAttribEXT(GetImportAddress('glEnableVertexArrayAttribEXT'));
    glVertexArrayVertexAttribOffsetEXT := tglVertexArrayVertexAttribOffsetEXT(GetImportAddress('glVertexArrayVertexAttribOffsetEXT'));

  // GL_VERSION_3_1
  { OpenGL 3.1 also reuses entry points from these extensions: }
 //  if GL_VERSION_3_0 then
    begin
        Read_GL_ARB_copy_buffer;
        Read_GL_ARB_uniform_buffer_object;

        glDrawArraysInstanced := tglDrawArraysInstanced(GetImportAddress('glDrawArraysInstanced'));
        glDrawElementsInstanced := tglDrawElementsInstanced(GetImportAddress('glDrawElementsInstanced'));
        glTexBuffer := tglTexBuffer(GetImportAddress('glTexBuffer'));
        glPrimitiveRestartIndex := tglPrimitiveRestartIndex(GetImportAddress('glPrimitiveRestartIndex'));

// GL_VERSION_3_2
{ OpenGL 3.2 also reuses entry points from these extensions: }
        Read_GL_ARB_draw_elements_base_vertex;
        Read_GL_ARB_provoking_vertex;
        Read_GL_ARB_sync;
        Read_GL_ARB_texture_multisample;

        glGetInteger64i_v := tglGetInteger64i_v(GetImportAddress('glGetInteger64i_v'));
        glGetBufferParameteri64v := tglGetBufferParameteri64v(GetImportAddress('glGetBufferParameteri64v'));
        glFramebufferTexture := tglFramebufferTexture(GetImportAddress('glFramebufferTexture'));
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

        glVertexAttribDivisor := tglVertexAttribDivisor(GetImportAddress('glVertexAttribDivisor'));

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

        glMinSampleShading := tglMinSampleShading(GetImportAddress('glMinSampleShading'));
        glBlendEquationi := tglBlendEquationi(GetImportAddress('glBlendEquationi'));
        glBlendEquationSeparatei := tglBlendEquationSeparatei(GetImportAddress('glBlendEquationSeparatei'));
        glBlendFunci := tglBlendFunci(GetImportAddress('glBlendFunci'));
        glBlendFuncSeparatei := tglBlendFuncSeparatei(GetImportAddress('glBlendFuncSeparatei'));

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
end;

class method GL.Read_GL_3DFX_tbuffer;
begin
    glTbufferMask3DFX := tglTbufferMask3DFX(GetImportAddress('glTbufferMask3DFX'));
end;

class method GL.Read_GL_APPLE_element_array;
begin
    glElementPointerAPPLE := tglElementPointerAPPLE(GetImportAddress('glElementPointerAPPLE'));
    glDrawElementArrayAPPLE := tglDrawElementArrayAPPLE(GetImportAddress('glDrawElementArrayAPPLE'));
    glDrawRangeElementArrayAPPLE := tglDrawRangeElementArrayAPPLE(GetImportAddress('glDrawRangeElementArrayAPPLE'));
    glMultiDrawElementArrayAPPLE := tglMultiDrawElementArrayAPPLE(GetImportAddress('glMultiDrawElementArrayAPPLE'));
    glMultiDrawRangeElementArrayAPPLE := tglMultiDrawRangeElementArrayAPPLE(GetImportAddress('glMultiDrawRangeElementArrayAPPLE'));
end;

class method GL.Read_GL_APPLE_fence;
begin
    glGenFencesAPPLE := tglGenFencesAPPLE(GetImportAddress('glGenFencesAPPLE'));
    glDeleteFencesAPPLE := tglDeleteFencesAPPLE(GetImportAddress('glDeleteFencesAPPLE'));
    glSetFenceAPPLE := tglSetFenceAPPLE(GetImportAddress('glSetFenceAPPLE'));
    glIsFenceAPPLE := tglIsFenceAPPLE(GetImportAddress('glIsFenceAPPLE'));
    glTestFenceAPPLE := tglTestFenceAPPLE(GetImportAddress('glTestFenceAPPLE'));
    glFinishFenceAPPLE := tglFinishFenceAPPLE(GetImportAddress('glFinishFenceAPPLE'));
    glTestObjectAPPLE := tglTestObjectAPPLE(GetImportAddress('glTestObjectAPPLE'));
    glFinishObjectAPPLE := tglFinishObjectAPPLE(GetImportAddress('glFinishObjectAPPLE'));
end;

class method GL.Read_GL_APPLE_vertex_array_object;
begin
    glBindVertexArrayAPPLE := tglBindVertexArrayAPPLE(GetImportAddress('glBindVertexArrayAPPLE'));
    glDeleteVertexArraysAPPLE := tglDeleteVertexArraysAPPLE(GetImportAddress('glDeleteVertexArraysAPPLE'));
    glGenVertexArraysAPPLE := tglGenVertexArraysAPPLE(GetImportAddress('glGenVertexArraysAPPLE'));
    glIsVertexArrayAPPLE := tglIsVertexArrayAPPLE(GetImportAddress('glIsVertexArrayAPPLE'));
end;

class method GL.Read_GL_APPLE_vertex_array_range;
begin
    glVertexArrayRangeAPPLE := tglVertexArrayRangeAPPLE(GetImportAddress('glVertexArrayRangeAPPLE'));
    glFlushVertexArrayRangeAPPLE := tglFlushVertexArrayRangeAPPLE(GetImportAddress('glFlushVertexArrayRangeAPPLE'));
    glVertexArrayParameteriAPPLE := tglVertexArrayParameteriAPPLE(GetImportAddress('glVertexArrayParameteriAPPLE'));
end;

class method GL.Read_GL_APPLE_texture_range;
begin
    glTextureRangeAPPLE := tglTextureRangeAPPLE(GetImportAddress('glTextureRangeAPPLE'));
    glGetTexParameterPointervAPPLE := tglGetTexParameterPointervAPPLE(GetImportAddress('glGetTexParameterPointervAPPLE'));
end;

class method GL.Read_GL_APPLE_vertex_program_evaluators;
begin
    glEnableVertexAttribAPPLE := tglEnableVertexAttribAPPLE(GetImportAddress('glEnableVertexAttribAPPLE'));
    glDisableVertexAttribAPPLE := tglDisableVertexAttribAPPLE(GetImportAddress('glDisableVertexAttribAPPLE'));
    glIsVertexAttribEnabledAPPLE := tglIsVertexAttribEnabledAPPLE(GetImportAddress('glIsVertexAttribEnabledAPPLE'));
    glMapVertexAttrib1dAPPLE := tglMapVertexAttrib1dAPPLE(GetImportAddress('glMapVertexAttrib1dAPPLE'));
    glMapVertexAttrib1fAPPLE := tglMapVertexAttrib1fAPPLE(GetImportAddress('glMapVertexAttrib1fAPPLE'));
    glMapVertexAttrib2dAPPLE := tglMapVertexAttrib2dAPPLE(GetImportAddress('glMapVertexAttrib2dAPPLE'));
    glMapVertexAttrib2fAPPLE := tglMapVertexAttrib2fAPPLE(GetImportAddress('glMapVertexAttrib2fAPPLE'));
end;

class method GL.Read_GL_APPLE_object_purgeable;
begin
    glObjectPurgeableAPPLE := tglObjectPurgeableAPPLE(GetImportAddress('glObjectPurgeableAPPLE'));
    glObjectUnpurgeableAPPLE := tglObjectUnpurgeableAPPLE(GetImportAddress('glObjectUnpurgeableAPPLE'));
    glGetObjectParameterivAPPLE := tglGetObjectParameterivAPPLE(GetImportAddress('glGetObjectParameterivAPPLE'));
end;

class method GL.Read_GL_ARB_matrix_palette;
begin
    glCurrentPaletteMatrixARB := tglCurrentPaletteMatrixARB(GetImportAddress('glCurrentPaletteMatrixARB'));
    glMatrixIndexubvARB := tglMatrixIndexubvARB(GetImportAddress('glMatrixIndexubvARB'));
    glMatrixIndexusvARB := tglMatrixIndexusvARB(GetImportAddress('glMatrixIndexusvARB'));
    glMatrixIndexuivARB := tglMatrixIndexuivARB(GetImportAddress('glMatrixIndexuivARB'));
    glMatrixIndexPointerARB := tglMatrixIndexPointerARB(GetImportAddress('glMatrixIndexPointerARB'));
end;

class method GL.Read_GL_ARB_multisample;
begin
    glSampleCoverageARB := tglSampleCoverageARB(GetImportAddress('glSampleCoverageARB'));
end;

class method GL.Read_GL_ARB_multitexture;
begin
    glActiveTextureARB := tglActiveTextureARB(GetImportAddress('glActiveTextureARB'));
    glClientActiveTextureARB := tglClientActiveTextureARB(GetImportAddress('glClientActiveTextureARB'));
    glMultiTexCoord1dARB := tglMultiTexCoord1dARB(GetImportAddress('glMultiTexCoord1dARB'));
    glMultiTexCoord1dvARB := tglMultiTexCoord1dvARB(GetImportAddress('glMultiTexCoord1dvARB'));
    glMultiTexCoord1fARB := tglMultiTexCoord1fARB(GetImportAddress('glMultiTexCoord1fARB'));
    glMultiTexCoord1fvARB := tglMultiTexCoord1fvARB(GetImportAddress('glMultiTexCoord1fvARB'));
    glMultiTexCoord1iARB := tglMultiTexCoord1iARB(GetImportAddress('glMultiTexCoord1iARB'));
    glMultiTexCoord1ivARB := tglMultiTexCoord1ivARB(GetImportAddress('glMultiTexCoord1ivARB'));
    glMultiTexCoord1sARB := tglMultiTexCoord1sARB(GetImportAddress('glMultiTexCoord1sARB'));
    glMultiTexCoord1svARB := tglMultiTexCoord1svARB(GetImportAddress('glMultiTexCoord1svARB'));
    glMultiTexCoord2dARB := tglMultiTexCoord2dARB(GetImportAddress('glMultiTexCoord2dARB'));
    glMultiTexCoord2dvARB := tglMultiTexCoord2dvARB(GetImportAddress('glMultiTexCoord2dvARB'));
    glMultiTexCoord2fARB := tglMultiTexCoord2fARB(GetImportAddress('glMultiTexCoord2fARB'));
    glMultiTexCoord2fvARB := tglMultiTexCoord2fvARB(GetImportAddress('glMultiTexCoord2fvARB'));
    glMultiTexCoord2iARB := tglMultiTexCoord2iARB(GetImportAddress('glMultiTexCoord2iARB'));
    glMultiTexCoord2ivARB := tglMultiTexCoord2ivARB(GetImportAddress('glMultiTexCoord2ivARB'));
    glMultiTexCoord2sARB := tglMultiTexCoord2sARB(GetImportAddress('glMultiTexCoord2sARB'));
    glMultiTexCoord2svARB := tglMultiTexCoord2svARB(GetImportAddress('glMultiTexCoord2svARB'));
    glMultiTexCoord3dARB := tglMultiTexCoord3dARB(GetImportAddress('glMultiTexCoord3dARB'));
    glMultiTexCoord3dvARB := tglMultiTexCoord3dvARB(GetImportAddress('glMultiTexCoord3dvARB'));
    glMultiTexCoord3fARB := tglMultiTexCoord3fARB(GetImportAddress('glMultiTexCoord3fARB'));
    glMultiTexCoord3fvARB := tglMultiTexCoord3fvARB(GetImportAddress('glMultiTexCoord3fvARB'));
    glMultiTexCoord3iARB := tglMultiTexCoord3iARB(GetImportAddress('glMultiTexCoord3iARB'));
    glMultiTexCoord3ivARB := tglMultiTexCoord3ivARB(GetImportAddress('glMultiTexCoord3ivARB'));
    glMultiTexCoord3sARB := tglMultiTexCoord3sARB(GetImportAddress('glMultiTexCoord3sARB'));
    glMultiTexCoord3svARB := tglMultiTexCoord3svARB(GetImportAddress('glMultiTexCoord3svARB'));
    glMultiTexCoord4dARB := tglMultiTexCoord4dARB(GetImportAddress('glMultiTexCoord4dARB'));
    glMultiTexCoord4dvARB := tglMultiTexCoord4dvARB(GetImportAddress('glMultiTexCoord4dvARB'));
    glMultiTexCoord4fARB := tglMultiTexCoord4fARB(GetImportAddress('glMultiTexCoord4fARB'));
    glMultiTexCoord4fvARB := tglMultiTexCoord4fvARB(GetImportAddress('glMultiTexCoord4fvARB'));
    glMultiTexCoord4iARB := tglMultiTexCoord4iARB(GetImportAddress('glMultiTexCoord4iARB'));
    glMultiTexCoord4ivARB := tglMultiTexCoord4ivARB(GetImportAddress('glMultiTexCoord4ivARB'));
    glMultiTexCoord4sARB := tglMultiTexCoord4sARB(GetImportAddress('glMultiTexCoord4sARB'));
    glMultiTexCoord4svARB := tglMultiTexCoord4svARB(GetImportAddress('glMultiTexCoord4svARB'));
end;

class method GL.Read_GL_ARB_point_parameters;
begin
    glPointParameterfARB := tglPointParameterfARB(GetImportAddress('glPointParameterfARB'));
    glPointParameterfvARB := tglPointParameterfvARB(GetImportAddress('glPointParameterfvARB'));
end;

class method GL.Read_GL_ARB_texture_compression;
begin
    glCompressedTexImage3DARB := tglCompressedTexImage3DARB(GetImportAddress('glCompressedTexImage3DARB'));
    glCompressedTexImage2DARB := tglCompressedTexImage2DARB(GetImportAddress('glCompressedTexImage2DARB'));
    glCompressedTexImage1DARB := tglCompressedTexImage1DARB(GetImportAddress('glCompressedTexImage1DARB'));
    glCompressedTexSubImage3DARB := tglCompressedTexSubImage3DARB(GetImportAddress('glCompressedTexSubImage3DARB'));
    glCompressedTexSubImage2DARB := tglCompressedTexSubImage2DARB(GetImportAddress('glCompressedTexSubImage2DARB'));
    glCompressedTexSubImage1DARB := tglCompressedTexSubImage1DARB(GetImportAddress('glCompressedTexSubImage1DARB'));
    glGetCompressedTexImageARB := tglGetCompressedTexImageARB(GetImportAddress('glGetCompressedTexImageARB'));
end;

class method GL.Read_GL_ARB_transpose_matrix;
begin
    glLoadTransposeMatrixfARB := tglLoadTransposeMatrixfARB(GetImportAddress('glLoadTransposeMatrixfARB'));
    glLoadTransposeMatrixdARB := tglLoadTransposeMatrixdARB(GetImportAddress('glLoadTransposeMatrixdARB'));
    glMultTransposeMatrixfARB := tglMultTransposeMatrixfARB(GetImportAddress('glMultTransposeMatrixfARB'));
    glMultTransposeMatrixdARB := tglMultTransposeMatrixdARB(GetImportAddress('glMultTransposeMatrixdARB'));
end;

class method GL.Read_GL_ARB_vertex_blend;
begin
    glWeightbvARB := tglWeightbvARB(GetImportAddress('glWeightbvARB'));
    glWeightsvARB := tglWeightsvARB(GetImportAddress('glWeightsvARB'));
    glWeightivARB := tglWeightivARB(GetImportAddress('glWeightivARB'));
    glWeightfvARB := tglWeightfvARB(GetImportAddress('glWeightfvARB'));
    glWeightdvARB := tglWeightdvARB(GetImportAddress('glWeightdvARB'));
    glWeightubvARB := tglWeightubvARB(GetImportAddress('glWeightubvARB'));
    glWeightusvARB := tglWeightusvARB(GetImportAddress('glWeightusvARB'));
    glWeightuivARB := tglWeightuivARB(GetImportAddress('glWeightuivARB'));
    glWeightPointerARB := tglWeightPointerARB(GetImportAddress('glWeightPointerARB'));
    glVertexBlendARB := tglVertexBlendARB(GetImportAddress('glVertexBlendARB'));
end;

class method GL.Read_GL_ARB_vertex_buffer_object;
begin
    glBindBufferARB := tglBindBufferARB(GetImportAddress('glBindBufferARB'));
    glDeleteBuffersARB := tglDeleteBuffersARB(GetImportAddress('glDeleteBuffersARB'));
    glGenBuffersARB := tglGenBuffersARB(GetImportAddress('glGenBuffersARB'));
    glIsBufferARB := tglIsBufferARB(GetImportAddress('glIsBufferARB'));
    glBufferDataARB := tglBufferDataARB(GetImportAddress('glBufferDataARB'));
    glBufferSubDataARB := tglBufferSubDataARB(GetImportAddress('glBufferSubDataARB'));
    glGetBufferSubDataARB := tglGetBufferSubDataARB(GetImportAddress('glGetBufferSubDataARB'));
    glMapBufferARB := tglMapBufferARB(GetImportAddress('glMapBufferARB'));
    glUnmapBufferARB := tglUnmapBufferARB(GetImportAddress('glUnmapBufferARB'));
    glGetBufferParameterivARB := tglGetBufferParameterivARB(GetImportAddress('glGetBufferParameterivARB'));
    glGetBufferPointervARB := tglGetBufferPointervARB(GetImportAddress('glGetBufferPointervARB'));
end;

class method GL.Read_GL_ARB_vertex_program;
begin
    glVertexAttrib1dARB := tglVertexAttrib1dARB(GetImportAddress('glVertexAttrib1dARB'));
    glVertexAttrib1dvARB := tglVertexAttrib1dvARB(GetImportAddress('glVertexAttrib1dvARB'));
    glVertexAttrib1fARB := tglVertexAttrib1fARB(GetImportAddress('glVertexAttrib1fARB'));
    glVertexAttrib1fvARB := tglVertexAttrib1fvARB(GetImportAddress('glVertexAttrib1fvARB'));
    glVertexAttrib1sARB := tglVertexAttrib1sARB(GetImportAddress('glVertexAttrib1sARB'));
    glVertexAttrib1svARB := tglVertexAttrib1svARB(GetImportAddress('glVertexAttrib1svARB'));
    glVertexAttrib2dARB := tglVertexAttrib2dARB(GetImportAddress('glVertexAttrib2dARB'));
    glVertexAttrib2dvARB := tglVertexAttrib2dvARB(GetImportAddress('glVertexAttrib2dvARB'));
    glVertexAttrib2fARB := tglVertexAttrib2fARB(GetImportAddress('glVertexAttrib2fARB'));
    glVertexAttrib2fvARB := tglVertexAttrib2fvARB(GetImportAddress('glVertexAttrib2fvARB'));
    glVertexAttrib2sARB := tglVertexAttrib2sARB(GetImportAddress('glVertexAttrib2sARB'));
    glVertexAttrib2svARB := tglVertexAttrib2svARB(GetImportAddress('glVertexAttrib2svARB'));
    glVertexAttrib3dARB := tglVertexAttrib3dARB(GetImportAddress('glVertexAttrib3dARB'));
    glVertexAttrib3dvARB := tglVertexAttrib3dvARB(GetImportAddress('glVertexAttrib3dvARB'));
    glVertexAttrib3fARB := tglVertexAttrib3fARB(GetImportAddress('glVertexAttrib3fARB'));
    glVertexAttrib3fvARB := tglVertexAttrib3fvARB(GetImportAddress('glVertexAttrib3fvARB'));
    glVertexAttrib3sARB := tglVertexAttrib3sARB(GetImportAddress('glVertexAttrib3sARB'));
    glVertexAttrib3svARB := tglVertexAttrib3svARB(GetImportAddress('glVertexAttrib3svARB'));
    glVertexAttrib4NbvARB := tglVertexAttrib4NbvARB(GetImportAddress('glVertexAttrib4NbvARB'));
    glVertexAttrib4NivARB := tglVertexAttrib4NivARB(GetImportAddress('glVertexAttrib4NivARB'));
    glVertexAttrib4NsvARB := tglVertexAttrib4NsvARB(GetImportAddress('glVertexAttrib4NsvARB'));
    glVertexAttrib4NubARB := tglVertexAttrib4NubARB(GetImportAddress('glVertexAttrib4NubARB'));
    glVertexAttrib4NubvARB := tglVertexAttrib4NubvARB(GetImportAddress('glVertexAttrib4NubvARB'));
    glVertexAttrib4NuivARB := tglVertexAttrib4NuivARB(GetImportAddress('glVertexAttrib4NuivARB'));
    glVertexAttrib4NusvARB := tglVertexAttrib4NusvARB(GetImportAddress('glVertexAttrib4NusvARB'));
    glVertexAttrib4bvARB := tglVertexAttrib4bvARB(GetImportAddress('glVertexAttrib4bvARB'));
    glVertexAttrib4dARB := tglVertexAttrib4dARB(GetImportAddress('glVertexAttrib4dARB'));
    glVertexAttrib4dvARB := tglVertexAttrib4dvARB(GetImportAddress('glVertexAttrib4dvARB'));
    glVertexAttrib4fARB := tglVertexAttrib4fARB(GetImportAddress('glVertexAttrib4fARB'));
    glVertexAttrib4fvARB := tglVertexAttrib4fvARB(GetImportAddress('glVertexAttrib4fvARB'));
    glVertexAttrib4ivARB := tglVertexAttrib4ivARB(GetImportAddress('glVertexAttrib4ivARB'));
    glVertexAttrib4sARB := tglVertexAttrib4sARB(GetImportAddress('glVertexAttrib4sARB'));
    glVertexAttrib4svARB := tglVertexAttrib4svARB(GetImportAddress('glVertexAttrib4svARB'));
    glVertexAttrib4ubvARB := tglVertexAttrib4ubvARB(GetImportAddress('glVertexAttrib4ubvARB'));
    glVertexAttrib4uivARB := tglVertexAttrib4uivARB(GetImportAddress('glVertexAttrib4uivARB'));
    glVertexAttrib4usvARB := tglVertexAttrib4usvARB(GetImportAddress('glVertexAttrib4usvARB'));
    glVertexAttribPointerARB := tglVertexAttribPointerARB(GetImportAddress('glVertexAttribPointerARB'));
    glEnableVertexAttribArrayARB := tglEnableVertexAttribArrayARB(GetImportAddress('glEnableVertexAttribArrayARB'));
    glDisableVertexAttribArrayARB := tglDisableVertexAttribArrayARB(GetImportAddress('glDisableVertexAttribArrayARB'));
    glProgramStringARB := tglProgramStringARB(GetImportAddress('glProgramStringARB'));
    glBindProgramARB := tglBindProgramARB(GetImportAddress('glBindProgramARB'));
    glDeleteProgramsARB := tglDeleteProgramsARB(GetImportAddress('glDeleteProgramsARB'));
    glGenProgramsARB := tglGenProgramsARB(GetImportAddress('glGenProgramsARB'));
    glProgramEnvParameter4dARB := tglProgramEnvParameter4dARB(GetImportAddress('glProgramEnvParameter4dARB'));
    glProgramEnvParameter4dvARB := tglProgramEnvParameter4dvARB(GetImportAddress('glProgramEnvParameter4dvARB'));
    glProgramEnvParameter4fARB := tglProgramEnvParameter4fARB(GetImportAddress('glProgramEnvParameter4fARB'));
    glProgramEnvParameter4fvARB := tglProgramEnvParameter4fvARB(GetImportAddress('glProgramEnvParameter4fvARB'));
    glProgramLocalParameter4dARB := tglProgramLocalParameter4dARB(GetImportAddress('glProgramLocalParameter4dARB'));
    glProgramLocalParameter4dvARB := tglProgramLocalParameter4dvARB(GetImportAddress('glProgramLocalParameter4dvARB'));
    glProgramLocalParameter4fARB := tglProgramLocalParameter4fARB(GetImportAddress('glProgramLocalParameter4fARB'));
    glProgramLocalParameter4fvARB := tglProgramLocalParameter4fvARB(GetImportAddress('glProgramLocalParameter4fvARB'));
    glGetProgramEnvParameterdvARB := tglGetProgramEnvParameterdvARB(GetImportAddress('glGetProgramEnvParameterdvARB'));
    glGetProgramEnvParameterfvARB := tglGetProgramEnvParameterfvARB(GetImportAddress('glGetProgramEnvParameterfvARB'));
    glGetProgramLocalParameterdvARB := tglGetProgramLocalParameterdvARB(GetImportAddress('glGetProgramLocalParameterdvARB'));
    glGetProgramLocalParameterfvARB := tglGetProgramLocalParameterfvARB(GetImportAddress('glGetProgramLocalParameterfvARB'));
    glGetProgramivARB := tglGetProgramivARB(GetImportAddress('glGetProgramivARB'));
    glGetProgramStringARB := tglGetProgramStringARB(GetImportAddress('glGetProgramStringARB'));
    glGetVertexAttribdvARB := tglGetVertexAttribdvARB(GetImportAddress('glGetVertexAttribdvARB'));
    glGetVertexAttribfvARB := tglGetVertexAttribfvARB(GetImportAddress('glGetVertexAttribfvARB'));
    glGetVertexAttribivARB := tglGetVertexAttribivARB(GetImportAddress('glGetVertexAttribivARB'));
    glGetVertexAttribPointervARB := tglGetVertexAttribPointervARB(GetImportAddress('glGetVertexAttribPointervARB'));
    glIsProgramARB := tglIsProgramARB(GetImportAddress('glIsProgramARB'));
end;

class method GL.Read_GL_ARB_window_pos;
begin
    glWindowPos2dARB := tglWindowPos2dARB(GetImportAddress('glWindowPos2dARB'));
    glWindowPos2dvARB := tglWindowPos2dvARB(GetImportAddress('glWindowPos2dvARB'));
    glWindowPos2fARB := tglWindowPos2fARB(GetImportAddress('glWindowPos2fARB'));
    glWindowPos2fvARB := tglWindowPos2fvARB(GetImportAddress('glWindowPos2fvARB'));
    glWindowPos2iARB := tglWindowPos2iARB(GetImportAddress('glWindowPos2iARB'));
    glWindowPos2ivARB := tglWindowPos2ivARB(GetImportAddress('glWindowPos2ivARB'));
    glWindowPos2sARB := tglWindowPos2sARB(GetImportAddress('glWindowPos2sARB'));
    glWindowPos2svARB := tglWindowPos2svARB(GetImportAddress('glWindowPos2svARB'));
    glWindowPos3dARB := tglWindowPos3dARB(GetImportAddress('glWindowPos3dARB'));
    glWindowPos3dvARB := tglWindowPos3dvARB(GetImportAddress('glWindowPos3dvARB'));
    glWindowPos3fARB := tglWindowPos3fARB(GetImportAddress('glWindowPos3fARB'));
    glWindowPos3fvARB := tglWindowPos3fvARB(GetImportAddress('glWindowPos3fvARB'));
    glWindowPos3iARB := tglWindowPos3iARB(GetImportAddress('glWindowPos3iARB'));
    glWindowPos3ivARB := tglWindowPos3ivARB(GetImportAddress('glWindowPos3ivARB'));
    glWindowPos3sARB := tglWindowPos3sARB(GetImportAddress('glWindowPos3sARB'));
    glWindowPos3svARB := tglWindowPos3svARB(GetImportAddress('glWindowPos3svARB'));
end;

class method GL.Read_GL_ARB_draw_buffers;
begin
    glDrawBuffersARB := tglDrawBuffersARB(GetImportAddress('glDrawBuffersARB'));
end;

class method GL.Read_GL_ARB_color_buffer_float;
begin
    glClampColorARB := tglClampColorARB(GetImportAddress('glClampColorARB'));
end;

class method GL.Read_GL_ARB_Shader_Objects;
begin
  // GL_ARB_Shader_Objects
    glCreateShaderObjectARB := tglCreateShaderObjectARB(GetImportAddress('glCreateShaderObjectARB'));
    glShaderSourceARB := tglShaderSourceARB(GetImportAddress('glShaderSourceARB'));
    glCompileShaderARB := tglCompileShaderARB(GetImportAddress('glCompileShaderARB'));
    glDeleteObjectARB := tglDeleteObjectARB(GetImportAddress('glDeleteObjectARB'));
    glGetHandleARB := tglGetHandleARB(GetImportAddress('glGetHandleARB'));
    glDetachObjectARB := tglDetachObjectARB(GetImportAddress('glDetachObjectARB'));
    glCreateProgramObjectARB := tglCreateProgramObjectARB(GetImportAddress('glCreateProgramObjectARB'));
    glAttachObjectARB := tglAttachObjectARB(GetImportAddress('glAttachObjectARB'));
    glLinkProgramARB := tglLinkProgramARB(GetImportAddress('glLinkProgramARB'));
    glUseProgramObjectARB := tglUseProgramObjectARB(GetImportAddress('glUseProgramObjectARB'));
    glValidateProgramARB := tglValidateProgramARB(GetImportAddress('glValidateProgramARB'));
    glGetObjectParameterfvARB := tglGetObjectParameterfvARB(GetImportAddress('glGetObjectParameterfvARB'));
    glGetObjectParameterivARB := tglGetObjectParameterivARB(GetImportAddress('glGetObjectParameterivARB'));
    glGetActiveUniformARB := tglGetActiveUniformARB(GetImportAddress('glGetActiveUniformARB'));
    glGetAttachedObjectsARB := tglGetAttachedObjectsARB(GetImportAddress('glGetAttachedObjectsARB'));
    glGetShaderSourceARB := tglGetShaderSourceARB(GetImportAddress('glGetShaderSourceARB'));
    glGetUniformfvARB := tglGetUniformfvARB(GetImportAddress('glGetUniformfvARB'));
    glGetUniformivARB := tglGetUniformivARB(GetImportAddress('glGetUniformivARB'));
    glGetUniformLocationARB := tglGetUniformLocationARB(GetImportAddress('glGetUniformLocationARB'));
    glGetInfoLogARB := tglGetInfoLogARB(GetImportAddress('glGetInfoLogARB'));
    glUniform1fARB := tglUniform1fARB(GetImportAddress('glUniform1fARB'));
    glUniform2fARB := tglUniform2fARB(GetImportAddress('glUniform2fARB'));
    glUniform3fARB := tglUniform3fARB(GetImportAddress('glUniform3fARB'));
    glUniform4fARB := tglUniform4fARB(GetImportAddress('glUniform4fARB'));
    glUniform1iARB := tglUniform1iARB(GetImportAddress('glUniform1iARB'));
    glUniform2iARB := tglUniform2iARB(GetImportAddress('glUniform2iARB'));
    glUniform3iARB := tglUniform3iARB(GetImportAddress('glUniform3iARB'));
    glUniform4iARB := tglUniform4iARB(GetImportAddress('glUniform4iARB'));
    glUniform1fvARB := tglUniform1fvARB(GetImportAddress('glUniform1fvARB'));
    glUniform2fvARB := tglUniform2fvARB(GetImportAddress('glUniform2fvARB'));
    glUniform3fvARB := tglUniform3fvARB(GetImportAddress('glUniform3fvARB'));
    glUniform4fvARB := tglUniform4fvARB(GetImportAddress('glUniform4fvARB'));
    glUniform1ivARB := tglUniform1ivARB(GetImportAddress('glUniform1ivARB'));
    glUniform2ivARB := tglUniform2ivARB(GetImportAddress('glUniform2ivARB'));
    glUniform3ivARB := tglUniform3ivARB(GetImportAddress('glUniform3ivARB'));
    glUniform4ivARB := tglUniform4ivARB(GetImportAddress('glUniform4ivARB'));
    glUniformMatrix2fvARB := tglUniformMatrix2fvARB(GetImportAddress('glUniformMatrix2fvARB'));
    glUniformMatrix3fvARB := tglUniformMatrix3fvARB(GetImportAddress('glUniformMatrix3fvARB'));
    glUniformMatrix4fvARB := tglUniformMatrix4fvARB(GetImportAddress('glUniformMatrix4fvARB'));

  // GL_ARB_vertex_shader
    glGetActiveAttribARB := tglGetActiveAttribARB(GetImportAddress('glGetActiveAttribARB'));
    glGetAttribLocationARB := tglGetAttribLocationARB(GetImportAddress('glGetAttribLocationARB'));
    glBindAttribLocationARB := tglBindAttribLocationARB(GetImportAddress('glBindAttribLocationARB'));
    glGetVertexAttribPointervARB := tglGetVertexAttribPointervARB(GetImportAddress('glGetVertexAttribPointervARB'));
end;

class method GL.Read_GL_ARB_occlusion_query;
begin
    glGenQueriesARB := tglGenQueriesARB(GetImportAddress('glGenQueriesARB'));
    glDeleteQueriesARB := tglDeleteQueriesARB(GetImportAddress('glDeleteQueriesARB'));
    glIsQueryARB := tglIsQueryARB(GetImportAddress('glIsQueryARB'));
    glBeginQueryARB := tglBeginQueryARB(GetImportAddress('glBeginQueryARB'));
    glEndQueryARB := tglEndQueryARB(GetImportAddress('glEndQueryARB'));
    glGetQueryivARB := tglGetQueryivARB(GetImportAddress('glGetQueryivARB'));
    glGetQueryObjectivARB := tglGetQueryObjectivARB(GetImportAddress('glGetQueryObjectivARB'));
    glGetQueryObjectuivARB := tglGetQueryObjectuivARB(GetImportAddress('glGetQueryObjectuivARB'));
end;

class method GL.Read_GL_ARB_draw_instanced;
begin
    glDrawArraysInstancedARB := tglDrawArraysInstancedARB(GetImportAddress('glDrawArraysInstancedARB'));
    glDrawElementsInstancedARB := tglDrawElementsInstancedARB(GetImportAddress('glDrawElementsInstancedARB'));
end;

class method GL.Read_GL_ARB_framebuffer_object;
begin
    glIsRenderbuffer := tglIsRenderbuffer(GetImportAddress('glIsRenderbuffer'));
    glBindRenderbuffer := tglBindRenderbuffer(GetImportAddress('glBindRenderbuffer'));
    glDeleteRenderbuffers := tglDeleteRenderbuffers(GetImportAddress('glDeleteRenderbuffers'));
    glGenRenderbuffers := tglGenRenderbuffers(GetImportAddress('glGenRenderbuffers'));
    glRenderbufferStorage := tglRenderbufferStorage(GetImportAddress('glRenderbufferStorage'));
    glGetRenderbufferParameteriv := tglGetRenderbufferParameteriv(GetImportAddress('glGetRenderbufferParameteriv'));
    glIsFramebuffer := tglIsFramebuffer(GetImportAddress('glIsFramebuffer'));
    glBindFramebuffer := tglBindFramebuffer(GetImportAddress('glBindFramebuffer'));
    glDeleteFramebuffers := tglDeleteFramebuffers(GetImportAddress('glDeleteFramebuffers'));
    glGenFramebuffers := tglGenFramebuffers(GetImportAddress('glGenFramebuffers'));
    glCheckFramebufferStatus := tglCheckFramebufferStatus(GetImportAddress('glCheckFramebufferStatus'));
    glFramebufferTexture1D := tglFramebufferTexture1D(GetImportAddress('glFramebufferTexture1D'));
    glFramebufferTexture2D := tglFramebufferTexture2D(GetImportAddress('glFramebufferTexture2D'));
    glFramebufferTexture3D := tglFramebufferTexture3D(GetImportAddress('glFramebufferTexture3D'));
    glGetFramebufferAttachmentParameteriv := tglGetFramebufferAttachmentParameteriv(GetImportAddress('glGetFramebufferAttachmentParameteriv'));
    glFramebufferRenderbuffer := tglFramebufferRenderbuffer(GetImportAddress('glFramebufferRenderbuffer'));
    glGenerateMipmap := tglGenerateMipmap(GetImportAddress('glGenerateMipmap'));
    glBlitFramebuffer := tglBlitFramebuffer(GetImportAddress('glBlitFramebuffer'));
    glRenderbufferStorageMultisample := tglRenderbufferStorageMultisample(GetImportAddress('glRenderbufferStorageMultisample'));
    glFramebufferTextureLayer := tglFramebufferTextureLayer(GetImportAddress('glFramebufferTextureLayer'));
end;

class method GL.Read_GL_ARB_geometry_shader4;
begin
    glProgramParameteriARB := tglProgramParameteriARB(GetImportAddress('glProgramParameteriARB'));
    glFramebufferTextureARB := tglFramebufferTextureARB(GetImportAddress('glFramebufferTextureARB'));
    glFramebufferTextureLayerARB := tglFramebufferTextureLayerARB(GetImportAddress('glFramebufferTextureLayerARB'));
    glFramebufferTextureFaceARB := tglFramebufferTextureFaceARB(GetImportAddress('glFramebufferTextureFaceARB'));
end;

class method GL.Read_GL_ARB_instanced_arrays;
begin
    glVertexAttribDivisorARB := tglVertexAttribDivisorARB(GetImportAddress('glVertexAttribDivisorARB'));
end;

class method GL.Read_GL_ARB_map_buffer_range;
begin
    glMapBufferRange := tglMapBufferRange(GetImportAddress('glMapBufferRange'));
    glFlushMappedBufferRange := tglFlushMappedBufferRange(GetImportAddress('glFlushMappedBufferRange'));
end;

class method GL.Read_GL_ARB_texture_buffer_object;
begin
    glTexBufferARB := tglTexBufferARB(GetImportAddress('glTexBufferARB'));
end;

class method GL.Read_GL_ARB_vertex_array_object;
begin
    glBindVertexArray := tglBindVertexArray(GetImportAddress('glBindVertexArray'));
    glDeleteVertexArrays := tglDeleteVertexArrays(GetImportAddress('glDeleteVertexArrays'));
    glGenVertexArrays := tglGenVertexArrays(GetImportAddress('glGenVertexArrays'));
    glIsVertexArray := tglIsVertexArray(GetImportAddress('glIsVertexArray'));
end;

class method GL.Read_GL_ARB_uniform_buffer_object;
begin
    glGetUniformIndices := tglGetUniformIndices(GetImportAddress('glGetUniformIndices'));
    glGetActiveUniformsiv := tglGetActiveUniformsiv(GetImportAddress('glGetActiveUniformsiv'));
    glGetActiveUniformName := tglGetActiveUniformName(GetImportAddress('glGetActiveUniformName'));
    glGetUniformBlockIndex := tglGetUniformBlockIndex(GetImportAddress('glGetUniformBlockIndex'));
    glGetActiveUniformBlockiv := tglGetActiveUniformBlockiv(GetImportAddress('glGetActiveUniformBlockiv'));
    glGetActiveUniformBlockName := tglGetActiveUniformBlockName(GetImportAddress('glGetActiveUniformBlockName'));
    glUniformBlockBinding := tglUniformBlockBinding(GetImportAddress('glUniformBlockBinding'));
end;

class method GL.Read_GL_ARB_copy_buffer;
begin
    glCopyBufferSubData := tglCopyBufferSubData(GetImportAddress('glCopyBufferSubData'));
end;

class method GL.Read_GL_ARB_draw_elements_base_vertex;
begin
    glDrawElementsBaseVertex := tglDrawElementsBaseVertex(GetImportAddress('glDrawElementsBaseVertex'));
    glDrawRangeElementsBaseVertex := tglDrawRangeElementsBaseVertex(GetImportAddress('glDrawRangeElementsBaseVertex'));
    glDrawElementsInstancedBaseVertex := tglDrawElementsInstancedBaseVertex(GetImportAddress('glDrawElementsInstancedBaseVertex'));
    glMultiDrawElementsBaseVertex := tglMultiDrawElementsBaseVertex(GetImportAddress('glMultiDrawElementsBaseVertex'));
end;

class method GL.Read_GL_ARB_provoking_vertex;
begin
    glProvokingVertex := tglProvokingVertex(GetImportAddress('glProvokingVertex'));
end;

class method GL.Read_GL_ARB_sync;
begin
    glFenceSync := tglFenceSync(GetImportAddress('glFenceSync'));
    glIsSync := tglIsSync(GetImportAddress('glIsSync'));
    glDeleteSync := tglDeleteSync(GetImportAddress('glDeleteSync'));
    glClientWaitSync := tglClientWaitSync(GetImportAddress('glClientWaitSync'));
    glWaitSync := tglWaitSync(GetImportAddress('glWaitSync'));
    glGetInteger64v := tglGetInteger64v(GetImportAddress('glGetInteger64v'));
    glGetSynciv := tglGetSynciv(GetImportAddress('glGetSynciv'));
end;

class method GL.Read_GL_ARB_texture_multisample;
begin
    glTexImage2DMultisample := tglTexImage2DMultisample(GetImportAddress('glTexImage2DMultisample'));
    glTexImage3DMultisample := tglTexImage3DMultisample(GetImportAddress('glTexImage3DMultisample'));
    glGetMultisamplefv := tglGetMultisamplefv(GetImportAddress('glGetMultisamplefv'));
    glSampleMaski := tglSampleMaski(GetImportAddress('glSampleMaski'));
end;

class method GL.Read_GL_ARB_draw_buffers_blend;
begin
    glBlendEquationiARB := tglBlendEquationiARB(GetImportAddress('glBlendEquationiARB'));
    glBlendEquationSeparateiARB := tglBlendEquationSeparateiARB(GetImportAddress('glBlendEquationSeparateiARB'));
    glBlendFunciARB := tglBlendFunciARB(GetImportAddress('glBlendFunciARB'));
    glBlendFuncSeparateiARB := tglBlendFuncSeparateiARB(GetImportAddress('glBlendFuncSeparateiARB'));
end;

class method GL.Read_GL_ARB_sample_shading;
begin
    glMinSampleShadingARB := tglMinSampleShadingARB(GetImportAddress('glMinSampleShadingARB'));
end;

class method GL.Read_GL_ARB_sample_locations;
begin
    glFramebufferSampleLocationsfvARB := tglFramebufferSampleLocationsfvARB(GetImportAddress('glFramebufferSampleLocationsfvARB'));
    glNamedFramebufferSampleLocationsfvARB := tglNamedFramebufferSampleLocationsfvARB(GetImportAddress('glNamedFramebufferSampleLocationsfvARB'));
    glEvaluateDepthValuesARB := tglEvaluateDepthValuesARB(GetImportAddress('glEvaluateDepthValuesARB'));
end;

class method GL.Read_GL_ARB_shading_language_include;
begin
    glNamedStringARB := tglNamedStringARB(GetImportAddress('glNamedStringARB'));
    glDeleteNamedStringARB := tglDeleteNamedStringARB(GetImportAddress('glDeleteNamedStringARB'));
    glCompileShaderIncludeARB := tglCompileShaderIncludeARB(GetImportAddress('glCompileShaderIncludeARB'));
    glIsNamedStringARB := tglIsNamedStringARB(GetImportAddress('glIsNamedStringARB'));
    glGetNamedStringARB := tglGetNamedStringARB(GetImportAddress('glGetNamedStringARB'));
    glGetNamedStringivARB := tglGetNamedStringivARB(GetImportAddress('glGetNamedStringivARB'));
end;

class method GL.Read_GL_ARB_sparse_texture;
begin
    glTexPageCommitmentARB := tglTexPageCommitmentARB(GetImportAddress('glTexPageCommitmentARB'));
end;

class method GL.Read_GL_ARB_sparse_buffer;
begin
    glBufferPageCommitmentARB := tglBufferPageCommitmentARB(GetImportAddress('glBufferPageCommitmentARB'));
    glNamedBufferPageCommitmentEXT := tglNamedBufferPageCommitmentEXT(GetImportAddress('glNamedBufferPageCommitmentEXT'));
    glNamedBufferPageCommitmentARB := tglNamedBufferPageCommitmentARB(GetImportAddress('glNamedBufferPageCommitmentARB'));
end;

class method GL.Read_GL_KHR_blend_equation_advanced;
begin
    glBlendBarrierKHR := tglBlendBarrierKHR(GetImportAddress('glBlendBarrierKHR'));
end;


class method GL.Read_GL_ARB_blend_func_extended;
begin
    glBindFragDataLocationIndexed := tglBindFragDataLocationIndexed(GetImportAddress('glBindFragDataLocationIndexed'));
    glGetFragDataIndex := tglGetFragDataIndex(GetImportAddress('glGetFragDataIndex'));
end;

class method GL.Read_GL_ARB_sampler_objects;
begin
    glGenSamplers := tglGenSamplers(GetImportAddress('glGenSamplers'));
    glDeleteSamplers := tglDeleteSamplers(GetImportAddress('glDeleteSamplers'));
    glIsSampler := tglIsSampler(GetImportAddress('glIsSampler'));
    glBindSampler := tglBindSampler(GetImportAddress('glBindSampler'));
    glSamplerParameteri := tglSamplerParameteri(GetImportAddress('glSamplerParameteri'));
    glSamplerParameteriv := tglSamplerParameteriv(GetImportAddress('glSamplerParameteriv'));
    glSamplerParameterf := tglSamplerParameterf(GetImportAddress('glSamplerParameterf'));
    glSamplerParameterfv := tglSamplerParameterfv(GetImportAddress('glSamplerParameterfv'));
    glSamplerParameterIiv := tglSamplerParameterIiv(GetImportAddress('glSamplerParameterIiv'));
    glSamplerParameterIuiv := tglSamplerParameterIuiv(GetImportAddress('glSamplerParameterIuiv'));
    glGetSamplerParameteriv := tglGetSamplerParameteriv(GetImportAddress('glGetSamplerParameteriv'));
    glGetSamplerParameterIiv := tglGetSamplerParameterIiv(GetImportAddress('glGetSamplerParameterIiv'));
    glGetSamplerParameterfv := tglGetSamplerParameterfv(GetImportAddress('glGetSamplerParameterfv'));
    glGetSamplerParameterIuiv := tglGetSamplerParameterIuiv(GetImportAddress('glGetSamplerParameterIuiv'));
end;

class method GL.Read_GL_ARB_timer_query;
begin
    glQueryCounter := tglQueryCounter(GetImportAddress('glQueryCounter'));
    glGetQueryObjecti64v := tglGetQueryObjecti64v(GetImportAddress('glGetQueryObjecti64v'));
    glGetQueryObjectui64v := tglGetQueryObjectui64v(GetImportAddress('glGetQueryObjectui64v'));
end;

class method GL.Read_GL_ARB_vertex_type_2_10_10_10_rev;
begin
    glVertexP2ui := tglVertexP2ui(GetImportAddress('glVertexP2ui'));
    glVertexP2uiv := tglVertexP2uiv(GetImportAddress('glVertexP2uiv'));
    glVertexP3ui := tglVertexP3ui(GetImportAddress('glVertexP3ui'));
    glVertexP3uiv := tglVertexP3uiv(GetImportAddress('glVertexP3uiv'));
    glVertexP4ui := tglVertexP4ui(GetImportAddress('glVertexP4ui'));
    glVertexP4uiv := tglVertexP4uiv(GetImportAddress('glVertexP4uiv'));
    glTexCoordP1ui := tglTexCoordP1ui(GetImportAddress('glTexCoordP1ui'));
    glTexCoordP1uiv := tglTexCoordP1uiv(GetImportAddress('glTexCoordP1uiv'));
    glTexCoordP2ui := tglTexCoordP2ui(GetImportAddress('glTexCoordP2ui'));
    glTexCoordP2uiv := tglTexCoordP2uiv(GetImportAddress('glTexCoordP2uiv'));
    glTexCoordP3ui := tglTexCoordP3ui(GetImportAddress('glTexCoordP3ui'));
    glTexCoordP3uiv := tglTexCoordP3uiv(GetImportAddress('glTexCoordP3uiv'));
    glTexCoordP4ui := tglTexCoordP4ui(GetImportAddress('glTexCoordP4ui'));
    glTexCoordP4uiv := tglTexCoordP4uiv(GetImportAddress('glTexCoordP4uiv'));
    glMultiTexCoordP1ui := tglMultiTexCoordP1ui(GetImportAddress('glMultiTexCoordP1ui'));
    glMultiTexCoordP1uiv := tglMultiTexCoordP1uiv(GetImportAddress('glMultiTexCoordP1uiv'));
    glMultiTexCoordP2ui := tglMultiTexCoordP2ui(GetImportAddress('glMultiTexCoordP2ui'));
    glMultiTexCoordP2uiv := tglMultiTexCoordP2uiv(GetImportAddress('glMultiTexCoordP2uiv'));
    glMultiTexCoordP3ui := tglMultiTexCoordP3ui(GetImportAddress('glMultiTexCoordP3ui'));
    glMultiTexCoordP3uiv := tglMultiTexCoordP3uiv(GetImportAddress('glMultiTexCoordP3uiv'));
    glMultiTexCoordP4ui := tglMultiTexCoordP4ui(GetImportAddress('glMultiTexCoordP4ui'));
    glMultiTexCoordP4uiv := tglMultiTexCoordP4uiv(GetImportAddress('glMultiTexCoordP4uiv'));
    glNormalP3ui := tglNormalP3ui(GetImportAddress('glNormalP3ui'));
    glNormalP3uiv := tglNormalP3uiv(GetImportAddress('glNormalP3uiv'));
    glColorP3ui := tglColorP3ui(GetImportAddress('glColorP3ui'));
    glColorP3uiv := tglColorP3uiv(GetImportAddress('glColorP3uiv'));
    glColorP4ui := tglColorP4ui(GetImportAddress('glColorP4ui'));
    glColorP4uiv := tglColorP4uiv(GetImportAddress('glColorP4uiv'));
    glSecondaryColorP3ui := tglSecondaryColorP3ui(GetImportAddress('glSecondaryColorP3ui'));
    glSecondaryColorP3uiv := tglSecondaryColorP3uiv(GetImportAddress('glSecondaryColorP3uiv'));
    glVertexAttribP1ui := tglVertexAttribP1ui(GetImportAddress('glVertexAttribP1ui'));
    glVertexAttribP1uiv := tglVertexAttribP1uiv(GetImportAddress('glVertexAttribP1uiv'));
    glVertexAttribP2ui := tglVertexAttribP2ui(GetImportAddress('glVertexAttribP2ui'));
    glVertexAttribP2uiv := tglVertexAttribP2uiv(GetImportAddress('glVertexAttribP2uiv'));
    glVertexAttribP3ui := tglVertexAttribP3ui(GetImportAddress('glVertexAttribP3ui'));
    glVertexAttribP3uiv := tglVertexAttribP3uiv(GetImportAddress('glVertexAttribP3uiv'));
    glVertexAttribP4ui := tglVertexAttribP4ui(GetImportAddress('glVertexAttribP4ui'));
    glVertexAttribP4uiv := tglVertexAttribP4uiv(GetImportAddress('glVertexAttribP4uiv'));
end;

class method GL.Read_GL_ARB_draw_indirect;
begin
    glDrawArraysIndirect := tglDrawArraysIndirect(GetImportAddress('glDrawArraysIndirect'));
    glDrawElementsIndirect := tglDrawElementsIndirect(GetImportAddress('glDrawElementsIndirect'));
end;

class method GL.Read_GL_ARB_gpu_shader_fp64;
begin
    glUniform1d := tglUniform1d(GetImportAddress('glUniform1d'));
    glUniform2d := tglUniform2d(GetImportAddress('glUniform2d'));
    glUniform3d := tglUniform3d(GetImportAddress('glUniform3d'));
    glUniform4d := tglUniform4d(GetImportAddress('glUniform4d'));
    glUniform1dv := tglUniform1dv(GetImportAddress('glUniform1dv'));
    glUniform2dv := tglUniform2dv(GetImportAddress('glUniform2dv'));
    glUniform3dv := tglUniform3dv(GetImportAddress('glUniform3dv'));
    glUniform4dv := tglUniform4dv(GetImportAddress('glUniform4dv'));
    glUniformMatrix2dv := tglUniformMatrix2dv(GetImportAddress('glUniformMatrix2dv'));
    glUniformMatrix3dv := tglUniformMatrix3dv(GetImportAddress('glUniformMatrix3dv'));
    glUniformMatrix4dv := tglUniformMatrix4dv(GetImportAddress('glUniformMatrix4dv'));
    glUniformMatrix2x3dv := tglUniformMatrix2x3dv(GetImportAddress('glUniformMatrix2x3dv'));
    glUniformMatrix2x4dv := tglUniformMatrix2x4dv(GetImportAddress('glUniformMatrix2x4dv'));
    glUniformMatrix3x2dv := tglUniformMatrix3x2dv(GetImportAddress('glUniformMatrix3x2dv'));
    glUniformMatrix3x4dv := tglUniformMatrix3x4dv(GetImportAddress('glUniformMatrix3x4dv'));
    glUniformMatrix4x2dv := tglUniformMatrix4x2dv(GetImportAddress('glUniformMatrix4x2dv'));
    glUniformMatrix4x3dv := tglUniformMatrix4x3dv(GetImportAddress('glUniformMatrix4x3dv'));
    glGetUniformdv := tglGetUniformdv(GetImportAddress('glGetUniformdv'));
end;

class method GL.Read_GL_ARB_gpu_shader_int64;
begin
    glUniform1i64ARB := tglUniform1i64ARB(GetImportAddress('glUniform1i64ARB'));
    glUniform2i64ARB := tglUniform2i64ARB(GetImportAddress('glUniform2i64ARB'));
    glUniform3i64ARB := tglUniform3i64ARB(GetImportAddress('glUniform3i64ARB'));
    glUniform4i64ARB := tglUniform4i64ARB(GetImportAddress('glUniform4i64ARB'));
    glUniform1i64vARB := tglUniform1i64vARB(GetImportAddress('glUniform1i64vARB'));
    glUniform2i64vARB := tglUniform2i64vARB(GetImportAddress('glUniform2i64vARB'));
    glUniform3i64vARB := tglUniform3i64vARB(GetImportAddress('glUniform3i64vARB'));
    glUniform4i64vARB := tglUniform4i64vARB(GetImportAddress('glUniform4i64vARB'));
    glUniform1ui64ARB := tglUniform1ui64ARB(GetImportAddress('glUniform1ui64ARB'));
    glUniform2ui64ARB := tglUniform2ui64ARB(GetImportAddress('glUniform2ui64ARB'));
    glUniform3ui64ARB := tglUniform3ui64ARB(GetImportAddress('glUniform3ui64ARB'));
    glUniform4ui64ARB := tglUniform4ui64ARB(GetImportAddress('glUniform4ui64ARB'));
    glUniform1ui64vARB := tglUniform1ui64vARB(GetImportAddress('glUniform1ui64vARB'));
    glUniform2ui64vARB := tglUniform2ui64vARB(GetImportAddress('glUniform2ui64vARB'));
    glUniform3ui64vARB := tglUniform3ui64vARB(GetImportAddress('glUniform3ui64vARB'));
    glUniform4ui64vARB := tglUniform4ui64vARB(GetImportAddress('glUniform4ui64vARB'));
    glGetUniformi64vARB := tglGetUniformi64vARB(GetImportAddress('glGetUniformi64vARB'));
    glGetUniformui64vARB := tglGetUniformui64vARB(GetImportAddress('glGetUniformui64vARB'));
    glGetnUniformi64vARB := tglGetnUniformi64vARB(GetImportAddress('glGetnUniformi64vARB'));
    glGetnUniformui64vARB := tglGetnUniformui64vARB(GetImportAddress('glGetnUniformui64vARB'));
    glProgramUniform1i64ARB := tglProgramUniform1i64ARB(GetImportAddress('glProgramUniform1i64ARB'));
    glProgramUniform2i64ARB := tglProgramUniform2i64ARB(GetImportAddress('glProgramUniform2i64ARB'));
    glProgramUniform3i64ARB := tglProgramUniform3i64ARB(GetImportAddress('glProgramUniform3i64ARB'));
    glProgramUniform4i64ARB := tglProgramUniform4i64ARB(GetImportAddress('glProgramUniform4i64ARB'));
    glProgramUniform1i64vARB := tglProgramUniform1i64vARB(GetImportAddress('glProgramUniform1i64vARB'));
    glProgramUniform2i64vARB := tglProgramUniform2i64vARB(GetImportAddress('glProgramUniform2i64vARB'));
    glProgramUniform3i64vARB := tglProgramUniform3i64vARB(GetImportAddress('glProgramUniform3i64vARB'));
    glProgramUniform4i64vARB := tglProgramUniform4i64vARB(GetImportAddress('glProgramUniform4i64vARB'));
    glProgramUniform1ui64ARB := tglProgramUniform1ui64ARB(GetImportAddress('glProgramUniform1ui64ARB'));
    glProgramUniform2ui64ARB := tglProgramUniform2ui64ARB(GetImportAddress('glProgramUniform2ui64ARB'));
    glProgramUniform3ui64ARB := tglProgramUniform3ui64ARB(GetImportAddress('glProgramUniform3ui64ARB'));
    glProgramUniform4ui64ARB := tglProgramUniform4ui64ARB(GetImportAddress('glProgramUniform4ui64ARB '));
    glProgramUniform1ui64vARB := tglProgramUniform1ui64vARB(GetImportAddress('glProgramUniform1ui64vARB'));
    glProgramUniform2ui64vARB := tglProgramUniform2ui64vARB(GetImportAddress('glProgramUniform2ui64vARB'));
    glProgramUniform3ui64vARB := tglProgramUniform3ui64vARB(GetImportAddress('glProgramUniform3ui64vARB'));
    glProgramUniform4ui64vARB := tglProgramUniform4ui64vARB(GetImportAddress('glProgramUniform4ui64vARB'));
end;

class method GL.Read_GL_ARB_shader_subroutine;
begin
    glGetSubroutineUniformLocation := tglGetSubroutineUniformLocation(GetImportAddress('glGetSubroutineUniformLocation'));
    glGetSubroutineIndex := tglGetSubroutineIndex(GetImportAddress('glGetSubroutineIndex'));
    glGetActiveSubroutineUniformiv := tglGetActiveSubroutineUniformiv(GetImportAddress('glGetActiveSubroutineUniformiv'));
    glGetActiveSubroutineUniformName := tglGetActiveSubroutineUniformName(GetImportAddress('glGetActiveSubroutineUniformName'));
    glGetActiveSubroutineName := tglGetActiveSubroutineName(GetImportAddress('glGetActiveSubroutineName'));
    glUniformSubroutinesuiv := tglUniformSubroutinesuiv(GetImportAddress('glUniformSubroutinesuiv'));
    glGetUniformSubroutineuiv := tglGetUniformSubroutineuiv(GetImportAddress('glGetUniformSubroutineuiv'));
    glGetProgramStageiv := tglGetProgramStageiv(GetImportAddress('glGetProgramStageiv'));
end;

class method GL.Read_GL_ARB_tessellation_shader;
begin
    glPatchParameteri := tglPatchParameteri(GetImportAddress('glPatchParameteri'));
    glPatchParameterfv := tglPatchParameterfv(GetImportAddress('glPatchParameterfv'));
end;

class method GL.Read_GL_ARB_transform_feedback2;
begin
    glBindTransformFeedback := tglBindTransformFeedback(GetImportAddress('glBindTransformFeedback'));
    glDeleteTransformFeedbacks := tglDeleteTransformFeedbacks(GetImportAddress('glDeleteTransformFeedbacks'));
    glGenTransformFeedbacks := tglGenTransformFeedbacks(GetImportAddress('glGenTransformFeedbacks'));
    glIsTransformFeedback := tglIsTransformFeedback(GetImportAddress('glIsTransformFeedback'));
    glPauseTransformFeedback := tglPauseTransformFeedback(GetImportAddress('glPauseTransformFeedback'));
    glResumeTransformFeedback := tglResumeTransformFeedback(GetImportAddress('glResumeTransformFeedback'));
    glDrawTransformFeedback := tglDrawTransformFeedback(GetImportAddress('glDrawTransformFeedback'));
end;

class method GL.Read_GL_ARB_transform_feedback3;
begin
    glDrawTransformFeedbackStream := tglDrawTransformFeedbackStream(GetImportAddress('glDrawTransformFeedbackStream'));
    glBeginQueryIndexed := tglBeginQueryIndexed(GetImportAddress('glBeginQueryIndexed'));
    glEndQueryIndexed := tglEndQueryIndexed(GetImportAddress('glEndQueryIndexed'));
    glGetQueryIndexediv := tglGetQueryIndexediv(GetImportAddress('glGetQueryIndexediv'));
end;

class method GL.Read_GL_ARB_ES2_compatibility;
begin
    glReleaseShaderCompiler := tglReleaseShaderCompiler(GetImportAddress('glReleaseShaderCompiler'));
    glShaderBinary := tglShaderBinary(GetImportAddress('glShaderBinary'));
    glGetShaderPrecisionFormat := tglGetShaderPrecisionFormat(GetImportAddress('glGetShaderPrecisionFormat'));
    glDepthRangef := tglDepthRangef(GetImportAddress('glDepthRangef'));
    glClearDepthf := tglClearDepthf(GetImportAddress('glClearDepthf'));
end;

class method GL.Read_GL_ARB_ES3_2_compatibility;
begin
    glPrimitiveBoundingBoxARB := tglPrimitiveBoundingBoxARB(GetImportAddress('glPrimitiveBoundingBoxARB'));
end;

class method GL.Read_GL_ARB_parallel_shader_compile;
begin
    glMaxShaderCompilerThreadsARB := tglMaxShaderCompilerThreadsARB(GetImportAddress('glMaxShaderCompilerThreadsARB'));
end;

class method GL.Read_GL_ARB_get_program_binary;
begin
    glGetProgramBinary := tglGetProgramBinary(GetImportAddress('glGetProgramBinary'));
    glProgramBinary := tglProgramBinary(GetImportAddress('glProgramBinary'));
    glProgramParameteri := tglProgramParameteri(GetImportAddress('glProgramParameteri'));
end;

class method GL.Read_GL_ARB_separate_shader_objects;
begin
    glUseProgramStages := tglUseProgramStages(GetImportAddress('glUseProgramStages'));
    glActiveShaderProgram := tglActiveShaderProgram(GetImportAddress('glActiveShaderProgram'));
    glCreateShaderProgramv := tglCreateShaderProgramv(GetImportAddress('glCreateShaderProgramv'));
    glBindProgramPipeline := tglBindProgramPipeline(GetImportAddress('glBindProgramPipeline'));
    glDeleteProgramPipelines := tglDeleteProgramPipelines(GetImportAddress('glDeleteProgramPipelines'));
    glGenProgramPipelines := tglGenProgramPipelines(GetImportAddress('glGenProgramPipelines'));
    glIsProgramPipeline := tglIsProgramPipeline(GetImportAddress('glIsProgramPipeline'));
    glGetProgramPipelineiv := tglGetProgramPipelineiv(GetImportAddress('glGetProgramPipelineiv'));
    glProgramUniform1i := tglProgramUniform1i(GetImportAddress('glProgramUniform1i'));
    glProgramUniform1iv := tglProgramUniform1iv(GetImportAddress('glProgramUniform1iv'));
    glProgramUniform1f := tglProgramUniform1f(GetImportAddress('glProgramUniform1f'));
    glProgramUniform1fv := tglProgramUniform1fv(GetImportAddress('glProgramUniform1fv'));
    glProgramUniform1d := tglProgramUniform1d(GetImportAddress('glProgramUniform1d'));
    glProgramUniform1dv := tglProgramUniform1dv(GetImportAddress('glProgramUniform1dv'));
    glProgramUniform1ui := tglProgramUniform1ui(GetImportAddress('glProgramUniform1ui'));
    glProgramUniform1uiv := tglProgramUniform1uiv(GetImportAddress('glProgramUniform1uiv'));
    glProgramUniform2i := tglProgramUniform2i(GetImportAddress('glProgramUniform2i'));
    glProgramUniform2iv := tglProgramUniform2iv(GetImportAddress('glProgramUniform2iv'));
    glProgramUniform2f := tglProgramUniform2f(GetImportAddress('glProgramUniform2f'));
    glProgramUniform2fv := tglProgramUniform2fv(GetImportAddress('glProgramUniform2fv'));
    glProgramUniform2d := tglProgramUniform2d(GetImportAddress('glProgramUniform2d'));
    glProgramUniform2dv := tglProgramUniform2dv(GetImportAddress('glProgramUniform2dv'));
    glProgramUniform2ui := tglProgramUniform2ui(GetImportAddress('glProgramUniform2ui'));
    glProgramUniform2uiv := tglProgramUniform2uiv(GetImportAddress('glProgramUniform2uiv'));
    glProgramUniform3i := tglProgramUniform3i(GetImportAddress('glProgramUniform3i'));
    glProgramUniform3iv := tglProgramUniform3iv(GetImportAddress('glProgramUniform3iv'));
    glProgramUniform3f := tglProgramUniform3f(GetImportAddress('glProgramUniform3f'));
    glProgramUniform3fv := tglProgramUniform3fv(GetImportAddress('glProgramUniform3fv'));
    glProgramUniform3d := tglProgramUniform3d(GetImportAddress('glProgramUniform3d'));
    glProgramUniform3dv := tglProgramUniform3dv(GetImportAddress('glProgramUniform3dv'));
    glProgramUniform3ui := tglProgramUniform3ui(GetImportAddress('glProgramUniform3ui'));
    glProgramUniform3uiv := tglProgramUniform3uiv(GetImportAddress('glProgramUniform3uiv'));
    glProgramUniform4i := tglProgramUniform4i(GetImportAddress('glProgramUniform4i'));
    glProgramUniform4iv := tglProgramUniform4iv(GetImportAddress('glProgramUniform4iv'));
    glProgramUniform4f := tglProgramUniform4f(GetImportAddress('glProgramUniform4f'));
    glProgramUniform4fv := tglProgramUniform4fv(GetImportAddress('glProgramUniform4fv'));
    glProgramUniform4d := tglProgramUniform4d(GetImportAddress('glProgramUniform4d'));
    glProgramUniform4dv := tglProgramUniform4dv(GetImportAddress('glProgramUniform4dv'));
    glProgramUniform4ui := tglProgramUniform4ui(GetImportAddress('glProgramUniform4ui'));
    glProgramUniform4uiv := tglProgramUniform4uiv(GetImportAddress('glProgramUniform4uiv'));
    glProgramUniformMatrix2fv := tglProgramUniformMatrix2fv(GetImportAddress('glProgramUniformMatrix2fv'));
    glProgramUniformMatrix3fv := tglProgramUniformMatrix3fv(GetImportAddress('glProgramUniformMatrix3fv'));
    glProgramUniformMatrix4fv := tglProgramUniformMatrix4fv(GetImportAddress('glProgramUniformMatrix4fv'));
    glProgramUniformMatrix2dv := tglProgramUniformMatrix2dv(GetImportAddress('glProgramUniformMatrix2dv'));
    glProgramUniformMatrix3dv := tglProgramUniformMatrix3dv(GetImportAddress('glProgramUniformMatrix3dv'));
    glProgramUniformMatrix4dv := tglProgramUniformMatrix4dv(GetImportAddress('glProgramUniformMatrix4dv'));
    glProgramUniformMatrix2x3fv := tglProgramUniformMatrix2x3fv(GetImportAddress('glProgramUniformMatrix2x3fv'));
    glProgramUniformMatrix3x2fv := tglProgramUniformMatrix3x2fv(GetImportAddress('glProgramUniformMatrix3x2fv'));
    glProgramUniformMatrix2x4fv := tglProgramUniformMatrix2x4fv(GetImportAddress('glProgramUniformMatrix2x4fv'));
    glProgramUniformMatrix4x2fv := tglProgramUniformMatrix4x2fv(GetImportAddress('glProgramUniformMatrix4x2fv'));
    glProgramUniformMatrix3x4fv := tglProgramUniformMatrix3x4fv(GetImportAddress('glProgramUniformMatrix3x4fv'));
    glProgramUniformMatrix4x3fv := tglProgramUniformMatrix4x3fv(GetImportAddress('glProgramUniformMatrix4x3fv'));
    glProgramUniformMatrix2x3dv := tglProgramUniformMatrix2x3dv(GetImportAddress('glProgramUniformMatrix2x3dv'));
    glProgramUniformMatrix3x2dv := tglProgramUniformMatrix3x2dv(GetImportAddress('glProgramUniformMatrix3x2dv'));
    glProgramUniformMatrix2x4dv := tglProgramUniformMatrix2x4dv(GetImportAddress('glProgramUniformMatrix2x4dv'));
    glProgramUniformMatrix4x2dv := tglProgramUniformMatrix4x2dv(GetImportAddress('glProgramUniformMatrix4x2dv'));
    glProgramUniformMatrix3x4dv := tglProgramUniformMatrix3x4dv(GetImportAddress('glProgramUniformMatrix3x4dv'));
    glProgramUniformMatrix4x3dv := tglProgramUniformMatrix4x3dv(GetImportAddress('glProgramUniformMatrix4x3dv'));
    glValidateProgramPipeline := tglValidateProgramPipeline(GetImportAddress('glValidateProgramPipeline'));
    glGetProgramPipelineInfoLog := tglGetProgramPipelineInfoLog(GetImportAddress('glGetProgramPipelineInfoLog'));
end;

class method GL.Read_GL_ARB_vertex_attrib_64bit;
begin
    glVertexAttribL1d := tglVertexAttribL1d(GetImportAddress('glVertexAttribL1d'));
    glVertexAttribL2d := tglVertexAttribL2d(GetImportAddress('glVertexAttribL2d'));
    glVertexAttribL3d := tglVertexAttribL3d(GetImportAddress('glVertexAttribL3d'));
    glVertexAttribL4d := tglVertexAttribL4d(GetImportAddress('glVertexAttribL4d'));
    glVertexAttribL1dv := tglVertexAttribL1dv(GetImportAddress('glVertexAttribL1dv'));
    glVertexAttribL2dv := tglVertexAttribL2dv(GetImportAddress('glVertexAttribL2dv'));
    glVertexAttribL3dv := tglVertexAttribL3dv(GetImportAddress('glVertexAttribL3dv'));
    glVertexAttribL4dv := tglVertexAttribL4dv(GetImportAddress('glVertexAttribL4dv'));
    glVertexAttribLPointer := tglVertexAttribLPointer(GetImportAddress('glVertexAttribLPointer'));
    glGetVertexAttribLdv := tglGetVertexAttribLdv(GetImportAddress('glGetVertexAttribLdv'));
end;

class method GL.Read_GL_ARB_viewport_array;
begin
    glViewportArrayv := tglViewportArrayv(GetImportAddress('glViewportArrayv'));
    glViewportIndexedf := tglViewportIndexedf(GetImportAddress('glViewportIndexedf'));
    glViewportIndexedfv := tglViewportIndexedfv(GetImportAddress('glViewportIndexedfv'));
    glScissorArrayv := tglScissorArrayv(GetImportAddress('glScissorArrayv'));
    glScissorIndexed := tglScissorIndexed(GetImportAddress('glScissorIndexed'));
    glScissorIndexedv := tglScissorIndexedv(GetImportAddress('glScissorIndexedv'));
    glDepthRangeArrayv := tglDepthRangeArrayv(GetImportAddress('glDepthRangeArrayv'));
    glDepthRangeIndexed := tglDepthRangeIndexed(GetImportAddress('glDepthRangeIndexed'));
    glGetFloati_v := tglGetFloati_v(GetImportAddress('glGetFloati_v'));
    glGetDoublei_v := tglGetDoublei_v(GetImportAddress('glGetDoublei_v'));
end;

// GL 4.2

class method GL.Read_GL_ARB_base_instance;
begin
    glDrawArraysInstancedBaseInstance := tglDrawArraysInstancedBaseInstance(GetImportAddress('glDrawArraysInstancedBaseInstance'));
    glDrawElementsInstancedBaseInstance := tglDrawElementsInstancedBaseInstance(GetImportAddress('glDrawElementsInstancedBaseInstance'));
    glDrawElementsInstancedBaseVertexBaseInstance := tglDrawElementsInstancedBaseVertexBaseInstance(GetImportAddress('glDrawElementsInstancedBaseVertexBaseInstance'));
end;

class method GL.Read_GL_ARB_transform_feedback_instanced;
begin
    glDrawTransformFeedbackInstanced := tglDrawTransformFeedbackInstanced(GetImportAddress('glDrawTransformFeedbackInstanced'));
    glDrawTransformFeedbackStreamInstanced := tglDrawTransformFeedbackStreamInstanced(GetImportAddress('glDrawTransformFeedbackStreamInstanced'));
end;

class method GL.Read_GL_ARB_internalformat_query;
begin
    glGetInternalformativ := tglGetInternalformativ(GetImportAddress('glGetInternalformativ'));
end;

class method GL.Read_GL_ARB_shader_atomic_counters;
begin
    glGetActiveAtomicCounterBufferiv := tglGetActiveAtomicCounterBufferiv(GetImportAddress('glGetActiveAtomicCounterBufferiv'));
end;

class method GL.Read_GL_ARB_shader_image_load_store;
begin
    glBindImageTexture := tglBindImageTexture(GetImportAddress('glBindImageTexture'));
    glMemoryBarrier := tglMemoryBarrier(GetImportAddress('glMemoryBarrier'));
end;

class method GL.Read_GL_ARB_texture_storage;
begin
    glTexStorage1D := tglTexStorage1D(GetImportAddress('glTexStorage1D'));
    glTexStorage2D := tglTexStorage2D(GetImportAddress('glTexStorage2D'));
    glTexStorage3D := tglTexStorage3D(GetImportAddress('glTexStorage3D'));
    glTextureStorage1DEXT := tglTextureStorage1DEXT(GetImportAddress('glTextureStorage1DEXT'));
    glTextureStorage2DEXT := tglTextureStorage2DEXT(GetImportAddress('glTextureStorage2DEXT'));
    glTextureStorage3DEXT := tglTextureStorage3DEXT(GetImportAddress('glTextureStorage3DEXT'));
end;


// GL 4.3
class method GL.Read_GL_KHR_debug;
begin
    glDebugMessageControl := tglDebugMessageControl(GetImportAddress('glDebugMessageControl'));
    glDebugMessageInsert := tglDebugMessageInsert(GetImportAddress('glDebugMessageInsert'));
    glDebugMessageCallback := tglDebugMessageCallback(GetImportAddress('glDebugMessageCallback'));
    glGetDebugMessageLog := tglGetDebugMessageLog(GetImportAddress('glGetDebugMessageLog'));
    glPushDebugGroup := tglPushDebugGroup(GetImportAddress('glPushDebugGroup'));
    glPopDebugGroup := tglPopDebugGroup(GetImportAddress('glPopDebugGroup'));
    glObjectLabel := tglObjectLabel(GetImportAddress('glObjectLabel'));
    glGetObjectLabel := tglGetObjectLabel(GetImportAddress('glGetObjectLabel'));
    glObjectPtrLabel := tglObjectPtrLabel(GetImportAddress('glObjectPtrLabel'));
    glGetObjectPtrLabel := tglGetObjectPtrLabel(GetImportAddress('glGetObjectPtrLabel'));
end;

class method GL.Read_GL_ARB_clear_buffer_object;
begin
    glClearBufferData := tglClearBufferData(GetImportAddress('glClearBufferData'));
    glClearBufferSubData := tglClearBufferSubData(GetImportAddress('glClearBufferSubData'));
    glClearNamedBufferDataEXT := tglClearNamedBufferDataEXT(GetImportAddress('glClearNamedBufferDataEXT'));
    glClearNamedBufferSubDataEXT := tglClearNamedBufferSubDataEXT(GetImportAddress('glClearNamedBufferSubDataEXT'));
end;

class method GL.Read_GL_ARB_compute_shader;
begin
    glDispatchCompute := tglDispatchCompute(GetImportAddress('glDispatchCompute'));
    glDispatchComputeIndirect := tglDispatchComputeIndirect(GetImportAddress('glDispatchComputeIndirect'));
end;

class method GL.Read_GL_ARB_copy_image;
begin
    glCopyImageSubData := tglCopyImageSubData(GetImportAddress('glCopyImageSubData'));
end;

class method GL.Read_GL_ARB_framebuffer_no_attachments;
begin
    glFramebufferParameteri := tglFramebufferParameteri(GetImportAddress('glFramebufferParameteri'));
    glGetFramebufferParameteriv := tglGetFramebufferParameteriv(GetImportAddress('glGetFramebufferParameteriv'));
    glNamedFramebufferParameteriEXT := tglNamedFramebufferParameteriEXT(GetImportAddress('glNamedFramebufferParameteriEXT'));
    glGetNamedFramebufferParameterivEXT := tglGetNamedFramebufferParameterivEXT(GetImportAddress('glGetNamedFramebufferParameterivEXT'));
end;

class method GL.Read_GL_ARB_internalformat_query2;
begin
    glGetInternalformati64v := tglGetInternalformati64v(GetImportAddress('glGetInternalformati64v'));
end;

class method GL.Read_GL_ARB_invalidate_subdata;
begin
    glInvalidateTexSubImage := tglInvalidateTexSubImage(GetImportAddress('glInvalidateTexSubImage'));
    glInvalidateTexImage := tglInvalidateTexImage(GetImportAddress('glInvalidateTexImage'));
    glInvalidateBufferSubData := tglInvalidateBufferSubData(GetImportAddress('glInvalidateBufferSubData'));
    glInvalidateBufferData := tglInvalidateBufferData(GetImportAddress('glInvalidateBufferData'));
    glInvalidateFramebuffer := tglInvalidateFramebuffer(GetImportAddress('glInvalidateFramebuffer'));
    glInvalidateSubFramebuffer := tglInvalidateSubFramebuffer(GetImportAddress('glInvalidateSubFramebuffer'));
end;

class method GL.Read_GL_ARB_multi_draw_indirect;
begin
    glMultiDrawArraysIndirect := tglMultiDrawArraysIndirect(GetImportAddress('glMultiDrawArraysIndirect'));
    glMultiDrawElementsIndirect := tglMultiDrawElementsIndirect(GetImportAddress('glMultiDrawElementsIndirect'));
end;

class method GL.Read_GL_ARB_program_interface_query;
begin
    glGetProgramInterfaceiv := tglGetProgramInterfaceiv(GetImportAddress('glGetProgramInterfaceiv'));
    glGetProgramResourceIndex := tglGetProgramResourceIndex(GetImportAddress('glGetProgramResourceIndex'));
    glGetProgramResourceName := tglGetProgramResourceName(GetImportAddress('glGetProgramResourceName'));
    glGetProgramResourceiv := tglGetProgramResourceiv(GetImportAddress('glGetProgramResourceiv'));
    glGetProgramResourceLocation := tglGetProgramResourceLocation(GetImportAddress('glGetProgramResourceLocation'));
    glGetProgramResourceLocationIndex := tglGetProgramResourceLocationIndex(GetImportAddress('glGetProgramResourceLocationIndex'));
end;

class method GL.Read_GL_ARB_shader_storage_buffer_object;
begin
    glShaderStorageBlockBinding := tglShaderStorageBlockBinding(GetImportAddress('glShaderStorageBlockBinding'));
end;

class method GL.Read_GL_ARB_texture_buffer_range;
begin
    glTexBufferRange := tglTexBufferRange(GetImportAddress('glTexBufferRange'));
    glTextureBufferRangeEXT := tglTextureBufferRangeEXT(GetImportAddress('glTextureBufferRangeEXT'));
end;

class method GL.Read_GL_ARB_texture_storage_multisample;
begin
    glTexStorage2DMultisample := tglTexStorage2DMultisample(GetImportAddress('glTexStorage2DMultisample'));
    glTexStorage3DMultisample := tglTexStorage3DMultisample(GetImportAddress('glTexStorage3DMultisample'));
    glTextureStorage2DMultisampleEXT := tglTextureStorage2DMultisampleEXT(GetImportAddress('glTextureStorage2DMultisampleEXT'));
    glTextureStorage3DMultisampleEXT := tglTextureStorage3DMultisampleEXT(GetImportAddress('glTextureStorage3DMultisampleEXT'));
end;

class method GL.Read_GL_ARB_texture_view;
begin
    glTextureView := tglTextureView(GetImportAddress('glTextureView'));
end;

class method GL.Read_GL_ARB_vertex_attrib_binding;
begin
    glBindVertexBuffer := tglBindVertexBuffer(GetImportAddress('glBindVertexBuffer'));
    glVertexAttribFormat := tglVertexAttribFormat(GetImportAddress('glVertexAttribFormat'));
    glVertexAttribIFormat := tglVertexAttribIFormat(GetImportAddress('glVertexAttribIFormat'));
    glVertexAttribLFormat := tglVertexAttribLFormat(GetImportAddress('glVertexAttribLFormat'));
    glVertexAttribBinding := tglVertexAttribBinding(GetImportAddress('glVertexAttribBinding'));
    glVertexBindingDivisor := tglVertexBindingDivisor(GetImportAddress('glVertexBindingDivisor'));
    glVertexArrayBindVertexBufferEXT := tglVertexArrayBindVertexBufferEXT(GetImportAddress('glVertexArrayBindVertexBufferEXT'));
    glVertexArrayVertexAttribFormatEXT := tglVertexArrayVertexAttribFormatEXT(GetImportAddress('glVertexArrayVertexAttribFormatEXT'));
    glVertexArrayVertexAttribIFormatEXT := tglVertexArrayVertexAttribIFormatEXT(GetImportAddress('glVertexArrayVertexAttribIFormatEXT'));
    glVertexArrayVertexAttribLFormatEXT := tglVertexArrayVertexAttribLFormatEXT(GetImportAddress('glVertexArrayVertexAttribLFormatEXT'));
    glVertexArrayVertexAttribBindingEXT := tglVertexArrayVertexAttribBindingEXT(GetImportAddress('glVertexArrayVertexAttribBindingEXT'));
    glVertexArrayVertexBindingDivisorEXT := tglVertexArrayVertexBindingDivisorEXT(GetImportAddress('glVertexArrayVertexBindingDivisorEXT'));
end;

class method GL.Read_GL_4_4;
begin
    glBufferStorage := tglBufferStorage(GetImportAddress('glBufferStorage'));
    glClearTexImage := tglClearTexImage(GetImportAddress('glClearTexImage'));
    glClearTexSubImage := tglClearTexSubImage(GetImportAddress('glClearTexSubImage'));
    glBindBuffersBase := tglBindBuffersBase(GetImportAddress('glBindBuffersBase'));
    glBindBuffersRange := tglBindBuffersRange(GetImportAddress('glBindBuffersRange'));
    glBindTextures := tglBindTextures(GetImportAddress('glBindTextures'));
    glBindSamplers := tglBindSamplers(GetImportAddress('glBindSamplers'));
    glBindImageTextures := tglBindImageTextures(GetImportAddress('glBindImageTextures'));
    glBindVertexBuffers := tglBindVertexBuffers(GetImportAddress('glBindVertexBuffers'));
end;

class method GL.Read_GL_4_5;
begin
    glClipControl := tglClipControl(GetImportAddress('glClipControl'));
    glCreateTransformFeedbacks := tglCreateTransformFeedbacks(GetImportAddress('glCreateTransformFeedbacks'));
    glTransformFeedbackBufferBase := tglTransformFeedbackBufferBase(GetImportAddress('glTransformFeedbackBufferBase'));
    glTransformFeedbackBufferRange := tglTransformFeedbackBufferRange(GetImportAddress('glTransformFeedbackBufferRange'));
    glGetTransformFeedbackiv := tglGetTransformFeedbackiv(GetImportAddress('glGetTransformFeedbackiv'));
    glGetTransformFeedbacki_v := tglGetTransformFeedbacki_v(GetImportAddress('glGetTransformFeedbacki_v'));
    glGetTransformFeedbacki64_v := tglGetTransformFeedbacki64_v(GetImportAddress('glGetTransformFeedbacki64_v'));
    glCreateBuffers := tglCreateBuffers(GetImportAddress('glCreateBuffers'));
    glNamedBufferStorage := tglNamedBufferStorage(GetImportAddress('glNamedBufferStorage'));
    glNamedBufferData := tglNamedBufferData(GetImportAddress('glNamedBufferData'));
    glNamedBufferSubData := tglNamedBufferSubData(GetImportAddress('glNamedBufferSubData'));
    glCopyNamedBufferSubData := tglCopyNamedBufferSubData(GetImportAddress('glCopyNamedBufferSubData'));
    glClearNamedBufferData := tglClearNamedBufferData(GetImportAddress('glClearNamedBufferData'));
    glClearNamedBufferSubData := tglClearNamedBufferSubData(GetImportAddress('glClearNamedBufferSubData'));
    glMapNamedBuffer := tglMapNamedBuffer(GetImportAddress('glMapNamedBuffer'));
    glMapNamedBufferRange := tglMapNamedBufferRange(GetImportAddress('glMapNamedBufferRange'));
    glUnmapNamedBuffer := tglUnmapNamedBuffer(GetImportAddress('glUnmapNamedBuffer'));
    glFlushMappedNamedBufferRange := tglFlushMappedNamedBufferRange(GetImportAddress('glFlushMappedNamedBufferRange'));
    glGetNamedBufferParameteriv := tglGetNamedBufferParameteriv(GetImportAddress('glGetNamedBufferParameteriv'));
    glGetNamedBufferParameteri64v := tglGetNamedBufferParameteri64v(GetImportAddress('glGetNamedBufferParameteri64v'));
    glGetNamedBufferPointerv := tglGetNamedBufferPointerv(GetImportAddress('glGetNamedBufferPointerv'));
    glGetNamedBufferSubData := tglGetNamedBufferSubData(GetImportAddress('glGetNamedBufferSubData'));
    glCreateFramebuffers := tglCreateFramebuffers(GetImportAddress('glCreateFramebuffers'));
    glNamedFramebufferRenderbuffer := tglNamedFramebufferRenderbuffer(GetImportAddress('glNamedFramebufferRenderbuffer'));
    glNamedFramebufferParameteri := tglNamedFramebufferParameteri(GetImportAddress('glNamedFramebufferParameteri'));
    glNamedFramebufferTexture := tglNamedFramebufferTexture(GetImportAddress('glNamedFramebufferTexture'));
    glNamedFramebufferTextureLayer := tglNamedFramebufferTextureLayer(GetImportAddress('glNamedFramebufferTextureLayer'));
    glNamedFramebufferDrawBuffer := tglNamedFramebufferDrawBuffer(GetImportAddress('glNamedFramebufferDrawBuffer'));
    glNamedFramebufferDrawBuffers := tglNamedFramebufferDrawBuffers(GetImportAddress('glNamedFramebufferDrawBuffers'));
    glNamedFramebufferReadBuffer := tglNamedFramebufferReadBuffer(GetImportAddress('glNamedFramebufferReadBuffer'));
    glInvalidateNamedFramebufferData := tglInvalidateNamedFramebufferData(GetImportAddress('glInvalidateNamedFramebufferData'));
    glInvalidateNamedFramebufferSubData := tglInvalidateNamedFramebufferSubData(GetImportAddress('glInvalidateNamedFramebufferSubData'));
    glClearNamedFramebufferiv := tglClearNamedFramebufferiv(GetImportAddress('glClearNamedFramebufferiv'));
    glClearNamedFramebufferuiv := tglClearNamedFramebufferuiv(GetImportAddress('glClearNamedFramebufferuiv'));
    glClearNamedFramebufferfv := tglClearNamedFramebufferfv(GetImportAddress('glClearNamedFramebufferfv'));
    glClearNamedFramebufferfi := tglClearNamedFramebufferfi(GetImportAddress('glClearNamedFramebufferfi'));
    glBlitNamedFramebuffer := tglBlitNamedFramebuffer(GetImportAddress('glBlitNamedFramebuffer'));
    glCheckNamedFramebufferStatus := tglCheckNamedFramebufferStatus(GetImportAddress('glCheckNamedFramebufferStatus'));
    glGetNamedFramebufferParameteriv := tglGetNamedFramebufferParameteriv(GetImportAddress('glGetNamedFramebufferParameteriv'));
    glGetNamedFramebufferAttachmentParameteriv := tglGetNamedFramebufferAttachmentParameteriv(GetImportAddress('glGetNamedFramebufferAttachmentParameteriv'));
    glCreateRenderbuffers := tglCreateRenderbuffers(GetImportAddress('glCreateRenderbuffers'));
    glNamedRenderbufferStorage := tglNamedRenderbufferStorage(GetImportAddress('glNamedRenderbufferStorage'));
    glNamedRenderbufferStorageMultisample := tglNamedRenderbufferStorageMultisample(GetImportAddress('glNamedRenderbufferStorageMultisample'));
    glGetNamedRenderbufferParameteriv := tglGetNamedRenderbufferParameteriv(GetImportAddress('glGetNamedRenderbufferParameteriv'));
    glCreateTextures := tglCreateTextures(GetImportAddress('glCreateTextures'));
    glTextureBuffer := tglTextureBuffer(GetImportAddress('glTextureBuffer'));
    glTextureBufferRange := tglTextureBufferRange(GetImportAddress('glTextureBufferRange'));
    glTextureStorage1D := tglTextureStorage1D(GetImportAddress('glTextureStorage1D'));
    glTextureStorage2D := tglTextureStorage2D(GetImportAddress('glTextureStorage2D'));
    glTextureStorage3D := tglTextureStorage3D(GetImportAddress('glTextureStorage3D'));
    glTextureStorage2DMultisample := tglTextureStorage2DMultisample(GetImportAddress('glTextureStorage2DMultisample'));
    glTextureStorage3DMultisample := tglTextureStorage3DMultisample(GetImportAddress('glTextureStorage3DMultisample'));
    glTextureSubImage1D := tglTextureSubImage1D(GetImportAddress('glTextureSubImage1D'));
    glTextureSubImage2D := tglTextureSubImage2D(GetImportAddress('glTextureSubImage2D'));
    glTextureSubImage3D := tglTextureSubImage3D(GetImportAddress('glTextureSubImage3D'));
    glCompressedTextureSubImage1D := tglCompressedTextureSubImage1D(GetImportAddress('glCompressedTextureSubImage1D'));
    glCompressedTextureSubImage2D := tglCompressedTextureSubImage2D(GetImportAddress('glCompressedTextureSubImage2D'));
    glCompressedTextureSubImage3D := tglCompressedTextureSubImage3D(GetImportAddress('glCompressedTextureSubImage3D'));
    glCopyTextureSubImage1D := tglCopyTextureSubImage1D(GetImportAddress('glCopyTextureSubImage1D'));
    glCopyTextureSubImage2D := tglCopyTextureSubImage2D(GetImportAddress('glCopyTextureSubImage2D'));
    glCopyTextureSubImage3D := tglCopyTextureSubImage3D(GetImportAddress('glCopyTextureSubImage3D'));
    glTextureParameterf := tglTextureParameterf(GetImportAddress('glTextureParameterf'));
    glTextureParameterfv := tglTextureParameterfv(GetImportAddress('glTextureParameterfv'));
    glTextureParameteri := tglTextureParameteri(GetImportAddress('glTextureParameteri'));
    glTextureParameterIiv := tglTextureParameterIiv(GetImportAddress('glTextureParameterIiv'));
    glTextureParameterIuiv := tglTextureParameterIuiv(GetImportAddress('glTextureParameterIuiv'));
    glTextureParameteriv := tglTextureParameteriv(GetImportAddress('glTextureParameteriv'));
    glGenerateTextureMipmap := tglGenerateTextureMipmap(GetImportAddress('glGenerateTextureMipmap'));
    glBindTextureUnit := tglBindTextureUnit(GetImportAddress('glBindTextureUnit'));
    glGetTextureImage := tglGetTextureImage(GetImportAddress('glGetTextureImage'));
    glGetCompressedTextureImage := tglGetCompressedTextureImage(GetImportAddress('glGetCompressedTextureImage'));
    glGetTextureLevelParameterfv := tglGetTextureLevelParameterfv(GetImportAddress('glGetTextureLevelParameterfv'));
    glGetTextureLevelParameteriv := tglGetTextureLevelParameteriv(GetImportAddress('glGetTextureLevelParameteriv'));
    glGetTextureParameterfv := tglGetTextureParameterfv(GetImportAddress('glGetTextureParameterfv'));
    glGetTextureParameterIiv := tglGetTextureParameterIiv(GetImportAddress('glGetTextureParameterIiv'));
    glGetTextureParameterIuiv := tglGetTextureParameterIuiv(GetImportAddress('glGetTextureParameterIuiv'));
    glGetTextureParameteriv := tglGetTextureParameteriv(GetImportAddress('glGetTextureParameteriv'));
    glCreateVertexArrays := tglCreateVertexArrays(GetImportAddress('glCreateVertexArrays'));
    glDisableVertexArrayAttrib := tglDisableVertexArrayAttrib(GetImportAddress('glDisableVertexArrayAttrib'));
    glEnableVertexArrayAttrib := tglEnableVertexArrayAttrib(GetImportAddress('glEnableVertexArrayAttrib'));
    glVertexArrayElementBuffer := tglVertexArrayElementBuffer(GetImportAddress('glVertexArrayElementBuffer'));
    glVertexArrayVertexBuffer := tglVertexArrayVertexBuffer(GetImportAddress('glVertexArrayVertexBuffer'));
    glVertexArrayVertexBuffers := tglVertexArrayVertexBuffers(GetImportAddress('glVertexArrayVertexBuffers'));
    glVertexArrayAttribBinding := tglVertexArrayAttribBinding(GetImportAddress('glVertexArrayAttribBinding'));
    glVertexArrayAttribFormat := tglVertexArrayAttribFormat(GetImportAddress('glVertexArrayAttribFormat'));
    glVertexArrayAttribIFormat := tglVertexArrayAttribIFormat(GetImportAddress('glVertexArrayAttribIFormat'));
    glVertexArrayAttribLFormat := tglVertexArrayAttribLFormat(GetImportAddress('glVertexArrayAttribLFormat'));
    glVertexArrayBindingDivisor := tglVertexArrayBindingDivisor(GetImportAddress('glVertexArrayBindingDivisor'));
    glGetVertexArrayiv := tglGetVertexArrayiv(GetImportAddress('glGetVertexArrayiv'));
    glGetVertexArrayIndexediv := tglGetVertexArrayIndexediv(GetImportAddress('glGetVertexArrayIndexediv'));
    glGetVertexArrayIndexed64iv := tglGetVertexArrayIndexed64iv(GetImportAddress('glGetVertexArrayIndexed64iv'));
    glCreateSamplers := tglCreateSamplers(GetImportAddress('glCreateSamplers'));
    glCreateProgramPipelines := tglCreateProgramPipelines(GetImportAddress('glCreateProgramPipelines'));
    glCreateQueries := tglCreateQueries(GetImportAddress('glCreateQueries'));
    glMemoryBarrierByRegion := tglMemoryBarrierByRegion(GetImportAddress('glMemoryBarrierByRegion'));
    glGetTextureSubImage := tglGetTextureSubImage(GetImportAddress('glGetTextureSubImage'));
    glGetCompressedTextureSubImage := tglGetCompressedTextureSubImage(GetImportAddress('glGetCompressedTextureSubImage'));
    glGetGraphicsResetStatus := tglGetGraphicsResetStatus(GetImportAddress('glGetGraphicsResetStatus'));
    glGetnCompressedTexImage := tglGetnCompressedTexImage(GetImportAddress('glGetnCompressedTexImage'));
    glGetnTexImage := tglGetnTexImage(GetImportAddress('glGetnTexImage'));
    glGetnUniformdv := tglGetnUniformdv(GetImportAddress('glGetnUniformdv'));
    glGetnUniformfv := tglGetnUniformfv(GetImportAddress('glGetnUniformfv'));
    glGetnUniformiv := tglGetnUniformiv(GetImportAddress('glGetnUniformiv'));
    glGetnUniformuiv := tglGetnUniformuiv(GetImportAddress('glGetnUniformuiv'));
    glReadnPixels := tglReadnPixels(GetImportAddress('glReadnPixels'));
    glGetnMapdv := tglGetnMapdv(GetImportAddress('glGetnMapdv'));
    glGetnMapfv := tglGetnMapfv(GetImportAddress('glGetnMapfv'));
    glGetnMapiv := tglGetnMapiv(GetImportAddress('glGetnMapiv'));
    glGetnPixelMapfv := tglGetnPixelMapfv(GetImportAddress('glGetnPixelMapfv'));
    glGetnPixelMapuiv := tglGetnPixelMapuiv(GetImportAddress('glGetnPixelMapuiv'));
    glGetnPixelMapusv := tglGetnPixelMapusv(GetImportAddress('glGetnPixelMapusv'));
    glGetnPolygonStipple := tglGetnPolygonStipple(GetImportAddress('glGetnPolygonStipple'));
    glGetnColorTable := tglGetnColorTable(GetImportAddress('glGetnColorTable'));
    glGetnConvolutionFilter := tglGetnConvolutionFilter(GetImportAddress('glGetnConvolutionFilter'));
    glGetnSeparableFilter := tglGetnSeparableFilter(GetImportAddress('glGetnSeparableFilter'));
    glGetnHistogram := tglGetnHistogram(GetImportAddress('glGetnHistogram'));
    glGetnMinmax := tglGetnMinmax(GetImportAddress('glGetnMinmax'));
    glTextureBarrier := tglTextureBarrier(GetImportAddress('glTextureBarrier'));
end;

class method GL.Read_GL_NV_path_rendering;
begin
    glGenPathsNV := tglGenPathsNV(GetImportAddress('glGenPathsNV'));
    glDeletePathsNV := tglDeletePathsNV(GetImportAddress('glDeletePathsNV'));
    glIsPathNV := tglIsPathNV(GetImportAddress('glIsPathNV'));
    glPathCommandsNV := tglPathCommandsNV(GetImportAddress('glPathCommandsNV'));
    glPathCoordsNV := tglPathCoordsNV(GetImportAddress('glPathCoordsNV'));
    glPathSubCommandsNV := tglPathSubCommandsNV(GetImportAddress('glPathSubCommandsNV'));
    glPathSubCoordsNV := tglPathSubCoordsNV(GetImportAddress('glPathSubCoordsNV'));
    glPathStringNV := tglPathStringNV(GetImportAddress('glPathStringNV'));
    glPathGlyphsNV := tglPathGlyphsNV(GetImportAddress('glPathGlyphsNV'));
    glPathGlyphRangeNV := tglPathGlyphRangeNV(GetImportAddress('glPathGlyphRangeNV'));
    glWeightPathsNV := tglWeightPathsNV(GetImportAddress('glWeightPathsNV'));
    glCopyPathNV := tglCopyPathNV(GetImportAddress('glCopyPathNV'));
    glInterpolatePathsNV := tglInterpolatePathsNV(GetImportAddress('glInterpolatePathsNV'));
    glTransformPathNV := tglTransformPathNV(GetImportAddress('glTransformPathNV'));
    glPathParameterivNV := tglPathParameterivNV(GetImportAddress('glPathParameterivNV'));
    glPathParameteriNV := tglPathParameteriNV(GetImportAddress('glPathParameteriNV'));
    glPathParameterfvNV := tglPathParameterfvNV(GetImportAddress('glPathParameterfvNV'));
    glPathParameterfNV := tglPathParameterfNV(GetImportAddress('glPathParameterfNV'));
    glPathDashArrayNV := tglPathDashArrayNV(GetImportAddress('glPathDashArrayNV'));
    glPathStencilFuncNV := tglPathStencilFuncNV(GetImportAddress('glPathStencilFuncNV'));
    glPathStencilDepthOffsetNV := tglPathStencilDepthOffsetNV(GetImportAddress('glPathStencilDepthOffsetNV'));
    glStencilFillPathNV := tglStencilFillPathNV(GetImportAddress('glStencilFillPathNV'));
    glStencilStrokePathNV := tglStencilStrokePathNV(GetImportAddress('glStencilStrokePathNV'));
    glStencilFillPathInstancedNV := tglStencilFillPathInstancedNV(GetImportAddress('glStencilFillPathInstancedNV'));
    glStencilStrokePathInstancedNV := tglStencilStrokePathInstancedNV(GetImportAddress('glStencilStrokePathInstancedNV'));
    glPathCoverDepthFuncNV := tglPathCoverDepthFuncNV(GetImportAddress('glPathCoverDepthFuncNV'));
    glPathColorGenNV := tglPathColorGenNV(GetImportAddress('glPathColorGenNV'));
    glPathTexGenNV := tglPathTexGenNV(GetImportAddress('glPathTexGenNV'));
    glPathFogGenNV := tglPathFogGenNV(GetImportAddress('glPathFogGenNV'));
    glCoverFillPathNV := tglCoverFillPathNV(GetImportAddress('glCoverFillPathNV'));
    glCoverStrokePathNV := tglCoverStrokePathNV(GetImportAddress('glCoverStrokePathNV'));
    glCoverFillPathInstancedNV := tglCoverFillPathInstancedNV(GetImportAddress('glCoverFillPathInstancedNV'));
    glCoverStrokePathInstancedNV := tglCoverStrokePathInstancedNV(GetImportAddress('glCoverStrokePathInstancedNV'));
    glGetPathParameterivNV := tglGetPathParameterivNV(GetImportAddress('glGetPathParameterivNV'));
    glGetPathParameterfvNV := tglGetPathParameterfvNV(GetImportAddress('glGetPathParameterfvNV'));
    glGetPathCommandsNV := tglGetPathCommandsNV(GetImportAddress('glGetPathCommandsNV'));
    glGetPathCoordsNV := tglGetPathCoordsNV(GetImportAddress('glGetPathCoordsNV'));
    glGetPathDashArrayNV := tglGetPathDashArrayNV(GetImportAddress('glGetPathDashArrayNV'));
    glGetPathMetricsNV := tglGetPathMetricsNV(GetImportAddress('glGetPathMetricsNV'));
    glGetPathMetricRangeNV := tglGetPathMetricRangeNV(GetImportAddress('glGetPathMetricRangeNV'));
    glGetPathSpacingNV := tglGetPathSpacingNV(GetImportAddress('glGetPathSpacingNV'));
    glGetPathColorGenivNV := tglGetPathColorGenivNV(GetImportAddress('glGetPathColorGenivNV'));
    glGetPathColorGenfvNV := tglGetPathColorGenfvNV(GetImportAddress('glGetPathColorGenfvNV'));
    glGetPathTexGenivNV := tglGetPathTexGenivNV(GetImportAddress('glGetPathTexGenivNV'));
    glGetPathTexGenfvNV := tglGetPathTexGenfvNV(GetImportAddress('glGetPathTexGenfvNV'));
    glIsPointInFillPathNV := tglIsPointInFillPathNV(GetImportAddress('glIsPointInFillPathNV'));
    glIsPointInStrokePathNV := tglIsPointInStrokePathNV(GetImportAddress('glIsPointInStrokePathNV'));
    glGetPathLengthNV := tglGetPathLengthNV(GetImportAddress('glGetPathLengthNV'));
    glPointAlongPathNV := tglPointAlongPathNV(GetImportAddress('glPointAlongPathNV'));
end;

class method GL.Read_GL_AMD_stencil_operation_extended;
begin
    glStencilOpValueAMD := tglStencilOpValueAMD(GetImportAddress('glStencilOpValueAMD'));
end;

class method GL.Read_GL_NV_bindless_texture;
begin
    glGetTextureHandleNV := tglGetTextureHandleNV(GetImportAddress('glGetTextureHandleNV'));
    glGetTextureSamplerHandleNV := tglGetTextureSamplerHandleNV(GetImportAddress('glGetTextureSamplerHandleNV'));
    glMakeTextureHandleResidentNV := tglMakeTextureHandleResidentNV(GetImportAddress('glMakeTextureHandleResidentNV'));
    glMakeTextureHandleNonResidentNV := tglMakeTextureHandleNonResidentNV(GetImportAddress('glMakeTextureHandleNonResidentNV'));
    glGetImageHandleNV := tglGetImageHandleNV(GetImportAddress('glGetImageHandleNV'));
    glMakeImageHandleResidentNV := tglMakeImageHandleResidentNV(GetImportAddress('glMakeImageHandleResidentNV'));
    glMakeImageHandleNonResidentNV := tglMakeImageHandleNonResidentNV(GetImportAddress('glMakeImageHandleNonResidentNV'));
    glUniformHandleui64NV := tglUniformHandleui64NV(GetImportAddress('glUniformHandleui64NV'));
    glUniformHandleui64vNV := tglUniformHandleui64vNV(GetImportAddress('glUniformHandleui64vNV'));
    glProgramUniformHandleui64NV := tglProgramUniformHandleui64NV(GetImportAddress('glProgramUniformHandleui64NV'));
    glProgramUniformHandleui64vNV := tglProgramUniformHandleui64vNV(GetImportAddress('glProgramUniformHandleui64vNV'));
    glIsTextureHandleResidentNV := tglIsTextureHandleResidentNV(GetImportAddress('glIsTextureHandleResidentNV'));
    glIsImageHandleResidentNV := tglIsImageHandleResidentNV(GetImportAddress('glIsImageHandleResidentNV'));
end;

class method GL.Read_GL_ARB_bindless_texture;
begin
    glGetTextureHandleARB := tglGetTextureHandleARB(GetImportAddress('TglGetTextureHandleARB'));
    glGetTextureSamplerHandleARB := tglGetTextureSamplerHandleARB(GetImportAddress('TglGetTextureSamplerHandleARB'));
    glMakeTextureHandleResidentARB := tglMakeTextureHandleResidentARB(GetImportAddress('TglMakeTextureHandleResidentARB'));
    glMakeTextureHandleNonResidentARB := tglMakeTextureHandleNonResidentARB(GetImportAddress('TglMakeTextureHandleNonResidentARB'));
    glGetImageHandleARB := tglGetImageHandleARB(GetImportAddress('TglGetImageHandleARB'));
    glMakeImageHandleResidentARB := tglMakeImageHandleResidentARB(GetImportAddress('TglMakeImageHandleResidentARB'));
    glMakeImageHandleNonResidentARB := tglMakeImageHandleNonResidentARB(GetImportAddress('TglMakeImageHandleNonResidentARB'));
    glUniformHandleui64ARB := tglUniformHandleui64ARB(GetImportAddress('TglUniformHandleui64ARB'));
    glUniformHandleui64vARB := tglUniformHandleui64vARB(GetImportAddress('TglUniformHandleui64vARB'));
    glProgramUniformHandleui64ARB := tglProgramUniformHandleui64ARB(GetImportAddress('TglProgramUniformHandleui64ARB'));
    glProgramUniformHandleui64vARB := tglProgramUniformHandleui64vARB(GetImportAddress('TglProgramUniformHandleui64vARB'));
    glIsTextureHandleResidentARB := tglIsTextureHandleResidentARB(GetImportAddress('TglIsTextureHandleResidentARB'));
    glIsImageHandleResidentARB := tglIsImageHandleResidentARB(GetImportAddress('TglIsImageHandleResidentARB'));
    glVertexAttribL1ui64ARB := tglVertexAttribL1ui64ARB(GetImportAddress('TglVertexAttribL1ui64ARB'));
    glVertexAttribL1ui64vARB := tglVertexAttribL1ui64vARB(GetImportAddress('TglVertexAttribL1ui64vARB'));
    glGetVertexAttribLui64vARB := tglGetVertexAttribLui64vARB(GetImportAddress('TglGetVertexAttribLui64vARB'));
end;

class method GL.Read_GL_ARB_cl_event;
begin
    glCreateSyncFromCLeventARB := tglCreateSyncFromCLeventARB(GetImportAddress('glCreateSyncFromCLeventARB'));
end;

class method GL.Read_GL_ARB_compute_variable_group_size;
begin
    glDispatchComputeGroupSizeARB := tglDispatchComputeGroupSizeARB(GetImportAddress('glDispatchComputeGroupSizeARB'));
end;

class method GL.Read_GL_ARB_debug_output;
begin
    glDebugMessageControlARB := tglDebugMessageControlARB(GetImportAddress('glDebugMessageControlARB'));
    glDebugMessageInsertARB := tglDebugMessageInsertARB(GetImportAddress('glDebugMessageInsertARB'));
    glDebugMessageCallbackARB := tglDebugMessageCallbackARB(GetImportAddress('glDebugMessageCallbackARB'));
    glGetDebugMessageLogARB := tglGetDebugMessageLogARB(GetImportAddress('glGetDebugMessageLogARB'));
end;

class method GL.Read_GL_ARB_robustness;
begin
    glGetGraphicsResetStatusARB := tglGetGraphicsResetStatusARB(GetImportAddress('glGetGraphicsResetStatusARB'));
    glGetnMapdvARB := tglGetnMapdvARB(GetImportAddress('glGetnMapdvARB'));
    glGetnMapfvARB := tglGetnMapfvARB(GetImportAddress('glGetnMapfvARB'));
    glGetnMapivARB := tglGetnMapivARB(GetImportAddress('glGetnMapivARB'));
    glGetnPixelMapfvARB := tglGetnPixelMapfvARB(GetImportAddress('glGetnPixelMapfvARB'));
    glGetnPixelMapuivARB := tglGetnPixelMapuivARB(GetImportAddress('glGetnPixelMapuivARB'));
    glGetnPixelMapusvARB := tglGetnPixelMapusvARB(GetImportAddress('glGetnPixelMapusvARB'));
    glGetnPolygonStippleARB := tglGetnPolygonStippleARB(GetImportAddress('glGetnPolygonStippleARB'));
    glGetnColorTableARB := tglGetnColorTableARB(GetImportAddress('glGetnColorTableARB'));
    glGetnConvolutionFilterARB := tglGetnConvolutionFilterARB(GetImportAddress('glGetnConvolutionFilterARB'));
    glGetnSeparableFilterARB := tglGetnSeparableFilterARB(GetImportAddress('glGetnSeparableFilterARB'));
    glGetnHistogramARB := tglGetnHistogramARB(GetImportAddress('glGetnHistogramARB'));
    glGetnMinmaxARB := tglGetnMinmaxARB(GetImportAddress('glGetnMinmaxARB'));
    glGetnTexImageARB := tglGetnTexImageARB(GetImportAddress('glGetnTexImageARB'));
    glReadnPixelsARB := tglReadnPixelsARB(GetImportAddress('glReadnPixelsARB'));
    glGetnCompressedTexImageARB := tglGetnCompressedTexImageARB(GetImportAddress('glGetnCompressedTexImageARB'));
    glGetnUniformfvARB := tglGetnUniformfvARB(GetImportAddress('glGetnUniformfvARB'));
    glGetnUniformivARB := tglGetnUniformivARB(GetImportAddress('glGetnUniformivARB'));
    glGetnUniformuivARB := tglGetnUniformuivARB(GetImportAddress('glGetnUniformuivARB'));
    glGetnUniformdvARB := tglGetnUniformdvARB(GetImportAddress('glGetnUniformdvARB'));
end;

class method GL.Read_GL_ATI_draw_buffers;
begin
    glDrawBuffersATI := tglDrawBuffersATI(GetImportAddress('glDrawBuffersATI'));
end;

class method GL.Read_GL_ATI_element_array;
begin
    glElementPointerATI := tglElementPointerATI(GetImportAddress('glElementPointerATI'));
    glDrawElementArrayATI := tglDrawElementArrayATI(GetImportAddress('glDrawElementArrayATI'));
    glDrawRangeElementArrayATI := tglDrawRangeElementArrayATI(GetImportAddress('glDrawRangeElementArrayATI'));
end;

class method GL.Read_GL_ATI_envmap_bumpmap;
begin
    glTexBumpParameterivATI := tglTexBumpParameterivATI(GetImportAddress('glTexBumpParameterivATI'));
    glTexBumpParameterfvATI := tglTexBumpParameterfvATI(GetImportAddress('glTexBumpParameterfvATI'));
    glGetTexBumpParameterivATI := tglGetTexBumpParameterivATI(GetImportAddress('glGetTexBumpParameterivATI'));
    glGetTexBumpParameterfvATI := tglGetTexBumpParameterfvATI(GetImportAddress('glGetTexBumpParameterfvATI'));
end;

class method GL.Read_GL_ATI_fragment_shader;
begin
    glGenFragmentShadersATI := tglGenFragmentShadersATI(GetImportAddress('glGenFragmentShadersATI'));
    glBindFragmentShaderATI := tglBindFragmentShaderATI(GetImportAddress('glBindFragmentShaderATI'));
    glDeleteFragmentShaderATI := tglDeleteFragmentShaderATI(GetImportAddress('glDeleteFragmentShaderATI'));
    glBeginFragmentShaderATI := tglBeginFragmentShaderATI(GetImportAddress('glBeginFragmentShaderATI'));
    glEndFragmentShaderATI := tglEndFragmentShaderATI(GetImportAddress('glEndFragmentShaderATI'));
    glPassTexCoordATI := tglPassTexCoordATI(GetImportAddress('glPassTexCoordATI'));
    glSampleMapATI := tglSampleMapATI(GetImportAddress('glSampleMapATI'));
    glColorFragmentOp1ATI := tglColorFragmentOp1ATI(GetImportAddress('glColorFragmentOp1ATI'));
    glColorFragmentOp2ATI := tglColorFragmentOp2ATI(GetImportAddress('glColorFragmentOp2ATI'));
    glColorFragmentOp3ATI := tglColorFragmentOp3ATI(GetImportAddress('glColorFragmentOp3ATI'));
    glAlphaFragmentOp1ATI := tglAlphaFragmentOp1ATI(GetImportAddress('glAlphaFragmentOp1ATI'));
    glAlphaFragmentOp2ATI := tglAlphaFragmentOp2ATI(GetImportAddress('glAlphaFragmentOp2ATI'));
    glAlphaFragmentOp3ATI := tglAlphaFragmentOp3ATI(GetImportAddress('glAlphaFragmentOp3ATI'));
    glSetFragmentShaderConstantATI := tglSetFragmentShaderConstantATI(GetImportAddress('glSetFragmentShaderConstantATI'));
end;

class method GL.Read_GL_ATI_map_object_buffer;
begin
    glMapObjectBufferATI := tglMapObjectBufferATI(GetImportAddress('glMapObjectBufferATI'));
    glUnmapObjectBufferATI := tglUnmapObjectBufferATI(GetImportAddress('glUnmapObjectBufferATI'));
end;

class method GL.Read_GL_ATI_pn_triangles;
begin
    glPNTrianglesiATI := tglPNTrianglesiATI(GetImportAddress('glPNTrianglesiATI'));
    glPNTrianglesfATI := tglPNTrianglesfATI(GetImportAddress('glPNTrianglesfATI'));
end;

class method GL.Read_GL_ATI_separate_stencil;
begin
    glStencilOpSeparateATI := tglStencilOpSeparateATI(GetImportAddress('glStencilOpSeparateATI'));
    glStencilFuncSeparateATI := tglStencilFuncSeparateATI(GetImportAddress('glStencilFuncSeparateATI'));
end;

class method GL.Read_GL_ATI_vertex_array_object;
begin
    glNewObjectBufferATI := tglNewObjectBufferATI(GetImportAddress('glNewObjectBufferATI'));
    glIsObjectBufferATI := tglIsObjectBufferATI(GetImportAddress('glIsObjectBufferATI'));
    glUpdateObjectBufferATI := tglUpdateObjectBufferATI(GetImportAddress('glUpdateObjectBufferATI'));
    glGetObjectBufferfvATI := tglGetObjectBufferfvATI(GetImportAddress('glGetObjectBufferfvATI'));
    glGetObjectBufferivATI := tglGetObjectBufferivATI(GetImportAddress('glGetObjectBufferivATI'));
    glFreeObjectBufferATI := tglFreeObjectBufferATI(GetImportAddress('glFreeObjectBufferATI'));
    glArrayObjectATI := tglArrayObjectATI(GetImportAddress('glArrayObjectATI'));
    glGetArrayObjectfvATI := tglGetArrayObjectfvATI(GetImportAddress('glGetArrayObjectfvATI'));
    glGetArrayObjectivATI := tglGetArrayObjectivATI(GetImportAddress('glGetArrayObjectivATI'));
    glVariantArrayObjectATI := tglVariantArrayObjectATI(GetImportAddress('glVariantArrayObjectATI'));
    glGetVariantArrayObjectfvATI := tglGetVariantArrayObjectfvATI(GetImportAddress('glGetVariantArrayObjectfvATI'));
    glGetVariantArrayObjectivATI := tglGetVariantArrayObjectivATI(GetImportAddress('glGetVariantArrayObjectivATI'));

end;

class method GL.Read_GL_ATI_vertex_attrib_array_object;
begin
    glVertexAttribArrayObjectATI := tglVertexAttribArrayObjectATI(GetImportAddress('glVertexAttribArrayObjectATI'));
    glGetVertexAttribArrayObjectfvATI := tglGetVertexAttribArrayObjectfvATI(GetImportAddress('glGetVertexAttribArrayObjectfvATI'));
    glGetVertexAttribArrayObjectivATI := tglGetVertexAttribArrayObjectivATI(GetImportAddress('glGetVertexAttribArrayObjectivATI'));
end;

class method GL.Read_GL_ATI_vertex_streams;
begin
    glVertexStream1sATI := tglVertexStream1sATI(GetImportAddress('glVertexStream1sATI'));
    glVertexStream1svATI := tglVertexStream1svATI(GetImportAddress('glVertexStream1svATI'));
    glVertexStream1iATI := tglVertexStream1iATI(GetImportAddress('glVertexStream1iATI'));
    glVertexStream1ivATI := tglVertexStream1ivATI(GetImportAddress('glVertexStream1ivATI'));
    glVertexStream1fATI := tglVertexStream1fATI(GetImportAddress('glVertexStream1fATI'));
    glVertexStream1fvATI := tglVertexStream1fvATI(GetImportAddress('glVertexStream1fvATI'));
    glVertexStream1dATI := tglVertexStream1dATI(GetImportAddress('glVertexStream1dATI'));
    glVertexStream1dvATI := tglVertexStream1dvATI(GetImportAddress('glVertexStream1dvATI'));
    glVertexStream2sATI := tglVertexStream2sATI(GetImportAddress('glVertexStream2sATI'));
    glVertexStream2svATI := tglVertexStream2svATI(GetImportAddress('glVertexStream2svATI'));
    glVertexStream2iATI := tglVertexStream2iATI(GetImportAddress('glVertexStream2iATI'));
    glVertexStream2ivATI := tglVertexStream2ivATI(GetImportAddress('glVertexStream2ivATI'));
    glVertexStream2fATI := tglVertexStream2fATI(GetImportAddress('glVertexStream2fATI'));
    glVertexStream2fvATI := tglVertexStream2fvATI(GetImportAddress('glVertexStream2fvATI'));
    glVertexStream2dATI := tglVertexStream2dATI(GetImportAddress('glVertexStream2dATI'));
    glVertexStream2dvATI := tglVertexStream2dvATI(GetImportAddress('glVertexStream2dvATI'));
    glVertexStream3sATI := tglVertexStream3sATI(GetImportAddress('glVertexStream3sATI'));
    glVertexStream3svATI := tglVertexStream3svATI(GetImportAddress('glVertexStream3svATI'));
    glVertexStream3iATI := tglVertexStream3iATI(GetImportAddress('glVertexStream3iATI'));
    glVertexStream3ivATI := tglVertexStream3ivATI(GetImportAddress('glVertexStream3ivATI'));
    glVertexStream3fATI := tglVertexStream3fATI(GetImportAddress('glVertexStream3fATI'));
    glVertexStream3fvATI := tglVertexStream3fvATI(GetImportAddress('glVertexStream3fvATI'));
    glVertexStream3dATI := tglVertexStream3dATI(GetImportAddress('glVertexStream3dATI'));
    glVertexStream3dvATI := tglVertexStream3dvATI(GetImportAddress('glVertexStream3dvATI'));
    glVertexStream4sATI := tglVertexStream4sATI(GetImportAddress('glVertexStream4sATI'));
    glVertexStream4svATI := tglVertexStream4svATI(GetImportAddress('glVertexStream4svATI'));
    glVertexStream4iATI := tglVertexStream4iATI(GetImportAddress('glVertexStream4iATI'));
    glVertexStream4ivATI := tglVertexStream4ivATI(GetImportAddress('glVertexStream4ivATI'));
    glVertexStream4fATI := tglVertexStream4fATI(GetImportAddress('glVertexStream4fATI'));
    glVertexStream4fvATI := tglVertexStream4fvATI(GetImportAddress('glVertexStream4fvATI'));
    glVertexStream4dATI := tglVertexStream4dATI(GetImportAddress('glVertexStream4dATI'));
    glVertexStream4dvATI := tglVertexStream4dvATI(GetImportAddress('glVertexStream4dvATI'));
    glNormalStream3bATI := tglNormalStream3bATI(GetImportAddress('glNormalStream3bATI'));
    glNormalStream3bvATI := tglNormalStream3bvATI(GetImportAddress('glNormalStream3bvATI'));
    glNormalStream3sATI := tglNormalStream3sATI(GetImportAddress('glNormalStream3sATI'));
    glNormalStream3svATI := tglNormalStream3svATI(GetImportAddress('glNormalStream3svATI'));
    glNormalStream3iATI := tglNormalStream3iATI(GetImportAddress('glNormalStream3iATI'));
    glNormalStream3ivATI := tglNormalStream3ivATI(GetImportAddress('glNormalStream3ivATI'));
    glNormalStream3fATI := tglNormalStream3fATI(GetImportAddress('glNormalStream3fATI'));
    glNormalStream3fvATI := tglNormalStream3fvATI(GetImportAddress('glNormalStream3fvATI'));
    glNormalStream3dATI := tglNormalStream3dATI(GetImportAddress('glNormalStream3dATI'));
    glNormalStream3dvATI := tglNormalStream3dvATI(GetImportAddress('glNormalStream3dvATI'));
    glClientActiveVertexStreamATI := tglClientActiveVertexStreamATI(GetImportAddress('glClientActiveVertexStreamATI'));
    glVertexBlendEnviATI := tglVertexBlendEnviATI(GetImportAddress('glVertexBlendEnviATI'));
    glVertexBlendEnvfATI := tglVertexBlendEnvfATI(GetImportAddress('glVertexBlendEnvfATI'));
end;

class method GL.Read_GL_AMD_performance_monitor;
begin
    glGetPerfMonitorGroupsAMD := tglGetPerfMonitorGroupsAMD(GetImportAddress('glGetPerfMonitorGroupsAMD'));
    glGetPerfMonitorCountersAMD := tglGetPerfMonitorCountersAMD(GetImportAddress('glGetPerfMonitorCountersAMD'));
    glGetPerfMonitorGroupStringAMD := tglGetPerfMonitorGroupStringAMD(GetImportAddress('glGetPerfMonitorGroupStringAMD'));
    glGetPerfMonitorCounterStringAMD := tglGetPerfMonitorCounterStringAMD(GetImportAddress('glGetPerfMonitorCounterStringAMD'));
    glGetPerfMonitorCounterInfoAMD := tglGetPerfMonitorCounterInfoAMD(GetImportAddress('glGetPerfMonitorCounterInfoAMD'));
    glGenPerfMonitorsAMD := tglGenPerfMonitorsAMD(GetImportAddress('glGenPerfMonitorsAMD'));
    glDeletePerfMonitorsAMD := tglDeletePerfMonitorsAMD(GetImportAddress('glDeletePerfMonitorsAMD'));
    glSelectPerfMonitorCountersAMD := tglSelectPerfMonitorCountersAMD(GetImportAddress('glSelectPerfMonitorCountersAMD'));
    glBeginPerfMonitorAMD := tglBeginPerfMonitorAMD(GetImportAddress('glBeginPerfMonitorAMD'));
    glEndPerfMonitorAMD := tglEndPerfMonitorAMD(GetImportAddress('glEndPerfMonitorAMD'));
    glGetPerfMonitorCounterDataAMD := tglGetPerfMonitorCounterDataAMD(GetImportAddress('glGetPerfMonitorCounterDataAMD'));
end;

class method GL.Read_GL_AMD_vertex_shader_tesselator;
begin
    glTessellationFactorAMD := tglTessellationFactorAMD(GetImportAddress('glTessellationFactorAMD'));
    glTessellationModeAMD := tglTessellationModeAMD(GetImportAddress('glTessellationModeAMD'));
end;

class method GL.Read_GL_AMD_draw_buffers_blend;
begin
    glBlendFuncIndexedAMD := tglBlendFuncIndexedAMD(GetImportAddress('glBlendFuncIndexedAMD'));
    glBlendFuncSeparateIndexedAMD := tglBlendFuncSeparateIndexedAMD(GetImportAddress('glBlendFuncSeparateIndexedAMD'));
    glBlendEquationIndexedAMD := tglBlendEquationIndexedAMD(GetImportAddress('glBlendEquationIndexedAMD'));
    glBlendEquationSeparateIndexedAMD := tglBlendEquationSeparateIndexedAMD(GetImportAddress('glBlendEquationSeparateIndexedAMD'));
end;

class method GL.Read_GL_AMD_name_gen_delete;
begin
    glGenNamesAMD := tglGenNamesAMD(GetImportAddress('glGenNamesAMD'));
    glDeleteNamesAMD := tglDeleteNamesAMD(GetImportAddress('glDeleteNamesAMD'));
    glIsNameAMD := tglIsNameAMD(GetImportAddress('glIsNameAMD'));
end;

class method GL.Read_GL_AMD_debug_output;
begin
    glDebugMessageEnableAMD := tglDebugMessageEnableAMD(GetImportAddress('glDebugMessageEnableAMD'));
    glDebugMessageInsertAMD := tglDebugMessageInsertAMD(GetImportAddress('glDebugMessageInsertAMD'));
    glDebugMessageCallbackAMD := tglDebugMessageCallbackAMD(GetImportAddress('glDebugMessageCallbackAMD'));
    glGetDebugMessageLogAMD := tglGetDebugMessageLogAMD(GetImportAddress('glGetDebugMessageLogAMD'));
end;

class method GL.Read_GL_EXT_blend_color;
begin
    glBlendColorEXT := tglBlendColorEXT(GetImportAddress('glBlendColorEXT'));
end;

class method GL.Read_GL_EXT_blend_func_separate;
begin
    glBlendFuncSeparateEXT := tglBlendFuncSeparateEXT(GetImportAddress('glBlendFuncSeparateEXT'));
end;

class method GL.Read_GL_EXT_blend_minmax;
begin
    glBlendEquationEXT := tglBlendEquationEXT(GetImportAddress('glBlendEquationEXT'));
end;

class method GL.Read_GL_EXT_color_subtable;
begin
    glColorSubTableEXT := tglColorSubTableEXT(GetImportAddress('glColorSubTableEXT'));
    glCopyColorSubTableEXT := tglCopyColorSubTableEXT(GetImportAddress('glCopyColorSubTableEXT'));
end;

class method GL.Read_GL_EXT_compiled_vertex_array;
begin
    glLockArraysEXT := tglLockArraysEXT(GetImportAddress('glLockArraysEXT'));
    glUnlockArraysEXT := tglUnlockArraysEXT(GetImportAddress('glUnlockArraysEXT'));
end;

class method GL.Read_GL_EXT_convolution;
begin
    glConvolutionFilter1DEXT := tglConvolutionFilter1DEXT(GetImportAddress('glConvolutionFilter1DEXT'));
    glConvolutionFilter2DEXT := tglConvolutionFilter2DEXT(GetImportAddress('glConvolutionFilter2DEXT'));
    glConvolutionParameterfEXT := tglConvolutionParameterfEXT(GetImportAddress('glConvolutionParameterfEXT'));
    glConvolutionParameterfvEXT := tglConvolutionParameterfvEXT(GetImportAddress('glConvolutionParameterfvEXT'));
    glConvolutionParameteriEXT := tglConvolutionParameteriEXT(GetImportAddress('glConvolutionParameteriEXT'));
    glConvolutionParameterivEXT := tglConvolutionParameterivEXT(GetImportAddress('glConvolutionParameterivEXT'));
    glCopyConvolutionFilter1DEXT := tglCopyConvolutionFilter1DEXT(GetImportAddress('glCopyConvolutionFilter1DEXT'));
    glCopyConvolutionFilter2DEXT := tglCopyConvolutionFilter2DEXT(GetImportAddress('glCopyConvolutionFilter2DEXT'));
    glGetConvolutionFilterEXT := tglGetConvolutionFilterEXT(GetImportAddress('glGetConvolutionFilterEXT'));
    glGetConvolutionParameterfvEXT := tglGetConvolutionParameterfvEXT(GetImportAddress('glGetConvolutionParameterfvEXT'));
    glGetConvolutionParameterivEXT := tglGetConvolutionParameterivEXT(GetImportAddress('glGetConvolutionParameterivEXT'));
    glGetSeparableFilterEXT := tglGetSeparableFilterEXT(GetImportAddress('glGetSeparableFilterEXT'));
    glSeparableFilter2DEXT := tglSeparableFilter2DEXT(GetImportAddress('glSeparableFilter2DEXT'));
end;

class method GL.Read_GL_EXT_coordinate_frame;
begin
    glTangent3bEXT := tglTangent3bEXT(GetImportAddress('glTangent3bEXT'));
    glTangent3bvEXT := tglTangent3bvEXT(GetImportAddress('glTangent3bvEXT'));
    glTangent3dEXT := tglTangent3dEXT(GetImportAddress('glTangent3dEXT'));
    glTangent3dvEXT := tglTangent3dvEXT(GetImportAddress('glTangent3dvEXT'));
    glTangent3fEXT := tglTangent3fEXT(GetImportAddress('glTangent3fEXT'));
    glTangent3fvEXT := tglTangent3fvEXT(GetImportAddress('glTangent3fvEXT'));
    glTangent3iEXT := tglTangent3iEXT(GetImportAddress('glTangent3iEXT'));
    glTangent3ivEXT := tglTangent3ivEXT(GetImportAddress('glTangent3ivEXT'));
    glTangent3sEXT := tglTangent3sEXT(GetImportAddress('glTangent3sEXT'));
    glTangent3svEXT := tglTangent3svEXT(GetImportAddress('glTangent3svEXT'));
    glBinormal3bEXT := tglBinormal3bEXT(GetImportAddress('glBinormal3bEXT'));
    glBinormal3bvEXT := tglBinormal3bvEXT(GetImportAddress('glBinormal3bvEXT'));
    glBinormal3dEXT := tglBinormal3dEXT(GetImportAddress('glBinormal3dEXT'));
    glBinormal3dvEXT := tglBinormal3dvEXT(GetImportAddress('glBinormal3dvEXT'));
    glBinormal3fEXT := tglBinormal3fEXT(GetImportAddress('glBinormal3fEXT'));
    glBinormal3fvEXT := tglBinormal3fvEXT(GetImportAddress('glBinormal3fvEXT'));
    glBinormal3iEXT := tglBinormal3iEXT(GetImportAddress('glBinormal3iEXT'));
    glBinormal3ivEXT := tglBinormal3ivEXT(GetImportAddress('glBinormal3ivEXT'));
    glBinormal3sEXT := tglBinormal3sEXT(GetImportAddress('glBinormal3sEXT'));
    glBinormal3svEXT := tglBinormal3svEXT(GetImportAddress('glBinormal3svEXT'));
    glTangentPointerEXT := tglTangentPointerEXT(GetImportAddress('glTangentPointerEXT'));
    glBinormalPointerEXT := tglBinormalPointerEXT(GetImportAddress('glBinormalPointerEXT'));
end;

class method GL.Read_GL_EXT_copy_texture;
begin
    glCopyTexImage1DEXT := tglCopyTexImage1DEXT(GetImportAddress('glCopyTexImage1DEXT'));
    glCopyTexImage2DEXT := tglCopyTexImage2DEXT(GetImportAddress('glCopyTexImage2DEXT'));
    glCopyTexSubImage1DEXT := tglCopyTexSubImage1DEXT(GetImportAddress('glCopyTexSubImage1DEXT'));
    glCopyTexSubImage2DEXT := tglCopyTexSubImage2DEXT(GetImportAddress('glCopyTexSubImage2DEXT'));
    glCopyTexSubImage3DEXT := tglCopyTexSubImage3DEXT(GetImportAddress('glCopyTexSubImage3DEXT'));
end;

class method GL.Read_GL_EXT_cull_vertex;
begin
    glCullParameterdvEXT := tglCullParameterdvEXT(GetImportAddress('glCullParameterdvEXT'));
    glCullParameterfvEXT := tglCullParameterfvEXT(GetImportAddress('glCullParameterfvEXT'));
end;

class method GL.Read_GL_EXT_draw_range_elements;
begin
    glDrawRangeElementsEXT := tglDrawRangeElementsEXT(GetImportAddress('glDrawRangeElementsEXT'));
end;

class method GL.Read_GL_EXT_fog_coord;
begin
    glFogCoordfEXT := tglFogCoordfEXT(GetImportAddress('glFogCoordfEXT'));
    glFogCoordfvEXT := tglFogCoordfvEXT(GetImportAddress('glFogCoordfvEXT'));
    glFogCoorddEXT := tglFogCoorddEXT(GetImportAddress('glFogCoorddEXT'));
    glFogCoorddvEXT := tglFogCoorddvEXT(GetImportAddress('glFogCoorddvEXT'));
    glFogCoordPointerEXT := tglFogCoordPointerEXT(GetImportAddress('glFogCoordPointerEXT'));
end;

class method GL.Read_GL_EXT_framebuffer_object;
begin
    glIsRenderbufferEXT := tglIsRenderbufferEXT(GetImportAddress('glIsRenderbufferEXT'));
    glBindRenderbufferEXT := tglBindRenderbufferEXT(GetImportAddress('glBindRenderbufferEXT'));
    glDeleteRenderbuffersEXT := tglDeleteRenderbuffersEXT(GetImportAddress('glDeleteRenderbuffersEXT'));
    glGenRenderbuffersEXT := tglGenRenderbuffersEXT(GetImportAddress('glGenRenderbuffersEXT'));
    glRenderbufferStorageEXT := tglRenderbufferStorageEXT(GetImportAddress('glRenderbufferStorageEXT'));
    glGetRenderbufferParameterivEXT := tglGetRenderbufferParameterivEXT(GetImportAddress('glGetRenderbufferParameterivEXT'));
    glIsFramebufferEXT := tglIsFramebufferEXT(GetImportAddress('glIsFramebufferEXT'));
    glBindFramebufferEXT := tglBindFramebufferEXT(GetImportAddress('glBindFramebufferEXT'));
    glDeleteFramebuffersEXT := tglDeleteFramebuffersEXT(GetImportAddress('glDeleteFramebuffersEXT'));
    glGenFramebuffersEXT := tglGenFramebuffersEXT(GetImportAddress('glGenFramebuffersEXT'));
    glCheckFramebufferStatusEXT := tglCheckFramebufferStatusEXT(GetImportAddress('glCheckFramebufferStatusEXT'));
    glFramebufferTexture1DEXT := tglFramebufferTexture1DEXT(GetImportAddress('glFramebufferTexture1DEXT'));
    glFramebufferTexture2DEXT := tglFramebufferTexture2DEXT(GetImportAddress('glFramebufferTexture2DEXT'));
    glFramebufferTexture3DEXT := tglFramebufferTexture3DEXT(GetImportAddress('glFramebufferTexture3DEXT'));
    glFramebufferRenderbufferEXT := tglFramebufferRenderbufferEXT(GetImportAddress('glFramebufferRenderbufferEXT'));
    glGetFramebufferAttachmentParameterivEXT := tglGetFramebufferAttachmentParameterivEXT(GetImportAddress('glGetFramebufferAttachmentParameterivEXT'));
    glGenerateMipmapEXT := tglGenerateMipmapEXT(GetImportAddress('glGenerateMipmapEXT'));
end;

class method GL.Read_GL_EXT_histogram;
begin
    glGetHistogramEXT := tglGetHistogramEXT(GetImportAddress('glGetHistogramEXT'));
    glGetHistogramParameterfvEXT := tglGetHistogramParameterfvEXT(GetImportAddress('glGetHistogramParameterfvEXT'));
    glGetHistogramParameterivEXT := tglGetHistogramParameterivEXT(GetImportAddress('glGetHistogramParameterivEXT'));
    glGetMinmaxEXT := tglGetMinmaxEXT(GetImportAddress('glGetMinmaxEXT'));
    glGetMinmaxParameterfvEXT := tglGetMinmaxParameterfvEXT(GetImportAddress('glGetMinmaxParameterfvEXT'));
    glGetMinmaxParameterivEXT := tglGetMinmaxParameterivEXT(GetImportAddress('glGetMinmaxParameterivEXT'));
    glHistogramEXT := tglHistogramEXT(GetImportAddress('glHistogramEXT'));
    glMinmaxEXT := tglMinmaxEXT(GetImportAddress('glMinmaxEXT'));
    glResetHistogramEXT := tglResetHistogramEXT(GetImportAddress('glResetHistogramEXT'));
    glResetMinmaxEXT := tglResetMinmaxEXT(GetImportAddress('glResetMinmaxEXT'));
end;

class method GL.Read_GL_EXT_index_func;
begin
    glIndexFuncEXT := tglIndexFuncEXT(GetImportAddress('glIndexFuncEXT'));
end;

class method GL.Read_GL_EXT_index_material;
begin
    glIndexMaterialEXT := tglIndexMaterialEXT(GetImportAddress('glIndexMaterialEXT'));
end;

class method GL.Read_GL_EXT_light_texture;
begin
    glApplyTextureEXT := tglApplyTextureEXT(GetImportAddress('glApplyTextureEXT'));
    glTextureLightEXT := tglTextureLightEXT(GetImportAddress('glTextureLightEXT'));
    glTextureMaterialEXT := tglTextureMaterialEXT(GetImportAddress('glTextureMaterialEXT'));
end;

class method GL.Read_GL_EXT_multi_draw_arrays;
begin
    glMultiDrawArraysEXT := tglMultiDrawArraysEXT(GetImportAddress('glMultiDrawArraysEXT'));
    glMultiDrawElementsEXT := tglMultiDrawElementsEXT(GetImportAddress('glMultiDrawElementsEXT'));
end;

class method GL.Read_GL_EXT_multisample;
begin
    glSampleMaskEXT := tglSampleMaskEXT(GetImportAddress('glSampleMaskEXT'));
    glSamplePatternEXT := tglSamplePatternEXT(GetImportAddress('glSamplePatternEXT'));
end;

class method GL.Read_GL_EXT_paletted_texture;
begin
    glColorTableEXT := tglColorTableEXT(GetImportAddress('glColorTableEXT'));
    glGetColorTableEXT := tglGetColorTableEXT(GetImportAddress('glGetColorTableEXT'));
    glGetColorTableParameterivEXT := tglGetColorTableParameterivEXT(GetImportAddress('glGetColorTableParameterivEXT'));
    glGetColorTableParameterfvEXT := tglGetColorTableParameterfvEXT(GetImportAddress('glGetColorTableParameterfvEXT'));
end;

class method GL.Read_GL_EXT_pixel_transform;
begin
    glPixelTransformParameteriEXT := tglPixelTransformParameteriEXT(GetImportAddress('glPixelTransformParameteriEXT'));
    glPixelTransformParameterfEXT := tglPixelTransformParameterfEXT(GetImportAddress('glPixelTransformParameterfEXT'));
    glPixelTransformParameterivEXT := tglPixelTransformParameterivEXT(GetImportAddress('glPixelTransformParameterivEXT'));
    glPixelTransformParameterfvEXT := tglPixelTransformParameterfvEXT(GetImportAddress('glPixelTransformParameterfvEXT'));
end;

class method GL.Read_GL_EXT_point_parameters;
begin
    glPointParameterfEXT := tglPointParameterfEXT(GetImportAddress('glPointParameterfEXT'));
    glPointParameterfvEXT := tglPointParameterfvEXT(GetImportAddress('glPointParameterfvEXT'));
end;

class method GL.Read_GL_EXT_polygon_offset;
begin
    glPolygonOffsetEXT := tglPolygonOffsetEXT(GetImportAddress('glPolygonOffsetEXT'));
end;

class method GL.Read_GL_EXT_secondary_color;
begin
    glSecondaryColor3bEXT := tglSecondaryColor3bEXT(GetImportAddress('glSecondaryColor3bEXT'));
    glSecondaryColor3bvEXT := tglSecondaryColor3bvEXT(GetImportAddress('glSecondaryColor3bvEXT'));
    glSecondaryColor3dEXT := tglSecondaryColor3dEXT(GetImportAddress('glSecondaryColor3dEXT'));
    glSecondaryColor3dvEXT := tglSecondaryColor3dvEXT(GetImportAddress('glSecondaryColor3dvEXT'));
    glSecondaryColor3fEXT := tglSecondaryColor3fEXT(GetImportAddress('glSecondaryColor3fEXT'));
    glSecondaryColor3fvEXT := tglSecondaryColor3fvEXT(GetImportAddress('glSecondaryColor3fvEXT'));
    glSecondaryColor3iEXT := tglSecondaryColor3iEXT(GetImportAddress('glSecondaryColor3iEXT'));
    glSecondaryColor3ivEXT := tglSecondaryColor3ivEXT(GetImportAddress('glSecondaryColor3ivEXT'));
    glSecondaryColor3sEXT := tglSecondaryColor3sEXT(GetImportAddress('glSecondaryColor3sEXT'));
    glSecondaryColor3svEXT := tglSecondaryColor3svEXT(GetImportAddress('glSecondaryColor3svEXT'));
    glSecondaryColor3ubEXT := tglSecondaryColor3ubEXT(GetImportAddress('glSecondaryColor3ubEXT'));
    glSecondaryColor3ubvEXT := tglSecondaryColor3ubvEXT(GetImportAddress('glSecondaryColor3ubvEXT'));
    glSecondaryColor3uiEXT := tglSecondaryColor3uiEXT(GetImportAddress('glSecondaryColor3uiEXT'));
    glSecondaryColor3uivEXT := tglSecondaryColor3uivEXT(GetImportAddress('glSecondaryColor3uivEXT'));
    glSecondaryColor3usEXT := tglSecondaryColor3usEXT(GetImportAddress('glSecondaryColor3usEXT'));
    glSecondaryColor3usvEXT := tglSecondaryColor3usvEXT(GetImportAddress('glSecondaryColor3usvEXT'));
    glSecondaryColorPointerEXT := tglSecondaryColorPointerEXT(GetImportAddress('glSecondaryColorPointerEXT'));
end;

class method GL.Read_GL_EXT_stencil_two_side;
begin
    glActiveStencilFaceEXT := tglActiveStencilFaceEXT(GetImportAddress('glActiveStencilFaceEXT'));
end;

class method GL.Read_GL_EXT_subtexture;
begin
    glTexSubImage1DEXT := tglTexSubImage1DEXT(GetImportAddress('glTexSubImage1DEXT'));
    glTexSubImage2DEXT := tglTexSubImage2DEXT(GetImportAddress('glTexSubImage2DEXT'));
end;

class method GL.Read_GL_EXT_texture3D;
begin
    glTexImage3DEXT := tglTexImage3DEXT(GetImportAddress('glTexImage3DEXT'));
    glTexSubImage3DEXT := tglTexSubImage3DEXT(GetImportAddress('glTexSubImage3DEXT'));
end;

class method GL.Read_GL_EXT_texture_object;
begin
    glAreTexturesResidentEXT := tglAreTexturesResidentEXT(GetImportAddress('glAreTexturesResidentEXT'));
    glBindTextureEXT := tglBindTextureEXT(GetImportAddress('glBindTextureEXT'));
    glDeleteTexturesEXT := tglDeleteTexturesEXT(GetImportAddress('glDeleteTexturesEXT'));
    glGenTexturesEXT := tglGenTexturesEXT(GetImportAddress('glGenTexturesEXT'));
    glIsTextureEXT := tglIsTextureEXT(GetImportAddress('glIsTextureEXT'));
    glPrioritizeTexturesEXT := tglPrioritizeTexturesEXT(GetImportAddress('glPrioritizeTexturesEXT'));
end;

class method GL.Read_GL_EXT_texture_perturb_normal;
begin
    glTextureNormalEXT := tglTextureNormalEXT(GetImportAddress('glTextureNormalEXT'));
end;

class method GL.Read_GL_EXT_vertex_array;
begin
    glArrayElementEXT := tglArrayElementEXT(GetImportAddress('glArrayElementEXT'));
    glColorPointerEXT := tglColorPointerEXT(GetImportAddress('glColorPointerEXT'));
    glDrawArraysEXT := tglDrawArraysEXT(GetImportAddress('glDrawArraysEXT'));
    glEdgeFlagPointerEXT := tglEdgeFlagPointerEXT(GetImportAddress('glEdgeFlagPointerEXT'));
    glGetPointervEXT := tglGetPointervEXT(GetImportAddress('glGetPointervEXT'));
    glIndexPointerEXT := tglIndexPointerEXT(GetImportAddress('glIndexPointerEXT'));
    glNormalPointerEXT := tglNormalPointerEXT(GetImportAddress('glNormalPointerEXT'));
    glTexCoordPointerEXT := tglTexCoordPointerEXT(GetImportAddress('glTexCoordPointerEXT'));
    glVertexPointerEXT := tglVertexPointerEXT(GetImportAddress('glVertexPointerEXT'));
end;

class method GL.Read_GL_EXT_vertex_shader;
begin
    glBeginVertexShaderEXT := tglBeginVertexShaderEXT(GetImportAddress('glBeginVertexShaderEXT'));
    glEndVertexShaderEXT := tglEndVertexShaderEXT(GetImportAddress('glEndVertexShaderEXT'));
    glBindVertexShaderEXT := tglBindVertexShaderEXT(GetImportAddress('glBindVertexShaderEXT'));
    glGenVertexShadersEXT := tglGenVertexShadersEXT(GetImportAddress('glGenVertexShadersEXT'));
    glDeleteVertexShaderEXT := tglDeleteVertexShaderEXT(GetImportAddress('glDeleteVertexShaderEXT'));
    glShaderOp1EXT := tglShaderOp1EXT(GetImportAddress('glShaderOp1EXT'));
    glShaderOp2EXT := tglShaderOp2EXT(GetImportAddress('glShaderOp2EXT'));
    glShaderOp3EXT := tglShaderOp3EXT(GetImportAddress('glShaderOp3EXT'));
    glSwizzleEXT := tglSwizzleEXT(GetImportAddress('glSwizzleEXT'));
    glWriteMaskEXT := tglWriteMaskEXT(GetImportAddress('glWriteMaskEXT'));
    glInsertComponentEXT := tglInsertComponentEXT(GetImportAddress('glInsertComponentEXT'));
    glExtractComponentEXT := tglExtractComponentEXT(GetImportAddress('glExtractComponentEXT'));
    glGenSymbolsEXT := tglGenSymbolsEXT(GetImportAddress('glGenSymbolsEXT'));
    glSetInvariantEXT := tglSetInvariantEXT(GetImportAddress('glSetInvariantEXT'));
    glSetLocalConstantEXT := tglSetLocalConstantEXT(GetImportAddress('glSetLocalConstantEXT'));
    glVariantbvEXT := tglVariantbvEXT(GetImportAddress('glVariantbvEXT'));
    glVariantsvEXT := tglVariantsvEXT(GetImportAddress('glVariantsvEXT'));
    glVariantivEXT := tglVariantivEXT(GetImportAddress('glVariantivEXT'));
    glVariantfvEXT := tglVariantfvEXT(GetImportAddress('glVariantfvEXT'));
    glVariantdvEXT := tglVariantdvEXT(GetImportAddress('glVariantdvEXT'));
    glVariantubvEXT := tglVariantubvEXT(GetImportAddress('glVariantubvEXT'));
    glVariantusvEXT := tglVariantusvEXT(GetImportAddress('glVariantusvEXT'));
    glVariantuivEXT := tglVariantuivEXT(GetImportAddress('glVariantuivEXT'));
    glVariantPointerEXT := tglVariantPointerEXT(GetImportAddress('glVariantPointerEXT'));
    glEnableVariantClientStateEXT := tglEnableVariantClientStateEXT(GetImportAddress('glEnableVariantClientStateEXT'));
    glDisableVariantClientStateEXT := tglDisableVariantClientStateEXT(GetImportAddress('glDisableVariantClientStateEXT'));
    glBindLightParameterEXT := tglBindLightParameterEXT(GetImportAddress('glBindLightParameterEXT'));
    glBindMaterialParameterEXT := tglBindMaterialParameterEXT(GetImportAddress('glBindMaterialParameterEXT'));
    glBindTexGenParameterEXT := tglBindTexGenParameterEXT(GetImportAddress('glBindTexGenParameterEXT'));
    glBindTextureUnitParameterEXT := tglBindTextureUnitParameterEXT(GetImportAddress('glBindTextureUnitParameterEXT'));
    glBindParameterEXT := tglBindParameterEXT(GetImportAddress('glBindParameterEXT'));
    glIsVariantEnabledEXT := tglIsVariantEnabledEXT(GetImportAddress('glIsVariantEnabledEXT'));
    glGetVariantBooleanvEXT := tglGetVariantBooleanvEXT(GetImportAddress('glGetVariantBooleanvEXT'));
    glGetVariantIntegervEXT := tglGetVariantIntegervEXT(GetImportAddress('glGetVariantIntegervEXT'));
    glGetVariantFloatvEXT := tglGetVariantFloatvEXT(GetImportAddress('glGetVariantFloatvEXT'));
    glGetVariantPointervEXT := tglGetVariantPointervEXT(GetImportAddress('glGetVariantPointervEXT'));
    glGetInvariantBooleanvEXT := tglGetInvariantBooleanvEXT(GetImportAddress('glGetInvariantBooleanvEXT'));
    glGetInvariantIntegervEXT := tglGetInvariantIntegervEXT(GetImportAddress('glGetInvariantIntegervEXT'));
    glGetInvariantFloatvEXT := tglGetInvariantFloatvEXT(GetImportAddress('glGetInvariantFloatvEXT'));
    glGetLocalConstantBooleanvEXT := tglGetLocalConstantBooleanvEXT(GetImportAddress('glGetLocalConstantBooleanvEXT'));
    glGetLocalConstantIntegervEXT := tglGetLocalConstantIntegervEXT(GetImportAddress('glGetLocalConstantIntegervEXT'));
    glGetLocalConstantFloatvEXT := tglGetLocalConstantFloatvEXT(GetImportAddress('glGetLocalConstantFloatvEXT'));
end;

class method GL.Read_GL_EXT_vertex_weighting;
begin
    glVertexWeightfEXT := tglVertexWeightfEXT(GetImportAddress('glVertexWeightfEXT'));
    glVertexWeightfvEXT := tglVertexWeightfvEXT(GetImportAddress('glVertexWeightfvEXT'));
    glVertexWeightPointerEXT := tglVertexWeightPointerEXT(GetImportAddress('glVertexWeightPointerEXT'));
end;

class method GL.Read_GL_EXT_depth_bounds_test;
begin
    glImageTransformParameteriHP := tglImageTransformParameteriHP(GetImportAddress('glImageTransformParameteriHP'));
    glDepthBoundsEXT := tglDepthBoundsEXT(GetImportAddress('glDepthBoundsEXT'));
end;

class method GL.Read_GL_EXT_blend_equation_separate;
begin
    glBlendEquationSeparateEXT := tglBlendEquationSeparateEXT(GetImportAddress('glBlendEquationSeparateEXT'));
end;

class method GL.Read_GL_EXT_stencil_clear_tag;
begin
    glStencilClearTagEXT := tglStencilClearTagEXT(GetImportAddress('glStencilClearTagEXT'));
end;

class method GL.Read_GL_EXT_framebuffer_blit;
begin
    glBlitFramebufferEXT := tglBlitFramebufferEXT(GetImportAddress('glBlitFramebufferEXT'));
end;

class method GL.Read_GL_EXT_framebuffer_multisample;
begin
    glRenderbufferStorageMultisampleEXT := tglRenderbufferStorageMultisampleEXT(GetImportAddress('glRenderbufferStorageMultisampleEXT'));
end;

class method GL.Read_GL_EXT_timer_query;
begin
    glGetQueryObjecti64vEXT := tglGetQueryObjecti64vEXT(GetImportAddress('glGetQueryObjecti64vEXT'));
    glGetQueryObjectui64vEXT := tglGetQueryObjectui64vEXT(GetImportAddress('glGetQueryObjectui64vEXT'));
end;

class method GL.Read_GL_EXT_gpu_program_parameters;
begin
    glProgramEnvParameters4fvEXT := tglProgramEnvParameters4fvEXT(GetImportAddress('glProgramEnvParameters4fvEXT'));
    glProgramLocalParameters4fvEXT := tglProgramLocalParameters4fvEXT(GetImportAddress('glProgramLocalParameters4fvEXT'));
end;

class method GL.Read_GL_EXT_bindable_uniform;
begin
    glUniformBufferEXT := tglUniformBufferEXT(GetImportAddress('glUniformBufferEXT'));
    glGetUniformBufferSizeEXT := tglGetUniformBufferSizeEXT(GetImportAddress('glGetUniformBufferSizeEXT'));
    glGetUniformOffsetEXT := tglGetUniformOffsetEXT(GetImportAddress('glGetUniformOffsetEXT'));
end;

class method GL.Read_GL_EXT_draw_buffers2;
begin
    glColorMaskIndexedEXT := tglColorMaskIndexedEXT(GetImportAddress('glColorMaskIndexedEXT'));
    glGetBooleanIndexedvEXT := tglGetBooleanIndexedvEXT(GetImportAddress('glGetBooleanIndexedvEXT'));
    glGetIntegerIndexedvEXT := tglGetIntegerIndexedvEXT(GetImportAddress('glGetIntegerIndexedvEXT'));
    glEnableIndexedEXT := tglEnableIndexedEXT(GetImportAddress('glEnableIndexedEXT'));
    glDisableIndexedEXT := tglDisableIndexedEXT(GetImportAddress('glDisableIndexedEXT'));
    glIsEnabledIndexedEXT := tglIsEnabledIndexedEXT(GetImportAddress('glIsEnabledIndexedEXT'));
end;

class method GL.Read_GL_EXT_draw_instanced;
begin
    glDrawArraysInstancedEXT := tglDrawArraysInstancedEXT(GetImportAddress('glDrawArraysInstancedEXT'));
    glDrawElementsInstancedEXT := tglDrawElementsInstancedEXT(GetImportAddress('glDrawElementsInstancedEXT'));
end;

class method GL.Read_GL_EXT_geometry_shader4;
begin
    glProgramParameteriEXT := tglProgramParameteriEXT(GetImportAddress('glProgramParameteriEXT'));
    glFramebufferTextureEXT := tglFramebufferTextureEXT(GetImportAddress('glFramebufferTextureEXT'));
  //  glFramebufferTextureLayerEXT := t//  glFramebufferTextureLayerEXT(dglGetProcAddress('glFramebufferTextureLayerEXT'));
    glFramebufferTextureFaceEXT := tglFramebufferTextureFaceEXT(GetImportAddress('glFramebufferTextureFaceEXT'));
end;

class method GL.Read_GL_EXT_gpu_shader4;
begin
    glVertexAttribI1iEXT := tglVertexAttribI1iEXT(GetImportAddress('glVertexAttribI1iEXT'));
    glVertexAttribI2iEXT := tglVertexAttribI2iEXT(GetImportAddress('glVertexAttribI2iEXT'));
    glVertexAttribI3iEXT := tglVertexAttribI3iEXT(GetImportAddress('glVertexAttribI3iEXT'));
    glVertexAttribI4iEXT := tglVertexAttribI4iEXT(GetImportAddress('glVertexAttribI4iEXT'));
    glVertexAttribI1uiEXT := tglVertexAttribI1uiEXT(GetImportAddress('glVertexAttribI1uiEXT'));
    glVertexAttribI2uiEXT := tglVertexAttribI2uiEXT(GetImportAddress('glVertexAttribI2uiEXT'));
    glVertexAttribI3uiEXT := tglVertexAttribI3uiEXT(GetImportAddress('glVertexAttribI3uiEXT'));
    glVertexAttribI4uiEXT := tglVertexAttribI4uiEXT(GetImportAddress('glVertexAttribI4uiEXT'));
    glVertexAttribI1ivEXT := tglVertexAttribI1ivEXT(GetImportAddress('glVertexAttribI1ivEXT'));
    glVertexAttribI2ivEXT := tglVertexAttribI2ivEXT(GetImportAddress('glVertexAttribI2ivEXT'));
    glVertexAttribI3ivEXT := tglVertexAttribI3ivEXT(GetImportAddress('glVertexAttribI3ivEXT'));
    glVertexAttribI4ivEXT := tglVertexAttribI4ivEXT(GetImportAddress('glVertexAttribI4ivEXT'));
    glVertexAttribI1uivEXT := tglVertexAttribI1uivEXT(GetImportAddress('glVertexAttribI1uivEXT'));
    glVertexAttribI2uivEXT := tglVertexAttribI2uivEXT(GetImportAddress('glVertexAttribI2uivEXT'));
    glVertexAttribI3uivEXT := tglVertexAttribI3uivEXT(GetImportAddress('glVertexAttribI3uivEXT'));
    glVertexAttribI4uivEXT := tglVertexAttribI4uivEXT(GetImportAddress('glVertexAttribI4uivEXT'));
    glVertexAttribI4bvEXT := tglVertexAttribI4bvEXT(GetImportAddress('glVertexAttribI4bvEXT'));
    glVertexAttribI4svEXT := tglVertexAttribI4svEXT(GetImportAddress('glVertexAttribI4svEXT'));
    glVertexAttribI4ubvEXT := tglVertexAttribI4ubvEXT(GetImportAddress('glVertexAttribI4ubvEXT'));
    glVertexAttribI4usvEXT := tglVertexAttribI4usvEXT(GetImportAddress('glVertexAttribI4usvEXT'));
    glVertexAttribIPointerEXT := tglVertexAttribIPointerEXT(GetImportAddress('glVertexAttribIPointerEXT'));
    glGetVertexAttribIivEXT := tglGetVertexAttribIivEXT(GetImportAddress('glGetVertexAttribIivEXT'));
    glGetVertexAttribIuivEXT := tglGetVertexAttribIuivEXT(GetImportAddress('glGetVertexAttribIuivEXT'));
    glUniform1uiEXT := tglUniform1uiEXT(GetImportAddress('glUniform1uiEXT'));
    glUniform2uiEXT := tglUniform2uiEXT(GetImportAddress('glUniform2uiEXT'));
    glUniform3uiEXT := tglUniform3uiEXT(GetImportAddress('glUniform3uiEXT'));
    glUniform4uiEXT := tglUniform4uiEXT(GetImportAddress('glUniform4uiEXT'));
    glUniform1uivEXT := tglUniform1uivEXT(GetImportAddress('glUniform1uivEXT'));
    glUniform2uivEXT := tglUniform2uivEXT(GetImportAddress('glUniform2uivEXT'));
    glUniform3uivEXT := tglUniform3uivEXT(GetImportAddress('glUniform3uivEXT'));
    glUniform4uivEXT := tglUniform4uivEXT(GetImportAddress('glUniform4uivEXT'));
    glGetUniformuivEXT := tglGetUniformuivEXT(GetImportAddress('glGetUniformuivEXT'));
    glBindFragDataLocationEXT := tglBindFragDataLocationEXT(GetImportAddress('glBindFragDataLocationEXT'));
    glGetFragDataLocationEXT := tglGetFragDataLocationEXT(GetImportAddress('glGetFragDataLocationEXT'));
end;

class method GL.Read_GL_EXT_texture_array;
begin
    glFramebufferTextureLayerEXT := tglFramebufferTextureLayerEXT(GetImportAddress('glFramebufferTextureLayerEXT'));
end;

class method GL.Read_GL_EXT_texture_buffer_object;
begin
    glTexBufferEXT := tglTexBufferEXT(GetImportAddress('glTexBufferEXT'));
end;

class method GL.Read_GL_EXT_texture_integer;
begin
    glClearColorIiEXT := tglClearColorIiEXT(GetImportAddress('glClearColorIiEXT'));
    glClearColorIuiEXT := tglClearColorIuiEXT(GetImportAddress('glClearColorIuiEXT'));
    glTexParameterIivEXT := tglTexParameterIivEXT(GetImportAddress('glTexParameterIivEXT'));
    glTexParameterIuivEXT := tglTexParameterIuivEXT(GetImportAddress('glTexParameterIuivEXT'));
    glGetTexParameterIivEXT := tglGetTexParameterIivEXT(GetImportAddress('glGetTexParameterIivEXT'));
    glGetTexParameterIiuvEXT := tglGetTexParameterIiuvEXT(GetImportAddress('glGetTexParameterIiuvEXT'));
end;

class method GL.Read_GL_EXT_transform_feedback;
begin
    glBeginTransformFeedbackEXT := tglBeginTransformFeedbackEXT(GetImportAddress('lBeginTransformFeedbackEXT'));
    glEndTransformFeedbackEXT := tglEndTransformFeedbackEXT(GetImportAddress('glEndTransformFeedbackEXT'));
    glBindBufferRangeEXT := tglBindBufferRangeEXT(GetImportAddress('glBindBufferRangeEXT'));
    glBindBufferOffsetEXT := tglBindBufferOffsetEXT(GetImportAddress('glBindBufferOffsetEXT'));
    glBindBufferBaseEXT := tglBindBufferBaseEXT(GetImportAddress('glBindBufferBaseEXT'));
    glTransformFeedbackVaryingsEXT := tglTransformFeedbackVaryingsEXT(GetImportAddress('glTransformFeedbackVaryingsEXT'));
    glGetTransformFeedbackVaryingEXT := tglGetTransformFeedbackVaryingEXT(GetImportAddress('glGetTransformFeedbackVaryingEXT'));
end;

class method GL.Read_GL_EXT_direct_state_access;
begin
    glClientAttribDefaultEXT := tglClientAttribDefaultEXT(GetImportAddress('glClientAttribDefaultEXT'));
    glPushClientAttribDefaultEXT := tglPushClientAttribDefaultEXT(GetImportAddress('glPushClientAttribDefaultEXT'));
    glMatrixLoadfEXT := tglMatrixLoadfEXT(GetImportAddress('glMatrixLoadfEXT'));
    glMatrixLoaddEXT := tglMatrixLoaddEXT(GetImportAddress('glMatrixLoaddEXT'));
    glMatrixMultfEXT := tglMatrixMultfEXT(GetImportAddress('glMatrixMultfEXT'));
    glMatrixMultdEXT := tglMatrixMultdEXT(GetImportAddress('glMatrixMultdEXT'));
    glMatrixLoadIdentityEXT := tglMatrixLoadIdentityEXT(GetImportAddress('glMatrixLoadIdentityEXT'));
    glMatrixRotatefEXT := tglMatrixRotatefEXT(GetImportAddress('glMatrixRotatefEXT'));
    glMatrixRotatedEXT := tglMatrixRotatedEXT(GetImportAddress('glMatrixRotatedEXT'));
    glMatrixScalefEXT := tglMatrixScalefEXT(GetImportAddress('glMatrixScalefEXT'));
    glMatrixScaledEXT := tglMatrixScaledEXT(GetImportAddress('glMatrixScaledEXT'));
    glMatrixTranslatefEXT := tglMatrixTranslatefEXT(GetImportAddress('glMatrixTranslatefEXT'));
    glMatrixTranslatedEXT := tglMatrixTranslatedEXT(GetImportAddress('glMatrixTranslatedEXT'));
    glMatrixFrustumEXT := tglMatrixFrustumEXT(GetImportAddress('glMatrixFrustumEXT'));
    glMatrixOrthoEXT := tglMatrixOrthoEXT(GetImportAddress('glMatrixOrthoEXT'));
    glMatrixPopEXT := tglMatrixPopEXT(GetImportAddress('glMatrixPopEXT'));
    glMatrixPushEXT := tglMatrixPushEXT(GetImportAddress('glMatrixPushEXT'));
    glMatrixLoadTransposefEXT := tglMatrixLoadTransposefEXT(GetImportAddress('glMatrixLoadTransposefEXT'));
    glMatrixLoadTransposedEXT := tglMatrixLoadTransposedEXT(GetImportAddress('glMatrixLoadTransposedEXT'));
    glMatrixMultTransposefEXT := tglMatrixMultTransposefEXT(GetImportAddress('glMatrixMultTransposefEXT'));
    glMatrixMultTransposedEXT := tglMatrixMultTransposedEXT(GetImportAddress('glMatrixMultTransposedEXT'));
    glTextureParameterfEXT := tglTextureParameterfEXT(GetImportAddress('glTextureParameterfEXT'));
    glTextureParameterfvEXT := tglTextureParameterfvEXT(GetImportAddress('glTextureParameterfvEXT'));
    glTextureParameteriEXT := tglTextureParameteriEXT(GetImportAddress('glTextureParameteriEXT'));
    glTextureParameterivEXT := tglTextureParameterivEXT(GetImportAddress('glTextureParameterivEXT'));
    glTextureImage1DEXT := tglTextureImage1DEXT(GetImportAddress('glTextureImage1DEXT'));
    glTextureImage2DEXT := tglTextureImage2DEXT(GetImportAddress('glTextureImage2DEXT'));
    glTextureSubImage1DEXT := tglTextureSubImage1DEXT(GetImportAddress('glTextureSubImage1DEXT'));
    glTextureSubImage2DEXT := tglTextureSubImage2DEXT(GetImportAddress('glTextureSubImage2DEXT'));
    glCopyTextureImage1DEXT := tglCopyTextureImage1DEXT(GetImportAddress('glCopyTextureImage1DEXT'));
    glCopyTextureImage2DEXT := tglCopyTextureImage2DEXT(GetImportAddress('glCopyTextureImage2DEXT'));
    glCopyTextureSubImage1DEXT := tglCopyTextureSubImage1DEXT(GetImportAddress('glCopyTextureSubImage1DEXT'));
    glCopyTextureSubImage2DEXT := tglCopyTextureSubImage2DEXT(GetImportAddress('glCopyTextureSubImage2DEXT'));
    glGetTextureImageEXT := tglGetTextureImageEXT(GetImportAddress('glGetTextureImageEXT'));
    glGetTextureParameterfvEXT := tglGetTextureParameterfvEXT(GetImportAddress('glGetTextureParameterfvEXT'));
    glGetTextureParameterivEXT := tglGetTextureParameterivEXT(GetImportAddress('glGetTextureParameterivEXT'));
    glGetTextureLevelParameterfvEXT := tglGetTextureLevelParameterfvEXT(GetImportAddress('glGetTextureLevelParameterfvEXT'));
    glGetTextureLevelParameterivEXT := tglGetTextureLevelParameterivEXT(GetImportAddress('glGetTextureLevelParameterivEXT'));
    glTextureImage3DEXT := tglTextureImage3DEXT(GetImportAddress('glTextureImage3DEXT'));
    glTextureSubImage3DEXT := tglTextureSubImage3DEXT(GetImportAddress('glTextureSubImage3DEXT'));
    glCopyTextureSubImage3DEXT := tglCopyTextureSubImage3DEXT(GetImportAddress('glCopyTextureSubImage3DEXT'));
    glMultiTexParameterfEXT := tglMultiTexParameterfEXT(GetImportAddress('glMultiTexParameterfEXT'));
    glMultiTexParameterfvEXT := tglMultiTexParameterfvEXT(GetImportAddress('glMultiTexParameterfvEXT'));
    glMultiTexParameteriEXT := tglMultiTexParameteriEXT(GetImportAddress('glMultiTexParameteriEXT'));
    glMultiTexParameterivEXT := tglMultiTexParameterivEXT(GetImportAddress('glMultiTexParameterivEXT'));
    glMultiTexImage1DEXT := tglMultiTexImage1DEXT(GetImportAddress('glMultiTexImage1DEXT'));
    glMultiTexImage2DEXT := tglMultiTexImage2DEXT(GetImportAddress('glMultiTexImage2DEXT'));
    glMultiTexSubImage1DEXT := tglMultiTexSubImage1DEXT(GetImportAddress('glMultiTexSubImage1DEXT'));
    glMultiTexSubImage2DEXT := tglMultiTexSubImage2DEXT(GetImportAddress('glMultiTexSubImage2DEXT'));
    glCopyMultiTexImage1DEXT := tglCopyMultiTexImage1DEXT(GetImportAddress('glCopyMultiTexImage1DEXT'));
    glCopyMultiTexImage2DEXT := tglCopyMultiTexImage2DEXT(GetImportAddress('glCopyMultiTexImage2DEXT'));
    glCopyMultiTexSubImage1DEXT := tglCopyMultiTexSubImage1DEXT(GetImportAddress('glCopyMultiTexSubImage1DEXT'));
    glCopyMultiTexSubImage2DEXT := tglCopyMultiTexSubImage2DEXT(GetImportAddress('glCopyMultiTexSubImage2DEXT'));
    glGetMultiTexImageEXT := tglGetMultiTexImageEXT(GetImportAddress('glGetMultiTexImageEXT'));
    glGetMultiTexParameterfvEXT := tglGetMultiTexParameterfvEXT(GetImportAddress('glGetMultiTexParameterfvEXT'));
    glGetMultiTexParameterivEXT := tglGetMultiTexParameterivEXT(GetImportAddress('glGetMultiTexParameterivEXT'));
    glGetMultiTexLevelParameterfvEXT := tglGetMultiTexLevelParameterfvEXT(GetImportAddress('glGetMultiTexLevelParameterfvEXT'));
    glGetMultiTexLevelParameterivEXT := tglGetMultiTexLevelParameterivEXT(GetImportAddress('glGetMultiTexLevelParameterivEXT'));
    glMultiTexImage3DEXT := tglMultiTexImage3DEXT(GetImportAddress('glMultiTexImage3DEXT'));
    glMultiTexSubImage3DEXT := tglMultiTexSubImage3DEXT(GetImportAddress('glMultiTexSubImage3DEXT'));
    glCopyMultiTexSubImage3DEXT := tglCopyMultiTexSubImage3DEXT(GetImportAddress('glCopyMultiTexSubImage3DEXT'));
    glBindMultiTextureEXT := tglBindMultiTextureEXT(GetImportAddress('glBindMultiTextureEXT'));
    glEnableClientStateIndexedEXT := tglEnableClientStateIndexedEXT(GetImportAddress('glEnableClientStateIndexedEXT'));
    glDisableClientStateIndexedEXT := tglDisableClientStateIndexedEXT(GetImportAddress('glDisableClientStateIndexedEXT'));
    glMultiTexCoordPointerEXT := tglMultiTexCoordPointerEXT(GetImportAddress('glMultiTexCoordPointerEXT'));
    glMultiTexEnvfEXT := tglMultiTexEnvfEXT(GetImportAddress('glMultiTexEnvfEXT'));
    glMultiTexEnvfvEXT := tglMultiTexEnvfvEXT(GetImportAddress('glMultiTexEnvfvEXT'));
    glMultiTexEnviEXT := tglMultiTexEnviEXT(GetImportAddress('glMultiTexEnviEXT'));
    glMultiTexEnvivEXT := tglMultiTexEnvivEXT(GetImportAddress('glMultiTexEnvivEXT'));
    glMultiTexGendEXT := tglMultiTexGendEXT(GetImportAddress('glMultiTexGendEXT'));
    glMultiTexGendvEXT := tglMultiTexGendvEXT(GetImportAddress('glMultiTexGendvEXT'));
    glMultiTexGenfEXT := tglMultiTexGenfEXT(GetImportAddress('glMultiTexGenfEXT'));
    glMultiTexGenfvEXT := tglMultiTexGenfvEXT(GetImportAddress('glMultiTexGenfvEXT'));
    glMultiTexGeniEXT := tglMultiTexGeniEXT(GetImportAddress('glMultiTexGeniEXT'));
    glMultiTexGenivEXT := tglMultiTexGenivEXT(GetImportAddress('glMultiTexGenivEXT'));
    glGetMultiTexEnvfvEXT := tglGetMultiTexEnvfvEXT(GetImportAddress('glGetMultiTexEnvfvEXT'));
    glGetMultiTexEnvivEXT := tglGetMultiTexEnvivEXT(GetImportAddress('glGetMultiTexEnvivEXT'));
    glGetMultiTexGendvEXT := tglGetMultiTexGendvEXT(GetImportAddress('glGetMultiTexGendvEXT'));
    glGetMultiTexGenfvEXT := tglGetMultiTexGenfvEXT(GetImportAddress('glGetMultiTexGenfvEXT'));
    glGetMultiTexGenivEXT := tglGetMultiTexGenivEXT(GetImportAddress('glGetMultiTexGenivEXT'));
    glGetFloatIndexedvEXT := tglGetFloatIndexedvEXT(GetImportAddress('glGetFloatIndexedvEXT'));
    glGetDoubleIndexedvEXT := tglGetDoubleIndexedvEXT(GetImportAddress('glGetDoubleIndexedvEXT'));
    glGetPointerIndexedvEXT := tglGetPointerIndexedvEXT(GetImportAddress('glGetPointerIndexedvEXT'));
    glCompressedTextureImage3DEXT := tglCompressedTextureImage3DEXT(GetImportAddress('glCompressedTextureImage3DEXT'));
    glCompressedTextureImage2DEXT := tglCompressedTextureImage2DEXT(GetImportAddress('glCompressedTextureImage2DEXT'));
    glCompressedTextureImage1DEXT := tglCompressedTextureImage1DEXT(GetImportAddress('glCompressedTextureImage1DEXT'));
    glCompressedTextureSubImage3DEXT := tglCompressedTextureSubImage3DEXT(GetImportAddress('glCompressedTextureSubImage3DEXT'));
    glCompressedTextureSubImage2DEXT := tglCompressedTextureSubImage2DEXT(GetImportAddress('glCompressedTextureSubImage2DEXT'));
    glCompressedTextureSubImage1DEXT := tglCompressedTextureSubImage1DEXT(GetImportAddress('glCompressedTextureSubImage1DEXT'));
    glGetCompressedTextureImageEXT := tglGetCompressedTextureImageEXT(GetImportAddress('glGetCompressedTextureImageEXT'));
    glCompressedMultiTexImage3DEXT := tglCompressedMultiTexImage3DEXT(GetImportAddress('glCompressedMultiTexImage3DEXT'));
    glCompressedMultiTexImage2DEXT := tglCompressedMultiTexImage2DEXT(GetImportAddress('glCompressedMultiTexImage2DEXT'));
    glCompressedMultiTexImage1DEXT := tglCompressedMultiTexImage1DEXT(GetImportAddress('glCompressedMultiTexImage1DEXT'));
    glCompressedMultiTexSubImage3DEXT := tglCompressedMultiTexSubImage3DEXT(GetImportAddress('glCompressedMultiTexSubImage3DEXT'));
    glCompressedMultiTexSubImage2DEXT := tglCompressedMultiTexSubImage2DEXT(GetImportAddress('glCompressedMultiTexSubImage2DEXT'));
    glCompressedMultiTexSubImage1DEXT := tglCompressedMultiTexSubImage1DEXT(GetImportAddress('glCompressedMultiTexSubImage1DEXT'));
    glGetCompressedMultiTexImageEXT := tglGetCompressedMultiTexImageEXT(GetImportAddress('glGetCompressedMultiTexImageEXT'));
    glNamedProgramStringEXT := tglNamedProgramStringEXT(GetImportAddress('glNamedProgramStringEXT'));
    glNamedProgramLocalParameter4dEXT := tglNamedProgramLocalParameter4dEXT(GetImportAddress('glNamedProgramLocalParameter4dEXT'));
    glNamedProgramLocalParameter4dvEXT := tglNamedProgramLocalParameter4dvEXT(GetImportAddress('glNamedProgramLocalParameter4dvEXT'));
    glNamedProgramLocalParameter4fEXT := tglNamedProgramLocalParameter4fEXT(GetImportAddress('glNamedProgramLocalParameter4fEXT'));
    glNamedProgramLocalParameter4fvEXT := tglNamedProgramLocalParameter4fvEXT(GetImportAddress('glNamedProgramLocalParameter4fvEXT'));
    glGetNamedProgramLocalParameterdvEXT := tglGetNamedProgramLocalParameterdvEXT(GetImportAddress('glGetNamedProgramLocalParameterdvEXT'));
    glGetNamedProgramLocalParameterfvEXT := tglGetNamedProgramLocalParameterfvEXT(GetImportAddress('glGetNamedProgramLocalParameterfvEXT'));
    glGetNamedProgramivEXT := tglGetNamedProgramivEXT(GetImportAddress('glGetNamedProgramivEXT'));
    glGetNamedProgramStringEXT := tglGetNamedProgramStringEXT(GetImportAddress('glGetNamedProgramStringEXT'));
    glNamedProgramLocalParameters4fvEXT := tglNamedProgramLocalParameters4fvEXT(GetImportAddress('glNamedProgramLocalParameters4fvEXT'));
    glNamedProgramLocalParameterI4iEXT := tglNamedProgramLocalParameterI4iEXT(GetImportAddress('glNamedProgramLocalParameterI4iEXT'));
    glNamedProgramLocalParameterI4ivEXT := tglNamedProgramLocalParameterI4ivEXT(GetImportAddress('glNamedProgramLocalParameterI4ivEXT'));
    glNamedProgramLocalParametersI4ivEXT := tglNamedProgramLocalParametersI4ivEXT(GetImportAddress('glNamedProgramLocalParametersI4ivEXT'));
    glNamedProgramLocalParameterI4uiEXT := tglNamedProgramLocalParameterI4uiEXT(GetImportAddress('glNamedProgramLocalParameterI4uiEXT'));
    glNamedProgramLocalParameterI4uivEXT := tglNamedProgramLocalParameterI4uivEXT(GetImportAddress('glNamedProgramLocalParameterI4uivEXT'));
    glNamedProgramLocalParametersI4uivEXT := tglNamedProgramLocalParametersI4uivEXT(GetImportAddress('glNamedProgramLocalParametersI4uivEXT'));
    glGetNamedProgramLocalParameterIivEXT := tglGetNamedProgramLocalParameterIivEXT(GetImportAddress('glGetNamedProgramLocalParameterIivEXT'));
    glGetNamedProgramLocalParameterIuivEXT := tglGetNamedProgramLocalParameterIuivEXT(GetImportAddress('glGetNamedProgramLocalParameterIuivEXT'));
    glTextureParameterIivEXT := tglTextureParameterIivEXT(GetImportAddress('glTextureParameterIivEXT'));
    glTextureParameterIuivEXT := tglTextureParameterIuivEXT(GetImportAddress('glTextureParameterIuivEXT'));
    glGetTextureParameterIivEXT := tglGetTextureParameterIivEXT(GetImportAddress('glGetTextureParameterIivEXT'));
    glGetTextureParameterIuivEXT := tglGetTextureParameterIuivEXT(GetImportAddress('glGetTextureParameterIuivEXT'));
    glMultiTexParameterIivEXT := tglMultiTexParameterIivEXT(GetImportAddress('glMultiTexParameterIivEXT'));
    glMultiTexParameterIuivEXT := tglMultiTexParameterIuivEXT(GetImportAddress('glMultiTexParameterIuivEXT'));
    glGetMultiTexParameterIivEXT := tglGetMultiTexParameterIivEXT(GetImportAddress('glGetMultiTexParameterIivEXT'));
    glGetMultiTexParameterIuivEXT := tglGetMultiTexParameterIuivEXT(GetImportAddress('glGetMultiTexParameterIuivEXT'));
    glProgramUniform1fEXT := tglProgramUniform1fEXT(GetImportAddress('glProgramUniform1fEXT'));
    glProgramUniform2fEXT := tglProgramUniform2fEXT(GetImportAddress('glProgramUniform2fEXT'));
    glProgramUniform3fEXT := tglProgramUniform3fEXT(GetImportAddress('glProgramUniform3fEXT'));
    glProgramUniform4fEXT := tglProgramUniform4fEXT(GetImportAddress('glProgramUniform4fEXT'));
    glProgramUniform1iEXT := tglProgramUniform1iEXT(GetImportAddress('glProgramUniform1iEXT'));
    glProgramUniform2iEXT := tglProgramUniform2iEXT(GetImportAddress('glProgramUniform2iEXT'));
    glProgramUniform3iEXT := tglProgramUniform3iEXT(GetImportAddress('glProgramUniform3iEXT'));
    glProgramUniform4iEXT := tglProgramUniform4iEXT(GetImportAddress('glProgramUniform4iEXT'));
    glProgramUniform1fvEXT := tglProgramUniform1fvEXT(GetImportAddress('glProgramUniform1fvEXT'));
    glProgramUniform2fvEXT := tglProgramUniform2fvEXT(GetImportAddress('glProgramUniform2fvEXT'));
    glProgramUniform3fvEXT := tglProgramUniform3fvEXT(GetImportAddress('glProgramUniform3fvEXT'));
    glProgramUniform4fvEXT := tglProgramUniform4fvEXT(GetImportAddress('glProgramUniform4fvEXT'));
    glProgramUniform1ivEXT := tglProgramUniform1ivEXT(GetImportAddress('glProgramUniform1ivEXT'));
    glProgramUniform2ivEXT := tglProgramUniform2ivEXT(GetImportAddress('glProgramUniform2ivEXT'));
    glProgramUniform3ivEXT := tglProgramUniform3ivEXT(GetImportAddress('glProgramUniform3ivEXT'));
    glProgramUniform4ivEXT := tglProgramUniform4ivEXT(GetImportAddress('glProgramUniform4ivEXT'));
    glProgramUniformMatrix2fvEXT := tglProgramUniformMatrix2fvEXT(GetImportAddress('glProgramUniformMatrix2fvEXT'));
    glProgramUniformMatrix3fvEXT := tglProgramUniformMatrix3fvEXT(GetImportAddress('glProgramUniformMatrix3fvEXT'));
    glProgramUniformMatrix4fvEXT := tglProgramUniformMatrix4fvEXT(GetImportAddress('glProgramUniformMatrix4fvEXT'));
    glProgramUniformMatrix2x3fvEXT := tglProgramUniformMatrix2x3fvEXT(GetImportAddress('glProgramUniformMatrix2x3fvEXT'));
    glProgramUniformMatrix3x2fvEXT := tglProgramUniformMatrix3x2fvEXT(GetImportAddress('glProgramUniformMatrix3x2fvEXT'));
    glProgramUniformMatrix2x4fvEXT := tglProgramUniformMatrix2x4fvEXT(GetImportAddress('glProgramUniformMatrix2x4fvEXT'));
    glProgramUniformMatrix4x2fvEXT := tglProgramUniformMatrix4x2fvEXT(GetImportAddress('glProgramUniformMatrix4x2fvEXT'));
    glProgramUniformMatrix3x4fvEXT := tglProgramUniformMatrix3x4fvEXT(GetImportAddress('glProgramUniformMatrix3x4fvEXT'));
    glProgramUniformMatrix4x3fvEXT := tglProgramUniformMatrix4x3fvEXT(GetImportAddress('glProgramUniformMatrix4x3fvEXT'));
    glProgramUniform1uiEXT := tglProgramUniform1uiEXT(GetImportAddress('glProgramUniform1uiEXT'));
    glProgramUniform2uiEXT := tglProgramUniform2uiEXT(GetImportAddress('glProgramUniform2uiEXT'));
    glProgramUniform3uiEXT := tglProgramUniform3uiEXT(GetImportAddress('glProgramUniform3uiEXT'));
    glProgramUniform4uiEXT := tglProgramUniform4uiEXT(GetImportAddress('glProgramUniform4uiEXT'));
    glProgramUniform1uivEXT := tglProgramUniform1uivEXT(GetImportAddress('glProgramUniform1uivEXT'));
    glProgramUniform2uivEXT := tglProgramUniform2uivEXT(GetImportAddress('glProgramUniform2uivEXT'));
    glProgramUniform3uivEXT := tglProgramUniform3uivEXT(GetImportAddress('glProgramUniform3uivEXT'));
    glProgramUniform4uivEXT := tglProgramUniform4uivEXT(GetImportAddress('glProgramUniform4uivEXT'));
    glNamedBufferDataEXT := tglNamedBufferDataEXT(GetImportAddress('glNamedBufferDataEXT'));
    glNamedBufferSubDataEXT := tglNamedBufferSubDataEXT(GetImportAddress('glNamedBufferSubDataEXT'));
    glMapNamedBufferEXT := tglMapNamedBufferEXT(GetImportAddress('glMapNamedBufferEXT'));
    glUnmapNamedBufferEXT := tglUnmapNamedBufferEXT(GetImportAddress('glUnmapNamedBufferEXT'));
    glMapNamedBufferRangeEXT := tglMapNamedBufferRangeEXT(GetImportAddress('glMapNamedBufferRangeEXT'));
    glFlushMappedNamedBufferRangeEXT := tglFlushMappedNamedBufferRangeEXT(GetImportAddress('glFlushMappedNamedBufferRangeEXT'));
    glNamedCopyBufferSubDataEXT := tglNamedCopyBufferSubDataEXT(GetImportAddress('glNamedCopyBufferSubDataEXT'));
    glGetNamedBufferParameterivEXT := tglGetNamedBufferParameterivEXT(GetImportAddress('glGetNamedBufferParameterivEXT'));
    glGetNamedBufferPointervEXT := tglGetNamedBufferPointervEXT(GetImportAddress('glGetNamedBufferPointervEXT'));
    glGetNamedBufferSubDataEXT := tglGetNamedBufferSubDataEXT(GetImportAddress('glGetNamedBufferSubDataEXT'));
    glTextureBufferEXT := tglTextureBufferEXT(GetImportAddress('glTextureBufferEXT'));
    glMultiTexBufferEXT := tglMultiTexBufferEXT(GetImportAddress('glMultiTexBufferEXT'));
    glNamedRenderbufferStorageEXT := tglNamedRenderbufferStorageEXT(GetImportAddress('glNamedRenderbufferStorageEXT'));
    glGetNamedRenderbufferParameterivEXT := tglGetNamedRenderbufferParameterivEXT(GetImportAddress('glGetNamedRenderbufferParameterivEXT'));
    glCheckNamedFramebufferStatusEXT := tglCheckNamedFramebufferStatusEXT(GetImportAddress('glCheckNamedFramebufferStatusEXT'));
    glNamedFramebufferTexture1DEXT := tglNamedFramebufferTexture1DEXT(GetImportAddress('glNamedFramebufferTexture1DEXT'));
    glNamedFramebufferTexture2DEXT := tglNamedFramebufferTexture2DEXT(GetImportAddress('glNamedFramebufferTexture2DEXT'));
    glNamedFramebufferTexture3DEXT := tglNamedFramebufferTexture3DEXT(GetImportAddress('glNamedFramebufferTexture3DEXT'));
    glNamedFramebufferRenderbufferEXT := tglNamedFramebufferRenderbufferEXT(GetImportAddress('glNamedFramebufferRenderbufferEXT'));
    glGetNamedFramebufferAttachmentParameterivEXT := tglGetNamedFramebufferAttachmentParameterivEXT(GetImportAddress('glGetNamedFramebufferAttachmentParameterivEXT'));
    glGenerateTextureMipmapEXT := tglGenerateTextureMipmapEXT(GetImportAddress('glGenerateTextureMipmapEXT'));
    glGenerateMultiTexMipmapEXT := tglGenerateMultiTexMipmapEXT(GetImportAddress('glGenerateMultiTexMipmapEXT'));
    glFramebufferDrawBufferEXT := tglFramebufferDrawBufferEXT(GetImportAddress('glFramebufferDrawBufferEXT'));
    glFramebufferDrawBuffersEXT := tglFramebufferDrawBuffersEXT(GetImportAddress('glFramebufferDrawBuffersEXT'));
    glFramebufferReadBufferEXT := tglFramebufferReadBufferEXT(GetImportAddress('glFramebufferReadBufferEXT'));
    glGetFramebufferParameterivEXT := tglGetFramebufferParameterivEXT(GetImportAddress('glGetFramebufferParameterivEXT'));
    glNamedRenderbufferStorageMultisampleEXT := tglNamedRenderbufferStorageMultisampleEXT(GetImportAddress('glNamedRenderbufferStorageMultisampleEXT'));
    glNamedRenderbufferStorageMultisampleCoverageEXT := tglNamedRenderbufferStorageMultisampleCoverageEXT(GetImportAddress('glNamedRenderbufferStorageMultisampleCoverageEXT'));
    glNamedFramebufferTextureEXT := tglNamedFramebufferTextureEXT(GetImportAddress('glNamedFramebufferTextureEXT'));
    glNamedFramebufferTextureLayerEXT := tglNamedFramebufferTextureLayerEXT(GetImportAddress('glNamedFramebufferTextureLayerEXT'));
    glNamedFramebufferTextureFaceEXT := tglNamedFramebufferTextureFaceEXT(GetImportAddress('glNamedFramebufferTextureFaceEXT'));
    glTextureRenderbufferEXT := tglTextureRenderbufferEXT(GetImportAddress('glTextureRenderbufferEXT'));
    glMultiTexRenderbufferEXT := tglMultiTexRenderbufferEXT(GetImportAddress('glMultiTexRenderbufferEXT'));
    glProgramUniform1dEXT := tglProgramUniform1dEXT(GetImportAddress('glProgramUniform1dEXT'));
    glProgramUniform2dEXT := tglProgramUniform2dEXT(GetImportAddress('glProgramUniform2dEXT'));
    glProgramUniform3dEXT := tglProgramUniform3dEXT(GetImportAddress('glProgramUniform3dEXT'));
    glProgramUniform4dEXT := tglProgramUniform4dEXT(GetImportAddress('glProgramUniform4dEXT'));
    glProgramUniform1dvEXT := tglProgramUniform1dvEXT(GetImportAddress('glProgramUniform1dvEXT'));
    glProgramUniform2dvEXT := tglProgramUniform2dvEXT(GetImportAddress('glProgramUniform2dvEXT'));
    glProgramUniform3dvEXT := tglProgramUniform3dvEXT(GetImportAddress('glProgramUniform3dvEXT'));
    glProgramUniform4dvEXT := tglProgramUniform4dvEXT(GetImportAddress('glProgramUniform4dvEXT'));
    glProgramUniformMatrix2dvEXT := tglProgramUniformMatrix2dvEXT(GetImportAddress('glProgramUniformMatrix2dvEXT'));
    glProgramUniformMatrix3dvEXT := tglProgramUniformMatrix3dvEXT(GetImportAddress('glProgramUniformMatrix3dvEXT'));
    glProgramUniformMatrix4dvEXT := tglProgramUniformMatrix4dvEXT(GetImportAddress('glProgramUniformMatrix4dvEXT'));
    glProgramUniformMatrix2x3dvEXT := tglProgramUniformMatrix2x3dvEXT(GetImportAddress('glProgramUniformMatrix2x3dvEXT'));
    glProgramUniformMatrix2x4dvEXT := tglProgramUniformMatrix2x4dvEXT(GetImportAddress('glProgramUniformMatrix2x4dvEXT'));
    glProgramUniformMatrix3x2dvEXT := tglProgramUniformMatrix3x2dvEXT(GetImportAddress('glProgramUniformMatrix3x2dvEXT'));
    glProgramUniformMatrix3x4dvEXT := tglProgramUniformMatrix3x4dvEXT(GetImportAddress('glProgramUniformMatrix3x4dvEXT'));
    glProgramUniformMatrix4x2dvEXT := tglProgramUniformMatrix4x2dvEXT(GetImportAddress('glProgramUniformMatrix4x2dvEXT'));
    glProgramUniformMatrix4x3dvEXT := tglProgramUniformMatrix4x3dvEXT(GetImportAddress('glProgramUniformMatrix4x3dvEXT'));
end;

class method GL.Read_GL_EXT_separate_shader_objects;
begin
    glUseShaderProgramEXT := tglUseShaderProgramEXT(GetImportAddress('glUseShaderProgramEXT'));
    glActiveProgramEXT := tglActiveProgramEXT(GetImportAddress('glActiveProgramEXT'));
    glCreateShaderProgramEXT := tglCreateShaderProgramEXT(GetImportAddress('glCreateShaderProgramEXT'));
end;

class method GL.Read_GL_EXT_shader_image_load_store;
begin
    glBindImageTextureEXT := tglBindImageTextureEXT(GetImportAddress('glBindImageTextureEXT'));
    glMemoryBarrierEXT := tglMemoryBarrierEXT(GetImportAddress('glMemoryBarrierEXT'));
end;

class method GL.Read_GL_EXT_vertex_attrib_64bit;
begin
    glVertexAttribL1dEXT := tglVertexAttribL1dEXT(GetImportAddress('glVertexAttribL1dEXT'));
    glVertexAttribL2dEXT := tglVertexAttribL2dEXT(GetImportAddress('glVertexAttribL2dEXT'));
    glVertexAttribL3dEXT := tglVertexAttribL3dEXT(GetImportAddress('glVertexAttribL3dEXT'));
    glVertexAttribL4dEXT := tglVertexAttribL4dEXT(GetImportAddress('glVertexAttribL4dEXT'));
    glVertexAttribL1dvEXT := tglVertexAttribL1dvEXT(GetImportAddress('glVertexAttribL1dvEXT'));
    glVertexAttribL2dvEXT := tglVertexAttribL2dvEXT(GetImportAddress('glVertexAttribL2dvEXT'));
    glVertexAttribL3dvEXT := tglVertexAttribL3dvEXT(GetImportAddress('glVertexAttribL3dvEXT'));
    glVertexAttribL4dvEXT := tglVertexAttribL4dvEXT(GetImportAddress('glVertexAttribL4dvEXT'));
    glVertexAttribLPointerEXT := tglVertexAttribLPointerEXT(GetImportAddress('glVertexAttribLPointerEXT'));
    glGetVertexAttribLdvEXT := tglGetVertexAttribLdvEXT(GetImportAddress('glGetVertexAttribLdvEXT'));
    glVertexArrayVertexAttribLOffsetEXT := tglVertexArrayVertexAttribLOffsetEXT(GetImportAddress('glVertexArrayVertexAttribLOffsetEXT'));
end;

class method GL.Read_GL_HP_image_transform;
begin
    glImageTransformParameteriHP := tglImageTransformParameteriHP(GetImportAddress('glImageTransformParameteriHP'));
    glImageTransformParameterfHP := tglImageTransformParameterfHP(GetImportAddress('glImageTransformParameterfHP'));
    glImageTransformParameterivHP := tglImageTransformParameterivHP(GetImportAddress('glImageTransformParameterivHP'));
    glImageTransformParameterfvHP := tglImageTransformParameterfvHP(GetImportAddress('glImageTransformParameterfvHP'));
    glGetImageTransformParameterivHP := tglGetImageTransformParameterivHP(GetImportAddress('glGetImageTransformParameterivHP'));
    glGetImageTransformParameterfvHP := tglGetImageTransformParameterfvHP(GetImportAddress('glGetImageTransformParameterfvHP'));
end;

class method GL.Read_GL_IBM_multimode_draw_arrays;
begin
    glMultiModeDrawArraysIBM := tglMultiModeDrawArraysIBM(GetImportAddress('glMultiModeDrawArraysIBM'));
    glMultiModeDrawElementsIBM := tglMultiModeDrawElementsIBM(GetImportAddress('glMultiModeDrawElementsIBM'));
end;

class method GL.Read_GL_IBM_vertex_array_lists;
begin
    glColorPointerListIBM := tglColorPointerListIBM(GetImportAddress('glColorPointerListIBM'));
    glSecondaryColorPointerListIBM := tglSecondaryColorPointerListIBM(GetImportAddress('glSecondaryColorPointerListIBM'));
    glEdgeFlagPointerListIBM := tglEdgeFlagPointerListIBM(GetImportAddress('glEdgeFlagPointerListIBM'));
    glFogCoordPointerListIBM := tglFogCoordPointerListIBM(GetImportAddress('glFogCoordPointerListIBM'));
    glIndexPointerListIBM := tglIndexPointerListIBM(GetImportAddress('glIndexPointerListIBM'));
    glNormalPointerListIBM := tglNormalPointerListIBM(GetImportAddress('glNormalPointerListIBM'));
    glTexCoordPointerListIBM := tglTexCoordPointerListIBM(GetImportAddress('glTexCoordPointerListIBM'));
    glVertexPointerListIBM := tglVertexPointerListIBM(GetImportAddress('glVertexPointerListIBM'));
end;

class method GL.Read_GL_INGR_blend_func_separate;
begin
    glBlendFuncSeparateINGR := tglBlendFuncSeparateINGR(GetImportAddress('glBlendFuncSeparateINGR'));
end;

class method GL.Read_GL_INTEL_parallel_arrays;
begin
    glVertexPointervINTEL := tglVertexPointervINTEL(GetImportAddress('glVertexPointervINTEL'));
    glNormalPointervINTEL := tglNormalPointervINTEL(GetImportAddress('glNormalPointervINTEL'));
    glColorPointervINTEL := tglColorPointervINTEL(GetImportAddress('glColorPointervINTEL'));
    glTexCoordPointervINTEL := tglTexCoordPointervINTEL(GetImportAddress('glTexCoordPointervINTEL'));
end;

class method GL.Read_GL_INTEL_framebuffer_CMAA;
begin
    glApplyFramebufferAttachmentCMAAINTEL := tglApplyFramebufferAttachmentCMAAINTEL(GetImportAddress('glApplyFramebufferAttachmentCMAAINTEL'));
end;

class method GL.Read_GL_MESA_resize_buffers;
begin
    glResizeBuffersMESA := tglResizeBuffersMESA(GetImportAddress('glResizeBuffersMESA'));
end;

class method GL.Read_GL_MESA_window_pos;
begin
    glWindowPos2dMESA := tglWindowPos2dMESA(GetImportAddress('glWindowPos2dMESA'));
    glWindowPos2dvMESA := tglWindowPos2dvMESA(GetImportAddress('glWindowPos2dvMESA'));
    glWindowPos2fMESA := tglWindowPos2fMESA(GetImportAddress('glWindowPos2fMESA'));
    glWindowPos2fvMESA := tglWindowPos2fvMESA(GetImportAddress('glWindowPos2fvMESA'));
    glWindowPos2iMESA := tglWindowPos2iMESA(GetImportAddress('glWindowPos2iMESA'));
    glWindowPos2ivMESA := tglWindowPos2ivMESA(GetImportAddress('glWindowPos2ivMESA'));
    glWindowPos2sMESA := tglWindowPos2sMESA(GetImportAddress('glWindowPos2sMESA'));
    glWindowPos2svMESA := tglWindowPos2svMESA(GetImportAddress('glWindowPos2svMESA'));
    glWindowPos3dMESA := tglWindowPos3dMESA(GetImportAddress('glWindowPos3dMESA'));
    glWindowPos3dvMESA := tglWindowPos3dvMESA(GetImportAddress('glWindowPos3dvMESA'));
    glWindowPos3fMESA := tglWindowPos3fMESA(GetImportAddress('glWindowPos3fMESA'));
    glWindowPos3fvMESA := tglWindowPos3fvMESA(GetImportAddress('glWindowPos3fvMESA'));
    glWindowPos3iMESA := tglWindowPos3iMESA(GetImportAddress('glWindowPos3iMESA'));
    glWindowPos3ivMESA := tglWindowPos3ivMESA(GetImportAddress('glWindowPos3ivMESA'));
    glWindowPos3sMESA := tglWindowPos3sMESA(GetImportAddress('glWindowPos3sMESA'));
    glWindowPos3svMESA := tglWindowPos3svMESA(GetImportAddress('glWindowPos3svMESA'));
    glWindowPos4dMESA := tglWindowPos4dMESA(GetImportAddress('glWindowPos4dMESA'));
    glWindowPos4dvMESA := tglWindowPos4dvMESA(GetImportAddress('glWindowPos4dvMESA'));
    glWindowPos4fMESA := tglWindowPos4fMESA(GetImportAddress('glWindowPos4fMESA'));
    glWindowPos4fvMESA := tglWindowPos4fvMESA(GetImportAddress('glWindowPos4fvMESA'));
    glWindowPos4iMESA := tglWindowPos4iMESA(GetImportAddress('glWindowPos4iMESA'));
    glWindowPos4ivMESA := tglWindowPos4ivMESA(GetImportAddress('glWindowPos4ivMESA'));
    glWindowPos4sMESA := tglWindowPos4sMESA(GetImportAddress('glWindowPos4sMESA'));
    glWindowPos4svMESA := tglWindowPos4svMESA(GetImportAddress('glWindowPos4svMESA'));
end;

class method GL.Read_GL_NV_evaluators;
begin
    glMapControlPointsNV := tglMapControlPointsNV(GetImportAddress('glMapControlPointsNV'));
    glMapParameterivNV := tglMapParameterivNV(GetImportAddress('glMapParameterivNV'));
    glMapParameterfvNV := tglMapParameterfvNV(GetImportAddress('glMapParameterfvNV'));
    glGetMapControlPointsNV := tglGetMapControlPointsNV(GetImportAddress('glGetMapControlPointsNV'));
    glGetMapParameterivNV := tglGetMapParameterivNV(GetImportAddress('glGetMapParameterivNV'));
    glGetMapParameterfvNV := tglGetMapParameterfvNV(GetImportAddress('glGetMapParameterfvNV'));
    glGetMapAttribParameterivNV := tglGetMapAttribParameterivNV(GetImportAddress('glGetMapAttribParameterivNV'));
    glGetMapAttribParameterfvNV := tglGetMapAttribParameterfvNV(GetImportAddress('glGetMapAttribParameterfvNV'));
    glEvalMapsNV := tglEvalMapsNV(GetImportAddress('glEvalMapsNV'));
end;

class method GL.Read_GL_NV_fence;
begin
    glDeleteFencesNV := tglDeleteFencesNV(GetImportAddress('glDeleteFencesNV'));
    glGenFencesNV := tglGenFencesNV(GetImportAddress('glGenFencesNV'));
    glIsFenceNV := tglIsFenceNV(GetImportAddress('glIsFenceNV'));
    glTestFenceNV := tglTestFenceNV(GetImportAddress('glTestFenceNV'));
    glGetFenceivNV := tglGetFenceivNV(GetImportAddress('glGetFenceivNV'));
    glFinishFenceNV := tglFinishFenceNV(GetImportAddress('glFinishFenceNV'));
    glSetFenceNV := tglSetFenceNV(GetImportAddress('glSetFenceNV'));
end;

class method GL.Read_GL_NV_fragment_program;
begin
    glProgramNamedParameter4fNV := tglProgramNamedParameter4fNV(GetImportAddress('glProgramNamedParameter4fNV'));
    glProgramNamedParameter4dNV := tglProgramNamedParameter4dNV(GetImportAddress('glProgramNamedParameter4dNV'));
    glProgramNamedParameter4fvNV := tglProgramNamedParameter4fvNV(GetImportAddress('glProgramNamedParameter4fvNV'));
    glProgramNamedParameter4dvNV := tglProgramNamedParameter4dvNV(GetImportAddress('glProgramNamedParameter4dvNV'));
    glGetProgramNamedParameterfvNV := tglGetProgramNamedParameterfvNV(GetImportAddress('glGetProgramNamedParameterfvNV'));
    glGetProgramNamedParameterdvNV := tglGetProgramNamedParameterdvNV(GetImportAddress('glGetProgramNamedParameterdvNV'));
end;

class method GL.Read_GL_NV_half_float;
begin
    glVertex2hNV := tglVertex2hNV(GetImportAddress('glVertex2hNV'));
    glVertex2hvNV := tglVertex2hvNV(GetImportAddress('glVertex2hvNV'));
    glVertex3hNV := tglVertex3hNV(GetImportAddress('glVertex3hNV'));
    glVertex3hvNV := tglVertex3hvNV(GetImportAddress('glVertex3hvNV'));
    glVertex4hNV := tglVertex4hNV(GetImportAddress('glVertex4hNV'));
    glVertex4hvNV := tglVertex4hvNV(GetImportAddress('glVertex4hvNV'));
    glNormal3hNV := tglNormal3hNV(GetImportAddress('glNormal3hNV'));
    glNormal3hvNV := tglNormal3hvNV(GetImportAddress('glNormal3hvNV'));
    glColor3hNV := tglColor3hNV(GetImportAddress('glColor3hNV'));
    glColor3hvNV := tglColor3hvNV(GetImportAddress('glColor3hvNV'));
    glColor4hNV := tglColor4hNV(GetImportAddress('glColor4hNV'));
    glColor4hvNV := tglColor4hvNV(GetImportAddress('glColor4hvNV'));
    glTexCoord1hNV := tglTexCoord1hNV(GetImportAddress('glTexCoord1hNV'));
    glTexCoord1hvNV := tglTexCoord1hvNV(GetImportAddress('glTexCoord1hvNV'));
    glTexCoord2hNV := tglTexCoord2hNV(GetImportAddress('glTexCoord2hNV'));
    glTexCoord2hvNV := tglTexCoord2hvNV(GetImportAddress('glTexCoord2hvNV'));
    glTexCoord3hNV := tglTexCoord3hNV(GetImportAddress('glTexCoord3hNV'));
    glTexCoord3hvNV := tglTexCoord3hvNV(GetImportAddress('glTexCoord3hvNV'));
    glTexCoord4hNV := tglTexCoord4hNV(GetImportAddress('glTexCoord4hNV'));
    glTexCoord4hvNV := tglTexCoord4hvNV(GetImportAddress('glTexCoord4hvNV'));
    glMultiTexCoord1hNV := tglMultiTexCoord1hNV(GetImportAddress('glMultiTexCoord1hNV'));
    glMultiTexCoord1hvNV := tglMultiTexCoord1hvNV(GetImportAddress('glMultiTexCoord1hvNV'));
    glMultiTexCoord2hNV := tglMultiTexCoord2hNV(GetImportAddress('glMultiTexCoord2hNV'));
    glMultiTexCoord2hvNV := tglMultiTexCoord2hvNV(GetImportAddress('glMultiTexCoord2hvNV'));
    glMultiTexCoord3hNV := tglMultiTexCoord3hNV(GetImportAddress('glMultiTexCoord3hNV'));
    glMultiTexCoord3hvNV := tglMultiTexCoord3hvNV(GetImportAddress('glMultiTexCoord3hvNV'));
    glMultiTexCoord4hNV := tglMultiTexCoord4hNV(GetImportAddress('glMultiTexCoord4hNV'));
    glMultiTexCoord4hvNV := tglMultiTexCoord4hvNV(GetImportAddress('glMultiTexCoord4hvNV'));
    glFogCoordhNV := tglFogCoordhNV(GetImportAddress('glFogCoordhNV'));
    glFogCoordhvNV := tglFogCoordhvNV(GetImportAddress('glFogCoordhvNV'));
    glSecondaryColor3hNV := tglSecondaryColor3hNV(GetImportAddress('glSecondaryColor3hNV'));
    glSecondaryColor3hvNV := tglSecondaryColor3hvNV(GetImportAddress('glSecondaryColor3hvNV'));
    glVertexWeighthNV := tglVertexWeighthNV(GetImportAddress('glVertexWeighthNV'));
    glVertexWeighthvNV := tglVertexWeighthvNV(GetImportAddress('glVertexWeighthvNV'));
    glVertexAttrib1hNV := tglVertexAttrib1hNV(GetImportAddress('glVertexAttrib1hNV'));
    glVertexAttrib1hvNV := tglVertexAttrib1hvNV(GetImportAddress('glVertexAttrib1hvNV'));
    glVertexAttrib2hNV := tglVertexAttrib2hNV(GetImportAddress('glVertexAttrib2hNV'));
    glVertexAttrib2hvNV := tglVertexAttrib2hvNV(GetImportAddress('glVertexAttrib2hvNV'));
    glVertexAttrib3hNV := tglVertexAttrib3hNV(GetImportAddress('glVertexAttrib3hNV'));
    glVertexAttrib3hvNV := tglVertexAttrib3hvNV(GetImportAddress('glVertexAttrib3hvNV'));
    glVertexAttrib4hNV := tglVertexAttrib4hNV(GetImportAddress('glVertexAttrib4hNV'));
    glVertexAttrib4hvNV := tglVertexAttrib4hvNV(GetImportAddress('glVertexAttrib4hvNV'));
    glVertexAttribs1hvNV := tglVertexAttribs1hvNV(GetImportAddress('glVertexAttribs1hvNV'));
    glVertexAttribs2hvNV := tglVertexAttribs2hvNV(GetImportAddress('glVertexAttribs2hvNV'));
    glVertexAttribs3hvNV := tglVertexAttribs3hvNV(GetImportAddress('glVertexAttribs3hvNV'));
    glVertexAttribs4hvNV := tglVertexAttribs4hvNV(GetImportAddress('glVertexAttribs4hvNV'));
end;

class method GL.Read_GL_NV_occlusion_query;
begin
    glGenOcclusionQueriesNV := tglGenOcclusionQueriesNV(GetImportAddress('glGenOcclusionQueriesNV'));
    glDeleteOcclusionQueriesNV := tglDeleteOcclusionQueriesNV(GetImportAddress('glDeleteOcclusionQueriesNV'));
    glIsOcclusionQueryNV := tglIsOcclusionQueryNV(GetImportAddress('glIsOcclusionQueryNV'));
    glBeginOcclusionQueryNV := tglBeginOcclusionQueryNV(GetImportAddress('glBeginOcclusionQueryNV'));
    glEndOcclusionQueryNV := tglEndOcclusionQueryNV(GetImportAddress('glEndOcclusionQueryNV'));
    glGetOcclusionQueryivNV := tglGetOcclusionQueryivNV(GetImportAddress('glGetOcclusionQueryivNV'));
    glGetOcclusionQueryuivNV := tglGetOcclusionQueryuivNV(GetImportAddress('glGetOcclusionQueryuivNV'));
end;

class method GL.Read_GL_NV_pixel_data_range;
begin
    glPixelDataRangeNV := tglPixelDataRangeNV(GetImportAddress('glPixelDataRangeNV'));
    glFlushPixelDataRangeNV := tglFlushPixelDataRangeNV(GetImportAddress('glFlushPixelDataRangeNV'));
end;

class method GL.Read_GL_NV_point_sprite;
begin
    glPointParameteriNV := tglPointParameteriNV(GetImportAddress('glPointParameteriNV'));
    glPointParameterivNV := tglPointParameterivNV(GetImportAddress('glPointParameterivNV'));
end;

class method GL.Read_GL_NV_primitive_restart;
begin
    glPrimitiveRestartNV := tglPrimitiveRestartNV(GetImportAddress('glPrimitiveRestartNV'));
    glPrimitiveRestartIndexNV := tglPrimitiveRestartIndexNV(GetImportAddress('glPrimitiveRestartIndexNV'));
end;

class method GL.Read_GL_NV_register_combiners;
begin
    glCombinerParameterfvNV := tglCombinerParameterfvNV(GetImportAddress('glCombinerParameterfvNV'));
    glCombinerParameterfNV := tglCombinerParameterfNV(GetImportAddress('glCombinerParameterfNV'));
    glCombinerParameterivNV := tglCombinerParameterivNV(GetImportAddress('glCombinerParameterivNV'));
    glCombinerParameteriNV := tglCombinerParameteriNV(GetImportAddress('glCombinerParameteriNV'));
    glCombinerInputNV := tglCombinerInputNV(GetImportAddress('glCombinerInputNV'));
    glCombinerOutputNV := tglCombinerOutputNV(GetImportAddress('glCombinerOutputNV'));
    glFinalCombinerInputNV := tglFinalCombinerInputNV(GetImportAddress('glFinalCombinerInputNV'));
    glGetCombinerInputParameterfvNV := tglGetCombinerInputParameterfvNV(GetImportAddress('glGetCombinerInputParameterfvNV'));
    glGetCombinerInputParameterivNV := tglGetCombinerInputParameterivNV(GetImportAddress('glGetCombinerInputParameterivNV'));
    glGetCombinerOutputParameterfvNV := tglGetCombinerOutputParameterfvNV(GetImportAddress('glGetCombinerOutputParameterfvNV'));
    glGetCombinerOutputParameterivNV := tglGetCombinerOutputParameterivNV(GetImportAddress('glGetCombinerOutputParameterivNV'));
    glGetFinalCombinerInputParameterfvNV := tglGetFinalCombinerInputParameterfvNV(GetImportAddress('glGetFinalCombinerInputParameterfvNV'));
    glGetFinalCombinerInputParameterivNV := tglGetFinalCombinerInputParameterivNV(GetImportAddress('glGetFinalCombinerInputParameterivNV'));
end;

class method GL.Read_GL_NV_register_combiners2;
begin
    glCombinerStageParameterfvNV := tglCombinerStageParameterfvNV(GetImportAddress('glCombinerStageParameterfvNV'));
    glGetCombinerStageParameterfvNV := tglGetCombinerStageParameterfvNV(GetImportAddress('glGetCombinerStageParameterfvNV'));
end;

class method GL.Read_GL_NV_vertex_array_range;
begin
    glFlushVertexArrayRangeNV := tglFlushVertexArrayRangeNV(GetImportAddress('glFlushVertexArrayRangeNV'));
    glVertexArrayRangeNV := tglVertexArrayRangeNV(GetImportAddress('glVertexArrayRangeNV'));
end;

class method GL.Read_GL_NV_vertex_program;
begin
    glAreProgramsResidentNV := tglAreProgramsResidentNV(GetImportAddress('glAreProgramsResidentNV'));
    glBindProgramNV := tglBindProgramNV(GetImportAddress('glBindProgramNV'));
    glDeleteProgramsNV := tglDeleteProgramsNV(GetImportAddress('glDeleteProgramsNV'));
    glExecuteProgramNV := tglExecuteProgramNV(GetImportAddress('glExecuteProgramNV'));
    glGenProgramsNV := tglGenProgramsNV(GetImportAddress('glGenProgramsNV'));
    glGetProgramParameterdvNV := tglGetProgramParameterdvNV(GetImportAddress('glGetProgramParameterdvNV'));
    glGetProgramParameterfvNV := tglGetProgramParameterfvNV(GetImportAddress('glGetProgramParameterfvNV'));
    glGetProgramivNV := tglGetProgramivNV(GetImportAddress('glGetProgramivNV'));
    glGetProgramStringNV := tglGetProgramStringNV(GetImportAddress('glGetProgramStringNV'));
    glGetTrackMatrixivNV := tglGetTrackMatrixivNV(GetImportAddress('glGetTrackMatrixivNV'));
    glGetVertexAttribdvNV := tglGetVertexAttribdvNV(GetImportAddress('glGetVertexAttribdvNV'));
    glGetVertexAttribfvNV := tglGetVertexAttribfvNV(GetImportAddress('glGetVertexAttribfvNV'));
    glGetVertexAttribivNV := tglGetVertexAttribivNV(GetImportAddress('glGetVertexAttribivNV'));
    glGetVertexAttribPointervNV := tglGetVertexAttribPointervNV(GetImportAddress('glGetVertexAttribPointervNV'));
    glIsProgramNV := tglIsProgramNV(GetImportAddress('glIsProgramNV'));
    glLoadProgramNV := tglLoadProgramNV(GetImportAddress('glLoadProgramNV'));
    glProgramParameter4dNV := tglProgramParameter4dNV(GetImportAddress('glProgramParameter4dNV'));
    glProgramParameter4dvNV := tglProgramParameter4dvNV(GetImportAddress('glProgramParameter4dvNV'));
    glProgramParameter4fNV := tglProgramParameter4fNV(GetImportAddress('glProgramParameter4fNV'));
    glProgramParameter4fvNV := tglProgramParameter4fvNV(GetImportAddress('glProgramParameter4fvNV'));
    glProgramParameters4dvNV := tglProgramParameters4dvNV(GetImportAddress('glProgramParameters4dvNV'));
    glProgramParameters4fvNV := tglProgramParameters4fvNV(GetImportAddress('glProgramParameters4fvNV'));
    glRequestResidentProgramsNV := tglRequestResidentProgramsNV(GetImportAddress('glRequestResidentProgramsNV'));
    glTrackMatrixNV := tglTrackMatrixNV(GetImportAddress('glTrackMatrixNV'));
    glVertexAttribPointerNV := tglVertexAttribPointerNV(GetImportAddress('glVertexAttribPointerNV'));
    glVertexAttrib1dNV := tglVertexAttrib1dNV(GetImportAddress('glVertexAttrib1dNV'));
    glVertexAttrib1dvNV := tglVertexAttrib1dvNV(GetImportAddress('glVertexAttrib1dvNV'));
    glVertexAttrib1fNV := tglVertexAttrib1fNV(GetImportAddress('glVertexAttrib1fNV'));
    glVertexAttrib1fvNV := tglVertexAttrib1fvNV(GetImportAddress('glVertexAttrib1fvNV'));
    glVertexAttrib1sNV := tglVertexAttrib1sNV(GetImportAddress('glVertexAttrib1sNV'));
    glVertexAttrib1svNV := tglVertexAttrib1svNV(GetImportAddress('glVertexAttrib1svNV'));
    glVertexAttrib2dNV := tglVertexAttrib2dNV(GetImportAddress('glVertexAttrib2dNV'));
    glVertexAttrib2dvNV := tglVertexAttrib2dvNV(GetImportAddress('glVertexAttrib2dvNV'));
    glVertexAttrib2fNV := tglVertexAttrib2fNV(GetImportAddress('glVertexAttrib2fNV'));
    glVertexAttrib2fvNV := tglVertexAttrib2fvNV(GetImportAddress('glVertexAttrib2fvNV'));
    glVertexAttrib2sNV := tglVertexAttrib2sNV(GetImportAddress('glVertexAttrib2sNV'));
    glVertexAttrib2svNV := tglVertexAttrib2svNV(GetImportAddress('glVertexAttrib2svNV'));
    glVertexAttrib3dNV := tglVertexAttrib3dNV(GetImportAddress('glVertexAttrib3dNV'));
    glVertexAttrib3dvNV := tglVertexAttrib3dvNV(GetImportAddress('glVertexAttrib3dvNV'));
    glVertexAttrib3fNV := tglVertexAttrib3fNV(GetImportAddress('glVertexAttrib3fNV'));
    glVertexAttrib3fvNV := tglVertexAttrib3fvNV(GetImportAddress('glVertexAttrib3fvNV'));
    glVertexAttrib3sNV := tglVertexAttrib3sNV(GetImportAddress('glVertexAttrib3sNV'));
    glVertexAttrib3svNV := tglVertexAttrib3svNV(GetImportAddress('glVertexAttrib3svNV'));
    glVertexAttrib4dNV := tglVertexAttrib4dNV(GetImportAddress('glVertexAttrib4dNV'));
    glVertexAttrib4dvNV := tglVertexAttrib4dvNV(GetImportAddress('glVertexAttrib4dvNV'));
    glVertexAttrib4fNV := tglVertexAttrib4fNV(GetImportAddress('glVertexAttrib4fNV'));
    glVertexAttrib4fvNV := tglVertexAttrib4fvNV(GetImportAddress('glVertexAttrib4fvNV'));
    glVertexAttrib4sNV := tglVertexAttrib4sNV(GetImportAddress('glVertexAttrib4sNV'));
    glVertexAttrib4svNV := tglVertexAttrib4svNV(GetImportAddress('glVertexAttrib4svNV'));
    glVertexAttrib4ubNV := tglVertexAttrib4ubNV(GetImportAddress('glVertexAttrib4ubNV'));
    glVertexAttrib4ubvNV := tglVertexAttrib4ubvNV(GetImportAddress('glVertexAttrib4ubvNV'));
    glVertexAttribs1dvNV := tglVertexAttribs1dvNV(GetImportAddress('glVertexAttribs1dvNV'));
    glVertexAttribs1fvNV := tglVertexAttribs1fvNV(GetImportAddress('glVertexAttribs1fvNV'));
    glVertexAttribs1svNV := tglVertexAttribs1svNV(GetImportAddress('glVertexAttribs1svNV'));
    glVertexAttribs2dvNV := tglVertexAttribs2dvNV(GetImportAddress('glVertexAttribs2dvNV'));
    glVertexAttribs2fvNV := tglVertexAttribs2fvNV(GetImportAddress('glVertexAttribs2fvNV'));
    glVertexAttribs2svNV := tglVertexAttribs2svNV(GetImportAddress('glVertexAttribs2svNV'));
    glVertexAttribs3dvNV := tglVertexAttribs3dvNV(GetImportAddress('glVertexAttribs3dvNV'));
    glVertexAttribs3fvNV := tglVertexAttribs3fvNV(GetImportAddress('glVertexAttribs3fvNV'));
    glVertexAttribs3svNV := tglVertexAttribs3svNV(GetImportAddress('glVertexAttribs3svNV'));
    glVertexAttribs4dvNV := tglVertexAttribs4dvNV(GetImportAddress('glVertexAttribs4dvNV'));
    glVertexAttribs4fvNV := tglVertexAttribs4fvNV(GetImportAddress('glVertexAttribs4fvNV'));
    glVertexAttribs4svNV := tglVertexAttribs4svNV(GetImportAddress('glVertexAttribs4svNV'));
    glVertexAttribs4ubvNV := tglVertexAttribs4ubvNV(GetImportAddress('glVertexAttribs4ubvNV'));
end;

class method GL.Read_GL_NV_depth_buffer_float;
begin
    glDepthRangedNV := tglDepthRangedNV(GetImportAddress('glDepthRangedNV'));
    glClearDepthdNV := tglClearDepthdNV(GetImportAddress('glClearDepthdNV'));
    glDepthBoundsdNV := tglDepthBoundsdNV(GetImportAddress('glDepthBoundsdNV'));
end;

class method GL.Read_GL_NV_framebuffer_multisample_coverage;
begin
    glRenderbufferStorageMultsampleCoverageNV := tglRenderbufferStorageMultsampleCoverageNV(GetImportAddress('glRenderbufferStorageMultsampleCoverageNV'));
end;

class method GL.Read_GL_NV_geometry_program4;
begin
    glProgramVertexLimitNV := tglProgramVertexLimitNV(GetImportAddress('glProgramVertexLimitNV'));
end;

class method GL.Read_GL_NV_gpu_program4;
begin
    glProgramLocalParameterI4iNV := tglProgramLocalParameterI4iNV(GetImportAddress('glProgramLocalParameterI4iNV'));
    glProgramLocalParameterI4ivNV := tglProgramLocalParameterI4ivNV(GetImportAddress('glProgramLocalParameterI4ivNV'));
    glProgramLocalParametersI4ivNV := tglProgramLocalParametersI4ivNV(GetImportAddress('glProgramLocalParametersI4ivNV'));
    glProgramLocalParameterI4uiNV := tglProgramLocalParameterI4uiNV(GetImportAddress('glProgramLocalParameterI4uiNV'));
    glProgramLocalParameterI4uivNV := tglProgramLocalParameterI4uivNV(GetImportAddress('glProgramLocalParameterI4uivNV'));
    glProgramLocalParametersI4uivNV := tglProgramLocalParametersI4uivNV(GetImportAddress('glProgramLocalParametersI4uivNV'));
    glProgramEnvParameterI4iNV := tglProgramEnvParameterI4iNV(GetImportAddress('glProgramEnvParameterI4iNV'));
    glProgramEnvParameterI4ivNV := tglProgramEnvParameterI4ivNV(GetImportAddress('glProgramEnvParameterI4ivNV'));
    glProgramEnvParametersI4ivNV := tglProgramEnvParametersI4ivNV(GetImportAddress('glProgramEnvParametersI4ivNV'));
    glProgramEnvParameterI4uiNV := tglProgramEnvParameterI4uiNV(GetImportAddress('glProgramEnvParameterI4uiNV'));
    glProgramEnvParameterI4uivNV := tglProgramEnvParameterI4uivNV(GetImportAddress('glProgramEnvParameterI4uivNV'));
    glProgramEnvParametersI4uivNV := tglProgramEnvParametersI4uivNV(GetImportAddress('glProgramEnvParametersI4uivNV'));
    glGetProgramLocalParameterIivNV := tglGetProgramLocalParameterIivNV(GetImportAddress('glGetProgramLocalParameterIivNV'));
    glGetProgramLocalParameterIuivNV := tglGetProgramLocalParameterIuivNV(GetImportAddress('glGetProgramLocalParameterIuivNV'));
    glGetProgramEnvParameterIivNV := tglGetProgramEnvParameterIivNV(GetImportAddress('glGetProgramEnvParameterIivNV'));
    glGetProgramEnvParameterIuivNV := tglGetProgramEnvParameterIuivNV(GetImportAddress('glGetProgramEnvParameterIuivNV'));
end;

class method GL.Read_GL_NV_parameter_buffer_object;
begin
    glProgramBufferParametersfvNV := tglProgramBufferParametersfvNV(GetImportAddress('glProgramBufferParametersfvNV'));
    glProgramBufferParametersIivNV := tglProgramBufferParametersIivNV(GetImportAddress('glProgramBufferParametersIivNV'));
    glProgramBufferParametersIuivNV := tglProgramBufferParametersIuivNV(GetImportAddress('glProgramBufferParametersIuivNV'));
end;

class method GL.Read_GL_NV_transform_feedback;
begin
    glBeginTransformFeedbackNV := tglBeginTransformFeedbackNV(GetImportAddress('glBeginTransformFeedbackNV'));
    glEndTransformFeedbackNV := tglEndTransformFeedbackNV(GetImportAddress('glEndTransformFeedbackNV'));
    glTransformFeedbackAttribsNV := tglTransformFeedbackAttribsNV(GetImportAddress('glTransformFeedbackAttribsNV'));
    glBindBufferRangeNV := tglBindBufferRangeNV(GetImportAddress('glBindBufferRangeNV'));
    glBindBufferOffsetNV := tglBindBufferOffsetNV(GetImportAddress('glBindBufferOffsetNV'));
    glBindBufferBaseNV := tglBindBufferBaseNV(GetImportAddress('glBindBufferBaseNV'));
    glTransformFeedbackVaryingsNV := tglTransformFeedbackVaryingsNV(GetImportAddress('glTransformFeedbackVaryingsNV'));
    glActiveVaryingNV := tglActiveVaryingNV(GetImportAddress('glActiveVaryingNV'));
    glGetVaryingLocationNV := tglGetVaryingLocationNV(GetImportAddress('glGetVaryingLocationNV'));
    glGetActiveVaryingNV := tglGetActiveVaryingNV(GetImportAddress('glGetActiveVaryingNV'));
    glGetTransformFeedbackVaryingNV := tglGetTransformFeedbackVaryingNV(GetImportAddress('glGetTransformFeedbackVaryingNV'));
    glTransformFeedbackStreamAttribsNV := tglTransformFeedbackStreamAttribsNV(GetImportAddress('glTransformFeedbackStreamAttribsNV'));
end;

class method GL.Read_GL_NV_conditional_render;
begin
    glBeginConditionalRenderNV := tglBeginConditionalRenderNV(GetImportAddress('glBeginConditionalRenderNV'));
    glEndConditionalRenderNV := tglEndConditionalRenderNV(GetImportAddress('glEndConditionalRenderNV'));
end;

class method GL.Read_GL_NV_conservative_raster;
begin
    glSubpixelPrecisionBiasNV := tglSubpixelPrecisionBiasNV(GetImportAddress('glSubpixelPrecisionBiasNV'));
end;

class method GL.Read_GL_NV_conservative_raster_dilate;
begin
    glConservativeRasterParameterfNV := tglConservativeRasterParameterfNV(GetImportAddress('glConservativeRasterParameterfNV'));
end;


class method GL.Read_GL_NV_present_video;
begin
    glPresentFrameKeyedNV := tglPresentFrameKeyedNV(GetImportAddress('glPresentFrameKeyedNV'));
    glPresentFrameDualFillNV := tglPresentFrameDualFillNV(GetImportAddress('glPresentFrameDualFillNV'));
    glGetVideoivNV := tglGetVideoivNV(GetImportAddress('glGetVideoivNV'));
    glGetVideouivNV := tglGetVideouivNV(GetImportAddress('glGetVideouivNV'));
    glGetVideoi64vNV := tglGetVideoi64vNV(GetImportAddress('glGetVideoi64vNV'));
    glGetVideoui64vNV := tglGetVideoui64vNV(GetImportAddress('glGetVideoui64vNV'));
  //  glVideoParameterivNV := t//  glVideoParameterivNV(dglGetProcAddress('glVideoParameterivNV'));
end;

class method GL.Read_GL_NV_explicit_multisample;
begin
    glGetMultisamplefvNV := tglGetMultisamplefvNV(GetImportAddress('glGetMultisamplefvNV'));
    glSampleMaskIndexedNV := tglSampleMaskIndexedNV(GetImportAddress('glSampleMaskIndexedNV'));
    glTexRenderbufferNV := tglTexRenderbufferNV(GetImportAddress('glTexRenderbufferNV'));
end;

class method GL.Read_GL_NV_transform_feedback2;
begin
    glBindTransformFeedbackNV := tglBindTransformFeedbackNV(GetImportAddress('glBindTransformFeedbackNV'));
    glDeleteTransformFeedbacksNV := tglDeleteTransformFeedbacksNV(GetImportAddress('glDeleteTransformFeedbacksNV'));
    glGenTransformFeedbacksNV := tglGenTransformFeedbacksNV(GetImportAddress('glGenTransformFeedbacksNV'));
    glIsTransformFeedbackNV := tglIsTransformFeedbackNV(GetImportAddress('glIsTransformFeedbackNV'));
    glPauseTransformFeedbackNV := tglPauseTransformFeedbackNV(GetImportAddress('glPauseTransformFeedbackNV'));
    glResumeTransformFeedbackNV := tglResumeTransformFeedbackNV(GetImportAddress('glResumeTransformFeedbackNV'));
    glDrawTransformFeedbackNV := tglDrawTransformFeedbackNV(GetImportAddress('glDrawTransformFeedbackNV'));
end;

class method GL.Read_GL_NV_video_capture;
begin
    glBeginVideoCaptureNV := tglBeginVideoCaptureNV(GetImportAddress('glBeginVideoCaptureNV'));
    glBindVideoCaptureStreamBufferNV := tglBindVideoCaptureStreamBufferNV(GetImportAddress('glBindVideoCaptureStreamBufferNV'));
    glBindVideoCaptureStreamTextureNV := tglBindVideoCaptureStreamTextureNV(GetImportAddress('glBindVideoCaptureStreamTextureNV'));
    glEndVideoCaptureNV := tglEndVideoCaptureNV(GetImportAddress('glEndVideoCaptureNV'));
    glGetVideoCaptureivNV := tglGetVideoCaptureivNV(GetImportAddress('glGetVideoCaptureivNV'));
    glGetVideoCaptureStreamivNV := tglGetVideoCaptureStreamivNV(GetImportAddress('glGetVideoCaptureStreamivNV'));
    glGetVideoCaptureStreamfvNV := tglGetVideoCaptureStreamfvNV(GetImportAddress('glGetVideoCaptureStreamfvNV'));
    glGetVideoCaptureStreamdvNV := tglGetVideoCaptureStreamdvNV(GetImportAddress('glGetVideoCaptureStreamdvNV'));
    glVideoCaptureNV := tglVideoCaptureNV(GetImportAddress('glVideoCaptureNV'));
    glVideoCaptureStreamParameterivNV := tglVideoCaptureStreamParameterivNV(GetImportAddress('glVideoCaptureStreamParameterivNV'));
    glVideoCaptureStreamParameterfvNV := tglVideoCaptureStreamParameterfvNV(GetImportAddress('glVideoCaptureStreamParameterfvNV'));
    glVideoCaptureStreamParameterdvNV := tglVideoCaptureStreamParameterdvNV(GetImportAddress('glVideoCaptureStreamParameterdvNV'));
end;

class method GL.Read_GL_NV_copy_image;
begin
    glCopyImageSubDataNV := tglCopyImageSubDataNV(GetImportAddress('glCopyImageSubDataNV'));
end;

class method GL.Read_GL_NV_shader_buffer_load;
begin
    glMakeBufferResidentNV := tglMakeBufferResidentNV(GetImportAddress('glMakeBufferResidentNV'));
    glMakeBufferNonResidentNV := tglMakeBufferNonResidentNV(GetImportAddress('glMakeBufferNonResidentNV'));
    glIsBufferResidentNV := tglIsBufferResidentNV(GetImportAddress('glIsBufferResidentNV'));
    glMakeNamedBufferResidentNV := tglMakeNamedBufferResidentNV(GetImportAddress('glMakeNamedBufferResidentNV'));
    glMakeNamedBufferNonResidentNV := tglMakeNamedBufferNonResidentNV(GetImportAddress('glMakeNamedBufferNonResidentNV'));
    glIsNamedBufferResidentNV := tglIsNamedBufferResidentNV(GetImportAddress('glIsNamedBufferResidentNV'));
    glGetBufferParameterui64vNV := tglGetBufferParameterui64vNV(GetImportAddress('glGetBufferParameterui64vNV'));
    glGetNamedBufferParameterui64vNV := tglGetNamedBufferParameterui64vNV(GetImportAddress('glGetNamedBufferParameterui64vNV'));
    glGetIntegerui64vNV := tglGetIntegerui64vNV(GetImportAddress('glGetIntegerui64vNV'));
    glUniformui64NV := tglUniformui64NV(GetImportAddress('glUniformui64NV'));
    glUniformui64vNV := tglUniformui64vNV(GetImportAddress('glUniformui64vNV'));
    glGetUniformui64vNV := tglGetUniformui64vNV(GetImportAddress('glGetUniformui64vNV'));
    glProgramUniformui64NV := tglProgramUniformui64NV(GetImportAddress('glProgramUniformui64NV'));
    glProgramUniformui64vNV := tglProgramUniformui64vNV(GetImportAddress('glProgramUniformui64vNV'));
end;

class method GL.Read_GL_NV_vertex_buffer_unified_memory;
begin
    glBufferAddressRangeNV := tglBufferAddressRangeNV(GetImportAddress('glBufferAddressRangeNV'));
    glVertexFormatNV := tglVertexFormatNV(GetImportAddress('glVertexFormatNV'));
    glNormalFormatNV := tglNormalFormatNV(GetImportAddress('glNormalFormatNV'));
    glColorFormatNV := tglColorFormatNV(GetImportAddress('glColorFormatNV'));
    glIndexFormatNV := tglIndexFormatNV(GetImportAddress('glIndexFormatNV'));
    glTexCoordFormatNV := tglTexCoordFormatNV(GetImportAddress('glTexCoordFormatNV'));
    glEdgeFlagFormatNV := tglEdgeFlagFormatNV(GetImportAddress('glEdgeFlagFormatNV'));
    glSecondaryColorFormatNV := tglSecondaryColorFormatNV(GetImportAddress('glSecondaryColorFormatNV'));
    glFogCoordFormatNV := tglFogCoordFormatNV(GetImportAddress('glFogCoordFormatNV'));
    glVertexAttribFormatNV := tglVertexAttribFormatNV(GetImportAddress('glVertexAttribFormatNV'));
    glVertexAttribIFormatNV := tglVertexAttribIFormatNV(GetImportAddress('glVertexAttribIFormatNV'));
    glGetIntegerui64i_vNV := tglGetIntegerui64i_vNV(GetImportAddress('glGetIntegerui64i_vNV'));
end;

class method GL.Read_GL_NV_gpu_program5;
begin
    glProgramSubroutineParametersuivNV := tglProgramSubroutineParametersuivNV(GetImportAddress('glProgramSubroutineParametersuivNV'));
    glGetProgramSubroutineParameteruivNV := tglGetProgramSubroutineParameteruivNV(GetImportAddress('glGetProgramSubroutineParameteruivNV'));
end;

class method GL.Read_GL_NV_gpu_shader5;
begin
    glUniform1i64NV := tglUniform1i64NV(GetImportAddress('glUniform1i64NV'));
    glUniform2i64NV := tglUniform2i64NV(GetImportAddress('glUniform2i64NV'));
    glUniform3i64NV := tglUniform3i64NV(GetImportAddress('glUniform3i64NV'));
    glUniform4i64NV := tglUniform4i64NV(GetImportAddress('glUniform4i64NV'));
    glUniform1i64vNV := tglUniform1i64vNV(GetImportAddress('glUniform1i64vNV'));
    glUniform2i64vNV := tglUniform2i64vNV(GetImportAddress('glUniform2i64vNV'));
    glUniform3i64vNV := tglUniform3i64vNV(GetImportAddress('glUniform3i64vNV'));
    glUniform4i64vNV := tglUniform4i64vNV(GetImportAddress('glUniform4i64vNV'));
    glUniform1ui64NV := tglUniform1ui64NV(GetImportAddress('glUniform1ui64NV'));
    glUniform2ui64NV := tglUniform2ui64NV(GetImportAddress('glUniform2ui64NV'));
    glUniform3ui64NV := tglUniform3ui64NV(GetImportAddress('glUniform3ui64NV'));
    glUniform4ui64NV := tglUniform4ui64NV(GetImportAddress('glUniform4ui64NV'));
    glUniform1ui64vNV := tglUniform1ui64vNV(GetImportAddress('glUniform1ui64vNV'));
    glUniform2ui64vNV := tglUniform2ui64vNV(GetImportAddress('glUniform2ui64vNV'));
    glUniform3ui64vNV := tglUniform3ui64vNV(GetImportAddress('glUniform3ui64vNV'));
    glUniform4ui64vNV := tglUniform4ui64vNV(GetImportAddress('glUniform4ui64vNV'));
    glGetUniformi64vNV := tglGetUniformi64vNV(GetImportAddress('glGetUniformi64vNV'));
    glProgramUniform1i64NV := tglProgramUniform1i64NV(GetImportAddress('glProgramUniform1i64NV'));
    glProgramUniform2i64NV := tglProgramUniform2i64NV(GetImportAddress('glProgramUniform2i64NV'));
    glProgramUniform3i64NV := tglProgramUniform3i64NV(GetImportAddress('glProgramUniform3i64NV'));
    glProgramUniform4i64NV := tglProgramUniform4i64NV(GetImportAddress('glProgramUniform4i64NV'));
    glProgramUniform1i64vNV := tglProgramUniform1i64vNV(GetImportAddress('glProgramUniform1i64vNV'));
    glProgramUniform2i64vNV := tglProgramUniform2i64vNV(GetImportAddress('glProgramUniform2i64vNV'));
    glProgramUniform3i64vNV := tglProgramUniform3i64vNV(GetImportAddress('glProgramUniform3i64vNV'));
    glProgramUniform4i64vNV := tglProgramUniform4i64vNV(GetImportAddress('glProgramUniform4i64vNV'));
    glProgramUniform1ui64NV := tglProgramUniform1ui64NV(GetImportAddress('glProgramUniform1ui64NV'));
    glProgramUniform2ui64NV := tglProgramUniform2ui64NV(GetImportAddress('glProgramUniform2ui64NV'));
    glProgramUniform3ui64NV := tglProgramUniform3ui64NV(GetImportAddress('glProgramUniform3ui64NV'));
    glProgramUniform4ui64NV := tglProgramUniform4ui64NV(GetImportAddress('glProgramUniform4ui64NV'));
    glProgramUniform1ui64vNV := tglProgramUniform1ui64vNV(GetImportAddress('glProgramUniform1ui64vNV'));
    glProgramUniform2ui64vNV := tglProgramUniform2ui64vNV(GetImportAddress('glProgramUniform2ui64vNV'));
    glProgramUniform3ui64vNV := tglProgramUniform3ui64vNV(GetImportAddress('glProgramUniform3ui64vNV'));
    glProgramUniform4ui64vNV := tglProgramUniform4ui64vNV(GetImportAddress('glProgramUniform4ui64vNV'));
end;

class method GL.Read_GL_NV_vertex_attrib_integer_64bit;
begin
    glVertexAttribL1i64NV := tglVertexAttribL1i64NV(GetImportAddress('glVertexAttribL1i64NV'));
    glVertexAttribL2i64NV := tglVertexAttribL2i64NV(GetImportAddress('glVertexAttribL2i64NV'));
    glVertexAttribL3i64NV := tglVertexAttribL3i64NV(GetImportAddress('glVertexAttribL3i64NV'));
    glVertexAttribL4i64NV := tglVertexAttribL4i64NV(GetImportAddress('glVertexAttribL4i64NV'));
    glVertexAttribL1i64vNV := tglVertexAttribL1i64vNV(GetImportAddress('glVertexAttribL1i64vNV'));
    glVertexAttribL2i64vNV := tglVertexAttribL2i64vNV(GetImportAddress('glVertexAttribL2i64vNV'));
    glVertexAttribL3i64vNV := tglVertexAttribL3i64vNV(GetImportAddress('glVertexAttribL3i64vNV'));
    glVertexAttribL4i64vNV := tglVertexAttribL4i64vNV(GetImportAddress('glVertexAttribL4i64vNV'));
    glVertexAttribL1ui64NV := tglVertexAttribL1ui64NV(GetImportAddress('glVertexAttribL1ui64NV'));
    glVertexAttribL2ui64NV := tglVertexAttribL2ui64NV(GetImportAddress('glVertexAttribL2ui64NV'));
    glVertexAttribL3ui64NV := tglVertexAttribL3ui64NV(GetImportAddress('glVertexAttribL3ui64NV'));
    glVertexAttribL4ui64NV := tglVertexAttribL4ui64NV(GetImportAddress('glVertexAttribL4ui64NV'));
    glVertexAttribL1ui64vNV := tglVertexAttribL1ui64vNV(GetImportAddress('glVertexAttribL1ui64vNV'));
    glVertexAttribL2ui64vNV := tglVertexAttribL2ui64vNV(GetImportAddress('glVertexAttribL2ui64vNV'));
    glVertexAttribL3ui64vNV := tglVertexAttribL3ui64vNV(GetImportAddress('glVertexAttribL3ui64vNV'));
    glVertexAttribL4ui64vNV := tglVertexAttribL4ui64vNV(GetImportAddress('glVertexAttribL4ui64vNV'));
    glGetVertexAttribLi64vNV := tglGetVertexAttribLi64vNV(GetImportAddress('glGetVertexAttribLi64vNV'));
    glGetVertexAttribLui64vNV := tglGetVertexAttribLui64vNV(GetImportAddress('glGetVertexAttribLui64vNV'));
    glVertexAttribLFormatNV := tglVertexAttribLFormatNV(GetImportAddress('glVertexAttribLFormatNV'));
end;

class method GL.Read_GL_NV_vdpau_interop;
begin
    glVDPAUInitNV := tglVDPAUInitNV(GetImportAddress('glVDPAUInitNV'));
    glVDPAUFiniNV := tglVDPAUFiniNV(GetImportAddress('glVDPAUFiniNV'));
    glVDPAURegisterVideoSurfaceNV := tglVDPAURegisterVideoSurfaceNV(GetImportAddress('glVDPAURegisterVideoSurfaceNV'));
    glVDPAURegisterOutputSurfaceNV := tglVDPAURegisterOutputSurfaceNV(GetImportAddress('glVDPAURegisterOutputSurfaceNV'));
    glVDPAUIsSurfaceNV := tglVDPAUIsSurfaceNV(GetImportAddress('glVDPAUIsSurfaceNV'));
    glVDPAUUnregisterSurfaceNV := tglVDPAUUnregisterSurfaceNV(GetImportAddress('glVDPAUUnregisterSurfaceNV'));
    glVDPAUGetSurfaceivNV := tglVDPAUGetSurfaceivNV(GetImportAddress('glVDPAUGetSurfaceivNV'));
    glVDPAUSurfaceAccessNV := tglVDPAUSurfaceAccessNV(GetImportAddress('glVDPAUSurfaceAccessNV'));
    glVDPAUMapSurfacesNV := tglVDPAUMapSurfacesNV(GetImportAddress('glVDPAUMapSurfacesNV'));
    glVDPAUUnmapSurfacesNV := tglVDPAUUnmapSurfacesNV(GetImportAddress('glVDPAUUnmapSurfacesNV'));
end;

class method GL.Read_GL_NV_texture_barrier;
begin
    glTextureBarrierNV := tglTextureBarrierNV(GetImportAddress('glTextureBarrierNV'));
end;

class method GL.Read_GL_PGI_misc_hints;
begin
    glHintPGI := tglHintPGI(GetImportAddress('glHintPGI'));
end;

class method GL.Read_GL_OVR_multiview;
begin
    glFramebufferTextureMultiviewOVR := tglFramebufferTextureMultiviewOVR(GetImportAddress('glFramebufferTextureMultiviewOVR'));
end;

class method GL.Read_GL_SGIS_detail_texture;
begin
    glDetailTexFuncSGIS := tglDetailTexFuncSGIS(GetImportAddress('glDetailTexFuncSGIS'));
    glGetDetailTexFuncSGIS := tglGetDetailTexFuncSGIS(GetImportAddress('glGetDetailTexFuncSGIS'));
end;

class method GL.Read_GL_SGIS_fog_function;
begin
    glFogFuncSGIS := tglFogFuncSGIS(GetImportAddress('glFogFuncSGIS'));
    glGetFogFuncSGIS := tglGetFogFuncSGIS(GetImportAddress('glGetFogFuncSGIS'));
end;

class method GL.Read_GL_SGIS_multisample;
begin
    glSampleMaskSGIS := tglSampleMaskSGIS(GetImportAddress('glSampleMaskSGIS'));
    glSamplePatternSGIS := tglSamplePatternSGIS(GetImportAddress('glSamplePatternSGIS'));
end;

class method GL.Read_GL_SGIS_pixel_texture;
begin
    glPixelTexGenParameteriSGIS := tglPixelTexGenParameteriSGIS(GetImportAddress('glPixelTexGenParameteriSGIS'));
    glPixelTexGenParameterivSGIS := tglPixelTexGenParameterivSGIS(GetImportAddress('glPixelTexGenParameterivSGIS'));
    glPixelTexGenParameterfSGIS := tglPixelTexGenParameterfSGIS(GetImportAddress('glPixelTexGenParameterfSGIS'));
    glPixelTexGenParameterfvSGIS := tglPixelTexGenParameterfvSGIS(GetImportAddress('glPixelTexGenParameterfvSGIS'));
    glGetPixelTexGenParameterivSGIS := tglGetPixelTexGenParameterivSGIS(GetImportAddress('glGetPixelTexGenParameterivSGIS'));
    glGetPixelTexGenParameterfvSGIS := tglGetPixelTexGenParameterfvSGIS(GetImportAddress('glGetPixelTexGenParameterfvSGIS'));
end;

class method GL.Read_GL_SGIS_point_parameters;
begin
    glPointParameterfSGIS := tglPointParameterfSGIS(GetImportAddress('glPointParameterfSGIS'));
    glPointParameterfvSGIS := tglPointParameterfvSGIS(GetImportAddress('glPointParameterfvSGIS'));
end;

class method GL.Read_GL_SGIS_sharpen_texture;
begin
    glSharpenTexFuncSGIS := tglSharpenTexFuncSGIS(GetImportAddress('glSharpenTexFuncSGIS'));
    glGetSharpenTexFuncSGIS := tglGetSharpenTexFuncSGIS(GetImportAddress('glGetSharpenTexFuncSGIS'));
end;

class method GL.Read_GL_SGIS_texture4D;
begin
    glTexImage4DSGIS := tglTexImage4DSGIS(GetImportAddress('glTexImage4DSGIS'));
    glTexSubImage4DSGIS := tglTexSubImage4DSGIS(GetImportAddress('glTexSubImage4DSGIS'));
end;

class method GL.Read_GL_SGIS_texture_color_mask;
begin
    glTextureColorMaskSGIS := tglTextureColorMaskSGIS(GetImportAddress('glTextureColorMaskSGIS'));
end;

class method GL.Read_GL_SGIS_texture_filter4;
begin
    glGetTexFilterFuncSGIS := tglGetTexFilterFuncSGIS(GetImportAddress('glGetTexFilterFuncSGIS'));
    glTexFilterFuncSGIS := tglTexFilterFuncSGIS(GetImportAddress('glTexFilterFuncSGIS'));
end;

class method GL.Read_GL_SGIX_async;
begin
    glAsyncMarkerSGIX := tglAsyncMarkerSGIX(GetImportAddress('glAsyncMarkerSGIX'));
    glFinishAsyncSGIX := tglFinishAsyncSGIX(GetImportAddress('glFinishAsyncSGIX'));
    glPollAsyncSGIX := tglPollAsyncSGIX(GetImportAddress('glPollAsyncSGIX'));
    glGenAsyncMarkersSGIX := tglGenAsyncMarkersSGIX(GetImportAddress('glGenAsyncMarkersSGIX'));
    glDeleteAsyncMarkersSGIX := tglDeleteAsyncMarkersSGIX(GetImportAddress('glDeleteAsyncMarkersSGIX'));
    glIsAsyncMarkerSGIX := tglIsAsyncMarkerSGIX(GetImportAddress('glIsAsyncMarkerSGIX'));
end;

class method GL.Read_GL_SGIX_flush_raster;
begin
    glFlushRasterSGIX := tglFlushRasterSGIX(GetImportAddress('glFlushRasterSGIX'));
end;

class method GL.Read_GL_SGIX_fragment_lighting;
begin
    glFragmentColorMaterialSGIX := tglFragmentColorMaterialSGIX(GetImportAddress('glFragmentColorMaterialSGIX'));
    glFragmentLightfSGIX := tglFragmentLightfSGIX(GetImportAddress('glFragmentLightfSGIX'));
    glFragmentLightfvSGIX := tglFragmentLightfvSGIX(GetImportAddress('glFragmentLightfvSGIX'));
    glFragmentLightiSGIX := tglFragmentLightiSGIX(GetImportAddress('glFragmentLightiSGIX'));
    glFragmentLightivSGIX := tglFragmentLightivSGIX(GetImportAddress('glFragmentLightivSGIX'));
    glFragmentLightModelfSGIX := tglFragmentLightModelfSGIX(GetImportAddress('glFragmentLightModelfSGIX'));
    glFragmentLightModelfvSGIX := tglFragmentLightModelfvSGIX(GetImportAddress('glFragmentLightModelfvSGIX'));
    glFragmentLightModeliSGIX := tglFragmentLightModeliSGIX(GetImportAddress('glFragmentLightModeliSGIX'));
    glFragmentLightModelivSGIX := tglFragmentLightModelivSGIX(GetImportAddress('glFragmentLightModelivSGIX'));
    glFragmentMaterialfSGIX := tglFragmentMaterialfSGIX(GetImportAddress('glFragmentMaterialfSGIX'));
    glFragmentMaterialfvSGIX := tglFragmentMaterialfvSGIX(GetImportAddress('glFragmentMaterialfvSGIX'));
    glFragmentMaterialiSGIX := tglFragmentMaterialiSGIX(GetImportAddress('glFragmentMaterialiSGIX'));
    glFragmentMaterialivSGIX := tglFragmentMaterialivSGIX(GetImportAddress('glFragmentMaterialivSGIX'));
    glGetFragmentLightfvSGIX := tglGetFragmentLightfvSGIX(GetImportAddress('glGetFragmentLightfvSGIX'));
    glGetFragmentLightivSGIX := tglGetFragmentLightivSGIX(GetImportAddress('glGetFragmentLightivSGIX'));
    glGetFragmentMaterialfvSGIX := tglGetFragmentMaterialfvSGIX(GetImportAddress('glGetFragmentMaterialfvSGIX'));
    glGetFragmentMaterialivSGIX := tglGetFragmentMaterialivSGIX(GetImportAddress('glGetFragmentMaterialivSGIX'));
    glLightEnviSGIX := tglLightEnviSGIX(GetImportAddress('glLightEnviSGIX'));
end;

class method GL.Read_GL_SGIX_framezoom;
begin
    glFrameZoomSGIX := tglFrameZoomSGIX(GetImportAddress('glFrameZoomSGIX'));
end;

class method GL.Read_GL_SGIX_igloo_interface;
begin
    glIglooInterfaceSGIX := tglIglooInterfaceSGIX(GetImportAddress('glIglooInterfaceSGIX'));
end;

class method GL.Read_GL_SGIX_instruments;
begin
    glGetInstrumentsSGIX := tglGetInstrumentsSGIX(GetImportAddress('glGetInstrumentsSGIX'));
    glInstrumentsBufferSGIX := tglInstrumentsBufferSGIX(GetImportAddress('glInstrumentsBufferSGIX'));
    glPollInstrumentsSGIX := tglPollInstrumentsSGIX(GetImportAddress('glPollInstrumentsSGIX'));
    glReadInstrumentsSGIX := tglReadInstrumentsSGIX(GetImportAddress('glReadInstrumentsSGIX'));
    glStartInstrumentsSGIX := tglStartInstrumentsSGIX(GetImportAddress('glStartInstrumentsSGIX'));
    glStopInstrumentsSGIX := tglStopInstrumentsSGIX(GetImportAddress('glStopInstrumentsSGIX'));
end;

class method GL.Read_GL_SGIX_list_priority;
begin
    glGetListParameterfvSGIX := tglGetListParameterfvSGIX(GetImportAddress('glGetListParameterfvSGIX'));
    glGetListParameterivSGIX := tglGetListParameterivSGIX(GetImportAddress('glGetListParameterivSGIX'));
    glListParameterfSGIX := tglListParameterfSGIX(GetImportAddress('glListParameterfSGIX'));
    glListParameterfvSGIX := tglListParameterfvSGIX(GetImportAddress('glListParameterfvSGIX'));
    glListParameteriSGIX := tglListParameteriSGIX(GetImportAddress('glListParameteriSGIX'));
    glListParameterivSGIX := tglListParameterivSGIX(GetImportAddress('glListParameterivSGIX'));
end;

class method GL.Read_GL_SGIX_pixel_texture;
begin
    glPixelTexGenSGIX := tglPixelTexGenSGIX(GetImportAddress('glPixelTexGenSGIX'));
end;

class method GL.Read_GL_SGIX_polynomial_ffd;
begin
    glDeformationMap3dSGIX := tglDeformationMap3dSGIX(GetImportAddress('glDeformationMap3dSGIX'));
    glDeformationMap3fSGIX := tglDeformationMap3fSGIX(GetImportAddress('glDeformationMap3fSGIX'));
    glDeformSGIX := tglDeformSGIX(GetImportAddress('glDeformSGIX'));
    glLoadIdentityDeformationMapSGIX := tglLoadIdentityDeformationMapSGIX(GetImportAddress('glLoadIdentityDeformationMapSGIX'));
end;

class method GL.Read_GL_SGIX_reference_plane;
begin
    glReferencePlaneSGIX := tglReferencePlaneSGIX(GetImportAddress('glReferencePlaneSGIX'));
end;

class method GL.Read_GL_SGIX_sprite;
begin
    glSpriteParameterfSGIX := tglSpriteParameterfSGIX(GetImportAddress('glSpriteParameterfSGIX'));
    glSpriteParameterfvSGIX := tglSpriteParameterfvSGIX(GetImportAddress('glSpriteParameterfvSGIX'));
    glSpriteParameteriSGIX := tglSpriteParameteriSGIX(GetImportAddress('glSpriteParameteriSGIX'));
    glSpriteParameterivSGIX := tglSpriteParameterivSGIX(GetImportAddress('glSpriteParameterivSGIX'));
end;

class method GL.Read_GL_SGIX_tag_sample_buffer;
begin
    glTagSampleBufferSGIX := tglTagSampleBufferSGIX(GetImportAddress('glTagSampleBufferSGIX'));
end;

class method GL.Read_GL_SGI_color_table;
begin
    glColorTableSGI := tglColorTableSGI(GetImportAddress('glColorTableSGI'));
    glColorTableParameterfvSGI := tglColorTableParameterfvSGI(GetImportAddress('glColorTableParameterfvSGI'));
    glColorTableParameterivSGI := tglColorTableParameterivSGI(GetImportAddress('glColorTableParameterivSGI'));
    glCopyColorTableSGI := tglCopyColorTableSGI(GetImportAddress('glCopyColorTableSGI'));
    glGetColorTableSGI := tglGetColorTableSGI(GetImportAddress('glGetColorTableSGI'));
    glGetColorTableParameterfvSGI := tglGetColorTableParameterfvSGI(GetImportAddress('glGetColorTableParameterfvSGI'));
    glGetColorTableParameterivSGI := tglGetColorTableParameterivSGI(GetImportAddress('glGetColorTableParameterivSGI'));
end;

class method GL.Read_GL_SUNX_constant_data;
begin
    glFinishTextureSUNX := tglFinishTextureSUNX(GetImportAddress('glFinishTextureSUNX'));
end;

class method GL.Read_GL_SUN_global_alpha;
begin
    glGlobalAlphaFactorbSUN := tglGlobalAlphaFactorbSUN(GetImportAddress('glGlobalAlphaFactorbSUN'));
    glGlobalAlphaFactorsSUN := tglGlobalAlphaFactorsSUN(GetImportAddress('glGlobalAlphaFactorsSUN'));
    glGlobalAlphaFactoriSUN := tglGlobalAlphaFactoriSUN(GetImportAddress('glGlobalAlphaFactoriSUN'));
    glGlobalAlphaFactorfSUN := tglGlobalAlphaFactorfSUN(GetImportAddress('glGlobalAlphaFactorfSUN'));
    glGlobalAlphaFactordSUN := tglGlobalAlphaFactordSUN(GetImportAddress('glGlobalAlphaFactordSUN'));
    glGlobalAlphaFactorubSUN := tglGlobalAlphaFactorubSUN(GetImportAddress('glGlobalAlphaFactorubSUN'));
    glGlobalAlphaFactorusSUN := tglGlobalAlphaFactorusSUN(GetImportAddress('glGlobalAlphaFactorusSUN'));
    glGlobalAlphaFactoruiSUN := tglGlobalAlphaFactoruiSUN(GetImportAddress('glGlobalAlphaFactoruiSUN'));
end;

class method GL.Read_GL_SUN_mesh_array;
begin
    glDrawMeshArraysSUN := tglDrawMeshArraysSUN(GetImportAddress('glDrawMeshArraysSUN'));
end;

class method GL.Read_GL_SUN_triangle_list;
begin
    glReplacementCodeuiSUN := tglReplacementCodeuiSUN(GetImportAddress('glReplacementCodeuiSUN'));
    glReplacementCodeusSUN := tglReplacementCodeusSUN(GetImportAddress('glReplacementCodeusSUN'));
    glReplacementCodeubSUN := tglReplacementCodeubSUN(GetImportAddress('glReplacementCodeubSUN'));
    glReplacementCodeuivSUN := tglReplacementCodeuivSUN(GetImportAddress('glReplacementCodeuivSUN'));
    glReplacementCodeusvSUN := tglReplacementCodeusvSUN(GetImportAddress('glReplacementCodeusvSUN'));
    glReplacementCodeubvSUN := tglReplacementCodeubvSUN(GetImportAddress('glReplacementCodeubvSUN'));
    glReplacementCodePointerSUN := tglReplacementCodePointerSUN(GetImportAddress('glReplacementCodePointerSUN'));
end;

class method GL.Read_GL_SUN_vertex;
begin
    glColor4ubVertex2fSUN := tglColor4ubVertex2fSUN(GetImportAddress('glColor4ubVertex2fSUN'));
    glColor4ubVertex2fvSUN := tglColor4ubVertex2fvSUN(GetImportAddress('glColor4ubVertex2fvSUN'));
    glColor4ubVertex3fSUN := tglColor4ubVertex3fSUN(GetImportAddress('glColor4ubVertex3fSUN'));
    glColor4ubVertex3fvSUN := tglColor4ubVertex3fvSUN(GetImportAddress('glColor4ubVertex3fvSUN'));
    glColor3fVertex3fSUN := tglColor3fVertex3fSUN(GetImportAddress('glColor3fVertex3fSUN'));
    glColor3fVertex3fvSUN := tglColor3fVertex3fvSUN(GetImportAddress('glColor3fVertex3fvSUN'));
    glNormal3fVertex3fSUN := tglNormal3fVertex3fSUN(GetImportAddress('glNormal3fVertex3fSUN'));
    glNormal3fVertex3fvSUN := tglNormal3fVertex3fvSUN(GetImportAddress('glNormal3fVertex3fvSUN'));
    glColor4fNormal3fVertex3fSUN := tglColor4fNormal3fVertex3fSUN(GetImportAddress('glColor4fNormal3fVertex3fSUN'));
    glColor4fNormal3fVertex3fvSUN := tglColor4fNormal3fVertex3fvSUN(GetImportAddress('glColor4fNormal3fVertex3fvSUN'));
    glTexCoord2fVertex3fSUN := tglTexCoord2fVertex3fSUN(GetImportAddress('glTexCoord2fVertex3fSUN'));
    glTexCoord2fVertex3fvSUN := tglTexCoord2fVertex3fvSUN(GetImportAddress('glTexCoord2fVertex3fvSUN'));
    glTexCoord4fVertex4fSUN := tglTexCoord4fVertex4fSUN(GetImportAddress('glTexCoord4fVertex4fSUN'));
    glTexCoord4fVertex4fvSUN := tglTexCoord4fVertex4fvSUN(GetImportAddress('glTexCoord4fVertex4fvSUN'));
    glTexCoord2fColor4ubVertex3fSUN := tglTexCoord2fColor4ubVertex3fSUN(GetImportAddress('glTexCoord2fColor4ubVertex3fSUN'));
    glTexCoord2fColor4ubVertex3fvSUN := tglTexCoord2fColor4ubVertex3fvSUN(GetImportAddress('glTexCoord2fColor4ubVertex3fvSUN'));
    glTexCoord2fColor3fVertex3fSUN := tglTexCoord2fColor3fVertex3fSUN(GetImportAddress('glTexCoord2fColor3fVertex3fSUN'));
    glTexCoord2fColor3fVertex3fvSUN := tglTexCoord2fColor3fVertex3fvSUN(GetImportAddress('glTexCoord2fColor3fVertex3fvSUN'));
    glTexCoord2fNormal3fVertex3fSUN := tglTexCoord2fNormal3fVertex3fSUN(GetImportAddress('glTexCoord2fNormal3fVertex3fSUN'));
    glTexCoord2fNormal3fVertex3fvSUN := tglTexCoord2fNormal3fVertex3fvSUN(GetImportAddress('glTexCoord2fNormal3fVertex3fvSUN'));
    glTexCoord2fColor4fNormal3fVertex3fSUN := tglTexCoord2fColor4fNormal3fVertex3fSUN(GetImportAddress('glTexCoord2fColor4fNormal3fVertex3fSUN'));
    glTexCoord2fColor4fNormal3fVertex3fvSUN := tglTexCoord2fColor4fNormal3fVertex3fvSUN(GetImportAddress('glTexCoord2fColor4fNormal3fVertex3fvSUN'));
    glTexCoord4fColor4fNormal3fVertex4fSUN := tglTexCoord4fColor4fNormal3fVertex4fSUN(GetImportAddress('glTexCoord4fColor4fNormal3fVertex4fSUN'));
    glTexCoord4fColor4fNormal3fVertex4fvSUN := tglTexCoord4fColor4fNormal3fVertex4fvSUN(GetImportAddress('glTexCoord4fColor4fNormal3fVertex4fvSUN'));
    glReplacementCodeuiVertex3fSUN := tglReplacementCodeuiVertex3fSUN(GetImportAddress('glReplacementCodeuiVertex3fSUN'));
    glReplacementCodeuiVertex3fvSUN := tglReplacementCodeuiVertex3fvSUN(GetImportAddress('glReplacementCodeuiVertex3fvSUN'));
    glReplacementCodeuiColor4ubVertex3fSUN := tglReplacementCodeuiColor4ubVertex3fSUN(GetImportAddress('glReplacementCodeuiColor4ubVertex3fSUN'));
    glReplacementCodeuiColor4ubVertex3fvSUN := tglReplacementCodeuiColor4ubVertex3fvSUN(GetImportAddress('glReplacementCodeuiColor4ubVertex3fvSUN'));
    glReplacementCodeuiColor3fVertex3fSUN := tglReplacementCodeuiColor3fVertex3fSUN(GetImportAddress('glReplacementCodeuiColor3fVertex3fSUN'));
    glReplacementCodeuiColor3fVertex3fvSUN := tglReplacementCodeuiColor3fVertex3fvSUN(GetImportAddress('glReplacementCodeuiColor3fVertex3fvSUN'));
    glReplacementCodeuiNormal3fVertex3fSUN := tglReplacementCodeuiNormal3fVertex3fSUN(GetImportAddress('glReplacementCodeuiNormal3fVertex3fSUN'));
    glReplacementCodeuiNormal3fVertex3fvSUN := tglReplacementCodeuiNormal3fVertex3fvSUN(GetImportAddress('glReplacementCodeuiNormal3fVertex3fvSUN'));
    glReplacementCodeuiColor4fNormal3fVertex3fSUN := tglReplacementCodeuiColor4fNormal3fVertex3fSUN(GetImportAddress('glReplacementCodeuiColor4fNormal3fVertex3fSUN'));
    glReplacementCodeuiColor4fNormal3fVertex3fvSUN := tglReplacementCodeuiColor4fNormal3fVertex3fvSUN(GetImportAddress('glReplacementCodeuiColor4fNormal3fVertex3fvSUN'));
    glReplacementCodeuiTexCoord2fVertex3fSUN := tglReplacementCodeuiTexCoord2fVertex3fSUN(GetImportAddress('glReplacementCodeuiTexCoord2fVertex3fSUN'));
    glReplacementCodeuiTexCoord2fVertex3fvSUN := tglReplacementCodeuiTexCoord2fVertex3fvSUN(GetImportAddress('glReplacementCodeuiTexCoord2fVertex3fvSUN'));
    glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN := tglReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(GetImportAddress('glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN'));
    glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN := tglReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(GetImportAddress('glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN'));
    glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN := tglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(GetImportAddress('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN'));
    glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN := tglReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(GetImportAddress('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN'));
end;



class method GL.ReadExtensions;
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

{$IF WINDOWS}
 ReadWGLExtensions;

{$ENDIF}

    ExtensionsRead := True;
end;

// =============================================================================
//  ReadCoreVersion
// =============================================================================

class method GL.ReadCoreVersion : boolean;
var
    AnsiBuffer: String;
    Buffer: String;
    MajorVersion, MinorVersion: Integer;


begin
    result := false;
  // determine version of implementation
  // GL

    if not Assigned(glGetString) then
        glGetString := tglGetString(GetImportAddress('glGetString'));
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

class method GL.ReadImplementationProperties;
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
        GL_ARB_sparse_texture  := Int_CheckExtension(Buffer, 'GL_ARB_sparse_texture');

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

  {$IFDEF WINDOWS}
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

class method GL.Int_GetExtensionString: String;
var
    ExtensionCount : GLuint;
    i : Integer;
begin
    if GL_VERSION_3_0
        then
    begin
        if not Assigned(glGetIntegerv) then glGetIntegerv := TglGetIntegerv( GetImportAddress('glGetIntegerv'));
        if not Assigned(glGetStringi)  then glGetStringi  := tglGetStringi(GetImportAddress('glGetStringi'));

        result := '';

        if Assigned(glGetIntegerv) and Assigned(glGetStringi)
            then
        begin
            glGetIntegerv(GL_NUM_EXTENSIONS, PGLint( @extensionCount));

            For I := 0 to extensionCount - 1 do
                result := result + #32 +  String.FromPAnsiChars(glGetStringi(GL_EXTENSIONS, I));
        end;
    end
    else
    begin
        if not Assigned(glGetString) then
            glGetString := tglGetString(GetImportAddress('glGetString'));

        if Assigned(glGetString)
            then result := String.FromPAnsiChars(glGetString(GL_EXTENSIONS))
        else result := '';
    end;

    if (GL_LibHandle <> GLNULLMODULE) then begin
    {$IF WINDOWS}
      // wglGetExtensionsStringEXT
      if not Assigned(wglGetExtensionsStringEXT) then
          wglGetExtensionsStringEXT := twglGetExtensionsStringEXT(GetImportAddress('wglGetExtensionsStringEXT'));

        if Assigned(wglGetExtensionsStringEXT) then
            Result := Result + #32 + String.FromPAnsiChars(wglGetExtensionsStringEXT());

      // wglGetExtensionsStringARB
        if not Assigned(wglGetExtensionsStringARB) then
            wglGetExtensionsStringARB := TwglGetExtensionsStringARB(GetImportAddress('wglGetExtensionsStringARB'));

        if Assigned(wglGetExtensionsStringARB) then
            Result := Result + #32 + String.FromPAnsiChars(wglGetExtensionsStringARB(wglGetCurrentDC()));
    {$ENDIF}
    end;

    Result := #32 + Result + #32;
end;


// =============================================================================
// RaiseLastOSError
// =============================================================================
// Needed for compatibility with older Delphiversions
// =============================================================================

method RaiseLastOSError;
begin

  {$IF WINDOWS} // If on Windows

 var error := GetLastError;
    if Error <> 0 then
        raise new Exception('OS Error '+Error.ToString);
  {$ELSE}
   //Raise new exception('OS Error');
{$ENDIF}
end;
{$ENDIF} // ISLAND

end.