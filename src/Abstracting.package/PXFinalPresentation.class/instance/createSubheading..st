as yet unclassified
createSubheading: aString

	^ (PHLabel text: aString)
		addStyleClass: 'subheading';
		yourself