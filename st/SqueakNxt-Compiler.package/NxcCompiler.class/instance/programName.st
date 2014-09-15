accessing
programName
	"If programName is not specified, the default name will be this instance's hash"
	^ programName ifNil: [self hash asString]