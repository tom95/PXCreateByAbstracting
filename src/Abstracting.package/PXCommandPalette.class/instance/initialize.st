accessing
initialize 
	
	super initialize.
	
	autosave := PHCheckboxWithLabel label: 'Autosave'.
	saveButton := (PHButton icon: #iconSave)
		disabled: true;
		when: #clicked send: #triggerEvent: to: self with: #requestSave.
	
	self
		addStyleClass: #pxCommandPalette;
		addApplicationStyles: ((PHStyle for: #pxCommandPallette) spacing: 2);
		vertical: true;
		
		"add: (autosave);"
		
		add: (PHPage row
			"add: (saveButton);"
			add: (PHButtonGroup new
				add: (undoButton := (PHButton icon: #iconUndo)
					when: #clicked send: #triggerEvent: to: self with: #requestUndo);
				add: (redoButton := (PHButton icon: #iconRepeat)
					when: #clicked send: #triggerEvent: to: self with: #requestRedo)));
		
		add: (buttons := PHPage column);
		
		add: (selectionInfo := PHLabel new)