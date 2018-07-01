as yet unclassified
exampleChanged

	| hasEmpty validRegex |
	hasEmpty := false.
	validRegex := self validRegex.
	examplePopover submorphsDo: [:morph |
		validRegex ifTrue: [
			(morph text matchesRegex: self data)
				ifTrue: [morph addStyleClass: #success;  removeStyleClass: #danger]
				ifFalse: [morph addStyleClass: #danger; removeStyleClass: #success]].
		morph text ifEmpty: [hasEmpty := true]].
	
	hasEmpty ifFalse: [examplePopover add: self createExampleTextEntry]