as yet unclassified
willBeEmpty
	" text is currently empty or will be empty once the next keystroke was handled because all text was selected "

	| selection |
	selection := self selectionBounds.
	^ self text isEmpty or: [selection first = 0 and: [selection last = self text size]]