class initialization
initialize
	"
	self initialize
	"
	Smalltalk addToShutDownList: self.
	self resetTranslators