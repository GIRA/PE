drawing
drawLabelsOn: aCanvas
	"REMEMBER: It should return the graph bounds"
	| font graphBounds allLabelsHeight yMaxLabelWidth yMinLabelWidth xMaxLabelWidth xMinLabelWidth |
	font := TextStyle defaultFont.
	yMaxLabelWidth := font widthOfString: self yMaxLabel.
	yMinLabelWidth := font widthOfString: self yMinLabel.
	xMaxLabelWidth := font widthOfString: self xMaxLabel.
	xMinLabelWidth := font widthOfString: self xMinLabel.
	allLabelsHeight := font height.
	graphBounds := Rectangle 
		origin: bounds topLeft 
			+ ({yMaxLabelWidth. yMinLabelWidth. xMinLabelWidth / 2} max rounded @ (allLabelsHeight / 2) rounded) 
			+ (5 @ 0)
		corner: bounds bottomRight 
			- ((xMaxLabelWidth / 2) rounded @ allLabelsHeight)
			- (0 @ 5).
	aCanvas 
		drawString: self yMaxLabel
		at: graphBounds topLeft - (yMaxLabelWidth @ (allLabelsHeight / 2) rounded) - (5 @ 0);
		drawString: self yMinLabel
		at: graphBounds bottomLeft - (yMinLabelWidth @ (allLabelsHeight / 2) rounded) - (5 @ 0);
		drawString: self xMinLabel
		at: graphBounds bottomLeft - ((xMinLabelWidth / 2) rounded @ 0) + (0 @ 5);
		drawString: self xMaxLabel
		at: graphBounds bottomRight - ((xMaxLabelWidth / 2) rounded @ 0) + (0 @ 5).
	^ graphBounds