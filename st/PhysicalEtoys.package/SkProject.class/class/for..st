accessing
for: aProject 
	"SkProject for: (Project named: 'Unnamed1')"
	| parent dict |
	parent _ self root at: 'Projects'.
	dict _ parent
				at: aProject
				ifAbsent: [(SkProject newFor: aProject) parent: parent;
						 name: aProject].
	^ dict