compiling
setAuthorInitialsIfNecessary
	"To avoid asking the user for its initials we set them here"
	Utilities authorInitialsPerSe isEmpty
		ifTrue: [Utilities setAuthorInitials: 'pe 2.0']
		