accessing
sketchSourceFileNames
	^ self sketchDirectory fileNames 
		select: [:fileName | 
			#('h' 'cpp' 'c' 'pde')
				anySatisfy: [:validExtension |
					fileName endsWith: '.', validExtension]]