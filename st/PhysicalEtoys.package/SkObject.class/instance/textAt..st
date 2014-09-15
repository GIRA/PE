accessing
textAt: aPoint 
	"I am send when a user want to edit the value by text editor"
	| cell contents |
	aPoint = (0 @ 0)
		ifTrue: [^ self ruleName asString].
	cell _ self cellAt: aPoint.
	^ cell formula
		ifNil: [contents _ (self cellAt: aPoint) contents.
			contents isText
				ifTrue: [contents]
				ifFalse: [contents asCellText asText]]
		ifNotNil: [cell formula]