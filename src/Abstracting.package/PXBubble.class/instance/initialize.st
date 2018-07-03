as yet unclassified
initialize

	super initialize.
	
	highlight := false.
	selected := false.
	
	self
		withLayout;
		align: #(start center);
		addStyleClass: #pxBubble;
		vertical: false;
		addApplicationStyles: (PHStyleProvider new
			add: ((PHStyle for: #textEntry asStyle, #label) color: Color white; padding: 0);
			add: ((PHStyle for: #dark asStyle > #textEntry, #dark > #label) color: Color black);
			add: ((PHStyle for: #pxBubble) padding: 4);
			add: ((PHStyle for: #pxBlock) spacing: 2))