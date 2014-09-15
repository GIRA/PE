*PhysicalEtoys-skeleton-spreadsheet
clearRow
	0 to: self getTotalColumns - 1 do: [:i |
		self sheet removeAt: i @ self getRowIndex
	]