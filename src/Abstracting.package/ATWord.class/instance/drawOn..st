as yet unclassified
drawOn: aCanvas

	self selected
		ifTrue: [aCanvas fillRectangle: self outerBounds color: Color gray]
		ifFalse: [hovered ifTrue: [aCanvas frameRectangle: (self outerBounds insetBy: 3) color: Color red]].
	
	aCanvas drawString: self contents in: self bounds font: self font color: self color.
	
	self cursorIndex >= 0 ifTrue: [
		aCanvas fillRectangle: ((self advanceForIndex: self cursorIndex) @ 0 + self position extent: 1 @ self font height) color: Color red]