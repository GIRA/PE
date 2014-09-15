accessing
allPrimitiveRulesSelectors
	"Returns all messages in the CProgram hierarchy that the program
	is able to send"
	| current result |
	result := Set new.
	"Collect all selectors in the common superclass protocol..."
	current := self commonSuperclass.
	[result addAll: current selectors]
		doWhileTrue: [(current := current superclass) ~= CObject superclass].
	"... and in all the primitive types' protocol as well"
	CPrimitiveType withAllSubclassesDo: [:class |
		result addAll: class selectors].
	^ result