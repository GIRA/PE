categories
tabsForCategoriesOld
	"Answer a list of buttons which, when hit, will
	trigger the choice of a category"
	| buttonList aButton categoryList add |
	categoryList := OrderedCollection new.
	add := [:cat | (categoryList includes: cat)
				ifFalse: [categoryList add: cat]].
	PhysicalEtoys packages
		reject: [:each | #('PhysicalEtoys' ) includes: each]
		thenDo: [:packageName | (PackageInfo named: packageName) classes
				select: [:each | each inheritsFrom: Morph]
				thenDo: [:aClass | (aClass class includesSelector: #descriptionForPartsBin)
						ifTrue: [(aClass class includesSelector: #descriptionForPartsBin)
								ifTrue: [aClass descriptionForPartsBin categories do: add].
							(aClass class includesSelector: #supplementaryPartsDescriptions)
								ifTrue: [aClass supplementaryPartsDescriptions
										do: [:aDescription | aDescription categories do: add]]]]].
	buttonList := categoryList
				collect: [:catName | 
					aButton := SimpleButtonMorph new label: catName translated font: Preferences standardEToysButtonFont.
					aButton actWhen: #buttonDown.
					aButton target: self;
						 actionSelector: #showCategory:fromButton:;
						 arguments: {catName. aButton}].
	^ buttonList