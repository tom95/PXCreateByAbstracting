accessing
save

	| result |
	self commandPalette saveDisabled: true.
	result := self method save.
	
	self triggerEvent: #saved with: result.
	^ result