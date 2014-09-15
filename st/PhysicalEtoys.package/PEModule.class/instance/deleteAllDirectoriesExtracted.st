private
deleteAllDirectoriesExtracted
	"The directories might contain each other, and they can be removed unless they're empty.
	So, keep iterating until nothing gets deleted"
	| deletedFlag |
	[deletedFlag := false.
	self directories do: [:path || dir |
		dir := FileDirectory on: path.
		(dir exists and: [dir entries isEmpty])
			ifTrue: [dir containingDirectory 
				deleteDirectory: dir localName.
				deletedFlag := true]]]
		doWhileTrue: [deletedFlag]