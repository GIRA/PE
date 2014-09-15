*PhysicalEtoys-skeleton-base-sheet
split: delimitor do: aBlock
	| start end |
	start _ 1.
	[start <= self size] whileTrue: 
		[end _ self indexOf: delimitor startingAt: start ifAbsent: [self size + 1].
		end _ end - 1.
		aBlock value: (self copyFrom: start  to: end).
		start _ end + 2]

"
See SkSheetTest>>testSplitDo
'first	second		forth' delimited: Character tab do: [:aField | Transcript cr; show: aField]
'first
second

forth
' delimited: Character tab do: [:aField | Transcript cr; show: aField]
"