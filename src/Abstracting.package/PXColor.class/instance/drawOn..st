as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas fillRectangle: (self bounds insetBy: 4 withScalingFactor) fillStyle: self color