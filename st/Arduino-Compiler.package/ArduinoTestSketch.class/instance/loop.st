as yet unclassified
loop
"(self analogRead: 1) > 500
	ifTrue: [self digitalWrite: 12 value: 1]
	ifFalse: [self digitalWrite: 12 value: 0]."
	self analogWrite: 9 value: (self analogRead: 1).
	self turnOnLed: 1