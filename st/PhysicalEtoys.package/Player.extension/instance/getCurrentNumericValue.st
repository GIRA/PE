*PhysicalEtoys-skeleton-spreadsheet
getCurrentNumericValue
	| str |
	^ [(str := self getCurrentCharacters) asNumber]
			ifError: [:err :rcvr | str asInteger ifNil: [0]]