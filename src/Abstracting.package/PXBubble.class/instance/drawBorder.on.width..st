as yet unclassified
drawBorder: aColor on: aCanvas width: aNumber

	PHRenderer
			drawBorderOn: aCanvas
			bounds: (self bounds insetBy: (aNumber / 2) withScalingFactor)
			color: aColor
			radius: (Rectangle origin: 5 @ 5 corner: 5 @ 5) withScalingFactor
			width: (Rectangle origin: aNumber @ aNumber corner: aNumber @ aNumber) withScalingFactor