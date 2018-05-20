as yet unclassified
isAllSelected

	| selection |
	selection := self selectionBounds.
	^ self text isEmpty or: [selection first = 0 and: [selection last = self text size]]