accessing
speed: aNumber
	^ [device speed: aNumber] on: Error do: ["Nothing"]