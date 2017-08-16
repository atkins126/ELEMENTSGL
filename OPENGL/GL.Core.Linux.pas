namespace OpenGl;

{$GLOBALS ON}
interface
{$IF ISLAND AND LINUX}
uses rtl,
 atk,
  gobject,
  gio,
  gtk;

  // window support functions
{$REGION 'GLX Types'}

type
  TglXChooseVisual = function(dpy: PDisplay; screen: GLint; attribList: PGLint): PXVisualInfo; 
  TglXCopyContext = procedure(dpy: PDisplay; src: GLXContext; dst: GLXContext; mask: GLuint); 
  TglXCreateContext = function(dpy: PDisplay; vis: PXVisualInfo; shareList: GLXContext; direct: GLboolean): GLXContext; 
  TglXCreateGLXPixmap = function(dpy: PDisplay; vis: PXVisualInfo; pixmap: Pixmap): GLXPixmap ;
  TglXDestroyContext = procedure(dpy: PDisplay; ctx: GLXContext); 
  TglXDestroyGLXPixmap = procedure(dpy : PDisplay; pix: GLXPixmap);
  TglXGetConfig = function(dpy : PDisplay; vis: PXVisualInfo; attrib: GLint; value: PGLint): GLint; ;
  TglXGetCurrentContext = function: GLXContext ;
  TglXGetCurrentDrawable = function: GLXDrawable ;
  TglXIsDirect = function(dpy: PDisplay; ctx: GLXContext): glboolean; ;
  TglXMakeCurrent = function(dpy: PDisplay; drawable: GLXDrawable; ctx: GLXContext): GLboolean ;
  TglXQueryExtension = function(dpy: PDisplay; errorBase: PGLint; eventBase: PGLint): GLboolean; ;
  TglXQueryVersion = function(dpy: PDisplay; major: PGLint; minor: PGLint): GLboolean ;
  TglXSwapBuffers = procedure(dpy: PDisplay; drawable: GLXDrawable); ;
  TglXUseXFont = procedure(font: Font; first: GLint; count: GLint; listBase: GLint); ;
  TglXWaitGL = procedure; ;
  TglXWaitX = procedure; ;

  TglXGetClientString = function(dpy: PDisplay; name: GLint): PGLchar; ;
  TglXQueryServerString = function(dpy: PDisplay; screen: GLint; name: GLint): PGLchar; ;
  TglXQueryExtensionsString = function(dpy: PDisplay; screen: GLint): PGLchar; ;

  // GLX_VERSION_1_3
  TglXGetFBConfigs = function(dpy: PDisplay; screen: GLint; nelements: PGLint): GLXFBConfig; ;
  TglXChooseFBConfig = function(dpy: PDisplay; screen: GLint; attrib_list: PGLint; nelements: PGLint): GLXFBConfig; 
  TglXGetFBConfigAttrib = function(dpy: PDisplay; config: GLXFBConfig; attribute: GLint; value: PGLint): glint; 
  TglXGetVisualFromFBConfig = function(dpy: PDisplay; config: GLXFBConfig) : PXVisualInfo;
  TglXCreateWindow = function(dpy: PDisplay; config: GLXFBConfig; win: Window; attrib_list: PGLint): GLXWindow; 
  TglXDestroyWindow = procedure(dpy: PDisplay; win: GLXWindow); 
  TglXCreatePixmap = function(dpy: PDisplay; config: GLXFBConfig; pixmap: Pixmap; attrib_list: PGLint): GLXPixmap; 

  TglXDestroyPixmap = procedure(dpy: PDisplay; pixmap: GLXPixmap); 
  TglXCreatePbuffer = function(dpy: PDisplay; config: GLXFBConfig; attrib_list: PGLint): GLXPbuffer; 
  TglXDestroyPbuffer = procedure(dpy: PDisplay; pbuf: GLXPbuffer); 
  TglXQueryDrawable = procedure(dpy: PDisplay; draw: GLXDrawable; attribute: GLint; value: PGLuint);
  TglXCreateNewContext = function(dpy: PDisplay; config: GLXFBConfig; render_type: GLint; share_list: GLXContext; direct: GLboolean): GLXContext;
  TglXMakeContextCurrent = function(display: PDisplay; draw: GLXDrawable; read_: GLXDrawable; ctx: GLXContext): GLboolean; 
  TglXGetCurrentReadDrawable = function: GLXDrawable; 
  TglXGetCurreentDisplay = function: PDisplay;

  TglXQueryContext = function(dpy: PDisplay; ctx: GLXContext; attribute: GLint; value: PGLint): GLint; 
  TglXSelectEvent = procedure(dpy: PDisplay; draw: GLXDrawable; event_mask: GLuint); 
  TglXGetSelectedEvent = procedure(dpy: PDisplay; draw: GLXDrawable; event_mask: PGLuint); 

  // GLX_VERSION_1_4
  TglXGetProcAddress = function(const name: PAnsiChar): pointer; 

  // GLX_ARB_get_proc_address
  TglXGetProcAddressARB = function(const name: PAnsiChar): pointer; 

  // GLX_ARB_create_context
  TglXCreateContextAttribsARB = function(dpy: PDisplay; config: GLXFBConfig; share_context: GLXContext; direct: GLboolean; const attrib_list: PGLint): GLXContext; 

  // GLX_EXT_import_context
  TglXGetCurrentDisplayEXT = function: PDisplay; 
  TglXQueryContextInfoEXT = function(dpy: PDisplay; context: GLXContext; attribute: GLint; value: PGLint): GLint; 
  TglXGetContextIDEXT = function(const context: GLXContext): GLXContextID; 
  TglXImportContextEXT = function(dpy: PDisplay; contextID: GLXContextID): GLXContext; 
  TglXFreeContextEXT = procedure(dpy: PDisplay; context: GLXContext); 

  // GLX_EXT_texture_from_pixmap
  TglXBindTexImageEXT = procedure(dpy: PDisplay; drawable: GLXDrawable; buffer: GLint; const attrib_list: PGLint); 
  TglXReleaseTexImageEXT = procedure(dpy: PDisplay; drawable: GLXDrawable; buffer: GLint); 

  TglXSwapIntervalEXT = procedure (dpy : PDisplay; drawable : GLXDrawable; interval : GLint); 

{$ENDREGION}



{$ENDIF}

implementation

end.
