as yet unclassified
handleKeyStroke: anEvent from: aTextEntry

	anEvent keyCharacter = $' ifTrue: [
		(self replaceBy: [PXString value: '']) focus; placeCursorAt: 1.
		^ true].
	
	anEvent keyCharacter = $[ ifTrue: [
			(self replaceBy: [PXBlock statements: {PXUnknown new} temporaries: #() arguments: #()]) focusFirstStatement.
			^ true].
	
	anEvent keyCharacter isDigit ifTrue: [
		(self replaceBy: [PXNumber value: anEvent keyCharacter asString asNumber]) focus; placeCursorAt: 1.
		^ true].
	
	anEvent keyCharacter = $$ ifTrue: [
		(self replaceBy: [PXCharacter value: $ ]) focus; selectFrom: 1 to: 2.
		^ true].
	
	anEvent keyCharacter = $# ifTrue: [
		(self replaceBy: [PXSymbol value: #'']) focus; placeCursorAt: 1.
		^ true].
	
	anEvent keyCharacter isLetter ifTrue: [
		(self replaceBy: [PXIdentifier value: anEvent keyCharacter asString]) focus; placeCursorAt: 1.
		^ true].
	
	^ super handleKeyStroke: anEvent from: aTextEntry