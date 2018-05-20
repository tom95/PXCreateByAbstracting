as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	| integerValue |
	integerValue := anEvent keyCharacter asInteger.
	
	" only absorb space if we still need a character "
	(aTextEntry text size ~= 2 or: [anEvent keyCharacter ~= Character space]) ifTrue: [
		" absorb all valid character literal characters "
		(integerValue >= 32 and: [integerValue ~= 127]) ifTrue: [
			self run: (PXModifyValue replace: aTextEntry text of: self with: '$', anEvent keyCharacter).
			aTextEntry takeCursorAtEnd.
			^ true]].
	
	^ super beforeKeystroke: anEvent from: aTextEntry