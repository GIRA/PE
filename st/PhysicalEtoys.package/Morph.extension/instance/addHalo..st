*PhysicalEtoys-skeleton-base-arrow
addHalo: evt
	| halo prospectiveHaloClass |
	prospectiveHaloClass _ Smalltalk at: self haloClass ifAbsent: [HaloMorph].
	halo _ prospectiveHaloClass new bounds: self worldBoundsForHalo.
	halo popUpFor: self event: evt.
	self showPointArrow.
	^halo