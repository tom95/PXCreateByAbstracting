as yet unclassified
drawTrunkOn: aCanvas from: aPoint with: aLength and: anAngle
	
	| endPoint heading |
	heading := (anAngle sin) @ (anAngle cos negated).
	endPoint := aPoint + (heading * aLength).
	aCanvas line: aPoint to: endPoint width: 3 color: Color black.
	^ endPoint
