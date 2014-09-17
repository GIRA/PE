form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'DuinoBot-Etoys')
		directoryNamed: 'RGMotorMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]