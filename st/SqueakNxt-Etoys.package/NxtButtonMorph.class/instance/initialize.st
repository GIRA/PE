initialization
initialize
	"No hacer 'super initialize' porque dibuja un triangulito"
	originalColor := self color.
	self
		on: #mouseEnter
		send: #mouseEnter:forMorph:
		to: self;
		
		on: #mouseLeave
		send: #mouseLeave:forMorph:
		to: self