*PhysicalEtoys-skeleton-base-arrow
showPointArrow
	"ActiveWorld submorphsDo: [:m | m showPointArrow]"
	self arrowTargets
		do: [:each | self
				showPointArrowFrom: each value costume
				to: self
				label: each key]