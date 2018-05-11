accessing
registerUndoableAction: aCommand

	undoStack addLast: aCommand.
	redoStack removeAll.
	self updateUndoRedo