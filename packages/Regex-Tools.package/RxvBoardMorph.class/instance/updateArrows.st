updating
updateArrows

	| seed |
	self fullBounds.
	arrows do: [:arrow |
		arrow updateBounds].
	
	seed := 0.
	activeLinkChain ifNotNil:
		[threadMorph setVertices:
			(activeLinkChain collect: [:link | ((self findLink: link) bounds insetBy: 10 px) randomPoint:
				(Random new seed: (seed := seed bitXor: ((self findLink: link) position - self position) hash))])].