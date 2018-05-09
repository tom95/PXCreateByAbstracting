as yet unclassified
initialize

	super initialize.
	
	hasMouseDown := false.
	self add: (textEntry := self createTextEntry)