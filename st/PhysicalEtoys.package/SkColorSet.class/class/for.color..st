accessing
for: anObject color: color 
	"Resist color for the morph"
	| property |
	property _ self new.
	property basic: color.
	map
		ifNil: [map _ WeakKeyDictionary new].
	map at: anObject put: property