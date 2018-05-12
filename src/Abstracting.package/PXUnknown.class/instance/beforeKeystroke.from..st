as yet unclassified
beforeKeystroke: anEvent from: aTextEntry

	anEvent keyCharacter = $' ifTrue: [ | string |
		string := PXString value: ''.
		self run: (PXReplace bubble: self with: string).
		string placeCursorAt: 1.
		^ true].
	
	anEvent keyCharacter = $[ ifTrue: [
			self run: (PXReplace bubble: self with: PXBlock empty).
			^ true].
	
	anEvent keyCharacter isDigit ifTrue: [
		self run: (PXReplace bubble: self with: (PXNumber value: anEvent keyCharacter asString asNumber)).
		^ true].
	
	anEvent keyCharacter = $$ ifTrue: [
		self run: (PXReplace bubble: self with: (PXCharacter incompleteFrom: '$')).
		^ true].
	
	anEvent keyCharacter = $# ifTrue: [
		self run: (PXReplace bubble: self with: (PXSymbol incompleteFrom: '#')).
		^ true].
	
	anEvent keyCharacter isLetter ifTrue: [
		self run: (PXReplace bubble: self with: (PXIdentifier value: anEvent keyCharacter asString)).
		^ true].
	
	anEvent keyCharacter = Character backspace ifTrue: [
		self owner requestDeleteFrom: self.
		^ true].
	
	anEvent keyCharacter = $^ ifTrue: [
		self run: (PXReplace bubble: self with: (PXReturn statement: PXUnknown new)).
		^ true].
	
	(anEvent keyCharacter = $: and: [self owner == self containingBlock and: [self owner statements first == self]]) ifTrue: [
		self run: (PXAddBlockArgument block: self owner name: '').
		^ true].
	
	super beforeKeystroke: anEvent from: aTextEntry.
	
	" we accept no regular editing events "
	^ true