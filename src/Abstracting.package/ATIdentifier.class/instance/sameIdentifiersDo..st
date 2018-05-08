as yet unclassified
sameIdentifiersDo: aBlock

	self owner submorphsDo: [:token |
		(token ~~ self and: [token = self]) ifTrue: [aBlock value: token]]