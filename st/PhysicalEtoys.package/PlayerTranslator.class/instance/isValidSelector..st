testing
isValidSelector: selector 
	"Checks if the selector is one of the following:
	* A primitive.
	* A player translator rule
	* An etoys message.
	* A slot accessor.
	* A script selector."
	^ (self allPrimitiveRulesSelectors asSet, 
		self rules keys, 
		self etoysMessages keys,
		self allGetterSelectors,
		self allSetterSelectors, 
		self allScriptSelectors)
			includes: selector
