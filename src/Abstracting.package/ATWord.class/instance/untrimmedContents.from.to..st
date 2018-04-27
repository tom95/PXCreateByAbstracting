accessing
untrimmedContents: aString from: start to: stop

	self contents: (aString copyFrom: start to: stop) withoutTrailingBlanks.
	self trailingWhitespaces: stop - start + 1 - self contents size