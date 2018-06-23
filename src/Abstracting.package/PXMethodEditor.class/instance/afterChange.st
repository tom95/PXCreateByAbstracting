accessing
afterChange

	| methodValid |
	methodValid := self method valid.
	self commandPalette saveDisabled: methodValid not.
	(self commandPalette autosave and: [methodValid]) ifTrue: [self save].
	methodValid ifTrue: [self triggerEvent: #modified]