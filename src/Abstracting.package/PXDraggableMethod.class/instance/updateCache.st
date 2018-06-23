as yet unclassified
updateCache

	| wasVisible |
	wasVisible := self method visible.
	self method visible: true.
	self method fullBounds.
	cached := self method imageForm.
	currentForm := cached magnifyBy: self scale.
	self extent: cached extent.
	self method visible: wasVisible