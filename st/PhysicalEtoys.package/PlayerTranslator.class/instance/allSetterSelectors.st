accessing
allSetterSelectors
	^ setterSelectors inject: #() into: [:subTotal :next | subTotal, next asArray]
