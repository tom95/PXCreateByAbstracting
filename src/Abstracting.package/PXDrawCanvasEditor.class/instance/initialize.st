as yet unclassified
initialize

	super initialize.
	
	self
		withLayout;
		vertical: false;
		add: (editor := PXEditor new
			when: #saved send: #runMethod: to: self)