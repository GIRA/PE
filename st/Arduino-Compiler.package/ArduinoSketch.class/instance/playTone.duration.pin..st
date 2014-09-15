functions-sound
playTone: freq duration: duration pin: pin
	"void tone(uint8_t _pin, unsigned int frequency, unsigned long duration)"
	<argTypes: #(CLong CLong CLong)>
	<c: 'tone({3}, {1}, {2})'>