instance creation
cancelButton
	| verts |
	verts := {0 @ 0. 30 @ 0. 30 @ 25. 0 @ 25}.
	^ (self
		vertices: verts
		color: (Color gray mixed: 0.5 with: Color white)
		borderWidth: 3
		borderColor: Color black)