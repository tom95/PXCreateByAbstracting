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
	
	parent addMorph: actualNewBubble asElementNumber: index.
	
	actualNewBubble focus