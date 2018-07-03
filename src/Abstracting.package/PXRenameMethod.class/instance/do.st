as yet unclassified
do

	self ownerClass removeSelector: self oldSelector.
	self ownerClass compile: self newSource classified: self category