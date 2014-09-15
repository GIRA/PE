definition
sourceCode
	^ self selectors asSortedCollection
		inject: self definition
		into: [:sub :next |
			sub , String cr, String cr,
			(self sourceCodeAt: next)]