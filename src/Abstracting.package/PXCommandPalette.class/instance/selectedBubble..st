accessing
selectedBubble: aBubble
	
	selectedBubble := aBubble.
	
	aBubble
		ifNil: [self disableAll]
		ifNotNil: [
			"TODO check capabilities"
			buttons do: [ :b | b disabled: false]]