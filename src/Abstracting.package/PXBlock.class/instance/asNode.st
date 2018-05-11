as yet unclassified
asNode

	self flag: #todo. "statements, temporaries"
	^ BlockNode new
		arguments: #()
		statements: (self statements collect: #asNode)
		returns: false
		from: nil