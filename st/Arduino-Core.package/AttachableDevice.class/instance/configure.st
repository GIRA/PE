configuring
configure
	"This method is responsible of configuring the pin for using the corresponding device. Most of the times the configuration is simply setting the correct pin mode"
	pins do: [:each | each configure: self]