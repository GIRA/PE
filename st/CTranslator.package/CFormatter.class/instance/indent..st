private
indent: inStream
	^ String streamContents: [:outStream || last next indentation applyIndentation |
		last := next := nil.
		indentation := 0.
		applyIndentation := [indentation timesRepeat: [outStream tab]].
		[inStream atEnd]
			whileFalse: [
				last := next.
				next := inStream next.
				next caseOf: {
					[Character cr] -> [
						outStream nextPut: next.
						inStream peek = $}
							ifFalse: [applyIndentation value]].
					[${] -> [outStream nextPut: next.
						indentation := indentation + 1].
					[$}] -> [indentation := indentation - 1.
						applyIndentation value.
						outStream nextPut: next].
				} otherwise: [outStream nextPut: next]]]