accessing
didSelect: aPXBubble

	aPXBubble
		ifNil: [ buttons do: [ :b | b disabled: true]]
		ifNotNil: [
			"TODO check capabilities"
			buttons do: [ :b | b disabled: false]].