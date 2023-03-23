building
addLink: anRxmLink toLane: aLaneMorph atColumn: columnIndex

	| isFirstNewSuccessor linkMorph deferUpdateArrows |
	deferUpdateArrows := false.
	(self valueOfProperty: #deferUpdateArrows) = true ifFalse:
		[self setProperty: #deferUpdateArrows toValue: true.
		deferUpdateArrows := true].
	
	linkMorph := aLaneMorph addLink: anRxmLink atColumn: columnIndex.
	
	isFirstNewSuccessor := true.
	anRxmLink rxvSuccessors do: [:successorLink |
		| successorMorph |
		successorMorph := self findLink: successorLink.
		successorMorph ifNil:
			[successorMorph := self
				addLink: successorLink
				toLane:
					(isFirstNewSuccessor
						ifTrue: [aLaneMorph]
						ifFalse: [self addLane])
				atColumn:
					(isFirstNewSuccessor
						ifTrue: [linkMorph columnInLane + 1]
						ifFalse: [linkMorph columnInLane]).
			"isFirstNewSuccessor ifTrue:
				[linkMorph addSuccessor: successorMorph].
			successorMorph addPredecessor: linkMorph."
			isFirstNewSuccessor := false].
		linkMorph addSuccessor: successorMorph.
		successorMorph addPredecessor: linkMorph.
		self addArrowFrom: linkMorph to: successorMorph].
	
	self updateAllAncestors.
	
	deferUpdateArrows ifTrue:
		[self removeProperty: #deferUpdateArrows.
		self updateArrows].
	
	^ linkMorph