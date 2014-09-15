updating
updateCardList
	"Delete dispensable cards"
	| ruleCards |
	ruleCards _ rule cardPositions.
	(self cardPositions
		select: [:key | (ruleCards includes: key) not])
		do: [:key | self removeAt: key]