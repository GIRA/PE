Abstract class. Represents a sensor that can be plugged on a LegoNxt. It defines the necessary implementation to communicate with the nxt. Its subclasses must define the specific behavior as well as its internal data (type and mode).
Every sensor has a type (check SensorType) and a mode (check SensorMode).

#rawValue - Returns the sensor value without modifications.
#normalizedValue - Returns the sensor values in a 0-1023 range (depending on the sensor type).
#scaledValue - Returns the sensor values in a 0-100 range (depending on the sensor mode)