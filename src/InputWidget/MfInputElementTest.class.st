Class {
	#name : #MfInputElementTest,
	#superclass : #TestCase,
	#category : #InputWidget
}

{ #category : #tests }
MfInputElementTest >> testEverythingIsInitializedCorrectly [

| inputElem |
"create instance of input"
inputElem:= MfInputElement new.
"Must have 4 childs : Value, both buttons and the input text"
self assert: inputElem children size equals: 4. 
self assert:  inputElem value equals: 20. "As default value defined in the code"

]

{ #category : #tests }
MfInputElementTest >> testSkinisInstalledCorrectly [

| inputElem |
"create instance of input"
inputElem:= MfInputElement new.
"input skin is nil"
self assert: inputElem background paint equals: nil .
inputElem openInput: inputElem. "Assign skin to input"
"Now the input widget has background defined"
self assert: inputElem background paint color equals: Color black .



]

{ #category : #tests }
MfInputElementTest >> testValueCantBeNegative [

| inputElem value | 

inputElem:= MfInputElement new.
"changing the value assigned for input with a set method"
value := (inputElem initializeInputValue:  '0') text asString asNumber .
"we simulate a click on minus button"
BlSpace simulateClickOn: inputElem minus.
"the minimum value is 0, so didn't change"
self assert: value equals: 0.

]

{ #category : #tests }
MfInputElementTest >> testValueUpdatedOnClick [
 
| inputElem |

inputElem:= MfInputElement new.
"we simulate click on minus button, default value is 20"
BlSpace simulateClickOn: inputElem minus.
"resulting value is 20-1"
self assert: inputElem value equals: 19.
"we click 6 times on plus button, so value = previous value + 6"
1 to: 6 do: [ :i |
	BlSpace simulateClickOn: inputElem plus ].
self assert: inputElem value equals: 25.  



]
