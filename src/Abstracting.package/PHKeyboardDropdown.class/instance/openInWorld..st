as yet unclassified
openInWorld: aWorld

	super openInWorld: aWorld.
	
	self firstSubmorph hovered: true.
	self submorphs allButFirstDo: [:morph | morph hovered: false]