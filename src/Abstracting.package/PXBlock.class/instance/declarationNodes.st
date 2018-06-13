accessing
declarationNodes
	declarations ifNil: [^ #()].
	^ declarations collect: #asNode