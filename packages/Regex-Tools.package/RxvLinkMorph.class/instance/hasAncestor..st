testing
hasAncestor: aRxmLink
 
	^ ancestors anySatisfy: [:ancestor |
		ancestor == aRxmLink]