as yet unclassified
isOnBlack
	<returnType: #(CBoolean)>
	^ (self sensorValue: 0) < (black + 10)