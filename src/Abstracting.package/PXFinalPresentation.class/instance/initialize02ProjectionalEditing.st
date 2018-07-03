as yet unclassified
initialize02ProjectionalEditing

| classEditor treeMorph |
self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Our Requirements');
	add: (PHLabel text: '
	• deep integration between language concepts and editor
	• every syntactic entity needs to be tangible
	• syntactical correctness as often as possible -> live reload').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Syntactical Entity vs Token');
	add: (PHLabel subcategoryHeader: 'Our First Prototype');
	add: (ATTextEditor new text: 'drawOn: aCanvas
	| x y |
	x := 20.
	y := 4.
	aCanvas fillRectangle: (20 @ y extent: 100 @ 100) fillStyle: Color red').

self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Projectional Editing');
	add: ((PHImage path: (self class imagePath: 'ast-vs-projection.png')) framed: false; align: #(center center));
	add: (PHLabel text: '
	• edits happen on projections of the existing AST
	• every edit directly modifies the AST
	• (hypothetically) always have a syntactically correct program').
	
self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Projections');
	add: (PHPage row
		add: (PHPage new minSize: 180 @ 180; add: ((PHTextArea text: '42') expand: true; align: #(center center)));
		add: (PHWidget new minSize: 50 @ 100);
		add: ((PXMethodEditor doIt: '42') commandPaletteVisible: false; showMethodPattern: false));
	add: (PHLabel text: 'regular editor:' asText allBold,'
	• need to change characters to change meaning
	
', ('projectional editor:') asText allBold,'
	• meaning is inherent, tool projects value
	• different projections with the same meaning
	    (decimal, hexadecimal, slider, ...)
	• can replace entire objects (e.g. tables, color pickers, ...)').

treeMorph := TreeMorph new extent: 200 asPoint withScalingFactor.
classEditor := (PXClassEditor for: TreeMorph)
	expand: true;
	when: #modified send: #changed to: treeMorph.

self addSlideWithLayout
	vertical: false;
	add: classEditor;
	add: (PHMorphContainer new ignoreLayout: true; position: 200 @ 200; add: treeMorph)