form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'Arduino-Etoys')
		directoryNamed: 'LCDDisplayMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]