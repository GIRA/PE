process termination
terminateAllProcesses
	(Process allInstances select: [ :each | each name matchesRegex: '.*Firmata.*|.*Arduino.*' ])
		do: [ :eachProcess | eachProcess terminate ]