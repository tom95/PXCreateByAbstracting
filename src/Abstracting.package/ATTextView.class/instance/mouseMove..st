as yet unclassified
mouseMove: anEvent

	selectionStart ~= 0 ifTrue: [
		(self morphsAt: anEvent position) ifNotEmpty: [:morphs |
			(self submorphIndexOf: morphs first) ifNotNil: [:index | self selectionStop: index]]]