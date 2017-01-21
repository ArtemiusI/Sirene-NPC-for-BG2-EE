// Letter from T'samon

BEGIN C0SNOTE

CHAIN IF ~!AreaCheck("AR0020") !AreaCheck("C0SIR1") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note1
~The directions on the letter begin from Athkatla's City Gates district. Starting from there may be the best option.~
EXIT

CHAIN IF ~!InParty("C0Sirene") AreaCheck("AR0020") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note5
~You see little reason to travel to the location drawn in the letter without Sirene.~
EXIT

CHAIN IF ~InParty("C0Sirene") AreaCheck("AR0020") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note2
~You follow the directions as the letter instructs you...~
END
IF ~~ DO ~StartCutsceneMode()
	FadeToColor([10.0],0)
	Wait(4)
    ActionOverride(Player1,LeaveAreaLUA("c0sir1","",[603.1469],N))
    ActionOverride(Player2,LeaveAreaLUA("c0sir1","",[666.1469],N))
    ActionOverride(Player3,LeaveAreaLUA("c0sir1","",[601.1516],N))
    ActionOverride(Player4,LeaveAreaLUA("c0sir1","",[663.1517],N))
    ActionOverride(Player5,LeaveAreaLUA("c0sir1","",[601.1553],N))
    ActionOverride(Player6,LeaveAreaLUA("c0sir1","",[664.1556],N))
	FadeFromColor([10.0],0)
	EndCutsceneMode()~ EXIT
	
CHAIN IF ~AreaCheck("C0SIR1") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note3
~You have no use for this letter at the moment.~
EXIT
	
CHAIN IF ~GlobalGT("C0SireneTsamon","GLOBAL",1)~ THEN C0SNOTE note4
~With the threat of T'samon Thornhaven eliminated, you have no further need of this letter.~
END
IF ~~ DO ~DestroyItem("c0snote")~ EXIT