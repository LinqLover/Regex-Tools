testing
hasSuccessor: aRxmLink
 
	^ successors anySatisfy: [:successor |
		successor == aRxmLink]