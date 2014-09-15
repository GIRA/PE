sound
playTone: aSymbol
	(self costumeRespondingTo: #playTone:duration:)
		ifNotNil: [:morph |
			morph
				playTone: aSymbol
				duration: self getDuration ]