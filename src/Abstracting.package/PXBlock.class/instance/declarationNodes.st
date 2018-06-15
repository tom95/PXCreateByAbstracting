accessing
declarationNodes
	declarations ifNil: [^ #()].
	declarations isCollection ifFalse: [^ #(declarations asNode)].
	^ declarations collect: #asNode