as yet unclassified
bubble: aBubble

	super bubble: aBubble.
	previousOwner := aBubble owner.
	previousIndex := previousOwner submorphIndexOf: aBubble