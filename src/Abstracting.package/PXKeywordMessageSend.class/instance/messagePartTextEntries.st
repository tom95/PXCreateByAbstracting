as yet unclassified
messagePartTextEntries

	| index |
	index := 1.
	^ self submorphs select: [:m | 
		index := index + 1.
		(index - 1) even]