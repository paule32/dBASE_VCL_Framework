// -----------------------------------------------------------------
// File   : init.prg
// Author : Jens Kallup - paule32
// License: MIT - Copyright (c) 2023 by kallup non-profit
//          only for education !
//
// @brief   This file init, and load the XProject ...
// -----------------------------------------------------------------
clear memory
clear all
clear
// -----------------------------------------------------------------
// change the bellow line for your own app needs ...
// -----------------------------------------------------------------
set procedure to mainApplication.prg additive

try
  ? "XProject 1.0.0 (c) 2023 by Jens Kallup - paule32"
  ? "all rihjts reserved."
  ? "MIT-License"
  ? ""
  ? "initialize..."

  // ---------------------------------------------------------------
  // load component libraries ...
  // ---------------------------------------------------------------
  load dll dBASElibrary.dll

  // ---------------------------------------------------------------
  // import signatures for outsourced DLL function member's ...
  // ---------------------------------------------------------------
  extern pascal CHANDLE XProject_CreateWindow_AHandle_AName(CHANDLE,CSTR) dBASElibrary
  extern pascal CHANDLE XProject_CreateWindow_AHandle(CHANDLE) dBASElibrary
  //
  extern pascal cINT XProject_ShowModal_AHandle(CINT) dBASElibrary

  ? "setup procedure..."

  // ---------------------------------------------------------------
  // eet-up framework files ...
  // ---------------------------------------------------------------
  set procedure to XObject.prg      additive
  set procedure to XApplication.prg additive
  
  main()

catch( Exception e )
  ? "exception..."
  msgbox( e.message, "Process failed", 16 )
  
  clear memory
  clear all
finally
  ? "clean-uo memory..."
  
  clear memory
  clear all
  
  ? "done."
endtry
