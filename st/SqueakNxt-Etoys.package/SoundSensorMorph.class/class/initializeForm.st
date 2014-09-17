form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'SqueakNxt-Etoys')
		directoryNamed: 'SoundSensorMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]