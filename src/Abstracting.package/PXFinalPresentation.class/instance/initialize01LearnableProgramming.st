as yet unclassified
initialize01LearnableProgramming

self addSlideWithCenterBox
	add: (self createHeading: '„Learnable Programming“');
	add: ((PHImage path: (self class imagePath: 'learnable_programming.png')) align: #(center center));
	add: (self createText: 'http://worrydream.com/LearnableProgramming/').

self addSlideWithCenterBox
	add: (self createHeading: 'Learnable Programming');
	add: (self createSubheading: 'Create By Abstracting');
	add: (PHMorphContainer new add: (AnimatedImageMorph fromGIFFileNamed: (self class imagePath: 'Abstract4.gif') fullName));
	add: (self createText: '
	• start concrete
	• experiment
	• abstract').
	
self addSlideWithCenterBox
	add: (PXDrawCanvasEditor fromSource: 'drawOn: aCanvas aCanvas fillRectangle: (80 @ 80 extent: 40 @ 24) fillStyle: Color black. aCanvas drawTriangleFrom: 80 @ 80 to: 120 @ 80 and: 100 @ 60 color: Color black').