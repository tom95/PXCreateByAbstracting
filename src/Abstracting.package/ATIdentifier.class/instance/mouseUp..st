as yet unclassified
mouseUp: anEvent

	hasMouseDown := false.
	assignLine ifNotNil: [
		assignLine delete.
	
		(self owner morphsAt: anEvent position) detect: #acceptsIdentifierSubstitution ifFound: [:token |
			self flag: #todo. "change type of token"
			token contents: self contents; color: self color] ifNone: []]