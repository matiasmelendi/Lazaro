*Lazaro
keyStrokeArrowUp: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	rowIndex > 1
		ifFalse: [ ^ self ].
	self resetFunction.
	selectionStrategy selectRowIndex: rowIndex - 1 event: event.
	self readSelectedElement: rowIndex - 1