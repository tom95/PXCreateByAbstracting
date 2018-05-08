as yet unclassified
newLineBelow: aBubble

	| topMost new |
	topMost := aBubble.
	[topMost owner == self] whileFalse: [topMost := topMost owner].
	
	new := PXUnknown new.
	self addMorph: new after: topMost.
	^ new