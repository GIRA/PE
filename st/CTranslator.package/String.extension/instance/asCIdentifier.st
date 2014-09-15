*CTranslator
asCIdentifier
"
'Richo' asCIdentifier.
'Richo es un capo' asCIdentifier.
'foo_bar(234)' asCIdentifier.
'guión1'.
'niño' asCIdentifier.
'PROGRAMAÇÃO' asCIdentifier
"

^ self inject: '_' into: [:subTotal :next |
	(($a to: $z), ($A to: $Z), ($0 to: $9) includes: next)
		ifTrue: [
			subTotal, next asString]
		ifFalse: [subTotal , '_', next asciiValue asString]]