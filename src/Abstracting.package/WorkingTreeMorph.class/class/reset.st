as yet unclassified
reset

	self
		compile: (TreeMorph >> #drawOn:) getSourceFromFile;
		compile: (TreeMorph >> #drawTreeOn:from:length:angle:) getSourceFromFile;
		compile: (TreeMorph >> #drawTrunkOn:from:length:angle:) getSourceFromFile