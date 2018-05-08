editing
deleteAfterCursor

	self contents: (string first: self cursorIndex), (string allButFirst: self cursorIndex + 1).
	self afterEdit