as yet unclassified
drawOn: aCanvas
	
	self drawTreeOn: aCanvas from: ((self bounds center x) @ (self bounds bottom - 10)) length: 40 angle: 0.
