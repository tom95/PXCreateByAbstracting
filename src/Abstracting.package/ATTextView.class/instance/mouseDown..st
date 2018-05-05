as yet unclassified
mouseDown: anEvent

	| clickedOn |
	clickedOn := (self morphsAt: anEvent position) first.
	clickedOn == self ifTrue: [ self deselectAll. selectionStart := 0. ^ self].
	
	self activeWord: clickedOn.
	
	(clickedOn handlesMouseDown: anEvent)
		ifTrue: [clickedOn mouseDown: anEvent]
		ifFalse: [selectionStart := self submorphIndexOf: clickedOn]