as yet unclassified
addBeforeTrailing: aWidget

	trailingTextEntry
		ifNotNil: [self add: aWidget before: trailingTextEntry]
		ifNil: [self add: aWidget]