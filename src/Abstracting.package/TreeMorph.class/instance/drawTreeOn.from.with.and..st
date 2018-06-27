as yet unclassified
drawTreeOn: aCanvas from: basePoint with: length and: angle
  (length > 10) ifTrue: [
	|newBasePoint|
	newBasePoint := self drawTrunkOn: aCanvas from: basePoint with: length and: angle.
	self drawTreeOn: aCanvas from: newBasePoint with: (length * 0.7) and: (angle + 0.3).
	self drawTreeOn: aCanvas from: newBasePoint with: (length * 0.7) and: (angle - 0.3).
	]