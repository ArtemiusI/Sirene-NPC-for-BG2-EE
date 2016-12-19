BEGIN C0SIR25P

IF ~Global("C0SireneToBKickedOut","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2)~ b1
SAY ~Is it time for us to part ways, my friend?~ [C0BLANK]
++ ~No, never mind.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Return to the pocket plane.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2)~ b1a
SAY ~Are you sure that you wish me to leave, <CHARNAME>? I would rather be nowhere else than with you.~ [C0BLANK]
++ ~In that case, stay.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Yes. Wait here.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Yes. Wait here.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Return to the pocket plane.~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ b2
SAY ~I am at your service, my friend.~ [C0BLANK]
++ ~Join me.~ + b2.1
++ ~Wait here a while longer.~ EXIT
END 

IF ~~ b2.1
SAY ~Of course.~
IF ~~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ b2a
SAY ~Is it time to leave, my love?~ [C0BLANK]
++ ~It is.~ + b2.1
++ ~Wait here a while longer.~ EXIT
END 

IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ c1
SAY ~I... I would like to spend more time here, <CHARNAME>. Please, return tomorrow.~ [C0BLANK]
IF ~~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SIR25P c2
~You are back, <CHARNAME>. Auntie Cleo...~
EXTERN C0SCLEO c1