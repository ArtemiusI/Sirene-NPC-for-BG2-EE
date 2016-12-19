BEGIN C0SCLER2

IF ~RandomNum(3,1)~ a1
SAY ~Greetings, traveller. May the Crying God watch over you through your trials and suffering.~
IF ~~ EXIT
END

IF ~RandomNum(3,2)~ a2
SAY ~I am but a mere acolyte of Ilmater, friend. Please speak to Revered Brother Daeron for matters of import.~
IF ~~ EXIT
END

IF ~RandomNum(3,3)~ a3
SAY ~Praise be to the One Who Endures.~
IF ~~ EXIT
END

IF ~Global("C0SireneEncounter","GLOBAL",3)~ b1
SAY ~We have sinned in the face of our lord Ilmater... I must seek penance for the severity of my actions. Farewell.~
IF ~~ EXIT
END