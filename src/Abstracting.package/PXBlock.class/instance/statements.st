as yet unclassified
statements

	^ self submorphs perform: (declarations ifNil: [#yourself] ifNotNil: [#allButFirst])