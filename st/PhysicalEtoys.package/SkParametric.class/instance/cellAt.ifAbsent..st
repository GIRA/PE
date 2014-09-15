accessing
cellAt: aPoint ifAbsent: aBlock 
	| holder |
	holder _ ValueHolder new.
	holder
		contents: ((arg1 isSkObject
				ifTrue: [arg1 at: aPoint]
				ifFalse: [arg1])
				perform: func
				with: (arg2 isSkObject
						ifTrue: [arg2 at: aPoint]
						ifFalse: [arg2])).
	^ holder