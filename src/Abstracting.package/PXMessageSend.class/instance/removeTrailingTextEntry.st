as yet unclassified
removeTrailingTextEntry

	trailingTextEntry ifNotNil: [ self remove: trailingTextEntry ].
	trailingTextEntry := nil