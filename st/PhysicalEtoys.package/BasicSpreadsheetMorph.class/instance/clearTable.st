accessing
clearTable
1 to: numberOfRows do: [:r|
	1 to: numberOfColumns do: [:c|
self cellValueAt: r@c put: ''

	]
]
