accessing
updateUndoRedo

	super updateUndoRedo.
	
	self commandPalette
		undoDisabled: undoStack isEmpty;
		redoDisabled: redoStack isEmpty