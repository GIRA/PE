connection
reconfigurePins
	"Added the motorPins"
	digitalPins values , analogPins values, motorPins values
		do: [:each | each refresh]