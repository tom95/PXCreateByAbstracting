as yet unclassified
selectNext

	| newActive |
	newActive := (self submorphs detect: #hovered)
		hovered: false;
		submorphBefore.
		
	(newActive ifNil: [self lastSubmorph]) hovered: true