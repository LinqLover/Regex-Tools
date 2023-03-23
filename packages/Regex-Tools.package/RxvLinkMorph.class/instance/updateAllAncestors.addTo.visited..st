updating
updateAllAncestors: aDictionary addTo: descendants visited: aSet

	(aSet ifAbsentAdd: self) ifFalse: [^ self].
	self predecessors do: [:predecessor |
		(aDictionary at: self ifAbsentPut: [Set new])
			add: predecessor.
		descendants do: [:descendant |
			(aDictionary at: descendant ifAbsentPut: [Set new]) add: predecessor]].
	self predecessors do: [:predecessor |
		predecessor updateAllAncestors: aDictionary addTo: (descendants copyWith: self) visited: aSet].