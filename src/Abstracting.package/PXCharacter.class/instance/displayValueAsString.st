as yet unclassified
displayValueAsString

	self value = Character space ifTrue: [^ '$ '].
	^ super displayValueAsString