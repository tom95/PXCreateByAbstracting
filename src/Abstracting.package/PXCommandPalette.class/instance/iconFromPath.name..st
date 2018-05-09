accessing
iconFromPath: aString name: aSymbol

	^ PHIcon fromCache: aSymbol ifAbsentPut: ['<?xml version="1.0" encoding="utf-8"?>
<svg width="1792" height="1792" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="', aString, '" fill="#fff"/></svg>']