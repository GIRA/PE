action
copySelection
	| text |
	text _ Text
				streamContents: [:aStream | self selection top
						to: self selection bottom - 1
						do: [:y | 
							(self selection left to: self selection right - 1)
								do: [:x | aStream
										nextPutAll: (model textAt: x @ y)]
								separatedBy: [aStream nextPut: Character tab].
							aStream nextPut: Character cr]].
	Clipboard clipboardText: text