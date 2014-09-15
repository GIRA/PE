*PhysicalEtoys-skeleton-spreadsheet
clearTable
	0 to: self getTotalColumns - 1 do: [:i |
		0 to: self getTotalRows - 1 do: [:j |
			self sheet removeAt: i @ j
		]
	]