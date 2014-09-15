accessing
forceRemoveAt: aProject 
	"remove for debug"
	"self forceRemoveAt: Project current"
	(SkDictionary allInstances
		select: [:each | each includesKey: aProject])
		do: [:each | each removeForce: aProject]