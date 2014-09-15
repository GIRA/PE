initialization
initialize
	| tabsPane aBin |
	super initialize.
	self basicInitialize.

	self layoutInset: 0;
		layoutPolicy: ProportionalLayout new;
		hResizing: #shrinkWrap;
		vResizing: #rigid;
		borderWidth: 2; borderColor: Color darkGray;
		color: Color darkGray.

	"Place holder for a tabs or text pane"
	tabsPane := Morph new
		setNameTo: 'TabPane';
		hResizing: #spaceFill;
		yourself.
	tabsPane vResizing: #spaceFill.

	self
		addMorph: tabsPane
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ 0 corner: 0 @ tabsPane height)).

	aBin := (PartsBin newPartsBinWithOrientation: #leftToRight from: #())
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		setNameTo: 'Parts';
		dropEnabled: false;
		vResizing: #spaceFill;
		yourself.

	self
		addMorph: aBin
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ tabsPane height corner: 0 @ 0)).

	aBin color: (Color gray muchLighter);
		setNameTo: 'Objects' translated.

	self color: (Color gray);
		setNameTo: 'Objects' translated.

	self partsBin removeAllMorphs.
	self initializeWithTabs: self tabsForCategories.

	"Select the first category"
	(self tabsPane submorphs at: 1 ifAbsent: [nil])
		ifNotNil: [:sm | sm doButtonAction]