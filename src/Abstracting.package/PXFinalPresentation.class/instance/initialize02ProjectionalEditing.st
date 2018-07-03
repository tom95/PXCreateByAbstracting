as yet unclassified
initialize02ProjectionalEditing

| classEditor treeMorph |
self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Our Requirements');
	add: (PHLabel markup: '
	• <b>deep integration</b> between language concepts and editor
	• every syntactic entity needs to be <b>tangible</b>
	• syntactical correctness as often as possible -> <b>live reload</b>').

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
	add: (PHLabel markup: '
	• edits happen on <b>projections</b> of the existing AST
	• every edit <b>directly modifies</b> the AST
	• (hypothetically) always have a <i>syntactically</i> correct program');
	add: ((PHImage path: (self class imagePath: 'ast-vs-projection.png')) framed: false; align: #(center center)).
	
self addSlideWithCenterBox
	add: (PHLabel pageHeader: 'Projections');
	add: (PHPage row
		add: (PHPage new minSize: 180 @ 180; add: ((PHTextArea text: '42') expand: true; align: #(center center)));
		add: (PHWidget new minSize: 50 @ 100);
		add: ((PXMethodEditor doIt: '42') commandPaletteVisible: false; showMethodPattern: false));
	add: (PHLabel markup: '<b>regular editor:</b>
	• need to change <b>characters</b> to change meaning
	
	<b>projectional editor:</b>
	• meaning is <b>inherent</b>, tool projects <b>value</b>
	• different projections with the <b>same meaning</b>
	    (decimal, hexadecimal, slider, ...)
	• can replace <b>entire objects</b> (e.g. tables, color pickers, ...)').

treeMorph := TreeMorph new position: 0 @ 0; extent: 200 asPoint withScalingFactor.
classEditor := (PXClassEditor for: TreeMorph)
	expand: true;
	when: #modified send: #changed to: treeMorph.

self addSlideWithLayout
	vertical: false;
	add: classEditor;
	add: (PHMorphContainer new ignoreLayout: true; position: 0 @ 0; extent: 200 @ 200; add: treeMorph)