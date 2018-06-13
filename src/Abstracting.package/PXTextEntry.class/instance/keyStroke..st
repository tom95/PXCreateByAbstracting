as yet unclassified
keyStroke: anEvent

	| previous |
	self owner root withSelectedDo: [:selected | ^ selected keystrokeWhileSelected: anEvent from: self].
	
	self suggestionsOpen ifTrue: [
		anEvent keyCharacter = Character arrowDown ifTrue: [^ self moveActiveSuggestion: 1].
		anEvent keyCharacter = Character arrowDown ifTrue: [^ self moveActiveSuggestion: -1].
		(anEvent keyCharacter = Character tab or: [anEvent keyCharacter = Character enter]) ifTrue: [^ self useActiveSuggestion].
		anEvent keyCharacter = Character escape ifTrue: [^ self closeSuggestionPopup]].
	
	(self owner beforeKeystroke: anEvent from: self) ifTrue: [^ self].
	previous := self text.
	
	super keyStroke: anEvent.
	
	(previous ~=  self text and: [self owner ~= nil]) ifTrue: [
		self owner afterKeystroke: anEvent from: self previous: previous]