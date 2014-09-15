initialize
initialize
super initialize.
scrollPane := ScrollPane new extent:  620@300; borderWidth: 0; color: (Color r: 0.419 g: 0.419 b: 0.419).
scrollPane scroller addMorph: (spreadsheet := BasicSpreadsheetMorph new position: 2@5).
scrollPane alwaysShowScrollBars: true.
self extent: scrollPane extent; color: Color transparent.
self addMorph: scrollPane.