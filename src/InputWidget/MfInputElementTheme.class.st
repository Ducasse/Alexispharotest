Class {
	#name : #MfInputElementTheme,
	#superclass : #ToRawTheme,
	#category : #InputWidget
}

{ #category : #accessing }
MfInputElementTheme class >> defaultTokenProperties [
"define here token properties of the widget theme"
	^ super defaultTokenProperties , {
		  (ToTokenProperty
			   name: #'background-color'
			   value: (Color lightGreen  ))}.
]
