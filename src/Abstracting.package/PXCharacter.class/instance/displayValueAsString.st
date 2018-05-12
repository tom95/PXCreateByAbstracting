as yet unclassified
displayValueAsString

	self data = Character space ifTrue: [^ '$ '].
	^ super displayValueAsString