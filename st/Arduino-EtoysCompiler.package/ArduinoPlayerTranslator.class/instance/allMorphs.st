accessing
allMorphs
	"Returns a collection with all the morphs composing the robot (it could contain nils)"
	^ super allMorphs,
		{mainMorph}, 
		digitalPins values flattened, 
		analogPins values flattened