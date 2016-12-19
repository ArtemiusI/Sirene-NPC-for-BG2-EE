BEGIN C0SGIRL

CHAIN IF WEIGHT #-1
~Global("C0SireneFlowerGirl","GLOBAL",2)~ THEN C0SGIRL girl1
~Flowers, flowers! Reds and violets and all pretty-like!~
DO ~SetGlobal("C0SireneFlowerGirl","GLOBAL",3)~
== C0SGIRL ~'A tisket, a tasket,
I made a <MONTHNAME> basket.
I filled it up with flowers to say,
I hope you have a nice <MONTHNAME> day.
 
A tisket, a tasket,
I made a <MONTHNAME> basket.
I put it on your door today,
Then rang the bell and ran away.'~
== C0SIRENJ ~Look at that young girl, <CHARNAME>. 'Tis rare to see a child at work with such a broad smile on her face.~
== C0SGIRL IF ~Gender(Player1,MALE)~ ~Hey, hey! You there, mister in them funny clothes! Won't you have a look?~
== C0SGIRL IF ~!Gender(Player1,MALE)~ ~Hey, hey! You there, miss in them funny clothes! Won't you have a look?~
END
++ ~Certainly. You're selling flowers, young miss?~ EXTERN C0SGIRL girl2
++ ~Not interested. Run along now.~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl0
~Well! Good riddance to you too, hmph! *pbbbt*~
DO ~EscapeArea()~ EXIT

CHAIN C0SGIRL girl2
~Well, duh! Me and mother grew them ourselves, out in the country. Aren't they all pretty? Much nicer than them city-folk flowers.~
END
++ ~They certainly are. Would you like a flower, Sirene?~ EXTERN C0SIRENJ girl3
++ ~I'm not interested in buying flowers.~ EXTERN C0SGIRL girl0

CHAIN C0SIRENJ girl3
~What, for me? No, you do not need to-~
== C0SGIRL IF ~Gender(Player1,MALE)~ ~Ooh, is she your lady, mister? She's very pretty. I need to think hard on what looks best for her.~
== C0SGIRL IF ~!Gender(Player1,MALE)~ ~Ooh, is she your lady, miss? She's very pretty. I need to think hard on what looks best for her.~
== C0SIRENJ ~I- I appreciate it, but there is certainly no need for that.~
END
++ ~Oh, hush. Just accept it as a gift from me.~ EXTERN C0SGIRL girl4
++ ~What's the matter, Sirene? Do you not like flowers?~ EXTERN C0SIRENJ girl5
++ ~You heard her. We're not interested, kid.~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl4
~Let's see... not too gaudy, but can't be too plain either, nope. Hmm, I wonder what...~
END
++ ~Do you have any roses, young lady?~ EXTERN C0SGIRL girl6
++ ~What do you think, Sirene? What kinds of flower do you like best?~ EXTERN C0SIRENJ girl7
++ ~On second thought, I'd rather not buy any flowers.~ EXTERN C0SGIRL girl0

CHAIN C0SIRENJ girl5
~No, I find flowers very beautiful, actually. 'Tis just that...~
EXTERN C0SGIRL girl4

CHAIN C0SGIRL girl6
~Pooh! Roses are boring. Them's for boring city-folk, mother says. What you need is something... really... out there.~
EXTERN C0SGIRL girl8

CHAIN C0SIRENJ girl7
~I... am not sure. Perhaps 'tis best for the child to decide.~
EXTERN C0SGIRL girl8

CHAIN C0SGIRL girl8
~Oh! I know. Something bright, to match the lady's white wrap. Yep, that'll do nicely. Look here!~
== C0SGIRL IF ~Gender(Player1,MALE)~  ~I got sunflowers, lilies and daisies. I like the sunflowers best, even got one on my hat here, see? What do you think, mister? Which one do you think is prettiest?~
== C0SGIRL IF ~!Gender(Player1,MALE)~  ~I got sunflowers, lilies and daisies. I like the sunflowers best, even got one on my hat here, see? What do you think, miss? Which one do you think is prettiest?~
END
++ ~I'll take the sunflower.~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9
++ ~I'll take the white lily.~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9
++ ~I'll take the daisy.~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9

CHAIN C0SGIRL girl9
~Okay! One for you, and one for your lady. That'll be five gold apiece, so ten gold, please!~
END
+ ~PartyGoldGT(19) Gender(Player1,MALE)~ + ~Make that twenty gold. Run along and get yourself something to drink before you shout yourself hoarse, young lady.~ DO ~TakePartyGold(20)~ EXTERN C0SGIRL girl11a
+ ~PartyGoldGT(19) !Gender(Player1,MALE)~ + ~Make that twenty gold. Run along and get yourself something to drink before you shout yourself hoarse, young lady.~ DO ~TakePartyGold(20)~ EXTERN C0SGIRL girl11b
+ ~PartyGoldGT(9)~ + ~Here you go.~ DO ~TakePartyGold(10)~ EXTERN C0SGIRL girl10
++ ~I do not have that much gold.~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl10
~Thank you! Have a nice day!~
DO ~EscapeArea()~ EXTERN C0SIRENJ girl12

CHAIN C0SGIRL girl11a
~Wow! Thank you, mister! I hope your flowers make you and your lady very happy!~
DO ~EscapeArea()~ EXTERN C0SIRENJ girl12

CHAIN C0SGIRL girl11b
~Wow! Thank you, miss! I hope your flowers make you and your lady very happy!~
DO ~EscapeArea()~ EXTERN C0SIRENJ girl12

CHAIN C0SIRENJ girl12
~You really did not need to... I mean, I appreciate it, truly, but... you are giving me far more than I deserve, <CHARNAME>.~
END
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Really? I think this flower suits you perfectly.~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRENJ girl13
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I gave you a gift, because I like you. Is that so wrong?~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRENJ girl14
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Oh, you. Can't you just make do with a simple 'thank you' for once?~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRENJ girl15
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Really? I think this flower suits you perfectly.~ EXTERN C0SIRENJ girl13
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I gave you a gift, because I like you. Is that so wrong?~ EXTERN C0SIRENJ girl14
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Oh, you. Can't you just make do with a simple 'thank you' for once?~ EXTERN C0SIRENJ girl15

CHAIN C0SIRENJ girl13
~'Tis good of you to say so... either way, it *is* very beautiful.~
END
IF ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRENJ girl15
IF ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRENJ girl16

CHAIN C0SIRENJ girl14
~No, certainly not. I appreciate it, truly.~
END
IF ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRENJ girl15
IF ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRENJ girl16

CHAIN C0SIRENJ girl15
~...thank you, <CHARNAME>.~
EXIT

CHAIN C0SIRENJ girl16
~Though I... did not know you felt this way about me, <CHARNAME>. Though this is certainly not unwelcome. I wonder if, from now on...~
EXTERN C0SIRENJ girl15