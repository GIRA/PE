private
removeExtraSemicolons: inStream
	"As a result of an imperfect translation, there might be some extra semicolons that we need to remove (even though most compilers ignore them).
	This horribly convoluted code takes care of checking if the semicolon can be removed or not."
	self flag: #Richo.
	^ String streamContents: [:outStream || last current next blocks |
		last := current := next := nil.
		blocks := OrderedCollection new.
		[inStream atEnd]
			whileFalse: [| shouldBeAdded |
				shouldBeAdded := true.
				last := current ifNil: [''].
				current := next ifNil: [''].
				next := inStream upTo: Character cr.
				(self withBlanksTrimmed: current) 
					caseOf: {
						[';'] -> [shouldBeAdded := false].
						['{'] -> [blocks addLast: (self withBlanksTrimmed: last)].
						['}'] -> [((blocks removeLast 
									beginsWithAnyOf: #('class' 'struct'))
								and: [(self withBlanksTrimmed: next) = ';'])
									ifTrue: [shouldBeAdded := false.
										outStream 
											nextPutAll: current;
											nextPut: $;; cr]]
					} otherwise: ["Do nothing"].
				shouldBeAdded ifTrue: [outStream nextPutAll: current; cr]].
		(self withBlanksTrimmed: next) = ';'
			ifFalse: [outStream nextPutAll: next; cr]]
