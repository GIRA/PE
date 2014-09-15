drawing
ledHeadForm
	"We keep an instance variable with the form in order to be able
	to change its color"
	^ ledHeadForm ifNil: [self class ledHeadForm]