initializing
initializeSubmorphs
	self
		addMorphBack: (MotorPortMorph port: main nxt portA);
		
		addMorphBack: (MotorPortMorph port: main nxt portB);
		
		addMorphBack: (MotorPortMorph port: main nxt portC);
		 addMorphBack: (Morph new
			color: (Color gray mixed: 0.5 with: Color white);
			 borderColor: Color black;
			 borderWidth: 2;
			 height: 30)