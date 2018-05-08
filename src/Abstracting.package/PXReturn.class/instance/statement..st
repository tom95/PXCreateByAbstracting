as yet unclassified
statement: aStatement

	self removeAllMorphs.
	self add: (self createLabelFor: '^').
	self add: aStatement