class initialization
initialize
	"self initialize"
	super initialize.
	SkColorSet initialize.
	NullCell _ SkNullCell new.
	Root _ self initializeRoot.
	self initializeLibrary.
