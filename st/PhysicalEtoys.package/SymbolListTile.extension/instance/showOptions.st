*PhysicalEtoys
showOptions
	"Overriden to permit Physical Etoys update the serial ports list"
	dataType notNil ifTrue: [self updateChoices].
	super showOptions