as yet unclassified
advanceCursor: aCursor placeAt: aBlock

	aBlock value: aCursor position.
	aCursor advance: (self font widthOfString: '    ')