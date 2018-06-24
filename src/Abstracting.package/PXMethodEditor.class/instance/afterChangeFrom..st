accessing
afterChangeFrom: aMethod

	| methodValid |
	methodValid := aMethod valid.
	self commandPalette saveDisabled: methodValid not.
	(self commandPalette autosave and: [methodValid]) ifTrue: [self save].
	methodValid ifTrue: [self triggerEvent: #modified]