accessing
didSelect: aPXBubble

	aPXBubble
		ifNil: [self disableAll]
		ifNotNil: [
			"TODO check capabilities"
			buttons do: [ :b | b disabled: false]].