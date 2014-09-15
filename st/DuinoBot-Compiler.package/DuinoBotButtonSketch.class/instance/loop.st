as yet unclassified
loop
buttonState := self digitalRead: buttonPin.
buttonState = HIGH
ifTrue: [
	self digitalWrite: ledPin value: HIGH
	]
ifFalse: [
	self digitalWrite: ledPin value: LOW
	]