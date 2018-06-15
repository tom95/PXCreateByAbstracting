as yet unclassified
runMethod: aCompiledMethod

	self canvas fillColor: Color transparent.
	[nil withArgs: (Array with: canvas) executeMethod: aCompiledMethod] on: Error do:
    		[:e | Transcript showln: 'Error running canvas method! ' , e className].
	image changed