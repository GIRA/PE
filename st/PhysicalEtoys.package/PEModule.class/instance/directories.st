accessing
directories
	^ (zip members 
		select: [:zipMember | zipMember isDirectory])
		collect: [:zipMember |
			self defaultDirectory fullPathFor: zipMember localFileName]