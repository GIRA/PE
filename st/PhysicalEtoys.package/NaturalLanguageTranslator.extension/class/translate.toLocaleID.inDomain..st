*physicaletoys
translate: aString toLocaleID: localeID inDomain: aDomainName
	^ PETranslator 
		translate: aString
		to: localeID
		ifError: [(self availableForLocaleID: localeID)
			translate: aString inDomain: aDomainName]
