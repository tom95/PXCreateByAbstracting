as yet unclassified
drawTreeOn: aCanvas from: basePoint length: leggth angle: angle

((lgeth) > (10)) ifTrue: ([| newBasePoint |(newBasePoint:=(self) drawTrunkOn: (aCanvas) from: (basePoint) length: (leggth) angle: (angle) ).(self) drawTreeOn: (aCanvas) from: (newBasePoint) length: ((leggth) * (0.7)) angle: ((angle) + (0.3)) .(self) drawTreeOn: (aCanvas) from: (newBasePoint) length: ((leggth) * (0.7)) angle: ((angle) - (0.3)) ]) 