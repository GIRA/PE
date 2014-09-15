private
assureNewLinesWhenNecessary: inStream
	"Assure curly brackets are between new lines"
	^ String streamContents: [:outStream || last next isNewLine |
		last := next := nil.
		isNewLine := [:chr | chr notNil and: [chr asciiValue = 13]].
		[inStream atEnd]
			whileFalse: [
				last := next.
				next := inStream next.
				next caseOf: {
					[${] -> [
						(isNewLine value: last)
							ifFalse: [outStream cr].
						outStream nextPut: next.
						(isNewLine value: inStream peek)
							ifFalse: [outStream cr]].
					[$}] -> [
						(isNewLine value: last)
							ifFalse: [outStream cr].
						outStream nextPut: next.
						(isNewLine value: inStream peek)
							ifFalse: [outStream cr]].
				} otherwise: [outStream nextPut: next]]]