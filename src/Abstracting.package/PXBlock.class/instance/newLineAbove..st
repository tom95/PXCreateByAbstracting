as yet unclassified
newLineAbove: aBubble

	| topMost new |
	topMost := aBubble.
	[topMost owner == self] whileFalse: [topMost := topMost owner].

	new := PXUnknown new.
	self addMorph: new inFrontOf: topMost.
	^ new