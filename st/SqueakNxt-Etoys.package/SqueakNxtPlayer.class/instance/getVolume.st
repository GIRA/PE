sound
getVolume
	^ self costume renderedMorph valueOfProperty: #soundVolume ifAbsent: [2]