as yet unclassified
undo

	self ownerClass removeSelector: (Parser new parseSelector: self newSource).
	self oldSelector ~~ #'' ifTrue: [self ownerClass compile: oldSource classified: self category].
	renamed do: [:message | message selector: self oldSelector].
	self notifyChangesFromRenamed