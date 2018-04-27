as yet unclassified
initialize

	super initialize.
	
	selectionStart := 0.
	
	self
		color: Color white;
		layoutPolicy: ATLineLayout new;
		extent: 400 @ 400;
		layoutInset: 20