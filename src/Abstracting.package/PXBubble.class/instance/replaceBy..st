as yet unclassified
replaceBy: aBlock

	| parent index new |
	parent := self owner.
	index := self owner submorphIndexOf: self.
	parent removeMorph: self.
	new := aBlock value.
	parent addMorph: new asElementNumber: index.
	^ new