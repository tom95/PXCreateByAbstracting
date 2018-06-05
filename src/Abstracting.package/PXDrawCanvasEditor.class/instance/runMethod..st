as yet unclassified
runMethod: aMethodNode
	| method |
	method := aMethodNode generate: (CompiledMethodTrailer empty). 
	nil withArgs: canvas executeMethod: method