as yet unclassified
save

	| result |
	self commandPalette saveDisabled: true.
	result := self method save.
	
	^ result