accessing
text: aString
	self controlAttaching; reconfigureIfNecessary.
	text := aString.
	protocol lcdPrintString: text