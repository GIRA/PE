*PhysicalEtoys-skeleton-spreadsheet
clearColumn
	0 to: self getTotalRows - 1 do: [:i |
		self sheet removeAt: self getColumnIndex @ i
	]