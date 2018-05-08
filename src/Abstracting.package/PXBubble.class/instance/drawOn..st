as yet unclassified
drawOn: aCanvas

	PHRenderer
		drawBackgroundOn: aCanvas
		bounds: self bounds
		color: self bubbleColor
		radius: (Rectangle origin: 5 @ 5 corner: 5 @ 5) withScalingFactor.
	
	(self selected and: [self owner selected not]) ifTrue: [self drawBorder: Color veryLightGray on: aCanvas width: 4].
	
	self highlight ifTrue: [self drawBorder: Color red on: aCanvas width: 2]