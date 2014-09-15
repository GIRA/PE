copying
siblingWith: deepCopier 
	| new |
	new _ self clone.
	new siblingWithInner: deepCopier.
	^ new