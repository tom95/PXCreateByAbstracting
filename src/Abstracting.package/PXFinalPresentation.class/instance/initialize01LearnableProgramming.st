as yet unclassified
initialize01LearnableProgramming

self addSlideWithLayout
	add: (PHLabel pageHeader: '„Learnable Programming“');
	add: ((PHImage path: (self class imagePath: 'learnable_programming.png')) align: #(center center));
	add: (PHLabel text: 'http://worrydream.com/LearnableProgramming/').

self addSlideWithLayout
	add: (PHLabel pageHeader: 'Learnable Programming');
	add: (AnimatedImageMorph fromGIFFileNamed: (self class imagePath: 'Abstract4.gif') fullName).
	
self addSlideWithCenterBox
	add: (PXDrawCanvasEditor fromSource: 'drawOn: aCanvas aCanvas drawRectangle: 80 @ 80 extent: 40 @ 24. aCanvas drawTriangleFrom: 80 @ 80 to: 100 @ 60 and: 120 @ 80').