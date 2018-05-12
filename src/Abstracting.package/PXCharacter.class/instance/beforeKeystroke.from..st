as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	| integerValue |
	integerValue := anEvent keyCharacter asInteger.
	
	self flag: #todo. " maybe consider passing isSpecial and Character space through to parent handler if we already have a valid character "
	(integerValue >= 32 and: [integerValue ~= 127]) ifTrue: [
		self run: (PXModifyValue replace: aTextEntry text of: self with: '$', anEvent keyCharacter).
		aTextEntry takeCursorAtEnd.
		^ true].
	
	^ super beforeKeystroke: anEvent from: aTextEntry