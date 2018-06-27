as yet unclassified
run: aCommand

	| editor method |
	editor := self editor.
	method := self method.
	aCommand do.
	editor registerUndoableAction: aCommand from: method.
	^ true