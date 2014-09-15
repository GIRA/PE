accessing
files
	^ (zip members 
		reject: [:zipMember | zipMember isDirectory])
		collect: [:zipMember | 
			self defaultDirectory fullPathFor: zipMember localFileName]