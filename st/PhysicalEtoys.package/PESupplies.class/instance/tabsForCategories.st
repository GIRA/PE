categories
tabsForCategories
	"Hardcoded to show only 'Physical Etoys' category"
	^ #('Physical Etoys')
			collect: [:catName | | aButton |
				aButton := SimpleButtonMorph new label: catName translated font: Preferences standardEToysButtonFont.
				aButton actWhen: #buttonDown.
				aButton target: self;
					 actionSelector: #showCategory:fromButton:;
					 arguments: {catName. aButton}]