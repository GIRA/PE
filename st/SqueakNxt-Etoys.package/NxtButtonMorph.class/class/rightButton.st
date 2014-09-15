instance creation
rightButton
	| verts |
	verts := {0 @ 0. 0 @ 34. 25 @ 17}.
	^ self
		vertices: verts
		color: Color gray muchLighter
		borderWidth: 3
		borderColor: Color black