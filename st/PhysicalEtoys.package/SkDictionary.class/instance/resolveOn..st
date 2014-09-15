updating
resolveOn: holder 
	| value |
	(value _ map
					at: args first contents
					ifAbsent: [args second contents: ''.
						^ self]) = args second contents
		ifFalse: [args second contents: value.
			holder changed: #cardList.
			self changed: #cardList]