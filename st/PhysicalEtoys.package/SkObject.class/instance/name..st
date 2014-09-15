structure
name: aString 
	self parent
		ifNil: [self parent: SkProject current].
	self parent uniqueNameAt: aString put: self rule