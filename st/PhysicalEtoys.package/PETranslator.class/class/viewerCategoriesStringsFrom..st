finding strings
viewerCategoriesStringsFrom: class
	| strings |
	strings := OrderedCollection new.
	class class selectors
		select: [:selector |'additionsToViewer*' match: selector] 
		thenDo: [:selector || categories |
			categories := (selector beginsWith: #additionsToViewerCategories)
				ifTrue: [class perform: selector]
				ifFalse: [{class perform: selector}].
			categories
				do: [:cat |
					strings add: cat first fromCamelCase. "Category name"
					cat second
						do: [:slotOrCommand || tileName tileComment |
							tileName := slotOrCommand second fromCamelCase.
							tileComment := slotOrCommand third.
							(tileName includes: $:) ifTrue: [tileName := tileName copyWithout: $:].
							strings add: tileName;
								add: tileComment
						]	
					]].
	^ strings asArray