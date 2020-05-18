// Copyright (C) 2015 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Rupak Rokade
// Organization: FOSSEE, IIT Bombay

mode(-1)
lines(0)

toolbox_title = "test_toolbox";

Build_64Bits = %t;

path_builder = get_absolute_file_path('builder_gateway_cpp.sce');

Function_Names = [
        
        "multiply","sci_multiply", "csci6";
    ];

//Name of all the files to be compiled
Files = [
				"sci_multiply.cpp"
				]



[a, opt] = getversion();
Version = opt(2);

//Build_64Bits = %f;

if getos()=="Windows" then
    third_dir = path_builder+filesep()+'..'+filesep()+'..'+filesep()+'thirdparty';
    lib_base_dir = third_dir + filesep() + 'windows' + filesep() + 'lib' + filesep() + Version + filesep();
    inc_base_dir = third_dir + filesep() + 'windows' + filesep() + 'include';
    C_Flags=['-D__USE_DEPRECATED_STACK_FUNCTIONS__  -I -w '+path_builder+' '+ '-I '+inc_base_dir+' ']   
    Linker_Flag  = [lib_base_dir+"libraryname.lib "]

elseif getos()=="Darwin" then //Mac
	third_dir = path_builder+filesep()+'..'+filesep()+'..'+filesep()+'thirdparty';
    	lib_base_dir = third_dir + filesep() + 'Mac' + filesep() + 'lib' + filesep() + Version + filesep();
    	inc_base_dir = third_dir + filesep() + 'Mac' + filesep() + 'include' ;
    	C_Flags=["-D__USE_DEPRECATED_STACK_FUNCTIONS__ -w -fpermissive -I"+path_builder+" -I"+inc_base_dir+" -Wl,-rpath "+lib_base_dir+" "]
    	Linker_Flag = ["-L"+lib_base_dir+" -lmul -Wl,-rpath="+lib_base_dir]

else//LINUX

    third_dir = path_builder+filesep()+'..'+filesep()+'..'+filesep()+'thirdparty';
    lib_base_dir = third_dir + filesep() + 'linux' + filesep() + 'lib' + filesep() + Version + filesep();

    inc_base_dir = third_dir + filesep() + 'linux' + filesep() + 'include';

    C_Flags = ["-I"+inc_base_dir];

		Linker_Flag = ["-L" + lib_base_dir + " -lmul -Wl,-rpath="+lib_base_dir]

end

tbx_build_gateway(toolbox_title,Function_Names,Files,get_absolute_file_path("builder_gateway_cpp.sce"), [], Linker_Flag, C_Flags,[]);

clear toolbox_title Function_Names Files Linker_Flag C_Flags;
