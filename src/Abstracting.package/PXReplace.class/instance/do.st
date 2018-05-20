as yet unclassified
do

	| index parent |
	parent := self previousBubble owner.
	index := parent submorphIndexOf: self previousBubble.
	
	parent removeMorph: self previousBubble.
	actualNewBubble := self newBubble value.
	
	actualNewBubble owner ifNotNil: [:o |
		previousOwner := o.
		previousIndex := o submorphIndexOf: actualNewBubble].
	
	actualNewBubble resizeToPreferred.
	parent addMorph: actualNewBubble asElementNumber: index.
	
	actualNewBubble fullBounds; layoutChanged.
	actualNewBubble focus.
	
	(actualNewBubble isString and: [actualNewBubble data = '']) ifTrue: [actualNewBubble placeCursorAt: 1]