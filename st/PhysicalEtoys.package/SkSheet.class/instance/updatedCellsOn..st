updating
updatedCellsOn: holder 
	"detect where I have to do"

	| updates |
	updates := Set new.
	dependMap keys do: 
			[:key | 
			(holder cellAt: key) hasUpdated 
				ifTrue: [updates addAll: (dependMap at: key)]].
	^updates