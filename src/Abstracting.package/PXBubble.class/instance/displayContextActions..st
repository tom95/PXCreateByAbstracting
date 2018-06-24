as yet unclassified
displayContextActions: aCollection

	contextDropdown
		ifNil: [contextDropdown := PHKeyboardDropdown new]
		ifNotNil: [contextDropdown removeAllMorphs].
	
	contextDropdown addAll: aCollection.
	
	contextDropdown
		when: #closed send: #closeContextDropdown to: self;
		position: self bottomLeft;
		openInWorld: self world