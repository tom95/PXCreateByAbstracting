as yet unclassified
undo

	redoStack addLast: undoStack removeLast undo; yourself.
	self updateUndoRedo