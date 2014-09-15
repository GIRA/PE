initialize-release
initializeSubmorphs
	"Initializes all the submorphs but the spreadsheet"
	self addMorphBack: (
		self inAColumn: {
			self inARow: {
				'Source: ' translated asMorph emphasis: 1.
				self spacer.
			}.
			source asMorph.			
		}).
	self addMorphBack: ((self inAColumn: {
			self inARow: {
				self spacer.
				self text: 'time' translated.
				self text: 'value' translated.
				self spacer.
				}.
			spreadsheet})
			cellPositioning: #center).
	self addMorphBack: (self inAColumn: {
			'Filename: ' translated asMorph.
			fileName := (self text: 'datos.csv')
				wrapFlag: false;
				borderWidth: 1;
				backgroundColor: (Color white alpha: 0.8);
				hResizing: #spaceFill.
			}).
	self addMorphBack: ((self inARow: {
			(self button: 'Start' translated color: Color green)
				target: self; actionSelector: #startStepping.
			(self button: 'Pause' translated color: Color yellow)
				target: self; actionSelector: #pauseStepping.
			(self button: 'Stop' translated color: Color red)
				target: self; actionSelector: #stopStepping.
			})
			cellInset: 5;
			cellPositioning: #leftCenter)
