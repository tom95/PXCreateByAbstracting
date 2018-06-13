as yet unclassified
at: anIndex replace: oldString of: aBubble to: aString

	^ self new
		index: anIndex;
		bubble: aBubble;
		newText: aString;
		previousText: oldString;
		yourself