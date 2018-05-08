as yet unclassified
setIdentifier: anIdentifier statement: aStatement

	self removeAllMorphs.
	self add: anIdentifier.
	self add: (self createLabelFor: ':=').
	self add: aStatement