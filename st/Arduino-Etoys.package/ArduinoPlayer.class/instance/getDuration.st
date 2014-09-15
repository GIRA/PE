sound
getDuration
	^ self costume renderedMorph valueOfProperty: #soundDuration ifAbsent: [200]