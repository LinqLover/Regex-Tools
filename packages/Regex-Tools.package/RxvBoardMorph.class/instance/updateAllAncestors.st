updating
updateAllAncestors

	| predecessors ancestors |
	"predecessors := Dictionary new.
	self allLinkMorphsDo: [:linkMorph |
		linkMorph updateAllPredecessors: predecessors visited: Set new].
	self allLinkMorphsDo: [:linkMorph |
		linkMorph predecessors: (predecessors at: linkMorph ifAbsent: [Set new])]."
	
	ancestors := Dictionary new.
	self allLinkMorphsDo: [:linkMorph |
		linkMorph updateAllAncestors: ancestors visited: Set new].
	self allLinkMorphsDo: [:linkMorph |
		linkMorph ancestors: (ancestors at: linkMorph ifAbsent: [Set new])].