as yet unclassified
undo

	super undo.
	self previousBubble addMorph: actualNewBubble receiver asElementNumber: 1.
	self previousBubble focusAfterReplace