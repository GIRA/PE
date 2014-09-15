functions-digital i/o
pin: pinNumber mode: pinMode 
	<argTypes: #(CLong CLong)>
	<c: 'pinMode({1}, {2})'>
	"Configures the specified pin to behave either as an input or an
	output. See the description of digital pins for details.

	Note

The analog input pins can be used as digital pins, referred to as numbers 14 (analog input 0) to 19 (analog input 5).
	"
	^ self