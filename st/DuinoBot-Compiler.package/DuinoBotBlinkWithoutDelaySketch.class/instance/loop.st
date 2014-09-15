as yet unclassified
loop
	self millis - previousMillis > interval
	ifTrue: [
		previousMillis := self millis.
		ledState = LOW
		ifTrue: [
			ledState := HIGH
			]
		ifFalse: [
			ledState := LOW
			]
		].
	
	self digitalWrite: ledPin value: ledState