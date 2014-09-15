translating
translate: aString to: localeID ifError: aBlock
	^ (self for: localeID)
			translate: aString
			ifError: aBlock