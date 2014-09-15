error correction
cellPositionOf: aString 
	"(self new cellPositionOf: 'A1') = (1@1)"
	"(self new cellPositionOf: 'B2') = (2@2)"
	"(self new cellPositionOf: 'CV100') = (100@100)"
	| col |
	col _ aString stemAndNumericSuffix first
				inject: 0
				into: [:subTotal :next | 
					subTotal _ subTotal * 26.
					subTotal _ subTotal + next asciiValue - $A asciiValue + 1].
	^ col @ aString stemAndNumericSuffix second asNumber