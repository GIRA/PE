sound
stopPlayingSound
	nxt isConnected
		ifTrue: [nxt stopPlayingSound]