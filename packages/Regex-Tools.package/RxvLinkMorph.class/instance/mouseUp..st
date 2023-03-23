event handling
mouseUp: anEvent

	(self containsPoint: anEvent position) ifFalse:
		[^ self].
	self mouseState: #hovering.
	self doButtonAction.