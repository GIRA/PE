form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'PhysicalEtoys')
		directoryNamed: 'TimerMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]