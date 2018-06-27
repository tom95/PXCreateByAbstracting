as yet unclassified
doubleClick: anEvent

	self add: ((PXMethod newIn: self contextClass) position: anEvent position - self position)