just for testing
instancesConnected
"Just for testing. Do not use!

Update 31/1/2011: I read this comment after a while and I thought the 'Do not use!' warning was funny and a little exagerated :). This method was certainly used for testing while developing one of the earlier versions but it does no harm if you execute it."
^self allInstances select: [:each| each isConnected]