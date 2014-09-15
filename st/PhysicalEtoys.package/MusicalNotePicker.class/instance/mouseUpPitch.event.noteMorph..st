event-handling
mouseUpPitch: midiKey event: event noteMorph: noteMorph
	super mouseUpPitch: midiKey event: event noteMorph: noteMorph.
	self triggerEvent: #selectionChanged 
		with: (self noteNameFor: midiKey);
		delete