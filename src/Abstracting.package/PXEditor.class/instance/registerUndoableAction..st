accessing
registerUndoableAction: aCommand

	undoStack addLast: aCommand.
	redoStack removeAll.
	self updateUndoRedo.
	
	self commandPalette saveDisabled: (false or: [self method valid not])