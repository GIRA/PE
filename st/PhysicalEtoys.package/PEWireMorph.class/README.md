Abstract class. I represent the wire which connects different etoys. The difference with my superclass is that I control that the connections are valid by checking the classes of my sourceMorph and destinationMorph. Subclasses have to override #validConnectionClasses (see class side).