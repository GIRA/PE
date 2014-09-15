*physicaletoys
publishProject

	self world paintBoxOrNil ifNotNil: [
		(self confirm: 'You seem to be painting a sketch.
Do you continue and publish the project with the paint tool?' translated) ifFalse: [^ self].
	].
	"Only show the old dialog if the project is not physical etoys
	and it's clean (safe for the squeakland showcase)"
	(Project current isPEProject 
	or: [Project current containsPEMorphs])
		ifTrue: [Project current storeOnServerAsPE]
		ifFalse: ["Old behavior"
			self 
				publishStyle: #limitedSuperSwikiPublishDirectoryList 
				forgetURL: false
				withRename: false]