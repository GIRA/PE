updating
rememberUpdatesOn: holder 
	dependMap keys do: [:key | (holder cellAt: key) remember]