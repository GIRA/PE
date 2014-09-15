visiting
acceptSequenceNode: aSequenceNode
aSequenceNode statements do: [:each | 
	self visitNode: each.
	each isMessage ifTrue: [source nextPut: $;; cr]]