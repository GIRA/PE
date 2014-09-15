accessing
veryDeepInner: deepCopier 
	"rule is not copied"
	model _ model siblingWith: deepCopier.
	origin _ origin veryDeepCopyWith: deepCopier.
	size _ size veryDeepCopyWith: deepCopier.
	super veryDeepInner: deepCopier