initialization
initialize
"isControllingConnections must be initialized first, otherwise it throws an error because somewhere #connectionsChanged gets called.
An alternative would be to use lazy initialization."
isControllingConnections := false.
super initialize.