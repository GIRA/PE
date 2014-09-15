accessing
icon
^self isDirectory ifTrue: [self class directoryIconForm] ifFalse: [self class fileIconForm]