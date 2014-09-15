accessing
lastBoardType
	"
	lastBoardType := nil.
	"
	^ lastBoardType ifNil: [lastBoardType := self typeClass default friendlyNames anyOne]