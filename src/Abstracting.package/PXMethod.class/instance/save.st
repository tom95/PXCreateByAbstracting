as yet unclassified
save

	| category |
	category := class methodDict at: self selector ifPresent: [:x | x methodReference category] ifAbsent: [Categorizer default].
	class compile: self codeString classified: category