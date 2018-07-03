as yet unclassified
drawTreeOn: aCanvas from: basePoint length: length angle: angle

  length > 10 ifTrue: [
		| newBasePoint |
		newBasePoint := self drawTrunkOn: aCanvas from: basePoint length: length angle: angle.
		self drawTreeOn: aCanvas from: newBasePoint length: (length * 0.7) angle: (angle + 0.3).
		self drawTreeOn: aCanvas from: newBasePoint length: (length * 0.7) angle: (angle - 0.3)]
