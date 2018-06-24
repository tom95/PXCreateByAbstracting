as yet unclassified
initialize 
	
	super initialize.
	
	self
		addStyleClass: #pxEditor;
		commandPalette: (PXCommandPalette new
			when: #requestSave send: #save to: self;
			when: #requestUndo send: #undo to: self;
			when: #requestRedo send: #redo to: self);
		withLayout;
		vertical: false;
		updateUndoRedo