APPEND C0SIRENJ

IF WEIGHT #-1 ~Global("C0SireneYoshiRom","GLOBAL",1)~ a1
SAY ~<CHARNAME>...~ [C0BLANK]
= ~I know words will not comfort you. But I promise you... we will have vengeance. For Yoshimo's sake... and for yours.~
IF ~~ DO ~SetGlobal("C0SireneYoshiRom","GLOBAL",2)~ EXIT
END

END