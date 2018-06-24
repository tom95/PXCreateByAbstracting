as yet unclassified
registerUndoableAction: aCommand

	undoStack addLast: aCommand.
	redoStack removeAll.
	self updateUndoRedo