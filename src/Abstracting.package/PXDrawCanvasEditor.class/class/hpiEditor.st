as yet unclassified
hpiEditor
	^ self new
		editor: (PXMethodEditor fromSource:  'drawOn: aCanvas
		(aCanvas) fillRectangle: (((17) @ (42)) extent: ((234) @ (241)) ) fillStyle: ((Color r: 0.723 g: 0.175 b: 0.331)).
		(aCanvas) fillRectangle: (((82) @ (15)) extent: ((205) @ (212)) ) fillStyle: ((TranslucentColor r: 1 g: 0.6 b: 0.0 alpha: 0.761)).
		(aCanvas) drawString: (''HPI'') from: (1) to: (3) at: ((98) @ (35)) font: ((PHStyleContext) fontForSize: (86) ) color: ((Color) white)' in: Morph);
		makeCanvas;
		yourself
		