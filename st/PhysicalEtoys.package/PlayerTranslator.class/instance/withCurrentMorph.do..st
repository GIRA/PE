translating
withCurrentMorph: aMorph do: aBlock
	"It executes the block using the morph argument as our current morph.
	It also remembers the old morph, so it's safe to nest this expression.
	The current morph is used whenever we need a legal name for a 
	variable/method name. It defines which morph is currently represented
	by the 'self' variable"
	| old |
	old := currentMorph.
	currentMorph := aMorph.
	aBlock ensure: [currentMorph := old]