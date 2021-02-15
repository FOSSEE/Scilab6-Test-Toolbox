Documentation by : B C Sagar,as a part of Phase one FOSSEE SEMESTER long Internship Screening task by IIT Bombay for Scilab toolkit optimization.

This repository is a test toolbox for Scilab. It requires "thirdparty" directory which can be downloaded as "external-library.zip" file from the page: 
https://scilab.in/fossee-scilab-toolbox. The "thirdparty" directory contains compiled library for a simple "Transpose" function written in C. After copying the 
"thirdparty" directory to the toolbox directory, on the scilab console run "exec builder.sce" to build the toolbox and then run "exec loader.sce" to load the 
toolbox.  Type "help" in the scilab console and browse through the help content of "test_toolbox". The external-library.zip file also contains separate instructions to work with Mint Linux.


This toolbox overall demonstrates:

1.  a stand alone C function that computes transpose of a nxm matrix. Name the file as “trans.c”

2.  a main file to call the C function.

3.  a folder named “test” inside the repository. Copied my working “trans.c” file and “main.c” file inside this folder.

4.  a shell script with a series of commands to compile and execute the “trans.c” and “main.c” file. I have copied the working shell script file inside the “test” folder.
