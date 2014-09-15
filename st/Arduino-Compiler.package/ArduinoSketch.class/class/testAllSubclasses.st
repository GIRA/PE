testing
testAllSubclasses
	"
	self testAllSubclasses
	"
	World findATranscript: nil. "Opens transcript"
	Transcript cr.
	self allSubclassesDo: [:each |
		Transcript show: each -> each translatedToArduinoC verify; cr]