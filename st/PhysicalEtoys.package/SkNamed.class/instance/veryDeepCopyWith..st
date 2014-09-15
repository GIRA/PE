copying
veryDeepCopyWith: deepCopier 
	| new |
	new _ super veryDeepCopyWith: deepCopier.
	new parent: SkProject current uniqueName: self ruleName.
	^ new