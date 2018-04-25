as yet unclassified
advanceCursor: aCursor placeAt: aBlock

	aCursor
		advance: self widthWithBlanks
		ifFitting: [:oldPosition | aBlock value: oldPosition]
		ifOverflown: [aCursor newLine. aBlock value: aCursor position. aCursor advance: self widthWithBlanks]