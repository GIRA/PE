drawing
drawContents: anObject on: aCanvas at: aPoint 
	"To debug, try 
	self drawCell: World canvas at: 2@6  
	"
	| aRectangle string morph |
	(anObject isSkObject)
		ifTrue: [^ self].
	(anObject isKindOf: Player)
		ifTrue: [^ self
				drawPlayer: anObject
				on: aCanvas
				at: aPoint].
	anObject = ''
		ifTrue: [^ self].
	aRectangle _ self localCellToScreenRect: aPoint.
	string _ anObject isString
				ifTrue: [anObject]
				ifFalse: [anObject isNumber
						ifTrue: [anObject asString]].
	string
		ifNil: [morph _ anObject isText
						ifTrue: [TextMorph new contents: anObject]
						ifFalse: [(anObject isKindOf: Player)
								ifTrue: [anObject costume]
								ifFalse: [anObject asMorph]].
			aCanvas
				translateTo: aRectangle topLeft - morph bounds origin
				clippingTo: (aRectangle topLeft corner: self bottomRight)
				during: [:c | morph drawOn: c]]
		ifNotNil: [aCanvas
				drawString: string
				in: (aRectangle expandBy: -2)
				font: TextStyle defaultFont
				color: Color black]