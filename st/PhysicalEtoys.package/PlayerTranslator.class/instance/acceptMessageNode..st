visiting
acceptMessageNode: aMessageNode 
	| selector |
	selector := aMessageNode selector.
	"Check for invalid selector or invalid receiver"
	self assert: [self isValidSelector: selector];
		assert: [self isValidReceiver: aMessageNode receiver].
	"Is it a rule?"
	(self rules includesKey: selector)
		ifTrue: [^(self rules at: selector)
				value: aMessageNode].
	"Is it an etoys message?"
	(self etoysMessages includesKey: selector)
		ifTrue: [(self etoysMessages at: selector)
				value: aMessageNode].
	"Is it a getter?"
	(self allGetterSelectors includes: selector)
		ifTrue: [| newNode | 
			self
				withCurrentMorph: (self morphFor: aMessageNode receiver name)
				do: [newNode := self variable: (self slotForGetter: selector)].
			aMessageNode
				become: (newNode parent: aMessageNode parent).
			^ self visitNode: aMessageNode].
	"Is it a setter?"
	(self allSetterSelectors includes: selector)
		ifTrue: [| newNode | 
			self
				withCurrentMorph: (self morphFor: aMessageNode receiver name)
				do: [newNode := self assignment: (self variable: (self slotForSetter: selector))
										to: aMessageNode arguments first].
			aMessageNode
				become: (newNode parent: aMessageNode parent).
			^ self visitNode: aMessageNode].
	"Is it a script call?"
	(self allScriptSelectors includes: selector)
		ifTrue: [self
				withCurrentMorph: (self morphFor: aMessageNode receiver name)
				do: ["Check for recursive call"
					self assert: [self isNotRecursiveCall: aMessageNode].
					aMessageNode
						selector: (self asLegalName: aMessageNode selector);
						
						receiver: (self variable: 'self')]].
	"We still need to visit the receiver and the arguments"
	^ super acceptMessageNode: aMessageNode