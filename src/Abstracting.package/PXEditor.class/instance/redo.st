as yet unclassified
redo

	undoStack addLast: redoStack removeLast do; yourself.
	self updateUndoRedo