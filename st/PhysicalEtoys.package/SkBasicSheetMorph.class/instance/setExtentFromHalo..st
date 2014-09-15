layout
setExtentFromHalo: newExtent 
	| card cardMorph direction size |
	super setExtentFromHalo: newExtent.
	direction := nil.
	area height = 1 
		ifTrue: 
			[direction := #right.
			size := area width - 1]
		ifFalse: 
			[area width = 1 
				ifTrue: 
					[direction := #down.
					size := area height - 1]].
	direction ifNotNil: 
			[card := model new.
			card direction: direction.
			card size: size.
			cardMorph := SkCardMorph model: card.
			cardMorph position: self position.
			self owner addMorph: cardMorph.
			self halo ifNotNilDo: [:helo | helo setTarget: cardMorph].
			self delete]