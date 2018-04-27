as yet unclassified
mouseDown: anEvent

	| clickedOn |
	clickedOn := (self morphsAt: anEvent position) first.
	selectionStart := (self submorphIndexOf: clickedOn) ifNil: [self deselectAll. 0].
	
	selectionStart > 0 ifTrue: [self activeWord: clickedOn]