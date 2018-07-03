as yet unclassified
declareNewInstanceVar

	self run: (PXAddInstanceVariable in: self editor named: self data).
	self uneditedName: self data.
	self changed