form
initializeForm
	"
	form := nil
	"
	| magn n d1 d2 a ang canvas pen |
	magn := 75.
	n := 8.
	d1 := 1 * magn.
	d2 := 0.25 * magn.
	a := (d1 / 2) - (d2 / 2).
	ang := 360 / n.
	form := Form extent: d1 @ d1 depth: 32.
	canvas := form getCanvas.
	pen := Pen newOnForm: form.
	pen up.
	1 to: 4 do: [:index || color |
		color :=  (Color r: 0.065 g: 0.258 b: 0.355) alpha:  (1 / index).
		pen north 
			turn: index - 1 * ang * -1;
			go: a.
		canvas 
			fillOval: (Rectangle 
				center: pen location
				extent: d2)
			color: color.
		pen
			turn: 180; go: a].
	^ form