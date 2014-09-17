logos
initializeUaiLogo
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'PhysicalEtoys')
		directoryNamed: 'PhysicalEtoys')
		fileNamed: 'uaiLogo.png' do: [:file |
			uaiLogoForm := PNGReadWriter formFromStream: file]