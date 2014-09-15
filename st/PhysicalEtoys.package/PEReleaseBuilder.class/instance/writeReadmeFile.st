releasing
writeReadmeFile
FileDirectory default containingDirectory
	forceNewFileNamed: 'README.txt' do: [:file | | contents |
contents := 'Physical Etoys
**************
{1}
Centro de Altos Estudios en Tecnología Informática
Universidad Abierta Interamericana
{2}


Description:
------------
Physical Etoys is a visual programming tool that connects the virtual world of computers with the real world in which we live in. With Physical Etoys you can easily program real world objects (such as robots) to perform interesting tasks, or you can sense the world and use that information to control virtual objects (such as drawings on the screen).
Everything is just as easy as grabbing some tiles representing instructions and assembling a script. No need for programming skills, just use the mouse and explore the system and its possibilities!

Physical Etoys is actually an "extension" to Etoys (http://www.squeakland.org), a media-rich authoring environment and visual programming system made by the very same people who created Smalltalk. We believe Etoys is a wonderful software that helps children explore their own creativity in fun and educational ways, so we wanted to give Etoys the possibility to interact with real world objects such as robotic kits and innovative joysticks. Feel free to learn more about Etoys, it''s open, it''s free, and it''s really fun!


Installed packages (from SqueakSource):
---------------------------------------
{3}

License:
--------
{4}'
format: {String streamContents: [:str | PhysicalEtoys authors do: [:author | str nextPutAll: author] separatedBy: [str nextPutAll: ' - ']].
	PhysicalEtoys website.
	PhysicalEtoys packageVersions inject: '' into: [:subTotal :next | subTotal, '* ', next, String cr].
	PhysicalEtoys license}.
file nextPutAll: contents]