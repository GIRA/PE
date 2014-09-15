visiting
acceptLiteralNode: aLiteralNode
	aLiteralNode value isFloat
		ifTrue: [^ CFloat].
	aLiteralNode value isNumber
		ifTrue: [^CLong].
	(#(true false) includes: aLiteralNode value)
		ifTrue: [^ CBoolean].
	aLiteralNode value isString
		ifTrue: [^ CString].
	self halt