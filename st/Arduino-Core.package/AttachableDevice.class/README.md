Abstract class. I represent a device that can be attached to a collection of Arduino's pins. My protocol is very simple:

#attach: aPin
Attaches the device to a single pin and sets the pins configuration accordingly.

#isAttached
Checks if the device is attached to a pin.

#detach
Simply detachs the device from the pins and deletes the configuration. It raises an error if the device is not attached.

Subclasses should override #configure and #deleteConfiguration with the specific steps to configure the corresponding device.