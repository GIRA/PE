accessing-rules
rules
"These are the rules to modify the parse tree of the ArduinoPlayer scripts. Most of the time, I just need to rename the selector, change the receiver to self and set the correct list of arguments. Other times the rule is a little more complicated"
^ super rules, ((
	self commonDevicesRules,
	self dcMotorRules,
	self soundRules
	) as: Dictionary)