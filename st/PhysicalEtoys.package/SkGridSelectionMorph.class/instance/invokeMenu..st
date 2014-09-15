menu
invokeMenu: evt 
	| menu |
	menu _ MenuMorph new defaultTarget: holder.
	(holder model cellAt: self area topLeft) label
		ifNotNilDo: [:label | menu addTitle: label].
	menu
		add: (holder showFormula
				ifTrue: ['<on>']
				ifFalse: ['<off>'])
				, 'formula' translated
		target: holder
		selector: #toggleFormula.
	(holder model cellAt: self area topLeft) player
		ifNotNilDo: [:player | 
			menu
				add: 'reveal this object'
				target: player
				selector: #revealPlayerIn:
				argument: ActiveWorld.
			player costume
				showPointArrowFrom: player costume
				to: self
				label: ' '].
	menu addList: {{'library' translated. #openLibrary}.
				 #-.
				{'copy (c)' translated. #copySelection}.
				{'cut (x)' translated. #cut}.
				{'paste (v)' translated. #paste}.
				{'spawn (o)' translated. #spawn}}.
	menu popUpEvent: evt in: self world