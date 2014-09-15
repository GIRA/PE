as yet unclassified
value
	"Overriden because it seems DuinoBot's buttons are inverted"
	^ [device value = 0]
		on: Error
		do: [false]