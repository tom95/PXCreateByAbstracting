as yet unclassified
layout: aMorph in: aRectangle

	| x y height |
	x := aRectangle left.
	y := aRectangle top.
	
	height := 0.
	
	aMorph submorphsDo: [:morph |
		((morph isKindOf: ATLineBreak) or: [x + morph width > aRectangle right]) ifTrue: [x := aRectangle left. y := y + height + 5. height := 0].
		
		height := height max: morph height.
		morph position: x @ y.
		x := x + morph width]