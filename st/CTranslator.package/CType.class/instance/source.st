accessing
source
	self flag: #Richo. "Fix this!"
	^ self name,
	(value isMeta 
		ifTrue: ['_meta*']
		ifFalse: [value isPrimitive 
					ifTrue: ['']
					ifFalse: ['*']])