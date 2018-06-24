accessing
focusedBubble: aBubble

	super focusedBubble: aBubble.
	self commandPalette selectionInfo: aBubble printString