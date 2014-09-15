value
value
	^ mode isOutput
		ifTrue: [ value ]
		ifFalse: [ value := self protocol digitalRead: number ]