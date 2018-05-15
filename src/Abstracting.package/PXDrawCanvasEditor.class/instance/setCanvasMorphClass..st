as yet unclassified
setCanvasMorphClass: aClass

	self add: (canvas := aClass new expand: true).
	
	self editor open: #drawOn: of: aClass