accessing
allGetterSelectors
	^ getterSelectors inject: #() into: [:subTotal :next | subTotal, next]
