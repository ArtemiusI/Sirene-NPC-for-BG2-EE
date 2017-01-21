BEGIN C0SIRE2P

IF ~Global("C0SireneKickedOut","LOCALS",0) !Global("C0SireneRomanceActive","GLOBAL",2)~ p1
 SAY ~'Tis truly time for us to part, <CHARNAME>?~ [C0BLANK]
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2a
 	+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Yes, for now.~ + p2b
 	++ ~No. I've changed my mind.~ + p3
END
 
IF ~~ p2a
 SAY ~Very well, then. I will return to the Temple of Ilmater in the Slums District. If you change your mind, I will be there.~
++ ~All right. See you around.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~We're only parting ways for a little while. Why don't you go to the Copper Coronet instead, and I'll meet you there?~ + p2c
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ p2b
 SAY ~I see... I will do what I can to leave this place on my own, then. Good luck to you, <CHARNAME>.~
++ ~To you as well.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ p2c
 SAY ~I am not fond of the place, but I will do as you ask. Farewell, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1317,2055,NW)~ EXIT
END

IF ~~ p3
 SAY ~I am glad to hear it.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneKickedOut","LOCALS",0) Global("C0SireneRomanceActive","GLOBAL",2)~ r1
 SAY ~I... I do not wish to leave your side, <CHARNAME>. Will you reconsider?~ [C0BLANK]
 	++ ~It's just for a while, I promise.~ + r2
	++ ~I think you're overthinking our relationship, Sirene. I don't need you right now.~ + r3
 	++ ~Never mind, I don't know why I even thought about this.~ + r4
END

IF ~~ r2
 SAY ~(sigh) I believe you, <CHARNAME>. I shall wait for you at the Temple of Ilmater, in the Slums District. Please... come back to me.~
++ ~I will. I promise.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~It's just for a little while. Go to the Copper Coronet to get some rest, and I'll be back before you know it.~ + r2a
++ ~Just wait for me right here. I'll be back.~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ r2a
SAY ~Aye, I will do so. Farewell for now, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1317,2055,NW)~ EXIT
END

IF ~~ r3
 SAY ~I... I see. I am sorry to hear that.~
 = ~I will return to the Temple of Ilmater in the Slums District. I will... wait for you there.~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) SetGlobal("C0SireneRomanceActive","GLOBAL",3) EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ r4
 SAY ~(smile) I am glad. I would rather be nowhere else.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneKickedOut","LOCALS",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ p4a
 SAY ~'Tis good to see you again, <CHARNAME>. Do you need my assistance once more?~ [C0BLANK]
	++ ~It is. Please rejoin me.~ + p5
	++ ~Not yet.~ + p6
END

IF ~Global("C0SireneKickedOut","LOCALS",1) Global("C0SireneRomanceActive","GLOBAL",2)~ p4b
 SAY ~<CHARNAME>... I have been waiting for you too long. Please, allow me to rejoin you.~ [C0BLANK]
	++ ~Of course. I've missed you.~ + r4
	++ ~Not yet.~ + p6
END

IF ~~ p5
 SAY ~Very well.~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~(sigh) As you wish.~
IF ~~ EXIT
END

// Vampirism - Sirene revived

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",4)~ THEN C0SIRE2P v1.0
~I... lord Ilmater, I-~ [C0BLANK]
DO ~SetGlobal("C0SireneVampire","GLOBAL",5)~
END
+ ~AreaCheck("AR0408")~ + ~Sirene!~ SOLVED_JOURNAL @100003 EXTERN SLILMAT v1.1
+ ~AreaCheck("AR0703")~ + ~Sirene!~ SOLVED_JOURNAL @100003 EXTERN WILMAT v1.1

CHAIN SLILMAT v1.1
~Praise be to the Broken God! His Mercifulness has bestowed upon his servant life anew!~
== C0SIRE2P ~<CHARNAME>? 'Tis not... are you...~
END
++ ~I'm alive, my love. As are you.~ EXTERN C0SIRE2P v1.3
++ ~Shh... it's over. Everything's all right.~ EXTERN C0SIRE2P v1.3
++ ~(Embrace her)~ EXTERN C0SIRE2P v1.2

CHAIN WILMAT v1.1
~Praise be to the Broken God! His Mercifulness has bestowed upon his servant life anew!~
== C0SIRE2P ~<CHARNAME>? 'Tis not... are you...~
END
++ ~I'm alive, my love. As are you.~ EXTERN C0SIRE2P v1.3
++ ~Shh... it's over. Everything's all right.~ EXTERN C0SIRE2P v1.3
++ ~(Embrace her)~ EXTERN C0SIRE2P v1.2

CHAIN C0SIRE2P v1.2
~(gasp) <CHARNAME>, not so tightly...~
END
IF ~~ EXTERN C0SIRE2P v1.3

CHAIN C0SIRE2P v1.3
~'Twas not a dream after all, then... I am so relieved.~
== C0SIRE2P ~It felt as though 'twas the longest nightmare I have ever had... I had thought myself lost to this, but I was reluctant to pass on... because of you.~
== C0SIRE2P ~I can scarce believe it... the darkness felt as though it would last forever. Yet... here I am. You saved me.~
END
++ ~We've won the day, my love. We'll never be parted again.~ EXTERN C0SIRE2P v1.4
++ ~I will never allow this to happen again, Sirene. I promise.~ EXTERN C0SIRE2P v1.4
++ ~I'm so relieved. But now we should be going.~ EXTERN C0SIRE2P v1.5

CHAIN C0SIRE2P v1.4
~I believe you, my love. I am so glad to be with you again.~
END
IF ~~ DO ~JoinParty() SetGlobal("C0SireneKickedOut","LOCALS",0)~ EXIT

CHAIN C0SIRE2P v1.5
~Aye... we have won the day, but our trials are not over yet. I am with you, my love.~
END
IF ~~ DO ~JoinParty() SetGlobal("C0SireneKickedOut","LOCALS",0)~ EXIT