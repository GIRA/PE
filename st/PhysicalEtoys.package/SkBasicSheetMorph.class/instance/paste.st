action
paste
	| pos selection isJustACell |
	selection _ self selection.
	isJustACell _ selection extent = (1 @ 1).
	pos _ selection origin.
	Clipboard clipboardText
		split: Character cr
		do: [:line | 
			line
				split: Character tab
				do: [:field | 
					(isJustACell
							or: [selection containsPoint: pos])
						ifTrue: [model textAt: pos put: field].
					pos _ pos + (1 @ 0)].
			pos _ selection left @ (pos y + 1)]