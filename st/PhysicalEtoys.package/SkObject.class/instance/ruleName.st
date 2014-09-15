structure
ruleName
	"Answer name or nil"
	^ self parent
		ifNil: [self rule class ruleName]
		ifNotNil: [self parent keyAtValue: self rule]