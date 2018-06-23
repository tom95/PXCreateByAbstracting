as yet unclassified
runMethod
	
	self editor ifNotNilDo: [:e |
		e method valid ifTrue: [
			self runMethod: e method generate]]