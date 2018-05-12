as yet unclassified
do

	(self identifier replaceBy: [assignment := PXAssignment identifier: (PXVariableName name: self identifier data) statement: PXUnknown new]) focusStatement