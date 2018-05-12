as yet unclassified
arguments

	^ self submorphs copyUpTo: (self submorphs detect: [:m | m isBubble not])