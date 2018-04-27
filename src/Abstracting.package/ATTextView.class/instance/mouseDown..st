as yet unclassified
mouseDown: anEvent

	| clickedOn |
	clickedOn := (self morphsAt: anEvent position) first.
	clickedOn == self ifTrue: [ self deselectAll. selectionStart := 0. ^ self].
	
	selectionStart := self submorphIndexOf: clickedOn.
	self activeWord: clickedOn.
	
	(clickedOn handlesMouseDown: anEvent) ifTrue: [clickedOn mouseDown: anEvent].