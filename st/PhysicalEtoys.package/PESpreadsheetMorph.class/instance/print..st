printing
print: aNumber
	^ (aNumber printShowingDecimalPlaces: 2) copyReplaceAll: '.' with: ','