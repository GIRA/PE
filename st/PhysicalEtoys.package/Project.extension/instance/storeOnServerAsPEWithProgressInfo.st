*physicaletoys
storeOnServerAsPEWithProgressInfo

	"Save to disk as an Export Segment.  Then put that file on the server I came from, as a new version.  Version is literal piece of file name.  Mime encoded and http encoded."
	ProgressInitiationException 
		display: 'Storing Project...'
		during: [:bar |
			[self storeOnServerAsPEInnards]
				on: ProgressNotification
				do: [:e |
					bar value: (e messageText asNumber) / 10.0.
					e resume]]
	