as yet unclassified
registerUndoableAction: aCommand from: aMethod

	undoStack addLast: aCommand.
	redoStack removeAll.
	self updateUndoRedo.
	self afterChangeFrom: aMethod