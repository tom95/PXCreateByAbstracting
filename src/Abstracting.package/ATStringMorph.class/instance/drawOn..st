as yet unclassified
drawOn: aCanvas

	aCanvas drawString: self contents in: self bounds font: self fontToUse color: self color.
	
	hovered ifTrue: [aCanvas frameRectangle: self bounds color: Color red].
	
	self cursorIndex >= 0 ifTrue: [
		aCanvas fillRectangle: ((self advanceForIndex: self cursorIndex) @ 0 + self position extent: 1 @ self fontToUse height) color: Color red]