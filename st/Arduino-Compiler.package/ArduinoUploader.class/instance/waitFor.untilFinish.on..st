private
waitFor: timeoutSeconds untilFinish: aBlock on: sketchDirectory 
	"To make sure the process finishes correctly I wait until the sketch directory contains a file named 'finish', which should be created after evaluating the block"
	| delay timeout |
	timeout := timeoutSeconds.
	sketchDirectory
		deleteFileNamed: 'finish' ifAbsent: [].
	aBlock value.
	delay := Delay forSeconds: 1.
	[delay wait.
	timeout := timeout - 1]
		doWhileFalse: [timeout = 0
				or: [sketchDirectory fileExists: 'finish']].
	timeout = 0
		ifTrue: [self error: 'Timeout. The process failed for unknown reasons. Please try again later' translated]