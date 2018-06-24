as yet unclassified
initialize

	super initialize.
	
	self
		addStyleClass: #pxClassEditor;
		addApplicationStyles: ((PHStyle for: #pxClassEditor)
			backgroundColor: Color white)