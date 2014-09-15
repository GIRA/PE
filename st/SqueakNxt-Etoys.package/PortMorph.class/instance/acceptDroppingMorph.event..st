dropping
acceptDroppingMorph: aMorph event: evt 
	"No se porqu desaparece el morph antes de llegar acÿ, por eso le mando
	openInWorld"
	aMorph openInWorld.
self plug: aMorph