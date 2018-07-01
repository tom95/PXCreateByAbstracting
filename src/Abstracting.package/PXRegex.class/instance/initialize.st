as yet unclassified
initialize

	super initialize.
	
	self
		add: (self createLabelFor: 'r') at: 1;
		add: ((PHIconButton name: #iconPlay)
			align: #(center center);
			attach: (examplePopover := PHPopover new
				vertical: true;
				addApplicationStyles: (PHStyleProvider new
					add: ((PHStyle for: #(textEntry success)) border: 1 color: Color green);
					add: ((PHStyle for: #(textEntry danger)) border: 1 color: Color red));
				add: self createExampleTextEntry))