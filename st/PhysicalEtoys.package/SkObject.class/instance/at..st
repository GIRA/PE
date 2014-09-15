accessing
at: key 
	"Anwer '' NOT nil when unfound"
	^ self
		at: key
		ifAbsent: [^ '']