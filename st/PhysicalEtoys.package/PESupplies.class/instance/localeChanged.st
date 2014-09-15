update
localeChanged
	"Restore Physical Etoys supplies flap"
	"It has to be wrapped in a deferred UI message, otherwise it
	doesn't work. I'm not really sure why, but I would think it adds
	the PE flap in the middle of the process and then it deletes it"
	WorldState addDeferredUIMessage: [PESupplies makeFlap]