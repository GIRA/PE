win32
availableSerialPortsForWindows
	"It requires ProcessWrapper to run a console application called ComEnumerator. The executable ComEnumerator.exe must be in the same directory as the image."
	^ [(FileDirectory default fileExists: 'ComEnumerator.exe')
			ifFalse: [self error: 'ComEnumerator not found'].
		(((Smalltalk at: #ProcessWrapper) new
		    useStdout;
		    startWithShellCommand: 'ComEnumerator';
		    upToEnd) substrings collect: [:each | each asSymbol])
			ifEmpty: [self error: 'No available serial port was found']
			ifNotEmpty: [:col | col]]
		on: Error do: [(1 to: 9) collect: [:n | ('COM' , n asString) asSymbol]]