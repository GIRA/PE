accessing
currentDirectoryName
^self currentDirectoryIsRoot
				ifTrue: [directory localName]
				ifFalse: ['..' , directory slash , directory localName]