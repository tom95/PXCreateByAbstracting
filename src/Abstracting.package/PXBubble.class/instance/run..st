as yet unclassified
run: aCommand

	| editor |
	editor := self editor.
	aCommand do.
	editor registerUndoableAction: aCommand from: self method.
	^ true