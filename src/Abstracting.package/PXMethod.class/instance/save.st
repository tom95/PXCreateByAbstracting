as yet unclassified
save

	^ self contextClass
		ifNil: [(Parser new parse: self codeString) generate]
		ifNotNil: [:class | | category |
			category := self contextClass methodDict
				at: self selector
				ifPresent: [:x | x methodReference category]
				ifAbsent: [Categorizer default].
			class compile: self prettyCodeString classified: category]