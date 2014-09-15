root
isPEProject: aProject
	"Traverses the project's hierarchy looking for the physical etoys
	root project (which must be set manually)."
	^ aProject = self root
		or: [aProject isTopProject not 
			and: [self isPEProject: aProject parent]]