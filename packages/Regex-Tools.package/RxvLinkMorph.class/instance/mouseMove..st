event handling
mouseMove: anEvent

	anEvent isDraggingEvent ifTrue:
		[self mouseState: ((self containsPoint: anEvent position) ifTrue: [#pressing])].