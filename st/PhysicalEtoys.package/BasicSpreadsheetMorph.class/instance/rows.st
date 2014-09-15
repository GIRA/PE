accessing
rows
	| rows |
	rows := (1 to: numberOfRows)
				collect: [:r | (1 to: numberOfColumns)
						collect: [:c | self cellValueAt: r @ c]].
	"Filter empty cells in the bottom"
	[rows notEmpty
		and: [(rows last
				select: [:each | each notEmpty]) isEmpty]]
		whileTrue: [rows := rows allButLast].
	^ rows