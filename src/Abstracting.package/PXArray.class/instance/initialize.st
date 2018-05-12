as yet unclassified
initialize

	super initialize.
	
	textEntry
		text: '{';
		editable: false.
	
	self add: (closingTextEntry := (self createTextEntryFor: '}')
		editable: false;
		yourself).
	
	arrayType := #dynamic