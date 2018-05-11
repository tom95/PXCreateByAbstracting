as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	self validValue ifFalse: [self drawBorder: Color red on: aCanvas width: 2]