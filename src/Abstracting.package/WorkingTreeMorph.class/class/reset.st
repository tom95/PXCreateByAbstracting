as yet unclassified
reset

	self
		compile: (TreeMorph >> #drawOn:) getSourceFromFile;
		compile: (TreeMorph >> #drawTreeOn:from:length:angle:) getSourceFromFile;
		compile: (TreeMorph >> #drawTrunkOn:from:length:angle:) getSourceFromFile;
		compile: (TreeMorph >> #stepTime) getSourceFromFile;
		compile: (TreeMorph >> #step) getSourceFromFile;
		compile: (TreeMorph >> #initialize) getSourceFromFile.
		
	self instVarNames do: [:name | self removeInstVarNamed: name]