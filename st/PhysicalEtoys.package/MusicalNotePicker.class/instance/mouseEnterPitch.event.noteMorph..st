event-handling
mouseEnterPitch: midiKey event: event noteMorph: noteMorph
	noteMorph showBalloon: ' ', (self noteNameFor: midiKey) , ' '.
	noteMorph color: Color blue