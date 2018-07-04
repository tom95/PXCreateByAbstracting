as yet unclassified
notifyChangesFromRenamed

	(renamed collect: #method) asSet do: [:method | self editor afterChangeFrom: editor]