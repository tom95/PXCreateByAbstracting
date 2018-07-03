as yet unclassified
initialize

	super initialize.
	
	undoStack := OrderedCollection new.
	redoStack := OrderedCollection new.
	
	self
		addStyleClass: #pxEditor;
		commandPalette: (PXCommandPalette new
			when: #requestSave send: #save to: self;
			when: #requestUndo send: #undo to: self;
			when: #requestRedo send: #redo to: self);
		when: #selectedBubble send: #selectedBubble: to: self commandPalette;
		when: #requestToggleEditor send: #toggleVisible to: self commandPalette;
		updateUndoRedo