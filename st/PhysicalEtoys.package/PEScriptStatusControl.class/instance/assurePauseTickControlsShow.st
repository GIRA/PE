as yet unclassified
assurePauseTickControlsShow
	"Add two little buttons that allow the user quickly to toggle between paused and ticking state"
	self scriptInstantiation player isUsingCompiledMode ifFalse: [^super assurePauseTickControlsShow].
	self beTransparent.
	tickPauseWrapper ifNil:[
		tickPauseWrapper _ SketchMorph withForm: self class downloadButtonForm.

		tickPauseWrapper on: #mouseUp send: #mouseUpTick:onItem: to: self.
		tickPauseWrapper on: #mouseDown send: #mouseDownTick:onItem: to: self.
		
		tickPauseWrapper setBalloonText:'Press to download this script.' translated.
		self addMorphFront: tickPauseWrapper.
	].
	tickPauseButtonsShowing _ true.