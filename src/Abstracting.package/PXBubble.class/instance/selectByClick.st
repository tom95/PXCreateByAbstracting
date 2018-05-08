as yet unclassified
selectByClick

	| textEntry |
	self root clearSelection.
	
	textEntry := self focus.
	
	" make sure our selection chain goes from the focused widget to the selected so that we receive key events "
	[textEntry owner selectUp] doWhileTrue: [self selected not]