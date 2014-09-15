finding strings
findAllStringsInPackage: packageName 
	| package strings |
	strings := Set new.
	package := (PackageInfo named: packageName).
	package classes
		do: [:class | 
			"Look if it has additions to viewer categories"
			strings addAll: (self viewerCategoriesStringsFrom: class)].
	package methods
		reject: [:method | method compiledMethod pragmas notEmpty]
		thenDo: [:method |
			"Look for all the #translated/#translatedNoop calls"
			(RBParser parseMethod: method sourceString)
				nodesDo: [:each | 
					(each isMessage
						and: [each receiver isLiteral
						and: [#(translated translatedNoop) includes: each selector]])
							ifTrue: [strings add: each receiver value]]].
	^ strings