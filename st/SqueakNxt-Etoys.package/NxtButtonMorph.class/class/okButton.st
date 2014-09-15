instance creation
okButton
	| verts |
	verts := {0 @ 0. 0 @ 35. 35 @ 35. 35 @ 0}.
	^ self
		vertices: verts
		color: Color orange
		borderWidth: 3
		borderColor: Color black