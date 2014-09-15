info
packageVersions
	"Asks monticello for each package version"
	^ self packages collect: [:pckgName || wc version repo |
		wc := (MCPackage named: pckgName) workingCopy.
		wc ancestry ancestorString
			ifEmpty: [pckgName] 
			ifNotEmpty: [:pckgVersion | pckgVersion]]