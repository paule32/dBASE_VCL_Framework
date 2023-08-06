// -----------------------------------------------------------------
// File   : init.prg
// Author : Jens Kallup - paule32
// License: MIT - Copyright (c) 2023 by kallup non-profit
//          only for education !
//
// @brief   This file provide initialization routines for X-Project.
// -----------------------------------------------------------------

? "loading..."
set procedure to XProject.prg additive

function main()

  Application = new XApplication()
  Application.Run()

return 0
