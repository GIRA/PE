accessing
newFor: aProject 
	"find this instance for the project. little tricky"
	"self findProject: Project current"
	| map |
	map _ SkDictionary allInstances
				detect: [:each | each includesKey: aProject]
				ifNone: [^ self new].
	^ map at: aProject