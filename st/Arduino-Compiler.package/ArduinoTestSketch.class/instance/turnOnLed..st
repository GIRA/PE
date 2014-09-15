as yet unclassified
turnOnLed: aNumber
	<argTypes: #(CLong)>
	self digitalWrite: led value: servo.
	servo = 1 ifTrue: [servo := 0] ifFalse: [servo := 1].
	self delay: aNumber