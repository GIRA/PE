receiving
receive
	"Even though we save the input messages in a dictionary, the protocol expects
	an array with all messages flattened.
	This method can be written better but since this has to be executed really fast
	I tried to optimize it a little by sending the inlined message #to:do:.
	I haven't really measured if the optimization is worth the mess, though."
	^ Array streamContents: [:stream |
		messages valuesDo: [:msgCollection |
			1 to: msgCollection size do: [:i |
				(msgCollection at: i)
					ifNotNil: [:msg |
						1 to: msg size do: [:j |
							stream nextPut: (msg at: j)]]	]]]