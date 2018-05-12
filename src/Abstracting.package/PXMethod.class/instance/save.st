as yet unclassified
save

	| category |
	category := (class >> self selector) methodReference ifNotNil: [:ref | ref category].
	class compile: self codeString classified: category