accessing
editContents: aText 
	"Accept text"
	self selection ifNil: [^self].
	model
		ifNotNil: [model textAt: self selection origin put: aText].
	selectionMorph deleteEditor