copying
siblingWithInner: deepCopier 
	map _ map veryDeepCopyWith: deepCopier.
	size _ size veryDeepCopyWith: deepCopier.
	direction _ direction veryDeepCopyWith: deepCopier.
	^ self