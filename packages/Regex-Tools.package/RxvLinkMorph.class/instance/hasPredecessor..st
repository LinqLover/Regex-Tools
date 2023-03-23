testing
hasPredecessor: aRxmLink
 
	^ predecessors anySatisfy: [:ancestor |
		ancestor == aRxmLink]