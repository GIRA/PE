copying
veryDeepInner: deepCopier 
	"history is not copied"
	model _ model veryDeepCopyWith: deepCopier.
	selectionMorph _ (selectionMorph veryDeepCopyWith: deepCopier) holder: self.
	dropZone _ dropZone veryDeepCopyWith: deepCopier.
	showFormula _ showFormula veryDeepCopyWith: deepCopier.
	super veryDeepInner: deepCopier