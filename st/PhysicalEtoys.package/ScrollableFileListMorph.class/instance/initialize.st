initialization
initialize
super initialize.
scrollPane := ScrollPane new extent: 343@508; borderWidth: 2; color: Color white.
scrollPane scroller addMorph: (fileList := FileListMorph new position: 2@5).
scrollPane alwaysShowScrollBars: true.
self extent: scrollPane extent; color: Color transparent.
self addMorph: scrollPane.
self updateScrollPane.
