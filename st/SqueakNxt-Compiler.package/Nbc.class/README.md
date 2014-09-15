A Nbc is a very simple API for accessing the Next Byte Codes Compiler. This class requires the actual nbc program installed in the default directory. You can download it from here "http://http://bricxcc.sourceforge.net/nbc/". FYI, I'm using the version 1.2.1.r3 (2010-06-29).

Examples: 
1) The simplest example would be compiling into a file called "output" and reporting errors to a file called "errors":

	Nbc forThisPlatform
		fileName: 'example_program.nbc';
		outFile: 'output';
		errorsFile: 'errors';
		execute.
		
2) To download a program into the Lego Nxt using the usb:

	Nbc forThisPlatform
		fileName: 'example_program.nbc';
		portName: 'usb';
		downloadProgram;
		execute.
		
3) To use the bluetooth on COM6 instead:
	
	Nbc forThisPlatform
		fileName: 'example_program.nbc';
		useBluetooth;
		portName: 'COM6';
		downloadProgram;
		execute.

Instance Variables
	parameters:		<WriteStream>

parameters
	- Used to build the parameters string to be sent to the nbc program. See "nbc -help" for more information.
