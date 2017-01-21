EXTEND_BOTTOM FATESP 6 #9
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~Bring me Sirene, the tiefling martyr.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Sire25",[1999.1228],0) 
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~Bring me my lover, Sirene, paladin of Ilmater.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("C0SireneRomanceActive","GLOBAL",2)
CreateCreature("C0Sire25",[1999.1228],0) 
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~Bring me Sirene, the tiefling ex-martyr.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("C0Sire25",[1999.1228],0)
ActionOverride("C0Sirene",SetGlobal("LosePaladin","LOCALS",1))
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~Bring me my lover, Sirene.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("C0SireneRomanceActive","GLOBAL",2)
CreateCreature("C0Sire25",[1999.1228],0)
ActionOverride("C0Sirene",SetGlobal("LosePaladin","LOCALS",1))
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
END
