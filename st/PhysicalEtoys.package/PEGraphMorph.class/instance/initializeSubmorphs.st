initialize-release
initializeSubmorphs
	"Initializes all the submorphs but the graph"
	self addMorphBack: (self inARow: {
			'Source: ' translated asMorph emphasis: 1.
			source asMorph
			});
		addMorphBack: basicGraph;
		addMorphBack: (self inARow: {
			(self button: 'Start' translated color: Color green)
				target: basicGraph; actionSelector: #startGraphing.
			(self button: 'Stop' translated color: Color red)
				target: basicGraph; actionSelector: #stopGraphing.
			(self button: 'Set scale...' translated color: Color blue muchLighter)
				target: basicGraph; actionSelector: #changeScale.
			(slider := self newSliderFrom: 0 to: 1) 
				setScaledValue: 1; 
				hResizing: #spaceFill; 
				actionSelector: #scrollTo:; 
				target: basicGraph
			})