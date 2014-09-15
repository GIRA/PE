parsing
nextNormalCell
	^ String streamContents: [:cell |
		[stream atEnd]
			whileFalse: [| next |
				next := stream next.
				(next = delimiter
				or: [Character cr = next 
				or: [Character lf = next]])
					ifTrue: [stream skip: -1.
						^ cell contents].
				cell nextPut: next]]