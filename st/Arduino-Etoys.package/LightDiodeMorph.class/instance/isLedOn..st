value
isLedOn: aBoolean
	[device value: (aBoolean ifTrue: [255] ifFalse: [0])] 
		on: Error
		do: ["Do nothing"]