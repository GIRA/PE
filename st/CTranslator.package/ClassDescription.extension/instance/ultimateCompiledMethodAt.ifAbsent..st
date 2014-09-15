*CTranslator
ultimateCompiledMethodAt: selector ifAbsent: aBlock
	"Return the compiled method at selector, deferring to superclass if necessary"
	^ self compiledMethodAt: selector ifAbsent:
		[superclass
			ifNil:
				[aBlock value]
			 ifNotNil:
				[superclass ultimateCompiledMethodAt: selector ifAbsent: aBlock]]