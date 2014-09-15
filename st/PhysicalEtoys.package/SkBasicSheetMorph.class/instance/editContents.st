accessing
editContents
self selection ifNil: [^''].
	^ model
		ifNil: ['']
		ifNotNil: [model textAt: self selection origin]