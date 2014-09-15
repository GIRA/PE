private
setPins: anArrayOfPins
"When attaching a device I try to configure it, but if it fails for some reason I simply set isConfigured to false, so that we remember to configure whenever possible"
	pins := anArrayOfPins.
	[self configure.
	isConfigured := true]
		on: Error
		do: [isConfigured := false]