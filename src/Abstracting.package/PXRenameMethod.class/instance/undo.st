as yet unclassified
undo

	self ownerClass removeSelector: (Parser new parseSelector: self newSource).
	self ownerClass compile: oldSource classified: self category