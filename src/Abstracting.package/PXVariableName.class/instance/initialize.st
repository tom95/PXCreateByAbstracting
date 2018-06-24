as yet unclassified
initialize

	super initialize.
	
	PXAssignLineComponent bubble: self.
	self add: (textEntry := self createTextEntry)