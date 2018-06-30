*Abstracting
drawTriangleFrom: pointA to: pointB and: pointC color: aFillStyle
	"self drawPolygon: {pointA. pointB. pointC} color: aFillStyle borderWidth: 0 borderColor: Color black"
	self line: pointA to: pointB width: 1 color: aFillStyle.
	self line: pointB to: pointC width: 1 color: aFillStyle.
	self line: pointC to: pointA width: 1 color: aFillStyle.