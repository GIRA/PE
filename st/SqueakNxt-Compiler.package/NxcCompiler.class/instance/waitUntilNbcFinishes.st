private
waitUntilNbcFinishes
	"Wait until the errors file is fully written by nbc"
	"To make sure nbc finished we wait until the errors file is completely
	written by checking its size several times and comparing it with its last
	checked value. Then we also make sure nbc has released the file by 
	trying to open it and assuring it doesn't fail"
	| timeout delay fileSize |
	timeout := 45.
	delay := Delay forSeconds: 1.
	fileSize := nil.
	[delay wait.
	timeout := timeout - 1]
		doWhileFalse: [timeout = 0
			or: [(FileDirectory default
					entryAt: self errorsFileName ifAbsent: [nil])
						ifNil: [false]
						ifNotNil: [:fileEntry | 
							fileSize = (fileSize := fileEntry fileSize)
							and: [(FileStream fileNamed: self errorsFileName 
									do:[:ign | true]) notNil]]]].
	timeout = 0
		ifTrue: [self error: 'Timeout. The process failed for unknown reasons. Please try again later' translated]