as yet unclassified
renameDeclaration

	| declaration |
	declaration := self resolveDeclaration: self uneditedName.
	declaration rename: self data.
	self uneditedName: self data.
	self changed