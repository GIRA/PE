configuring
configureDigital: aPin
	(self rowPins includes: aPin) ifTrue: [aPin setOutput].
	(self columnPins includes: aPin) ifTrue: [aPin setInput]