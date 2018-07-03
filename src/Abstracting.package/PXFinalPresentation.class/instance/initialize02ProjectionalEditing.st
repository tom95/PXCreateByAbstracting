as yet unclassified
initialize02ProjectionalEditing

self addSlideWithCenterBox
	add: (self createHeading: 'Our Requirements');
	add: (self createMarkup: '
	• <b>deep integration</b> between language concepts and editor
	• syntactical correctness as often as possible -> <b>live reload</b>
	• every syntactic entity needs to be <b>tangible</b>').

self addSlideWithCenterBox
	add: (self createHeading: 'Syntactical Entity vs Token');
	add: (self createSubheading: 'Our First Prototype');
	add: (ATTextEditor new text: 'drawOn: aCanvas
	| x y |
	x := 20.
	y := 4.
	aCanvas fillRectangle: (20 @ y extent: 100 @ 100) fillStyle: Color red').

self addSlideWithCenterBox
	add: (self createHeading: 'Abstract Syntax Tree');
	add: ((PHImage path: (self class imagePath: 'ast.png')) framed: false; align: #(center center)).

self addSlideWithCenterBox
	add: (self createSubheading: 'Projectional Editing - Our Approach');
	add: (self createMarkup: '• edits happen on <b>projections</b> of the existing AST, modify it directly
	• (hypothetically) always have a <i>syntactically</i> correct program');
	add: ((PHImage path: (self class imagePath: 'ast-vs-projection.png')) framed: false; align: #(center center)).
	
self addSlideWithCenterBox
	add: (self createHeading: 'Projections');
	add: (PHPage row
		add: (PHPage new minSize: 180 @ 180; add: ((PHTextArea text: '42') expand: true; align: #(center center)));
		add: (PHWidget new minSize: 50 @ 100);
		add: ((PXMethodEditor minimalDoIt: '42')
			addUserStyles: ((PHStyle for: #pxEditor asStyle > #label) fontSize: 24)));
	add: ((PXMethodEditor minimalDoIt: '''(\D+\.\D+\d*@hpi\.de''')
			addUserStyles: ((PHStyle for: #pxEditor asStyle > #label) fontSize: 24));
	add: (self createMarkup: '<b>regular editor:</b>
	• need to change <b>characters</b> to change meaning
	
<b>projectional editor:</b>
	• meaning is <b>inherent</b>, tool projects <b>value</b>
	• different projections with the <b>same meaning</b>
	    (decimal, hexadecimal, slider, ...)
	• can replace <b>entire objects</b> (e.g. tables, color pickers, ...)').

self buildDemoEditorOn: (self addSlideWithLayout vertical: false)