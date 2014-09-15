receiving
parseGetBatteryLevelOn: data
	"Returns voltage in millivolts"
	batteryLevel := (data at: 6)  + ((data at: 7)  * 256).