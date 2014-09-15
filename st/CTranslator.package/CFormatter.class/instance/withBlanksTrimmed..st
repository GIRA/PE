private
withBlanksTrimmed: str 
	"Richo: Reimplemented here due to an incompatibility between Pharo and Etoys."
	"Return a copy of the receiver from which leading and trailing blanks have been trimmed."

	| first result |
	first := str findFirst: [:c | c isSeparator not].
	first = 0 ifTrue: [^ ''].  "no non-separator character"
	result :=  str
		copyFrom: first
		to: (str findLast: [:c | c isSeparator not]).
	result isOctetString ifTrue: [^ result asOctetString] ifFalse: [^ result]