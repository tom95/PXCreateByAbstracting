as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	anEvent keyCharacter = Character space ifTrue: [
		(self replaceBy: [PXMessageSend receiver: self selector: #'' arguments: #()]) focusSelector.
		^ true].
	
	anEvent keyCharacter isSpecial ifTrue: [
		(self replaceBy: [PXMessageSend receiver: self selector: anEvent keyCharacter asSymbol arguments: {PXUnknown new}]) focusArgumentAt: 1.
		^ true].
	
	^ false