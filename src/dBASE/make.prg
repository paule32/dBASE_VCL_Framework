// -----------------------------------------------------------------
// File   : make.prg
// Author : Jens Kallup - paule32
// License: MIT - Copyright (c) 2023 by kallup non-profit
//          only for education !
//
// @brief   This file compiles X-Project, and create a dummy .exe
// -----------------------------------------------------------------
clear memory
clear

? "compile..."
compile XObject.prg
compile XApplication.prg
compile XForms.prg
compile XProject.prg

compile mainApplication.prg
  
? "build..."
build XProject.pro
