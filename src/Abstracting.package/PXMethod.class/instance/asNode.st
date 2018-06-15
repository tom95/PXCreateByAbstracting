as yet unclassified
asNode

	^ MethodNode new
	selector: self selector
	arguments: self arguments
	precedence: self selector precedence
	temporaries: (self block declarationNodes)
	block: self block asNode
	encoder: (EncoderForV3PlusClosures new initScopeAndLiteralTables; yourself)
	primitive: 0