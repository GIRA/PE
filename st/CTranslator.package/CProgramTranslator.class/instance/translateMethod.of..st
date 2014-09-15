translating
translateMethod: selector of: class
	"Recursively translates this method and all methods called from it. Before translating we mark the method so that if the method gets recursive we won't enter an infinite loop.
	Returns the method translated"
	[| method |
	self mark: selector of: class.
	(program
		addStruct: (self kit newStructFor: class))
			addMethod: (method := self methodTranslator 
										translate: selector 
										of: class 
										with: self kit).
	^ method]
		on: CMethodToImplement
		do: [:noti |
			(self isMarked: noti methodSelector of: noti methodClass)
				ifFalse: [self translateMethod: noti methodSelector of: noti methodClass].
			noti resume]