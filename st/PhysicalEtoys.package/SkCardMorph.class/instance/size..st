accessing
size: aNumber 
	(aNumber > 0
			and: [model isInstance not])
		ifTrue: [self
				model: model new].
	self
		keepCellOriginDo: [model size
				ifNil: ["Maybe it doesn't need"
					nil.
					size _ aNumber]
				ifNotNil: [model size: aNumber]]