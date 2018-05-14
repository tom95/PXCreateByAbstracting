accessing
registerUndoableAction: aCommand

	| methodValid |
	undoStack addLast: aCommand.
	redoStack removeAll.
	self updateUndoRedo.
	
	methodValid := self method valid.
	self commandPalette saveDisabled: methodValid not.
	(self commandPalette autosave and: [methodValid]) ifTrue: [self save]