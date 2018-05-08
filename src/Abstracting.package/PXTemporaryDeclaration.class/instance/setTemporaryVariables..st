as yet unclassified
setTemporaryVariables: aCollection

	aCollection ifNotEmpty: [
		self add: (self createLabelFor: '|').
		self addAll: aCollection.
		self add: (self createLabelFor: '|')]