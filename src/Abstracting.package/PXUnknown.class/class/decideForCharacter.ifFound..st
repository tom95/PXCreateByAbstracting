as yet unclassified
decideForCharacter: aCharacter ifFound: aBlock

	^ self new commandForCharacter: aCharacter ifFound: [:cmd | aBlock value: cmd newBubble] ifNone: []