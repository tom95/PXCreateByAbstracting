as yet unclassified
newLineBelow: aBubble

	| topMost |
	topMost := aBubble.
	[topMost owner == self] whileFalse: [topMost := topMost owner].
	
	^ PXInsertEmptyStatement in: self at: (self submorphIndexOf: topMost) + 1