as yet unclassified
drawOn: aCanvas

	self selected ifTrue: [aCanvas fillRectangle: self outerBounds color: (Color fromString: '#cccccc')]