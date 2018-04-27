event handling
mouseMove: anEvent
| deltaX newNumber |

	deltaX := anEvent endPoint x - anEvent startPoint x.
	newNumber := self contents asNumber + deltaX.
	Transcript show: deltaX; cr.
	self contents: newNumber asString; changed