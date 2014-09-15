accessing
noteNameFor: midiKey
	^ PEUtilities noteNames at: midiKey ifAbsent: [nil]