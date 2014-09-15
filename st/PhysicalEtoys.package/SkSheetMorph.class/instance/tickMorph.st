accessing
tickMorph
	| tick |
	tick _ SkPluggableTickMorph new.
	tick on: sheet isTickingSel: #isModelStepping.
	tick
		on: #mouseUp
		send: #mouseUpTick:onItem:
		to: sheet.
	tick stepTime: 500.
	tick startStepping.
	tick setBalloonText: 'Press to toggle ticking state.' translated.
	^ tick