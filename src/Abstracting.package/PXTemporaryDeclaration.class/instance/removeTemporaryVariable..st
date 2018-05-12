as yet unclassified
removeTemporaryVariable: aName

	(self temporaries detect: [:temp | temp name  = aName]) delete