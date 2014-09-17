form
robotForm
	"
	robotForm := nil.
	"
	^ robotForm ifNil: [self initializeRobotForm]