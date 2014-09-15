I'm responsible for talking to avr in order to compile and upload sketches to the Arduino board.
My protocol is very simple: use #uploadSketchNamed:onPort:arduinoType: to upload your sketch and #compileSketchNamed: to simply compile it. Both methods should return a string specifying the sketch' size or signal a CompilingSketchError with error detail if the compilation failed for some reason.

To accomplish this task I need a specific directory tree:

.\Arduino
.\Arduino\hardware
.\Arduino\hardware\cores
.\Arduino\hardware\cores\arduino 
	"Contains the arduino source code (needed for compilation)"
.\Arduino\hardware\libraries
	"Contains all the needed libraries in separate folders"
.\Arduino\hardware\tools\
.\Arduino\hardware\tools\avr\
	"Contains the avr installation"
.\Arduino\Sketches
	"Contains the source code we are going to compile and upload"

Apart from that, I need a batch file called "upload.bat" in the sketches directory (.\Arduino\Sketches). This file is the responsible for calling make with the correct parameters, I simply execute it and hope for the best. 
Also, each sketch must have its own folder with a proper Makefile. The sketch folder must have the same name as the sketch. For instance, if I have a sketch named "Blink.pde" I must put it in ".\Arduino\Sketches\Blink". Otherwise, it won't compile.

