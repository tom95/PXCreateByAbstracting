as yet unclassified
asNode

	^ MethodNode new
	selector: self selector
	arguments: (self arguments collect: #asNode)
	precedence: self selector precedence
	temporaries: (self block temporaries collect: #asNode)
	block: self block asNode
	encoder: nil
	primitive: 0