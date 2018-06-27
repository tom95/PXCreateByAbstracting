as yet unclassified
drawOn: aCanvas
	aCanvas fillColor: Color white.
	self drawTreeOn: aCanvas from: ((aCanvas extent x / 2) @ (aCanvas extent y - 10)) with: 40 and: 0.