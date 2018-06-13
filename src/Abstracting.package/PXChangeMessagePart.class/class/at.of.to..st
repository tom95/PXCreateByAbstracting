as yet unclassified
at: anIndex of: aBubble to: aString
	" only use this if the textentry of the bubble still contains the previous text "

	^ self new
		index: anIndex;
		bubble: aBubble;
		newText: aString;
		yourself