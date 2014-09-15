initialize-release
initializeFillStyle
	| color1 color2 fill |
	color1 := Color
				r: 0.065
				g: 0.581
				b: 0.774.
	color2 := Color
				r: 0.677
				g: 0.968
				b: 1.0.
	fill := (GradientFillStyle ramp: {0.0 -> color1. 1.0 -> color2})
				 origin: self topRight;
				 direction: self extent * (-1 @ 1);
				 normal: self extent;
				 radial: false. 
	self fillStyle: fill