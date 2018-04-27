as yet unclassified
keyStroke: anEvent

	self activeWord ifNotNil: [self activeWord handleKeyStroke: anEvent reportTo: self]