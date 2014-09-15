updating
resolveFormulaOn: sheet at: aPoint 
	"I execute rule's formula.
	And chlid's card is build in this message as soon.
	So recursive call is not supported (Need more lasy solution).
"
	argCell resolveFormulaOn: sheet rule at: aPoint 
