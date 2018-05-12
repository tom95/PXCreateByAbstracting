as yet unclassified
basicDeselect

	selected ifTrue: [
		selected := false.
		self changed]