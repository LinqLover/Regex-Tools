building
arrowFrom: sourceMorph to: targetMorph

	^ arrows detect: [:arrow |
		arrow source == sourceMorph
			and: [arrow target == targetMorph]]