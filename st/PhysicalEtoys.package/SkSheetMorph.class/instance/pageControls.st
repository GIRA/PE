accessing
pageControls
	^ self submorphs detect: [:each | each ~~ sheet]