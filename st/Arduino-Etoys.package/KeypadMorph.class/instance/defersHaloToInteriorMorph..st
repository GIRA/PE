deferring halo
defersHaloToInteriorMorph: aMorph
	"Answer whether  when a halo-click goes down over some subobject within me, I should defer to it rather than seize the halo myself."
	^aMorph isKindOf: KeypadButtonMorph