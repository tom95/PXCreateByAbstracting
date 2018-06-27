as yet unclassified
initialize

	super initialize.
	
	self
		vertical: true;
		addStyleClass: #pxCascade;
		addApplicationStyles: ((PHStyle for: #pxCascade asStyle > #pxMessageSend)
			padding: (Rectangle left: 30 right: 4 top: 4 bottom: 4))