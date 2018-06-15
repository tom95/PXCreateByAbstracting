as yet unclassified
runMethod
	
	self editor ifNotNilDo: [:e |
		self runMethod: e method generate]