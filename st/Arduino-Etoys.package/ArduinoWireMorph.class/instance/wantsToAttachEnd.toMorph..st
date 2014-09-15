as yet unclassified
wantsToAttachEnd: index toMorph: aMorph 
	(super wantsToAttachEnd: index toMorph: aMorph)
		ifFalse: [^ false].
	^ [aMorph canBeAttachedTo: self sourceMorph owner] on: Error do: [false]