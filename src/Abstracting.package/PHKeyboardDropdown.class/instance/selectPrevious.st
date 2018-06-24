as yet unclassified
selectPrevious

	| newActive |
	newActive := (self submorphs detect: #hovered)
		hovered: false;
		submorphAfter.
		
	(newActive ifNil: [self firstSubmorph]) hovered: true