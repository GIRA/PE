info
installerScript
"
	Transcript open; show: self installerScript.
"
	self error: 'This method doesn''t work. The packages need to be installed in a certain order'.
	^ String streamContents: [:stream |
		self packageVersions do: [:package |
			stream 
				nextPutAll: ('(Installer ss project: {1}) install: {2}.'
					format: {
						(self projectFor: package) printString. 
						package printString});
				cr.
		]
	]	
