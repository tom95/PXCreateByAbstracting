accessing
redo

	undoStack addLast: redoStack removeLast do; yourself.
	self updateUndoRedo