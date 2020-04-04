// Copyright (C) 2019 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Rupak Rokade
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in


function [y] = add(inp1,inp2)
    //   Calls an addition function defined in Scilab with given inputs and returns the expected result
    //
    //   Syntax
    //   y = add(in1,in2)
    //   
    //   Parameters
    //   y : ouput 
    //   in1 and in2 : Numbers to multiply
    //   
    //   Description
    //   This function accepts accepts two numbers and adds them
    //
    //
    // Examples 
    // // Adding two numbers
	// y = add(33,45)
	//
// Authors
// Rupak Rokade
	y = inp1+inp2;
endfunction
