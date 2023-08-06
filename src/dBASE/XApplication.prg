// -----------------------------------------------------------------
// File   : XApplication.prg
// Author : Jens Kallup - paule32
// License: MIT - Copyright (c) 2023 by kallup non-profit
//          only for education !
//
// @brief   This file provides Application routines for X-Project.
// -----------------------------------------------------------------

// -----------------------------------------------------------------
// first, make room for new variables in memory location ...
// -----------------------------------------------------------------
clear memory        // clear prior used memory
clear               // clear rest
// -----------------------------------------------------------------
// public scoped standard variable's, and constant's:
// -----------------------------------------------------------------
public Application  // the application object

// -----------------------------------------------------------------
// load used library progra's ...
// -----------------------------------------------------------------
set procedure to XObject.prg additive

class XCustomApplication of XObject
  ClassName = "XCustomApplication"
endclass

// -----------------------------------------------------------------
// @brief  XApplication class for new application instances.
// -----------------------------------------------------------------
class XApplication of XCustomApplication
  ClassName = "XApplication"
  function Run
  private res
    res = XProject_CreateWindow_AHandle(0)
    XProject_ShowModal_AHandle(res)
  return true
endclass
