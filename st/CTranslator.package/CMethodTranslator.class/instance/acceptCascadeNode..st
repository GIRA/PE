visiting
acceptCascadeNode: aCascadeNode
	aCascadeNode messages do: [:each | self visitNode: each. source nextPut: $;; cr].