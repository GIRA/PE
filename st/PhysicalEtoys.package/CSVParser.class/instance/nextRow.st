parsing
nextRow
	^ Array streamContents: [:cells |
		[stream atEnd or: [String crlf includes: stream peek]]
			whileFalse: [cells nextPut: self nextCell.
				stream peek = delimiter ifTrue: [stream skip: 1]]]