accessing
ruleName
	"Answer name or nil"
	^ self parent
		ifNotNil: [self parent keyAtValue: self rule]