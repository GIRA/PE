initialization
initializeButtons
	buttons := Matrix rows: 3 columns: 3.
	0 to: 2 do: [:r | 
		0 to: 2	do: [:c || pos |
			pos := r * 65 @ (c * 70) + 40.
			buttons
				at: r + 1
				at: c + 1
				put: ((KeypadButtonMorph row: r + 1 column: c + 1)
						center: pos).
			self
				addMorph: (buttons at: r + 1 at: c + 1)]]