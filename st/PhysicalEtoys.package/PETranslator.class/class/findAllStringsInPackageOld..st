finding strings
findAllStringsInPackageOld: packageName 
	^ Array streamContents: [:stream |
		(PackageInfo named: packageName) classes
			do: [:class | 
				"Look if it has additions to viewer categories"
				stream nextPutAll: (self viewerCategoriesStringsFrom: class).
				"Look for all the #translated/#translatedNoop calls"
				(self allTranslatedCallsFrom: class)
					do: [:method |
						(RBParser parseMethod: method sourceString)
							nodesDo: [:each | 
								(each isMessage
									and: [each receiver isLiteral
									and: [#(translated translatedNoop) includes: each selector]])
										ifTrue: [stream nextPut: each receiver value]]]]]