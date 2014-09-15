class initialization
initialize
	"
	self initialize.
	"
	ExternalDropHandler
		registerHandler: (ExternalDropHandler
			type: nil
			extension: self peProjectExtension
			action: [:stream | PEProject openProjectStream: stream])
	