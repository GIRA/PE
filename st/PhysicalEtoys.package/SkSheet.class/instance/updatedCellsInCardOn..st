updating
updatedCellsInCardOn: holder 
	"Ask card to want to update?"
	^ self cardPositions
		select: [:each | (map at: each) contents wantsUpdate]