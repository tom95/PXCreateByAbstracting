as yet unclassified
selectDown

	"self owner selected
		ifTrue: [self owner selectDown]
		ifFalse: [
			selected := false.
			self changed]"