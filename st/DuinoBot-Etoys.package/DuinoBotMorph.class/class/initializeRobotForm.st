form
initializeRobotForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'DuinoBot-Etoys')
		directoryNamed: 'DuinoBotMorph')
		fileNamed: 'robotForm.png' do: [:file |
			robotForm := PNGReadWriter formFromStream: file]