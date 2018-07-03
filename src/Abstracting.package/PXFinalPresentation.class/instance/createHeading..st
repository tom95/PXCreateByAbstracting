as yet unclassified
createHeading: aString

	^ (PHLabel text: aString)
		addStyleClass: 'heading';
		yourself