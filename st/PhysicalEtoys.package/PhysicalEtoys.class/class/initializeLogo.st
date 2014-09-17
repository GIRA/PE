logos
initializeLogo
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'PhysicalEtoys')
		directoryNamed: 'PhysicalEtoys')
		fileNamed: 'physicalEtoysForm.png' do: [:file |
			physicalEtoysForm := PNGReadWriter formFromStream: file]