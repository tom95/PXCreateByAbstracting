as yet unclassified
drawOn: aCanvas
	
	aCanvas fillRectangle: self bounds color: Color white.
	self drawTreeOn: aCanvas from: ((self bounds center x) @ (self bounds bottom - 10)) length: 40 angle: 0.
