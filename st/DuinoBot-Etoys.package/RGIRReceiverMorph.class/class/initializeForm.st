form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'DuinoBot-Etoys')
		directoryNamed: 'RGIRReceiverMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]