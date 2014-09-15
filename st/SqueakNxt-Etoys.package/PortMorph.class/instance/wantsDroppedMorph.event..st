dropping
wantsDroppedMorph: aMorph event: evt 
	"Sºlo puedo aceptar instancias que no esten conectadas. Para hacer:
	Tampoco debera
	aceptar si ya tengo algo conectado"
	^ ((self class wantedDroppedMorphClasses includes: aMorph class)
		and: [aMorph isPlugged not]) and: [port isBusy not]