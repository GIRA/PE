definition
definition
	"Answer a String that defines the receiver."
	"Overwritten to show the #instanceVariablesTypes: message in the class definition of CObject subclasses"
	self = CObject ifTrue: [^super definition].
	^ String streamContents: [:stream |
		stream
			nextPutAll: superclass name;
			nextPutAll: self kindOfSubclass;
			store: self name;
			cr; tab; nextPutAll: 'instanceVariableNames: '; store: self instanceVariablesString;
			cr; tab; nextPutAll: 'instanceVariableTypes: '; store: self instanceVariableTypes;
			cr; tab; nextPutAll: 'classVariableNames: '; store: self classVariablesString;
			cr; tab; nextPutAll: 'category: '; store: (SystemOrganization categoryOfElement: self name) asString;
			cr; tab; nextPutAll: 'includes: '; store: self includes]