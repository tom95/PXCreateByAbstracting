as yet unclassified
initialize

	super initialize.
	
	textEntry text: '{'.
	self add: (closingTextEntry := self createTextEntryFor: '}')