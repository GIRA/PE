accessing-rules
rules
"These are the rules to modify the parse tree of the SqueakNxtPlayer scripts. Most of the time, I just need to rename the selector, change the receiver to self and set the correct list of arguments. Other times (such as with #getAudible or #getActive) the rule is a little more complicated"
^ super rules, ((
	self motorRules, 
	self sensorRules, 
	self displayRules, 
	self soundRules, 
	self buttonRules) as: Dictionary)