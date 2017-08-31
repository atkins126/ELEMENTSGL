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

uses
    rtl,
{$IF ISLAND}
  RemObjects.Elements.System;
 {$ENDIF}

type
    BYTEBOOL = public Boolean;
 {$IF ISLAND}
 Pointer = public ^Void;
 PPointer = public ^Pointer;
{$ENDIF}

 PAnsiChar= public ^Ansichar;

 Pcardinal = public ^Cardinal;
 PInteger = public ^Integer;
 {$IF ISLAND}
  {$IF WINDOWS}
  Trect = public rtl.RECT;
  THandle = public HANDLE;
  GLHMODULE = public HMODULE;
  const
      GLNULLMODULE : GLHMODULE = NIL;
const
   PlatformConvention = CallingConvention.Stdcall;
{$ELSE IF LINUX}
 DWORD = UInt32;
 Trect = public record end;
 FARPROC = public Pointer;
 THandle = public Pointer;
  GLHMODULE = public Pointer;

  //PDisplay = public Pointer;
  const
      GLNULLMODULE : GLHMODULE = NIL;

const
    PlatformConvention = CallingConvention.CDecl;
 {$ENDIF}
{$ENDIF}




end.