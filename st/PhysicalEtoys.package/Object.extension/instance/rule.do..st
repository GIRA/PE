*PhysicalEtoys-skeleton-base
rule: sub do: aBlock 
	^ SkRule new
		observer: self
		subjects: sub
		rule: aBlock