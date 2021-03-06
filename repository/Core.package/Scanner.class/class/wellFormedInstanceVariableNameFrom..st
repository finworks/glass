testing
wellFormedInstanceVariableNameFrom: aString
  "Answer a legal instance variable name, derived from aString"

  | cleansedString |
  cleansedString := aString select: [ :ch | ch isDigit or: [ ch isLetter ] ].
  (cleansedString isEmpty or: [ cleansedString first isDigit ])
    ifTrue: [ cleansedString := 'a' , cleansedString ]
    ifFalse: [ cleansedString := cleansedString withFirstCharacterDownshifted ].
  [ self isLegalInstVarName: cleansedString ]
    whileFalse: [ cleansedString := cleansedString , 'x' ].
  ^ cleansedString	"Scanner wellFormedInstanceVariableNameFrom:  '234 xx\ Uml /ler42342380-4'"