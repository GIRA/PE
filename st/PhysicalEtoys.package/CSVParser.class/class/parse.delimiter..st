parsing
parse: aStream delimiter: aCharacter
	^ (self on: aStream delimiter: aCharacter) parse