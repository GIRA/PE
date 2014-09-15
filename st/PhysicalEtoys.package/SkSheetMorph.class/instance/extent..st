accessing
extent: newExtent
	
	sheet setExtentFromHalo: (newExtent max: (165@77)) - 
								(self layoutInset + self cellInset + (0 @ self pageControls height))