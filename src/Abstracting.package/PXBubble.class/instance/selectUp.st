as yet unclassified
selectUp

	self selected
		ifTrue: [self owner select]
		ifFalse: [self select]