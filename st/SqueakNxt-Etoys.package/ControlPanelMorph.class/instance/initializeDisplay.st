initialize-release
initializeDisplay
	display := NxtDisplayMorph withPortName: main portName. 
	display center: self center x @ (self center y - (display height // 1.5)).
	self addMorph: display