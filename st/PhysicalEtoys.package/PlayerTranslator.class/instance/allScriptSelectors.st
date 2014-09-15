accessing
allScriptSelectors
	^ scriptSelectors inject: #() into: [:subTotal :next | subTotal, next asArray]
