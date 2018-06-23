as yet unclassified
mouseMove: anEvent

	self position: self position + anEvent position - dragReference.
	dragReference := anEvent position