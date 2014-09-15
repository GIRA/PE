*squeaknxt-compiler
scanNumber
	"Changed to use Number>>#readFrom: instead of SqNumberParser>>#parse:. For Etoys compatibility"
	| start number stop string |
	start := stream position.
	stream position: start - 1.
	(Smalltalk includesKey: #SqNumberParser)
		ifTrue: [number := (Smalltalk at: #SqNumberParser) parse: stream]
		ifFalse: [number := Number readFrom: stream].
	stop := stream position.
	stream position: start - 1.
	string := stream next: stop - start + 1.
	stream position: stop.
	self step.
	^RBNumberLiteralToken 
		value: number
		start: start
		stop: stop
		source: string