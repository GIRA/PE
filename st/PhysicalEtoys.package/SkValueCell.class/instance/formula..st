accessing
formula: anObject 
	"Set formula if appropriate object.  
	Answer true if fomula"
	formula _ block _ nil.
	(anObject isString
			or: [anObject isText])
		ifFalse: [^ false].
	anObject first = $=
		ifFalse: [^ false].
	formula _ anObject asString.
	block _ (Compiler new parserClass: SkParser)
				evaluate: '[:holder :pos | ' , formula allButFirst , ']'
				in: nil
				to: nil
				notifying: nil
				ifFail: [Error signal].
	^ true