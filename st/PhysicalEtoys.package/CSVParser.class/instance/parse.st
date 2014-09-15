parsing
parse
	^ Array streamContents: [:rows |
		[stream atEnd]
			whileFalse: [rows nextPut: self nextRow.
				[String crlf includes: stream peek] whileTrue: [stream skip: 1]]]