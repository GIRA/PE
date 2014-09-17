form
initializeForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'PhysicalEtoys')
		directoryNamed: 'WaitMorph')
		fileNamed: 'form.png' do: [:file |
			form := PNGReadWriter formFromStream: file]