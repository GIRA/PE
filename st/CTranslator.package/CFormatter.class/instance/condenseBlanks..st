private
condenseBlanks: inStream
	"Condense blanks to simplify formatting"
	^ String streamContents: [:outStream || lastBlank next |
			lastBlank := false.
			[inStream atEnd]
				whileFalse: [| isSeparator |
					(next := inStream next) asciiValue
						caseOf: {
							[32] -> [isSeparator := true].
							[13] -> [isSeparator := true].
							[9] -> [isSeparator := true].
							[10] -> [isSeparator := true].
							[12] -> [isSeparator := true].
						} otherwise: [isSeparator := false].
					(isSeparator and: [lastBlank])
						ifFalse: [outStream nextPut: next].
					lastBlank := isSeparator]]