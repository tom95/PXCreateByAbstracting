as yet unclassified
valid

	self allMorphsDo: [:m |
		(m isBubble and: [m validValue not]) ifTrue: [^ false]].
	
	^ true