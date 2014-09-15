configuring
deleteConfiguration
	pins do: [:each | each setOutput].
	protocol := nil.
	isConfigured := false