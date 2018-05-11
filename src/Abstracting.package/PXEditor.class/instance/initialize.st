as yet unclassified
initialize 
	
	super initialize.
	
	undoStack := OrderedCollection new.
	redoStack := OrderedCollection new.
	
	self
		commandPalette: (PXCommandPalette new
			when: #requestUndo send: #undo to: self;
			when: #requestRedo send: #redo to: self);
		withLayout;
		vertical: false;
		updateUndoRedo