*PhysicalEtoys-skeleton-base
rows
	^ (1 to: self getTotalRows - 1) collect: [:r |
		(1 to: self getTotalColumns - 1) collect: [:c || cell |
			cell := self sheet cellAt: c @ r.
			(cell hasFormula and: [self sheetMorph showFormula])
				ifTrue: [cell formula asString]
				ifFalse: [cell contents asString]]]