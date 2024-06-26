Class {
	#name : #MfPiano,
	#superclass : #BlElement,
	#category : #PianoKeyboardWidget
}

{ #category : #adding }
MfPiano >> addNotesToPiano [
]

{ #category : #'visual properties' }
MfPiano >> backgroundPaint [ 

	^ Color black.
]

{ #category : #initialization }
MfPiano >> initialize [ 

	super initialize.
	self size: self pianoExtent .
	self background: self backgroundPaint .
	self geometry: BlRectangle new.
	self layout: BlFrameLayout new.
	self addNotestoPiano .
]

{ #category : #'as yet unclassified' }
MfPiano >> openPiano: aPiano [
	| space |
	space := BlSpace new.
	space root
		background: Color lightBlue ;
		layout: BlFlowLayout horizontal.
	aPiano transformDo: [ :c |
		c translateBy: 200@200
		 ].
	space root addChild: aPiano .
	space show.
	^ space 



]

{ #category : #'as yet unclassified' }
MfPiano >> pianoExtent [

	^400@160.
]
