private
parseErrors
	"Open the errors file (it should be created by now) and parse it's errors"
	^ FileStream
		fileNamed: self errorsFileName
		do: [:errorsFile | self parse: errorsFile]