Documentation by : Gursharan Kaur, as part of FOSSEE semester long Internship Screening task by IIT Bombay for Scilab toolkit optimization.

This repository is a test toolbox for Scilab. It requires "thirdparty" directory which can be downloaded as "external-library.zip" file from the page: https://scilab.in/fossee-scilab-toolbox. The "thirdparty" directory contains compiled library for a simple "transpose" function written in C. After copying the "thirdparty" directory to the toolbox directory, on the scilab console run "exec builder.sce" to build the toolbox and then run "exec loader.sce" to load the toolbox.  Type "help" in the scilab console and browse through the help content of "test_toolbox". The external-library.zip file also contains separate instructions to work with MinGW on Windows OS.

This toolbox overall demonstrates:

1. A C function that computes transpose of a nxm matrix with file named as “trans.c”.

2. A main file to call the C function.

3. A shell script with a series of commands to compile and execute the “trans.c” and “main.c” file. 

4. Folder named “test” inside the repository containing “trans.c” file , “main.c”  and working shell script file inside it.

