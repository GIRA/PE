class initialization
initializeRoot
	| root library projects |
	root _ SkDictionary new.
	library _ SkDictionary new.
	library color:  (Color r: 0.258 g: 0.645 b: 0.0).
	projects _ SkDictionary new.
	root at: 'Root' put: root.
	root parent: root.
	root at: 'Library' put: library.
	library parent: root.
	root at: 'Projects' put: projects.
	projects parent: root.
	projects locked: true.
	root locked: true.
	^ root