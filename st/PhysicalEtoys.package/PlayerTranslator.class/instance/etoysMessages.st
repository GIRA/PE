accessing
etoysMessages
	^ {
		"#grouped actually doesn't do anything so we just take it out"
		#grouped -> [:node | node become: (node receiver parent: node parent)].
	
		"I don't know why but recent versions of Etoys use this weird 
		messages instead of the comparison operators:"
		#eToysLT: -> [:node | node selector: #<].
		#eToysLE: -> [:node | node selector: #<=].
		#eToysEQ: -> [:node | node selector: #=].
		#eToysNE: -> [:node | node selector: #~=].
		#eToysGT: -> [:node | node selector: #>].
		#eToysGE: -> [:node | node selector: #>=].
	} as: Dictionary