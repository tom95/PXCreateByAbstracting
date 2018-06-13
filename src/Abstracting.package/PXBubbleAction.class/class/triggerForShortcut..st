as yet unclassified
triggerForShortcut: anEvent

	^ self shortcut ifNil: [false] ifNotNil: [:shortcut | anEvent keyCharacter = shortcut]