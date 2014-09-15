cleaning
garbageCollect
	| tasks |
	tasks := OrderedCollection new
				add: [Player freeUnreferencedSubclasses];				
				add: [MCFileBasedRepository flushAllCaches];				
				add: [SMSqueakMap default clearCaches];				
				add: [Smalltalk removeEmptyMessageCategories];				
				add: [Workspace
						allSubInstancesDo: [:each | each setBindings: Dictionary new]];				
				add: [Undeclared removeUnreferencedKeys];				
				add: [Categorizer sortAllCategories];				
				add: [Symbol compactSymbolTable];				
				add: [ReleaseBuilder new fixObsoleteReferences];				
				add: [Smalltalk garbageCollectMost];
				 yourself.
	Utilities
		informUserDuring: [:bar | tasks
				do: [:block | 
					bar value: block printString.
					[block value]
						on: Error
						do: [:error | Transcript show: error;
								 cr]]].
	^ SystemNavigation default obsoleteClasses