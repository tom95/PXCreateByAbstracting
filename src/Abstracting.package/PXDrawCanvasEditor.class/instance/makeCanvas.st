as yet unclassified
makeCanvas
	
	| form |
	form := Form extent: 300@300 depth: 32.
	self canvas: form getCanvas.
	
	image := PHImage form: form.
	self add: (image scalingMode: #full).
	self runMethod