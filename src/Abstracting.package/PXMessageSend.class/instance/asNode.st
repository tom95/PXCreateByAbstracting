as yet unclassified
asNode
	^ MessageNode new
		receiver: self receiver asNode
		selector: self selector
		arguments: self arguments
		precedence: self selector precedence