updating
updateDisplayStyles

	self allLinkMorphsDo: [:linkMorph |
		linkMorph isIndirectlyHovered: (hoveredLinkMorph notNil and: [(linkMorph hasPredecessor: hoveredLinkMorph) or: [linkMorph hasSuccessor: hoveredLinkMorph]]).
		"linkMorph isIndirectlyActive: (activeLinkMorph notNil and: [activeLinkMorph hasAncestor: linkMorph])"].
	self allArrowMorphsDo: [:arrowMorph |
		arrowMorph isIndirectlyHovered: (hoveredLinkMorph notNil and: [arrowMorph source == hoveredLinkMorph or: [arrowMorph target == hoveredLinkMorph]]).
		"arrowMorph isIndirectlyActive: (arrowMorph source state notNil or: [arrowMorph target state notNil])"].