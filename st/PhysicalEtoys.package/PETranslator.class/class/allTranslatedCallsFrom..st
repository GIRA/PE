finding strings
allTranslatedCallsFrom: class
	"This looks in the class itself and in its metaclass"
	^ (SystemNavigation default allCallsOn: #translated from: class),
		(SystemNavigation default allCallsOn: #translatedNoop from: class),
		(SystemNavigation default allCallsOn: #translated from: class class),
		(SystemNavigation default allCallsOn: #translatedNoop from: class class)