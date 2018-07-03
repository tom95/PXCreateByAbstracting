as yet unclassified
do

	self oldSelector ~~ #'' ifTrue: [self ownerClass removeSelector: self oldSelector].
	self ownerClass compile: self newSource classified: (self category ifNil: ['as yet unclassified'])