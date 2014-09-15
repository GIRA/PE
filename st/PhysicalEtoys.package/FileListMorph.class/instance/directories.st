accessing
directories
	showDirectories ifFalse: [^#()].
	^ (self currentDirectoryIsRoot ifTrue: [#()] ifFalse: [{nil}]) , ((directory entries
			select: [:each | each isDirectory]) 
			asSortedCollection: [:a :b | a name < b name])