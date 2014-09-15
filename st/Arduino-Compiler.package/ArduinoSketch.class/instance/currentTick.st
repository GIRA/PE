functions-time
currentTick
	<returnType: #(CUnsignedLong)>
	<c: 'millis()'>
	"
	Richo (30/03/2012): In order to simplify the player translators I'll
	use the same message used by Nxc
	"
	"Returns the number of milliseconds since the Arduino board began
	running the current program. This number will overflow (go back to
	zero), after approximately 50 days.
	
	Tip:
	
	Note that the parameter for millis is an unsigned long, errors may be
	generated if a programmer tries to do math with other datatypes
	such as ints.
	"
	^ self