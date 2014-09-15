*physicaletoys
storeOnServerAsPE
	"Save to disk as an Export Segment.  Then put that file on the server I came from, as a new version.  Version is literal piece of file name.  Mime encoded and http encoded."

	| aMessageSend |
	world setProperty: #optimumExtentFromAuthor toValue: world extent.
	aMessageSend := MessageSend receiver: self selector: #acceptDetailsAndStoreProjectAsPE:.
	(world valueOfProperty: #ProjectDetails)
		ifNotNil:
		[:details | "ensure project info matches real project name"
		details at: 'projectname' put: self name].

	EToyProjectDetailsMorph
		getFullInfoFor: self 
		ifValid: aMessageSend
		expandedFormat: false