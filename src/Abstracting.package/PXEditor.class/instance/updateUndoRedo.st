accessing
updateUndoRedo

	self commandPalette
		undoDisabled: undoStack isEmpty;
		redoDisabled: redoStack isEmpty