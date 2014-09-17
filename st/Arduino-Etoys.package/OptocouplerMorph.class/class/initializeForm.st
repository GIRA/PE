form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'Arduino-Etoys')
		directoryNamed: 'OptocouplerMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]