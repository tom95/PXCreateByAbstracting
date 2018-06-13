accessing
initialize 
	
	super initialize.
	
	self
		addStyleClass: #pxCommandPalette;
		addApplicationStyles: ((PHStyle for: #pxCommandPallette) spacing: 2);
		vertical: true;
		
		add: (autosave := PHCheckboxWithLabel label: 'Autosave');
		
		add: (PHPage row
			add: (saveButton := (PHButton icon: #iconSave)
				disabled: true;
				when: #clicked send: #triggerEvent: to: self with: #requestSave);
			add: (PHButtonGroup new
				add: (undoButton := (PHButton icon: #iconUndo)
					when: #clicked send: #triggerEvent: to: self with: #requestUndo);
				add: (redoButton := (PHButton icon: #iconRepeat)
					when: #clicked send: #triggerEvent: to: self with: #requestRedo)));
		
		add: (buttons := PHPage column);
		
		add: (selectionInfo := PHLabel new)