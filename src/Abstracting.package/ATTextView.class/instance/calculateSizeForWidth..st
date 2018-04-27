as yet unclassified
calculateSizeForWidth: aNumber

	| size |
	size := (self layoutPolicy layout: self in: (0 @ 0 extent: aNumber - (self layoutInset * 2) @ 9e8)).
	^ PHSizeRequest min: size natural: size