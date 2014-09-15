program structure
main
	self c:	'
	//##RG.Labs.20110318 begin
	// This must be included, otherwise the optimizer make strange things.
	Serial.begin(9600);
	//##RG.Labs.20110318 end'.
	self init;
		setup.
	[self loop] repeat