as yet unclassified
drawOn: aCanvas

	aCanvas translucentImage: currentForm at: self position + self method layoutInset origin + (self extent / 2 - (self scale * (self extent / 2)))