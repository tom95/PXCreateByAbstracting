editing
insertAtCursor: aCharacter

	self contents: (string first: self cursorIndex), aCharacter, (string allButFirst: self cursorIndex).
	self afterEdit