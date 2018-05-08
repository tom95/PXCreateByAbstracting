as yet unclassified
bubbleColor

	^ self owner isBubble
		ifTrue: [ | ownerColor |
			ownerColor := self owner bubbleColor.
			Color h: ownerColor hue s: ownerColor saturation - 0.2 v: ownerColor brightness + 0.14]
		ifFalse: [Color h: 0 s: 1 v: 0.25]