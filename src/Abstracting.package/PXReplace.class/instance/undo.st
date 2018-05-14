as yet unclassified
undo

	actualNewBubble replaceBy: self previousBubble.
	
	previousOwner ifNotNil: [
		previousOwner addMorph: actualNewBubble asElementNumber: previousIndex].
	
	self previousBubble focus