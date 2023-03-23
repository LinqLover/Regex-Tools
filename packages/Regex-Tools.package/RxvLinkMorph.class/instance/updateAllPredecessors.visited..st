updating
updateAllPredecessors: aDictionary visited: aSet

	(aSet ifAbsentAdd: self) ifFalse: [^ self].
	self successors do: [:successor |
		(aDictionary at: successor ifAbsentPut: [Set new])
			add: self].