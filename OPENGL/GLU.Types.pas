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

 type

  // GL utility methods
{$REGION 'GLU Types'}
 [CallingConvention(PlatformConvention)]
  TgluErrorString = public method(errCode: GLEnum): PAnsiChar;
 [CallingConvention(PlatformConvention)]
  TgluGetString = public method(name: GLEnum): PAnsiChar;
 [CallingConvention(PlatformConvention)]
  TgluOrtho2D = public method(left, right, bottom, top: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluPerspective = public method(fovy, aspect, zNear, zFar: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluPickMatrix = public method(x, y, width, height: GLdouble; const viewport: TVector4i);
 [CallingConvention(PlatformConvention)]
  TgluLookAt = public method(eyex, eyey, eyez, centerx, centery, centerz, upx, upy, upz: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluProject = public method(objx, objy, objz: GLdouble; const modelMatrix: TGLMatrixd4; const projMatrix: TGLMatrixd4; const viewport: TVector4i; winx, winy, winz: PGLdouble): GLint;
 [CallingConvention(PlatformConvention)]
  TgluUnProject = public method(winx, winy, winz: GLdouble; const modelMatrix: TGLMatrixd4; const projMatrix: TGLMatrixd4; const viewport: TVector4i; objx, objy, objz: PGLdouble): GLint;
 [CallingConvention(PlatformConvention)]
  TgluScaleImage = public method(format: GLEnum; widthin, heightin: GLint; typein: GLEnum; datain: Pointer; widthout, heightout: GLint; typeout: GLEnum; const dataout: Pointer): GLint;
 [CallingConvention(PlatformConvention)]
  TgluBuild1DMipmaps = public method(target: GLEnum; components, width: GLint; format, atype: GLEnum; const data: Pointer): GLint;
 [CallingConvention(PlatformConvention)]
  TgluBuild2DMipmaps = public method(target: GLEnum; components, width, height: GLint; format, atype: GLEnum; const Data: Pointer): GLint;
 [CallingConvention(PlatformConvention)]
  TgluNewQuadric = public method: PGLUquadric;
 [CallingConvention(PlatformConvention)]
  TgluDeleteQuadric = public method(state: PGLUquadric);
 [CallingConvention(PlatformConvention)]
  TgluQuadricNormals = public method(quadObject: PGLUquadric; normals: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluQuadricTexture = public method(quadObject: PGLUquadric; textureCoords: GLboolean);
 [CallingConvention(PlatformConvention)]
  TgluQuadricOrientation = public method(quadObject: PGLUquadric; orientation: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluQuadricDrawStyle = public method(quadObject: PGLUquadric; drawStyle: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluCylinder = public method(quadObject: PGLUquadric; baseRadius, topRadius, height: GLdouble; slices, stacks: GLint);
 [CallingConvention(PlatformConvention)]
  TgluDisk = public method(quadObject: PGLUquadric; innerRadius, outerRadius: GLdouble; slices, loops: GLint);
 [CallingConvention(PlatformConvention)]
  TgluPartialDisk = public method(quadObject: PGLUquadric; innerRadius, outerRadius: GLdouble; slices, loops: GLint; startAngle, sweepAngle: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluSphere = public method(quadObject: PGLUquadric; radius: GLdouble; slices, stacks: GLint);
 [CallingConvention(PlatformConvention)]
  TgluQuadricCallback = public method(quadObject: PGLUquadric; which: GLEnum; fn: TGLUQuadricErrorProc);
 [CallingConvention(PlatformConvention)]
  TgluNewTess = public method: PGLUtesselator;
 [CallingConvention(PlatformConvention)]
  TgluDeleteTess = public method(tess: PGLUtesselator);
 [CallingConvention(PlatformConvention)]
  TgluTessBeginPolygon = public method(tess: PGLUtesselator; polygon_data: Pointer);
 [CallingConvention(PlatformConvention)]
  TgluTessBeginContour = public method(tess: PGLUtesselator);
 [CallingConvention(PlatformConvention)]
  TgluTessVertex = public method(tess: PGLUtesselator; const coords: TGLArrayd3; data: Pointer);
 [CallingConvention(PlatformConvention)]
  TgluTessEndContour = public method(tess: PGLUtesselator);
 [CallingConvention(PlatformConvention)]
  TgluTessEndPolygon = public method(tess: PGLUtesselator);
 [CallingConvention(PlatformConvention)]
  TgluTessProperty = public method(tess: PGLUtesselator; which: GLEnum; value: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluTessNormal = public method(tess: PGLUtesselator; x, y, z: GLdouble);
 [CallingConvention(PlatformConvention)]
  TgluTessCallback = public method(tess: PGLUtesselator; which: GLEnum; fn: Pointer);
 [CallingConvention(PlatformConvention)]
  TgluGetTessProperty = public method(tess: PGLUtesselator; which: GLEnum; value: PGLdouble);
 [CallingConvention(PlatformConvention)]
  TgluNewNurbsRenderer = public method: PGLUnurbs;
 [CallingConvention(PlatformConvention)]
  TgluDeleteNurbsRenderer = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluBeginSurface = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluBeginCurve = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluEndCurve = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluEndSurface = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluBeginTrim = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluEndTrim = public method(nobj: PGLUnurbs);
 [CallingConvention(PlatformConvention)]
  TgluPwlCurve = public method(nobj: PGLUnurbs; count: GLint; points: PGLfloat; stride: GLint; atype: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluNurbsCurve = public method(nobj: PGLUnurbs; nknots: GLint; knot: PGLfloat; stride: GLint; ctlarray: PGLfloat; order: GLint; atype: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluNurbsSurface = public method(nobj: PGLUnurbs; sknot_count: GLint; sknot: PGLfloat; tknot_count: GLint; tknot: PGLfloat; s_stride, t_stride: GLint; ctlarray: PGLfloat; sorder, torder: GLint; atype: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluLoadSamplingMatrices = public method(nobj: PGLUnurbs; const modelMatrix, projMatrix: TGLMatrixf4; const viewport: TVector4i);
 [CallingConvention(PlatformConvention)]
  TgluNurbsProperty = public method(nobj: PGLUnurbs; aproperty: GLEnum; value: GLfloat);
 [CallingConvention(PlatformConvention)]
  TgluGetNurbsProperty = public method(nobj: PGLUnurbs; aproperty: GLEnum; value: PGLfloat);
 [CallingConvention(PlatformConvention)]
  TgluNurbsCallback = public method(nobj: PGLUnurbs; which: GLEnum; fn: TGLUNurbsErrorProc);
 [CallingConvention(PlatformConvention)]
  TgluBeginPolygon = public method(tess: PGLUtesselator);
 [CallingConvention(PlatformConvention)]
  TgluNextContour = public method(tess: PGLUtesselator; atype: GLEnum);
 [CallingConvention(PlatformConvention)]
  TgluEndPolygon = public method(tess: PGLUtesselator);

{$ENDREGION}

{$REGION 'GLU VARS'}
var
  // GL utility methods
  gluErrorString: TgluErrorString;
  gluGetString: TgluGetString;
  gluOrtho2D: TgluOrtho2D;
  gluPerspective: TgluPerspective;
  gluPickMatrix: TgluPickMatrix;
  gluLookAt: TgluLookAt;
  gluProject: TgluProject;
  gluUnProject: TgluUnProject;
  gluScaleImage: TgluScaleImage;
  gluBuild1DMipmaps: TgluBuild1DMipmaps;
  gluBuild2DMipmaps: TgluBuild2DMipmaps;
  gluNewQuadric: TgluNewQuadric;
  gluDeleteQuadric: TgluDeleteQuadric;
  gluQuadricNormals: TgluQuadricNormals;
  gluQuadricTexture: TgluQuadricTexture;
  gluQuadricOrientation: TgluQuadricOrientation;
  gluQuadricDrawStyle: TgluQuadricDrawStyle;
  gluCylinder: TgluCylinder;
  gluDisk: TgluDisk;
  gluPartialDisk: TgluPartialDisk;
  gluSphere: TgluSphere;
  gluQuadricCallback: TgluQuadricCallback;
  gluNewTess: TgluNewTess;
  gluDeleteTess: TgluDeleteTess;
  gluTessBeginPolygon: TgluTessBeginPolygon;
  gluTessBeginContour: TgluTessBeginContour;
  gluTessVertex: TgluTessVertex;
  gluTessEndContour: TgluTessEndContour;
  gluTessEndPolygon: TgluTessEndPolygon;
  gluTessProperty: TgluTessProperty;
  gluTessNormal: TgluTessNormal;
  gluTessCallback: TgluTessCallback;
  gluGetTessProperty: TgluGetTessProperty;
  gluNewNurbsRenderer: TgluNewNurbsRenderer;
  gluDeleteNurbsRenderer: TgluDeleteNurbsRenderer;
  gluBeginSurface: TgluBeginSurface;
  gluBeginCurve: TgluBeginCurve;
  gluEndCurve: TgluEndCurve;
  gluEndSurface: TgluEndSurface;
  gluBeginTrim: TgluBeginTrim;
  gluEndTrim: TgluEndTrim;
  gluPwlCurve: TgluPwlCurve;
  gluNurbsCurve: TgluNurbsCurve;
  gluNurbsSurface: TgluNurbsSurface;
  gluLoadSamplingMatrices: TgluLoadSamplingMatrices;
  gluNurbsProperty: TgluNurbsProperty;
  gluGetNurbsProperty: TgluGetNurbsProperty;
  gluNurbsCallback: TgluNurbsCallback;
  gluBeginPolygon: TgluBeginPolygon;
  gluNextContour: TgluNextContour;
  gluEndPolygon: TgluEndPolygon;

{$ENDREGION}

{$ENDIF}

end.