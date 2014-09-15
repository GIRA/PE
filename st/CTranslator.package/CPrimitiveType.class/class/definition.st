definition
definition
	"Answer a String that defines the receiver."
	"Only shows #subclass:category:"
	^ String streamContents: [:stream |
		stream
			nextPutAll: superclass name;
			nextPutAll: self kindOfSubclass;
			store: self name;
			cr; tab; nextPutAll: 'category: '; store: (SystemOrganization categoryOfElement: self name) asString]