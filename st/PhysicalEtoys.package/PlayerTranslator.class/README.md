This class is responsible for merging and transforming a bunch of Etoys scripts (which may be compiled in a set of different Player subclasses) into one class. The details of this merging should be defined in subclasses.

This process usually requires:
* compiling all methods and variables into one single class (adding a prefix representing the receiver to avoid name clashes).
* renaming the message selectors according to rules defined by subclasses.
* changing all receivers to self.

Apart from that, it also takes care of representing etoys multithreading using an eternal loop that runs each script whenever is its turn. To control which script is ticking, it defines boolean inst vars that can be set to true or false to start and pause/stop each script individually.

See #translateMainScript:of: as a starting point on how to use this class. Also, see subclasses for actual implementation.
