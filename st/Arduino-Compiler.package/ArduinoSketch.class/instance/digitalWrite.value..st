functions-digital i/o
digitalWrite: pinNumber value: pinValue 
	<argTypes: #(CLong CLong)>
	<c: 'digitalWrite({1}, {2})'>
	"Write a HIGH or a LOW value to a digital pin.
	
	If the pin has been configured as an OUTPUT with pinMode(), its
	voltage will be set to the corresponding value: 5V (or 3.3V on 3.3V
	boards) for HIGH, 0V (ground) for LOW.
	
	If the pin is configured as an INPUT, writing a HIGH value with
	digitalWrite() will enable an internal 20K pullup resistor (see the
	tutorial on digital pins). Writing LOW will disable the pullup. The pullup
	resistor is enough to light an LED dimly, so if LEDs appear to work,
	but very dimly, this is a likely cause. The remedy is to set the pin to
	an output with the pinMode() function.
	
	Note

The analog input pins can also be used as digital pins, referred to as numbers 14 (analog input 0) to 19 (analog input 5).
	"
	^ self