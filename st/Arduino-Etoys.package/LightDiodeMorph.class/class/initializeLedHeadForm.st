form
initializeLedHeadForm
	^ (((FileDirectory default
		directoryNamed: 'imgs')
		directoryNamed: 'Arduino-Etoys')
		directoryNamed: 'LightDiodeMorph')
		fileNamed: 'ledHeadForm.png' do: [:file |
			ledHeadForm := PNGReadWriter formFromStream: file]