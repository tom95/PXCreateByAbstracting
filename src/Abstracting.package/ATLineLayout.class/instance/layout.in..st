as yet unclassified
layout: aMorph in: aRectangle

	| cursor |
	cursor := ATCursor new
		maxX: aRectangle width;
		lineHeight: aMorph fontToUse height * 1.5.
	
	aMorph submorphsDo: [:morph |
		morph advanceCursor: cursor placeAt: [:position | morph position: position + aRectangle origin]]