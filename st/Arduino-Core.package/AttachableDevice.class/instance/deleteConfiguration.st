configuring
deleteConfiguration
	"This method simply resets the pin's configuration to its default state"
	pins do: [:each | each deleteConfiguration: self]