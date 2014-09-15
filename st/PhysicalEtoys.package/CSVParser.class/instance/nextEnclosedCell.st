parsing
nextEnclosedCell
	^ String streamContents: [:cell |
		stream skip: 1.
		[stream atEnd]
			whileFalse: [| next |
				next := stream next.
				next = $" 
					ifTrue: [
						stream peek ~= $"
							ifTrue: [^ cell contents]
							ifFalse: [stream skip: 1]].
				cell nextPut: next]]