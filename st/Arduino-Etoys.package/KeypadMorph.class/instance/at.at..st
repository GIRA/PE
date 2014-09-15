accessing
at: row at: column
	^[device at: row at: column] on: Error do: [false]