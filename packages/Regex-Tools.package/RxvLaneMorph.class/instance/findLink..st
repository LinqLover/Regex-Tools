accessing
findLink: anRxmLink

	self linkMorphsDo: [:linkMorph |
		linkMorph link == anRxmLink
			ifTrue: [^ linkMorph]].
	^ nil