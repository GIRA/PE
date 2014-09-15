event handling
mouseEnter: anEvent morph: aMorph
| index borderColor |
buttons do: [:each | each borderColor: Color black].
index := attachmentPoints indexOf: aMorph.
borderColor := Color yellow.
index caseOf: {
	[1] -> [(buttons atColumn: 3) do: [:each| each borderColor: borderColor]].
	[2] -> [(buttons atColumn: 2) do: [:each| each borderColor: borderColor]].
	[3] -> [(buttons atColumn: 1) do: [:each| each borderColor: borderColor]].
	[4] -> [(buttons atRow: 1) do: [:each| each borderColor: borderColor]].
	[5] -> [(buttons atRow: 2) do: [:each| each borderColor: borderColor]].
	[6] -> [(buttons atRow: 3) do: [:each| each borderColor: borderColor]].
}
