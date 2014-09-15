A NxtPlayerTranslator is responsible for transforming a bunch of Etoys scripts (which may be compiled in a set of different Player subclasses) into a subclass of NxtProgram which can be translated to nxc.

This usually requires:
* compiling all methods and variables into one single class (it adds a prefix representing the receiver to avoid name clashes).
* renaming the message selectors to match the ones supported by nxc.
* changing all receivers to self.

Apart from that, it also takes care of representing etoys multithreading using nxc tasks and flag variables to decide when the task should stop.

See #translateMainScript:of: as a starting point on how to use this class.

Instance Variables
	brick:		<LegoNxtMorph>
	motors:		<Array>
	sensors:		<Array>
	getterSelectors:		<Dictionary>
	setterSelectors:		<Dictionary>
	scriptSelectors:		<Dictionary>
	variables:		<Dictionary>
	methods:		<Set>
	currentMorph:		<Morph>
	programName:		<Symbol>


brick
	- An instance of LegoNxtMorph which contains the scripts we are going to translate.

motors
	- An array containing each motor connected to the nxt brick. Empty slots means nothing is connected to that port.

sensors
	- An array containing each sensor connected to the nxt brick. Empty slots means nothing is connected to that port.

getterSelectors
	- A dictionary containing all the slot getters. Each key is one of the morphs composing the robot, so we can know which slot corresponds to which morph.

setterSelectors
	- A dictionary containing all the slot setters. Each key is one of the morphs composing the robot, so we can know which slot corresponds to which morph.

scriptSelectors
	- A dictionary containing all the script selectors. Each key is one of the morphs composing the robot, so we can know which script corresponds to which morph.

variables
	- A dictionary containing all the instance variables (task flags included). Each key is one of the morphs composing the robot, so we can know which slot corresponds to which morph. Also, this dictionary stores the variable's type apart from its name.
	
methods
	- A set of strings containing the methods' source code to be compiled.

currentMorph
	- A pointer to one of the morphs composing the robot. Since all methods *must* be sent to one of these morphs (external references are not allowed), it defines which morph is currently represented by the 'self' variable. Very useful, but you shouldn't modify it directly. Instead use #withCurrentMorph:do:.

programName
	- The name of the temporary class we are using to compile the code.