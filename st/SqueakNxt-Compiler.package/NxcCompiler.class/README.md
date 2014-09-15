A NxcCompiler is responsible for verifying/compiling programs as well as downloading them to the LegoNxt.

===============================
	"Code example"
	
	| program |
	
	"A simple nxc program"
	program := '
	#define MOVE_TIME   1000
	#define TURN_TIME    500

	task main()
	{
		repeat(4)
		{    
			OnFwd(OUT_AC, 75);
			Wait(MOVE_TIME);
			OnRev(OUT_C, 75);
		Wait(TURN_TIME);
		}  
		Off(OUT_AC);
	}'.
	
	"The code below will verify the program and return a collection of errors (if any)"
	NxcCompiler new
		source: program;
		verify.
	
	"The code below will download the program to the nxt using the usb cable. the resulting program will be called 'SimpleProgram'"
	NxcCompiler new
		programName: 'SimpleProgram';
		source: program;
		downloadUsingUsb.
===============================

Instance Variables
	programName:		<String>
	source:		<String>

programName
	- A name for the program. If not specified the program name will be the NxcCompiler instance's hash (not a nice name for a program, I must say).

source
	- The nxc source code of the program.
