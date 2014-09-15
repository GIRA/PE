private
projectInfo
	^ ('
Authors: {1}

Version: {2}

Website: {3}

' translated format: {
	PhysicalEtoys authors inject: '' into: [:subTotal :next |  subTotal, String cr, '	* ', next].
	PhysicalEtoys currentVersion.
	PhysicalEtoys website
}) asTextMorph lock backgroundColor: Color white
