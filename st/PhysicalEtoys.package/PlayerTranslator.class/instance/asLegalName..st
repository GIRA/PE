converting
asLegalName: aString
	"All variables, method names and task names must begin with a prefix representing the receiver."
	^ currentMorph assuredPlayer uniqueNameForReference asLegalSelector, 
		aString capitalized