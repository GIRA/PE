message sending
storeMessage: aByteArray
	"Store the message so that later the direct command protocol can 
	retrieve it by sending #receive"
	| msgHeader index |
	msgHeader := aByteArray at: 4 ifAbsent: [^ self].
	msgHeader = DirectCommandProtocol getInputValues
		ifTrue: [index := (aByteArray at: 6 ifAbsent: [0]) asInteger + 1]
		ifFalse: [index := 1].
	(messages at: msgHeader)
		at: index
		put: aByteArray