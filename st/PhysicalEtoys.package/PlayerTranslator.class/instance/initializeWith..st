initializing
initializeWith: anArduinoMorph
	"By default we set the main morph as the currentMorph"
	mainMorph := currentMorph := anArduinoMorph.
	self initialize