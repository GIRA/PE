functions-time
millis
	<returnType: #(CUnsignedLong)>
	<c: 'millis()'>
	"Returns the number of milliseconds since the Arduino board began
	running the current program. This number will overflow (go back to
	zero), after approximately 50 days.
	
	Tip:
	
	Note that the parameter for millis is an unsigned long, errors may be
	generated if a programmer tries to do math with other datatypes
	such as ints.
	"
	^ self