BEGIN C0SIRE25

IF ~Global("C0SireneSummoned","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ b1
SAY ~Where... where am I?~ [C0BLANK]
++ ~It's alright. I summoned you here.~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b1.1
++ ~Welcome to my personal pocket plane, Sirene.~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY ~<CHARNAME>? 'Twas you that brought me here? 'Tis a relief, then.~
= ~I am sorry that I parted ways with you. I should have expected that you may need my aid once more. I am at your service, if you wish it.~
++ ~Of course.~ + b1.2
++ ~Not yet.~ + b1.3
END

IF ~~ b1.2
SAY ~Aye... I am glad to be at your side again.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY ~Truly? As you wish it, my friend. I will wait for you.~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0SireneSummoned","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ b2
SAY ~<CHARNAME>! I am so glad to see you again. 'Twas frightening when you left Suldanessellar without me. I tried to seek you out, but...~ [C0BLANK]
= ~Where... where are we? <CHARNAME>... is this the Abyss once more?~
++ ~Not exactly. This is my own pocket plane.~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b2.1
END

IF ~~ b2.1
SAY ~I see... I have likely missed much while we were apart, then.~
= ~Let us leave this place together... and please, do not leave me again.~
++ ~Of course.~ + b1.2
++ ~Not yet.~ + b2.3
END

IF ~~ b2.3
SAY ~But- all right. I trust you. Just please come back to me.~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0SireneSummoned","GLOBAL",2) !Global("C0SireneRomanceActive","GLOBAL",2)~ b3a
SAY ~Waiting here does not put me at ease, my friend. I would like to be away from here, in your company.~ [C0BLANK]
++ ~Then join me.~ + b1.2
++ ~Just wait a little longer.~ + b3.1
END 

IF ~Global("C0SireneSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ b3b
SAY ~I do not want you to leave me behind while you face danger alone, <CHARNAME>. Please, my love, take me with you.~ [C0BLANK]
++ ~Alright.~ + b3.2
++ ~Not yet.~ + b3.1
END 

IF ~~ b3.1
SAY ~(sigh) Very well.~
IF ~~ EXIT
END

IF ~~ b3.2
SAY ~Thank you.~
IF ~~ DO ~JoinParty()~ EXIT
END