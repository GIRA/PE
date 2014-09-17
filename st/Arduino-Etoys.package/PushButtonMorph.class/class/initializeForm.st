form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'Arduino-Etoys')
		directoryNamed: 'PushButtonMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]