as yet unclassified
clearSelection

	self allMorphsDo: [:m | m isBubble ifTrue: [m deselect]]