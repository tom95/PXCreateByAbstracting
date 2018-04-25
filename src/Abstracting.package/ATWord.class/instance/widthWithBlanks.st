as yet unclassified
widthWithBlanks

	^ self width + (self trailingWhitespaces * (self font widthOf: Character space))