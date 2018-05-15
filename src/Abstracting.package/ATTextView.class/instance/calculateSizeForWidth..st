as yet unclassified
calculateSizeForWidth: aNumber

	| size |
	size := (self layoutPolicy layout: self in: (0 @ 0 extent: aNumber - (self layoutInset directionsAsPoint * 2) x @ 9e8)).
	^ PHSizeRequest min: size natural: size