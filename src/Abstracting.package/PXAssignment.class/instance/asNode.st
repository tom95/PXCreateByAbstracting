as yet unclassified
asNode

	^ AssignmentNode new
		variable: self identifier asNode
		value: self statement asNode