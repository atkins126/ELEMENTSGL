ROSF   STBLf  0   stb_image.hminwindef.h stb_image.hSTB1   stb_image_resize.h stb_image_resize.hSTB   stb_image_write.h STB+   stb_rect_pack.h stb_rect_pack.hSTB)   stb_truetype.hstb_truetype.h STB   stb.hSTB   stb_c_lexer.hSTB#   stb_connected_components.hSTB   stb_divide.hSTB   	stb_dxt.hSTB   stb_easy_font.hSTB$   stb_herringbone_wang_tile.hSTB   stb_leakcheck.hSTB   stb_perlin.hSTB   stb_sprintf.hSTB   stb_textedit.hSTB   stb_tilemap_editor.hSTB   stb_voxel_render.hSTB   stretchy_buffer.hSTB     STB.FILE      STB.__Global      STB.stbi_uc      STB.stbi_us      STB.stbi_io_callbacks     STB.stbir_uint8     STB.stbir_uint16     STB.stbir_uint32     STB.stbir_edge !    STB.stbir_filter "    STB.stbir_colorspace #    STB.stbir_datatype &    STB.stbrp_context )    STB.stbrp_node *    STB.stbrp_rect +    STB.stbrp_coord ,    STB.__struct_stbrp_rect /    STB.__struct_stbrp_node 2     STB.__struct_stbrp_context 3    STB.stbtt__buf 5    STB.stbtt_bakedchar 6    STB.stbtt_aligned_quad 8    STB.stbtt_packedchar ;    STB.stbtt_pack_context <    STB.stbtt_fontinfo =    STB.stbtt_pack_range @%    STB.__struct_stbtt_pack_context D!    STB.__struct_stbtt_fontinfo E    STB.stbtt_vertex G    STB.stbtt__bitmap K	stb32.lib"rtl( ((( ( (( ((((( (( ((((((((((( (((( ((((((((((((((((((((( ((((((((((((((((((((((( ((((3	   
rtl.INT3    3?M      STBI_default8    	STBI_grey8   STBI_grey_alpha8   STBI_rgb8   STBI_rgb_alpha8?   stbi_load_from_memory"stbi_load_from_memory+
   buffer+   len+   x+   y+   channels_in_file+   desired_channels?   stbi_load_from_callbacks"stbi_load_from_callbacks+   clbk+   user
+   x+   y+   channels_in_file+   desired_channelss   	stbi_load"	stbi_load+   filename+   x+   y+   channels_in_file+   desired_channels?   stbi_load_from_file"stbi_load_from_file+   f+   x+   y+   channels_in_file+   desired_channels?   stbi_load_16_from_memory"stbi_load_16_from_memory+
   buffer+   len+   x+   y+   channels_in_file+   desired_channels?   stbi_load_16_from_callbacks"stbi_load_16_from_callbacks+   clbk+   user
+   x+   y+   channels_in_file+   desired_channelsy   stbi_load_16"stbi_load_16+   filename+   x+   y+   channels_in_file+   desired_channels?   stbi_load_from_file_16"stbi_load_from_file_16+   f+   x+   y+   channels_in_file+   desired_channels?   stbi_loadf_from_memory"stbi_loadf_from_memory+
   buffer+   len+   x+   y+   channels_in_file+   desired_channels?   stbi_loadf_from_callbacks"stbi_loadf_from_callbacks+   clbk+   user
+   x+   y+   channels_in_file+   desired_channelsu   
stbi_loadf"
stbi_loadf+   filename+   x+   y+   channels_in_file+   desired_channels?   stbi_loadf_from_file"stbi_loadf_from_file+   f+   x+   y+   channels_in_file+   desired_channelsB   stbi_hdr_to_ldr_gamma"stbi_hdr_to_ldr_gamma+	   gammaB   stbi_hdr_to_ldr_scale"stbi_hdr_to_ldr_scale+	   scaleB   stbi_ldr_to_hdr_gamma"stbi_ldr_to_hdr_gamma+	   gammaB   stbi_ldr_to_hdr_scale"stbi_ldr_to_hdr_scale+	   scaleX   stbi_is_hdr_from_callbacks"stbi_is_hdr_from_callbacks+   clbk+   user
S   stbi_is_hdr_from_memory"stbi_is_hdr_from_memory+
   buffer+   len1   stbi_is_hdr"stbi_is_hdr+   filename>   stbi_is_hdr_from_file"stbi_is_hdr_from_file+   f0   stbi_failure_reason"stbi_failure_reasonF   stbi_image_free"stbi_image_free+   retval_from_stbi_load
p   stbi_info_from_memory"stbi_info_from_memory+
   buffer+   len+   x+   y+   compu   stbi_info_from_callbacks"stbi_info_from_callbacks+   clbk+   user
+   x+   y+   compN   	stbi_info"	stbi_info+   filename+   x+   y+   comp[   stbi_info_from_file"stbi_info_from_file+   f+   x+   y+   compp   stbi_set_unpremultiply_on_load"stbi_set_unpremultiply_on_load+%   !flag_true_if_should_unpremultiplyj   stbi_convert_iphone_png_to_rgb"stbi_convert_iphone_png_to_rgb+   flag_true_if_should_convertk    stbi_set_flip_vertically_on_load" stbi_set_flip_vertically_on_load+   flag_true_if_should_flip?   !stbi_zlib_decode_malloc_guesssize"!stbi_zlib_decode_malloc_guesssize+
   buffer+   len+   initial_size+
   outlen?   ,stbi_zlib_decode_malloc_guesssize_headerflag",stbi_zlib_decode_malloc_guesssize_headerflag+
   buffer+   len+   initial_size+
   outlen+   parse_headerb   stbi_zlib_decode_malloc"stbi_zlib_decode_malloc+
   buffer+   len+
   outlenr   stbi_zlib_decode_buffer"stbi_zlib_decode_buffer+   obuffer+   olen+   ibuffer+   ilent    stbi_zlib_decode_noheader_malloc" stbi_zlib_decode_noheader_malloc+
   buffer+   len+
   outlen?    stbi_zlib_decode_noheader_buffer" stbi_zlib_decode_noheader_buffer+   obuffer+   olen+   ibuffer+   ilen?   stbir_resize_uint8"stbir_resize_uint8+   input_pixels+   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels?   stbir_resize_float"stbir_resize_float+   input_pixels +   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels  stbir_resize_uint8_srgb"stbir_resize_uint8_srgb+   input_pixels+   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels+   alpha_channel+	   flagsD   stbir_resize_uint8_srgb_edgemode" stbir_resize_uint8_srgb_edgemode+   input_pixels+   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels+   alpha_channel+	   flags+   edge_wrap_mode!k  stbir_resize_uint8_generic"stbir_resize_uint8_generic+   input_pixels+   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels+   alpha_channel+	   flags+   edge_wrap_mode!+
   filter"+	   space#+   alloc_context
m  stbir_resize_uint16_generic"stbir_resize_uint16_generic+   input_pixels$+   input_w+   input_h+   input_stride_in_bytes+   output_pixels%+   output_w+   output_h+   output_stride_in_bytes+   num_channels+   alpha_channel+	   flags+   edge_wrap_mode!+
   filter"+	   space#+   alloc_context
k  stbir_resize_float_generic"stbir_resize_float_generic+   input_pixels +   input_w+   input_h+   input_stride_in_bytes+   output_pixels+   output_w+   output_h+   output_stride_in_bytes+   num_channels+   alpha_channel+	   flags+   edge_wrap_mode!+
   filter"+	   space#+   alloc_context
?  stbir_resize"stbir_resize+   input_pixels'+   input_w+   input_h+   input_stride_in_bytes+   output_pixels
+   output_w+   output_h+   output_stride_in_bytes+   datatype&+   num_channels+   alpha_channel+	   flags+   edge_mode_horizontal!+   edge_mode_vertical!+   filter_horizontal"+   filter_vertical"+	   space#+   alloc_context
?  stbir_resize_subpixel"stbir_resize_subpixel+   input_pixels'+   input_w+   input_h+   input_stride_in_bytes+   output_pixels
+   output_w+   output_h+   output_stride_in_bytes+   datatype&+   num_channels+   alpha_channel+	   flags+   edge_mode_horizontal!+   edge_mode_vertical!+   filter_horizontal"+   filter_vertical"+	   space#+   alloc_context
+   x_scale+   y_scale+   x_offset+   y_offset?  stbir_resize_region"stbir_resize_region+   input_pixels'+   input_w+   input_h+   input_stride_in_bytes+   output_pixels
+   output_w+   output_h+   output_stride_in_bytes+   datatype&+   num_channels+   alpha_channel+	   flags+   edge_mode_horizontal!+   edge_mode_vertical!+   filter_horizontal"+   filter_vertical"+	   space#+   alloc_context
+   s0+   t0+   s1+   t18   stbi_write_tga_with_rle"stbi_write_tga_with_rle}   stbi_write_png"stbi_write_png+   filename+   w+   h+   comp+   data'+   stride_in_bytese   stbi_write_bmp"stbi_write_bmp+   filename+   w+   h+   comp+   data'e   stbi_write_tga"stbi_write_tga+   filename+   w+   h+   comp+   data'e   stbi_write_hdr"stbi_write_hdr+   filename+   w+   h+   comp+   data u   stbi_write_jpg"stbi_write_jpg+   filename+   x+   y+   comp+   data'+   quality?   stbi_write_png_to_func"stbi_write_png_to_func+   func(+   context
+   w+   h+   comp+   data'+   stride_in_bytes?   stbi_write_bmp_to_func"stbi_write_bmp_to_func+   func(+   context
+   w+   h+   comp+   data'?   stbi_write_tga_to_func"stbi_write_tga_to_func+   func(+   context
+   w+   h+   comp+   data'?   stbi_write_hdr_to_func"stbi_write_hdr_to_func+   func(+   context
+   w+   h+   comp+   data ?   stbi_write_jpg_to_func"stbi_write_jpg_to_func+   func(+   context
+   x+   y+   comp+   data'+   qualityZ   stbrp_pack_rects"stbrp_pack_rects+   context-+	   rects.+   	num_rectsy   stbrp_init_target"stbrp_init_target+   context-+	   width+
   height+	   nodes0+   	num_nodesk   stbrp_setup_allow_out_of_mem"stbrp_setup_allow_out_of_mem+   context-+   allow_out_of_memV   stbrp_setup_heuristic"stbrp_setup_heuristic+   context-+   	heuristic)   STBRP_HEURISTIC_Skyline_default8 /   %STBRP_HEURISTIC_Skyline_BL_sortHeight18 /   %STBRP_HEURISTIC_Skyline_BF_sortHeight8?   stbtt_BakeFontBitmap"stbtt_BakeFontBitmap+   data+
   offset+   pixel_height+
   pixels+   pw+   ph+   
first_char+   	num_chars+   chardata7?   stbtt_GetBakedQuad"stbtt_GetBakedQuad+   chardata9+   pw+   ph+   
char_index+   xpos+   ypos+   q:+   opengl_fillrule?   stbtt_PackBegin"stbtt_PackBegin+   spc>+
   pixels+	   width+
   height+   stride_in_bytes+   padding+   alloc_context
0   stbtt_PackEnd"stbtt_PackEnd+   spc>?   stbtt_PackFontRange"stbtt_PackFontRange+   spc>+   fontdata+   
font_index+   	font_size+   first_unicode_char_in_range+   num_chars_in_range+   chardata_for_range??   stbtt_PackFontRanges"stbtt_PackFontRanges+   spc>+   fontdata+   
font_index+
   rangesA+   
num_rangesr   stbtt_PackSetOversampling"stbtt_PackSetOversampling+   spc>+   h_oversample+   v_oversample?   stbtt_GetPackedQuad"stbtt_GetPackedQuad+   chardataB+   pw+   ph+   
char_index+   xpos+   ypos+   q:+   align_to_integer?   stbtt_PackFontRangesGatherRects"stbtt_PackFontRangesGatherRects+   spc>+   infoC+
   rangesA+   
num_ranges+	   rects.p   stbtt_PackFontRangesPackRects"stbtt_PackFontRangesPackRects+   spc>+	   rects.+   	num_rects?   #stbtt_PackFontRangesRenderIntoRects"#stbtt_PackFontRangesRenderIntoRects+   spc>+   infoC+
   rangesA+   
num_ranges+	   rects.C   stbtt_GetNumberOfFonts"stbtt_GetNumberOfFonts+   data[   stbtt_GetFontOffsetForIndex"stbtt_GetFontOffsetForIndex+   data+	   indexO   stbtt_InitFont"stbtt_InitFont+   infoF+   data+
   offsetY   stbtt_FindGlyphIndex"stbtt_FindGlyphIndex+   infoC+   unicode_codepointX   stbtt_ScaleForPixelHeight"stbtt_ScaleForPixelHeight+   infoC+
   pixelsd   stbtt_ScaleForMappingEmToPixels"stbtt_ScaleForMappingEmToPixels+   infoC+
   pixelsp   stbtt_GetFontVMetrics"stbtt_GetFontVMetrics+   infoC+
   ascent+   descent+   lineGap?   stbtt_GetFontVMetricsOS2"stbtt_GetFontVMetricsOS2+   infoC+   
typoAscent+   typoDescent+   typoLineGaps   stbtt_GetFontBoundingBox"stbtt_GetFontBoundingBox+   infoC+   x0+   y0+   x1+   y1?   stbtt_GetCodepointHMetrics"stbtt_GetCodepointHMetrics+   infoC+   	codepoint+   advanceWidth+   leftSideBearingi   stbtt_GetCodepointKernAdvance"stbtt_GetCodepointKernAdvance+   infoC+   ch1+   ch2   stbtt_GetCodepointBox"stbtt_GetCodepointBox+   infoC+   	codepoint+   x0+   y0+   x1+   y1?   stbtt_GetGlyphHMetrics"stbtt_GetGlyphHMetrics+   infoC+   glyph_index+   advanceWidth+   leftSideBearingg   stbtt_GetGlyphKernAdvance"stbtt_GetGlyphKernAdvance+   infoC+
   glyph1+
   glyph2y   stbtt_GetGlyphBox"stbtt_GetGlyphBox+   infoC+   glyph_index+   x0+   y0+   x1+   y1   STBTT_vmove8   STBTT_vline8   STBTT_vcurve8   STBTT_vcubic8O   stbtt_IsGlyphEmpty"stbtt_IsGlyphEmpty+   infoC+   glyph_indexp   stbtt_GetCodepointShape"stbtt_GetCodepointShape+   infoC+   unicode_codepoint+   verticesIb   stbtt_GetGlyphShape"stbtt_GetGlyphShape+   infoC+   glyph_index+   verticesIF   stbtt_FreeShape"stbtt_FreeShape+   infoC+   verticesJJ   stbtt_FreeBitmap"stbtt_FreeBitmap+
   bitmap+   userdata
?   stbtt_GetCodepointBitmap"stbtt_GetCodepointBitmap+   infoC+   scale_x+   scale_y+   	codepoint+	   width+
   height+   xoff+   yoff?    stbtt_GetCodepointBitmapSubpixel" stbtt_GetCodepointBitmapSubpixel+   infoC+   scale_x+   scale_y+   shift_x+   shift_y+   	codepoint+	   width+
   height+   xoff+   yoff?   stbtt_MakeCodepointBitmap"stbtt_MakeCodepointBitmap+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+   	codepoint?   !stbtt_MakeCodepointBitmapSubpixel"!stbtt_MakeCodepointBitmapSubpixel+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+   shift_x+   shift_y+   	codepointA  *stbtt_MakeCodepointBitmapSubpixelPrefilter"*stbtt_MakeCodepointBitmapSubpixelPrefilter+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+   shift_x+   shift_y+   oversample_x+   oversample_y+	   sub_x+	   sub_y+   	codepoint?   stbtt_GetCodepointBitmapBox"stbtt_GetCodepointBitmapBox+   fontC+   	codepoint+   scale_x+   scale_y+   ix0+   iy0+   ix1+   iy1?   #stbtt_GetCodepointBitmapBoxSubpixel"#stbtt_GetCodepointBitmapBoxSubpixel+   fontC+   	codepoint+   scale_x+   scale_y+   shift_x+   shift_y+   ix0+   iy0+   ix1+   iy1?   stbtt_GetGlyphBitmap"stbtt_GetGlyphBitmap+   infoC+   scale_x+   scale_y+	   glyph+	   width+
   height+   xoff+   yoff?   stbtt_GetGlyphBitmapSubpixel"stbtt_GetGlyphBitmapSubpixel+   infoC+   scale_x+   scale_y+   shift_x+   shift_y+	   glyph+	   width+
   height+   xoff+   yoff?   stbtt_MakeGlyphBitmap"stbtt_MakeGlyphBitmap+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+	   glyph?   stbtt_MakeGlyphBitmapSubpixel"stbtt_MakeGlyphBitmapSubpixel+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+   shift_x+   shift_y+	   glyph5  &stbtt_MakeGlyphBitmapSubpixelPrefilter"&stbtt_MakeGlyphBitmapSubpixelPrefilter+   infoC+
   output+	   out_w+	   out_h+   
out_stride+   scale_x+   scale_y+   shift_x+   shift_y+   oversample_x+   oversample_y+	   sub_x+	   sub_y+	   glyph?   stbtt_GetGlyphBitmapBox"stbtt_GetGlyphBitmapBox+   fontC+	   glyph+   scale_x+   scale_y+   ix0+   iy0+   ix1+   iy1?   stbtt_GetGlyphBitmapBoxSubpixel"stbtt_GetGlyphBitmapBoxSubpixel+   fontC+	   glyph+   scale_x+   scale_y+   shift_x+   shift_y+   ix0+   iy0+   ix1+   iy1?   stbtt_Rasterize"stbtt_Rasterize+
   resultL+   flatness_in_pixels+   verticesJ+   	num_verts+   scale_x+   scale_y+   shift_x+   shift_y+	   x_off+	   y_off+
   invert+   userdata
D   stbtt_FreeSDF"stbtt_FreeSDF+
   bitmap+   userdata
?   stbtt_GetGlyphSDF"stbtt_GetGlyphSDF+   infoC+	   scale+	   glyph+   padding+   onedge_value+   pixel_dist_scale+	   width+
   height+   xoff+   yoff?   stbtt_GetCodepointSDF"stbtt_GetCodepointSDF+   infoC+	   scale+   	codepoint+   padding+   onedge_value+   pixel_dist_scale+	   width+
   height+   xoff+   yoffb   stbtt_FindMatchingFont"stbtt_FindMatchingFont+   fontdata+   name+	   flags~   "stbtt_CompareUTF8toUTF16_bigendian""stbtt_CompareUTF8toUTF16_bigendian+   s1+   len1+   s2+   len2?   stbtt_GetFontNameString"stbtt_GetFontNameString+   fontC+
   length+   
platformID+   
encodingID+   
languageID+
   nameID#   STBTT_PLATFORM_ID_UNICODE8    STBTT_PLATFORM_ID_MAC8   STBTT_PLATFORM_ID_ISO8%   STBTT_PLATFORM_ID_MICROSOFT8'   STBTT_UNICODE_EID_UNICODE_1_08 '   STBTT_UNICODE_EID_UNICODE_1_18%   STBTT_UNICODE_EID_ISO_106468+   !STBTT_UNICODE_EID_UNICODE_2_0_BMP8,   "STBTT_UNICODE_EID_UNICODE_2_0_FULL8   STBTT_MS_EID_SYMBOL8 "   STBTT_MS_EID_UNICODE_BMP8   STBTT_MS_EID_SHIFTJIS8#   STBTT_MS_EID_UNICODE_FULL8   STBTT_MAC_EID_ROMAN8    STBTT_MAC_EID_ARABIC8    STBTT_MAC_EID_JAPANESE8   STBTT_MAC_EID_HEBREW8$   STBTT_MAC_EID_CHINESE_TRAD8   STBTT_MAC_EID_GREEK8   STBTT_MAC_EID_KOREAN8   STBTT_MAC_EID_RUSSIAN8   STBTT_MS_LANG_ENGLISH8	   STBTT_MS_LANG_ITALIAN8
   STBTT_MS_LANG_CHINESE8    STBTT_MS_LANG_JAPANESE8   STBTT_MS_LANG_DUTCH8   STBTT_MS_LANG_KOREAN8   STBTT_MS_LANG_FRENCH8   STBTT_MS_LANG_RUSSIAN8   STBTT_MS_LANG_GERMAN8   STBTT_MS_LANG_SPANISH8	   STBTT_MS_LANG_HEBREW8   STBTT_MS_LANG_SWEDISH8    STBTT_MAC_LANG_ENGLISH8 !   STBTT_MAC_LANG_JAPANESE8   STBTT_MAC_LANG_ARABIC8   STBTT_MAC_LANG_KOREAN8   STBTT_MAC_LANG_DUTCH8    STBTT_MAC_LANG_RUSSIAN8   STBTT_MAC_LANG_FRENCH8    STBTT_MAC_LANG_SPANISH8   STBTT_MAC_LANG_GERMAN8    STBTT_MAC_LANG_SWEDISH8   STBTT_MAC_LANG_HEBREW8+   !STBTT_MAC_LANG_CHINESE_SIMPLIFIED8    STBTT_MAC_LANG_ITALIAN8%   STBTT_MAC_LANG_CHINESE_TRAD8   STBI_VERSION8"   STBIR_ALPHA_CHANNEL_NONE8(   STBIR_FLAG_ALPHA_PREMULTIPLIED8*    STBIR_FLAG_ALPHA_USES_COLORSPACE8   STB_RECT_PACK_VERSION8!   STBTT_MACSTYLE_DONTCARE8    STBTT_MACSTYLE_BOLD8   STBTT_MACSTYLE_ITALIC8#   STBTT_MACSTYLE_UNDERSCORE8   STBTT_MACSTYLE_NONE883!   
RemObjects.Oxygene.System.Int323    
RemObjects.Oxygene.System.Byte3    3"   
 RemObjects.Oxygene.System.UInt163    30    
   read	
   skip	   eof(34   -    +   user
+   data+   size(3    3    
RemObjects.Oxygene.System.Void3    3$   
"RemObjects.Oxygene.System.AnsiChar3$       +   user
+   n(3       +   user
(3    3    3    3    3    3    3    3    3"   
 RemObjects.Oxygene.System.Single3    3    3    3"   
 RemObjects.Oxygene.System.UInt323    3    3    3    3?       STBIR_EDGE_CLAMP!8   STBIR_EDGE_REFLECT!8   STBIR_EDGE_WRAP!8   STBIR_EDGE_ZERO!8(3?    	   STBIR_FILTER_DEFAULT"8    STBIR_FILTER_BOX"8   STBIR_FILTER_TRIANGLE"8#   STBIR_FILTER_CUBICBSPLINE"8!   STBIR_FILTER_CATMULLROM"8   STBIR_FILTER_MITCHELL"8(3t    
!   STBIR_COLORSPACE_LINEAR#8    STBIR_COLORSPACE_SRGB#8   STBIR_MAX_COLORSPACES#8(3    3    3?       STBIR_TYPE_UINT8&8    STBIR_TYPE_UINT16&8   STBIR_TYPE_UINT32&8   STBIR_TYPE_FLOAT&8   STBIR_MAX_TYPES&8(3    3    3    33    23    /3    3    )3    +3V       id   w,   h,   x,   y,   
was_packed(3    *3!   
RemObjects.Oxygene.System.Int643+       x,   y,
   next0(3?       width   height   align   	init_mode   	heuristic   	num_nodes   active_head0   	free_head0   extra4(3    * 33    
   data   cursor
   size(3i       x0   y0   x1   y1
   xoff
   yoff   xadvance(3    63l       x0   y0   s0   t0   x1   y1   s1   t1(3    63    83?       x0   y0   x1   y1
   xoff
   yoff   xadvance   xoff2   yoff2(3    D3    E3    <3    ;3?       	font_size&    first_unicode_codepoint_in_range!   array_of_unicode_codepoints   	num_chars   chardata_for_range?   h_oversample   v_oversample(3    @3    ;3    =3?       user_allocator_context
   	pack_info
   width   height   stride_in_bytes   padding   h_oversample   v_oversample   pixels   nodes
(3C      userdata

   data   	fontstart   	numGlyphs
   loca
   head
   glyf
   hhea
   hmtx
   kern   	index_map   indexToLocFormat	   cff5   charstrings5   gsubrs5   subrs5   	fontdicts5   fdselect5(3    =3s       xH   yH   cxH   cyH	   cx1H	   cy1H
   type   padding(3!   
RemObjects.Oxygene.System.Int163    J3    G3>       w   h   stride   pixels(3    K:i686-pc-windows-msvcC   STBI_NO_STDIO_HEADER
1C   STBI_INCLUDE_STB_IMAGE_H
 C   STBI_VERSION
1C   STBIDEF
externC$    STBIR_INCLUDE_STB_IMAGE_RESIZE_H
 C   STBIRDEF
externC   STBIR_ALPHA_CHANNEL_NONE
-1C*   STBIR_FLAG_ALPHA_PREMULTIPLIED
(1 << 0)C,    STBIR_FLAG_ALPHA_USES_COLORSPACE
(1 << 1)C   INCLUDE_STB_IMAGE_WRITE_H
 C   STBIWDEF
externC   STB_INCLUDE_STB_RECT_PACK_H
 C   STB_RECT_PACK_VERSION
1C   	STBRP_DEF
externC"   __STB_INCLUDE_STB_TRUETYPE_H__
 C   	STBTT_DEF
externC   STBTT_POINT_SIZE
(-(x))xCa   stbtt_vertex_type
Lshort // can't use stbtt_int16 because that's not visible in the header fileC   STBTT_MACSTYLE_DONTCARE
0C   STBTT_MACSTYLE_BOLD
1C   STBTT_MACSTYLE_ITALIC
2C   STBTT_MACSTYLE_UNDERSCORE
4CU   STBTT_MACSTYLE_NONE
>8   // <= not same as 0, this makes us check the bitfield is 0K"    STB.stbi_write_func ?????????Rstb_image.hRstb_image_resize.hRstb_image_write.hRstb_rect_pack.hRstb_truetype.hx x x x x x x x x x x x x x x x x x x x x x x x x x x x ?    ?      ?      ?      ?      ?      ?   
   ?      ?      ?   	  ?     ?     ?     ?     ?     ?     ?     ?     ?     ?     ?      ?      ?      ?       ?   !   ?      ?   ?????      M  Z3.18bWindowshpy      