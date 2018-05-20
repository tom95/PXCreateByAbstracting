as yet unclassified
commandForCharacter: aCharacter ifFound: aBlock ifNone: anotherBlock

	aCharacter = $' ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXString value: ''))].
	
	aCharacter = $[ ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: PXBlock empty)].
	
	aCharacter isDigit ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXNumber value: aCharacter asString asNumber))].
	
	aCharacter = $$ ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXCharacter incompleteFrom: '$'))].
	
	aCharacter = $# ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXSymbol incompleteFrom: '#'))].
	
	aCharacter isLetter ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXIdentifier value: aCharacter asString))].
	
	aCharacter = $^ ifTrue: [
		^ aBlock value: (PXReplace bubble: self with: (PXReturn statement: PXUnknown new))].
	
	anotherBlock value