as yet unclassified
replace: aString of: aBubble with: aNewString

	^ self new
		previousString: aString;
		bubble: aBubble;
		newString: aNewString;
		yourself