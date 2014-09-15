value
value
	^ mode isOutput | isActive not
		ifTrue: [ value ]
		ifFalse: [ value := self protocol analogRead: number ]