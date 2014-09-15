coping
veryDeepInner: deepCopier 
	"block is not copied"
	model _ model veryDeepCopyWith: deepCopier.
	getter _ getter veryDeepCopyWith: deepCopier.
	setter _ setter veryDeepCopyWith: deepCopier.
	oldValue _ oldValue veryDeepCopyWith: deepCopier.
