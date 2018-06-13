as yet unclassified
makeCanvas
	|form|
	
	form := Form extent: 300@300 depth: 32.
	self canvas: form getCanvas.
	
	self add: ((PHImage form: form) scalingMode: #full).
	self editor ifNotNilDo: [:e | self runMethod: e method asNode]