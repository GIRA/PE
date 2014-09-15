initialize-release
newSliderFrom: minVal to: maxVal 
	^ SimpleSliderMorph new minVal: minVal;
		 maxVal: maxVal;
		 color: Color gray muchLighter;
		 sliderColor: Color blue muchDarker;
		 extent: 200 @ 15