BEGIN C0SIRE2J

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0Sirene",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~Your future is... strangely unclear to me, child. I sense that you lack direction and purpose, but I advise you follow the path you have chosen, and do not let your doubts tell you otherwise.~
== C0SIRE2J ~I... I will remember your words, my lady. Thank you.~
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Sirene",LastTalkedToBy)~ THEN SALVANAS C0SireneSalvanas
~What fair visage lies beneath yon white cowl, I wonder?~
== C0SIRE2J ~Are you speaking to me, sir?~
== SALVANAS ~None other, sweet Ilmatari. Ah, I suffer, truly I do.~
== C0SIRE2J ~Do you suffer, truly? But I see no sign of such.~
== SALVANAS ~Aye, most beautiful lady, though 'tis not my flesh, but my heart and soul that are set aflame by your presence! Only a gaze upon your form would relieve this ache within my heart.~
== C0SIRE2J ~I am... unsure of what you speak.~
== SALVANAS ~Come closer, my dear. I would love to take a closer look at your lovely face, your flaming hair, your...~
= ~...your beautiful, er, eyes. And your... are those horns? Oh, my.~
== C0SIRE2J ~...yes. Yes, they are. You were saying?~
== SALVANAS ~Um... pardon me. I-I think I've had one too many to drink... er, yes, that's right! (Please don't kill me...)~
== C0SIRE2J ~*sigh*~
EXIT

// Book Merchant

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneBook","GLOBAL",0)~ THEN IMNBOOK1 C0SireneBook
~Sorry, ain't got much in the way of tomes today. Been real slow here, so's I shipped most of my stock to Athkatla. Ain't talked to anyone in weeks, actually.~
DO ~SetGlobal("C0SireneBook","GLOBAL",1)~
== C0SIRE2J ~Excuse me, sir, but I was wondering if you had something... simpler?~
== IMNBOOK1 ~I know a discerning eye when I see one. As a matter of fact, I do have a handful of books for those who prefer some light reading. What takes your fancy, good lady? History, mystery, drama?~
== C0SIRE2J ~Nay, sir. Do you have any of... *blush* ...romance?~
== IMNBOOK1 ~Ah, not to worry, milady. You are not the first to ask, especially not in such a fashion. (wink)~
== IMNBOOK1 ~Here, this one may suit your interest. It is a tale of... ah, but I shall not spoil it. You should read it yourself at your leisure. It is a fine piece of work, do not doubt.~
== C0SIRE2J ~Thank you. How much?~
== IMNBOOK1 ~Normally, that particular edition would cost quite a large amount, but you appear to have good taste, and considering how bad business is right now, I think a mere 5 gold will do.~
== C0SIRE2J ~I... I will not ask you to spend your gold for my sake, <CHARNAME>.~
END
+ ~PartyGoldGT(4)~ + ~What are you talking about? My gold is your gold. Here you go, merchant.~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
+ ~PartyGoldGT(4) Global("C0SireneRomanceActive","GLOBAL",1)~ + ~Do you think I'd deny you anything? Here's the gold.~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
+ ~PartyGoldGT(4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Do you think I'd deny you anything, my love? Here's the gold.~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
++ ~We've got more important things to spend our gold on.~ EXTERN C0SIRE2J C0SireneBook2
++ ~I'm not buying you a stupid book, Sirene. Let's get going.~ EXTERN C0SIRE2J C0SireneBook2

CHAIN C0SIRE2J C0SireneBook1
~You are too kind to me, <CHARNAME>. Thank you.~
== IMNBOOK1 ~A pleasure doing business with you, <PRO_SIRMAAM>. Have a pleasant day.~
EXIT

CHAIN C0SIRE2J C0SireneBook2
~Yes, you are right. Forgive me, sir. I fear that I must decline.~
== IMNBOOK1 ~'Tis a shame indeed. The gold is of no consequence, but there is nothing that saddens me more than a devoted reader misses such an opportunity. Ah, Deneir forgive me! Take it, milady.~
DO ~GiveItemCreate("c0sbook","C0Sirene",0,0,0)~
== C0SIRE2J ~B-but, I cannot take this! I have not paid...~
== IMNBOOK1 ~Please, think nothing of it. Every moment I spend watching these fine novels go unsold drives me closer to the brink of insanity. You'd be doing me a favor taking it off my hands.~
== C0SIRE2J ~I... I see. In that case, thank you, kind sir. I will treasure it greatly.~
== IMNBOOK1 ~A pleasure, milady. Have a wonderful day.~
EXIT

// Madam Nin

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ THEN MADAM C0SireneMadam
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== C0SIRE2J ~No, <PRO_HESHE> is not interested in such base and corrupt services. Begone from <PRO_HISHER> sight, fleshmonger, lest you live to regret it!~
EXTERN MADAM 17

// Bathing Scene

CHAIN IF WEIGHT #-1
~Global("C0SireneBathe","GLOBAL",1)~ THEN PLAYER1 bathe.0
~(It has been a long and exhausting day, and the dirt and smell from today's excursions cling to you. Conveniently, the party has set up camp reasonably close to a stream. You consider heading away for a quick bathe before turning in for the night.)~ [C0BLANK]
DO ~SetGlobal("C0SireneBathe","GLOBAL",2)~
END
++ ~(Take a bath)~ DO ~FadeFromColor([30.0],0)~ EXTERN PLAYER1 bathe.2
++ ~(Go to bed)~ EXTERN PLAYER1 bathe.1a

CHAIN PLAYER1 bathe.1a
~(You decide that you cannot be bothered to go and bathe in a cold stream, and would rather wait until you have the luxury of a proper bathing house. You return to the comfort of your bedroll, and drift off into sleep.)~
DO ~RestParty()~ EXIT

CHAIN PLAYER1 bathe.1b
~(Deciding not to bother whoever has laid claim on this stream, you turn away and head back towards your camp. You return to the comfort of your bedroll, and drift off into sleep.)~
DO ~RestParty()~ EXIT

CHAIN PLAYER1 bathe.2
~(You decide that a bath would be a welcome relief, and head out alone towards the stream for a nice, relaxing bathe, hoping that the water isn't too cold.)~
= ~(As you approach the stream, you test the waters before deciding it is good enough. You begin to remove your clothing, but a nearby presence causes you to halt and reactively reach for your weapon.)~
= ~(You cannot see any movement in the surroundings, however, before turning your attention back to the stream. You realize that there is somebody already within the water, and has yet to notice you.)~
END
++ ~Hello?~ EXTERN C0SIRE2J bathe.4
++ ~(Approach as quietly as you can)~ EXTERN PLAYER1 bathe.3
++ ~(Gather your things and leave quickly)~ EXTERN PLAYER1 bathe.1b

CHAIN PLAYER1 bathe.3
~(You slowly move towards the mysterious person, careful not to make any sudden moves or noise that would alert them. As you get closer, you realize that the bathing figure, silhouetted in the moonlight, is distinctly feminine.)~
= ~(When you are close enough, you recognize that it is Sirene. Without her armor, her form is surprisingly lithe and petite, and her muscles are lean. However, her back is covered with marks and scars, many grotesque and painful-looking. She suddenly becomes aware of your presence and turns in shock.)~
EXTERN C0SIRE2J bathe.4

APPEND C0SIRE2J

IF ~~ bathe.4
SAY ~*gasp* Ah! <CHARNAME>! F-forgive me, I did not notice that you were here to bathe as well. I- I will be finished shortly, if you would be patient for a moment...~
= ~(She blushes as she attempts to cover herself with her arms while reaching for her belongings.)~
= ~<CHARNAME>, would you... mind looking away a moment?~
++ ~Oh, right.~ + bathe.6
++ ~Yes, I'm... I'm sorry. I'm not looking. Go ahead.~ + bathe.6
+ ~Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~What's wrong? It's nothing that I haven't seen before.~ + bathe.7a
+ ~!Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~What's wrong? It's nothing I won't see sooner or later.~ + bathe.7a
+ ~Gender(Player1,FEMALE)~ + ~Why are you so worried? We're both women. There's no need to be embarrassed.~ + bathe.7b
++ ~Sorry, Sirene. I'll leave you to it.~ + bathe.5
END

IF ~~ bathe.5
SAY ~Aye... I shall see you in the morn. Good night, <CHARNAME>.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ bathe.6
SAY ~(You hear light splashing as Sirene leaves the water and covers herself.) Alright... you may turn around again, <CHARNAME>.~
= ~(When you turn, you see that Sirene has covered herself with a plain bathing robe, and her wet hair is glistening in the moonlight. Her eyes, normally a shade between gold and lime green, glows faintly with an orange tint thanks to her infravision.)~
= ~F-forgive me, <CHARNAME>. I did not expect anyone else to come and bathe tonight, and... I, um... I suppose I should ask how much you saw, before...~
++ ~I didn't see much, just your back. I swear.~ + bathe.8
++ ~You have a fine body, Sirene. Why are you so bashful about it?~ + bathe.9
++ ~More than I would've liked. Those scars and bruises look nasty.~ + bathe.10
++ ~You know, I'm really not in the mood for conversation. See you tomorrow.~ + bathe.5
END

IF ~~ bathe.7a
SAY ~*sigh* <CHARNAME>, please do not jest. 'Tis discomforting for you to stare at me... please, turn for a moment.~
IF ~~ + bathe.6
END

IF ~~ bathe.7b
SAY ~That is not why I... I will explain in a moment, <CHARNAME>.~
IF ~~ + bathe.6
END

IF ~~ bathe.8
SAY ~Ah... is that all, truly? I suppose I should be relieved, but...~
IF ~~ + bathe.10
END

IF ~~ bathe.9
SAY ~N-no, 'tis not my body that is the issue, but...~
IF ~~ + bathe.10
END

IF ~~ bathe.10
SAY ~I... I was simply afraid that you saw my... my scars. They are far from pleasant, and... I would have never wished for you to see them.~
++ ~They aren't that bad. I've got my share of scars myself, see?~ + bathe.11
++ ~I admit, they're not pretty. But they don't ruin your appearance.~ + bathe.12
++ ~Why are you so concerned with hiding them?~ + bathe.13
++ ~This is getting a little awkward. I think I'll turn in for the night.~ + bathe.5
END

IF ~~ bathe.11
SAY ~Aye, but...~
IF ~~ + bathe.13
END

IF ~~ bathe.12
SAY ~*sigh* That makes my attempts at hiding them sound vain, <CHARNAME>.~
IF ~~ + bathe.13
END

IF ~~ bathe.13
SAY ~I... I know not how to properly explain. I do not wish to sound as though my scars bring me shame... no, 'tis quite the opposite. I have pride in the battles in which I earned them. But...~
= ~Since you and I have... spoken, I have found myself more concerned with my outer appearance when in your presence. I suppose I did not want these old wounds to... affect your opinion of me.~
++ ~Do you really think I'm that shallow? Come on, Sirene. You should know I'm not like that.~ + bathe.14
++ ~Don't worry, Sirene. I know what your scars mean to you, and I think no less of you having seen them.~ + bathe.14
++ ~Well, that explains the grooming in the early mornings. And the scented oils.~ + bathe.15
++ ~Look, Sirene, I'm flattered you think of me, but I just want us to remain friends, nothing more.~ + bathe.16
++ ~I'd rather not talk about this. Good night, Sirene.~ + bathe.5
END

IF ~~ bathe.14
SAY ~(She smiles reluctantly) It is comforting to hear you say that, <CHARNAME>. Though I am still slightly embarrassed that you caught me here, I admit...~
IF ~~ + bathe.17
END

IF ~~ bathe.15
SAY ~*blush* <CHARNAME>! Please, do not tease me so. Those were all meant for...~
IF ~~ + bathe.17
END

IF ~~ bathe.16
SAY ~...aye. I understand. Let us move past this, then.~
= ~'Tis late. I should return to the camp and rest. Good night, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneBathe","GLOBAL",2) SetGlobal("C0SireneRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ bathe.17
SAY ~(Even in the darkness, you are certain her face is flushed) I-It is getting late, <CHARNAME>. I should return to the camp. Good night...~
IF ~~ DO ~RestParty()~ EXIT
END
END

// Cromwell

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("C0SW2H")~ THEN GOTO CROMWELL1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN CROMWELL1 SAY ~Hmm, what have ye got here, aye? Cold iron? Smells like smoke an' ashes...~
    IF ~PartyHasItem("C0SW2H")
        !PartyHasItem("MISC6M")~ THEN GOTO CROMWELL2
    IF ~PartyHasItem("C0SW2H")
        PartyHasItem("MISC6M")~ THEN GOTO CROMWELL3
  END
  
  IF ~~ THEN BEGIN CROMWELL2 SAY ~Aye, ye've got a devil o' a blade 'ere. Seen better days, it has. But if ye had a demon's heart, I could give it more of a bite.~
    IF ~~ THEN GOTO CROMWELLNO
  END
  
  IF ~~ THEN BEGIN CROMWELL3 SAY ~Aye, ye've got a devil o' a blade 'ere. Seen better days, it has. An' by Moradin's forge, ye've got a demon's fresh heart, too! If ye've got 5000 gold, I can use demon's blood to give yon blade some extra bite.~
    IF ~PartyGoldLT(5000)~ THEN REPLY ~I don't have enough gold.~ GOTO CROMWELLNO
    IF ~PartyGoldGT(4999)~ THEN REPLY ~That sounds good. Do it.~ DO ~SetGlobal("C0BrimstoneUpgrade","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("C0SW2H",1)
                                                 DestroyItem("C0SW2H")
                                                 TakePartyItemNum("MISC6M",1)
                                                 DestroyItem("MISC6M")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY ~Not at this time. What else?~ GOTO CROMWELLNO
  END

  IF WEIGHT #-1 ~GlobalGT("C0BrimstoneCraft","ar0334",0)~ THEN BEGIN CROMWELL4 SAY ~Well, there ye go, me friend. Use it well. And if ye comes across anything else of interest, ye knows where to bring it, aye?~
    IF ~~ THEN DO ~SetGlobal("C0BrimstoneCraft","ar0334",0)~ EXIT
  END

  IF ~~ THEN BEGIN CROMWELLNO SAY ~Movin' on, then...~
   COPY_TRANS WSMITH01 13
  END
END

// Yoshimo's betrayal

I_C_T YOSHJ 113 C0SireneYOSHJ113
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Yoshimo... no, it cannot be. You have *damned* yourself. What could drive you to do this?~
END

I_C_T YOSHIMOX 5 C0SireneYOSHIMOX5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I see... so this is the suffering that binds your soul. In spite of all that has happened, Yoshimo, I am truly sorry that it must come to this.~
END

// Yoshimo's heart

INTERJECT SLILMAT 0 C0SireneSLILMAT0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) PartyHasItem("miscbu")~ THEN ~Brother... I must ask a favor of you. I have here the heart of a lost friend. Before his death, he... asked lord Ilmater for judgment.~
EXTERN SLILMAT 10

I_C_T SLILMAT 10 C0SireneSLILMAT10
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~...<CHARNAME>?~
END

INTERJECT WILMAT 0 C0SireneWILMAT0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) PartyHasItem("miscbu")~ THEN ~Sister... I must ask a favor of you. I have here the heart of a lost friend. Before his death, he... asked lord Ilmater for judgment.~
EXTERN WILMAT 4

I_C_T WILMAT 4 C0SireneWILMAT4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~...<CHARNAME>?~
END

// Spellhold - non-romanced

INTERJECT Player1 3 C0SireneSpellholdDizzy0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2)~ THEN
~Are you all right, my friend? Your face clearly shows discomfort.~
END
++ ~There's nothing wrong with me.~ EXTERN C0SIRE2J pl1.1
++ ~I'm fine. Just... a bit dizzy.~ EXTERN C0SIRE2J pl1.2
++ ~Something's not right. I think Irenicus did something to me.~ EXTERN C0SIRE2J pl1.3

CHAIN C0SIRE2J pl1.1
~Forgive me for saying so, <CHARNAME>, but I doubt that. If there is anything I can do to help, then tell me.~
EXIT

CHAIN C0SIRE2J pl1.2
~Is that so? Perhaps we should stop and rest a while, then. This is not a safe place, and we need you in good condition to lead us.~
EXIT

CHAIN C0SIRE2J pl1.3
~What did he do? I fear the worst, <CHARNAME>. If this happens again, tell me.~
EXIT

// Spellhold - romanced

INTERJECT Player1 3 C0SireneSpellholdDizzy1
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN
~<CHARNAME>? A-are you unwell? Please, talk to me.~
END
++ ~I'm all right... really.~ EXTERN C0SIRE2J pl1.4
++ ~Something's wrong with me, Sirene, but I don't know what.~ EXTERN C0SIRE2J pl1.5
++ ~Let me hold you, Sirene. I need your support.~ EXTERN C0SIRE2J pl1.6

CHAIN C0SIRE2J pl1.4
~<CHARNAME>... please, do not lie to me. It does not make me feel better.~
EXIT

CHAIN C0SIRE2J pl1.5
~You are frightening me, <CHARNAME>. Perhaps it is this place... let us find a way out of here, quickly.~
EXIT

CHAIN C0SIRE2J pl1.6
~(She nods and embraces you closely) You do not even need to ask, <CHARNAME>. I will be here for you, always.~
EXIT

// Slayer reaction

I_C_T PLAYER1 5 C0SireneFirstSlayerChange1 
== C0SIRE2J IF ~InParty("C0Sirene") See("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, that... that *thing* was evil incarnate, <CHARNAME>. 'Twas like nothing I have ever seen before... was it your taint manifested?~
END

// Non-romance, tree of life LG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
~Sirene, paladin of Ilmater, who has endured many trials at your side. She has proven her loyalty and righteousness to you time and time again, but you wonder if she truly is aware of what is to come.~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~Sirene, this is between me and Irenicus. Your part in this is done.~ EXTERN C0SIRE2J pl2.1
++ ~There are many others who need you, Sirene. Don't throw away your life for me.~ EXTERN C0SIRE2J pl2.1
++ ~It's time to finish things. Are you prepared?~ EXTERN C0SIRE2J pl2.1

CHAIN C0SIRE2J pl2.1
~I would never turn away from in your greatest hour of need, <CHARNAME>, especially not when you need me the most. Whether I live or die, t'would be worth it to see you restored. My life is yours to forfeit, my friend.~
END
COPY_TRANS PLAYER1 33 

// Non-romance, tree of life CG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN PLAYER1 pl4
END

CHAIN PLAYER1 pl4
~Sirene, former paladin of Ilmater, who has endured many trials at your side. By your guidance, she has sought her own path to follow with full control of her fate. But is she truly prepared to risk everything for your sake?~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~Sirene, this is between me and Irenicus. Your part in this is done.~ EXTERN C0SIRE2J pl2.1
++ ~There are many others who need you, Sirene. Don't throw away your life for me.~ EXTERN C0SIRE2J pl2.1
++ ~It's time to finish things. Are you prepared?~ EXTERN C0SIRE2J pl2.1

// Romance, tree of life LG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ 
EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
~Sirene, paladin of Ilmater, to whom you became her closest friend and eventual lover. She looks upon you, warmth in her eyes.~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~Sirene, I-~ EXTERN C0SIRE2J pl3.1

CHAIN C0SIRE2J pl3.1
~(smile) No, <CHARNAME>. This time, allow me to do the talking.~
= ~There are no words that I can say that would explain my feelings to you, but I feel the need to speak nonetheless.~
= ~In the time we've been together, I have seen many things. I have suffered, lost and gained more than I have in the rest of my life, but the time since I met you has mattered more to me than all the years I have lived without a cause. Thank you.~
= ~I love you. You have become more important to me than the gods, the world... and even my life. To part with you now, and the thought that I may never see you again, would be a fate worse than anything I may risk by standing at your side. I will follow you, no matter the consequence.~
END
COPY_TRANS PLAYER1 33

// Romance, tree of life CG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ 
EXTERN PLAYER1 pl5
END

CHAIN PLAYER1 pl5
~Sirene, former paladin of Ilmater, to whom you became her closest friend and eventual lover. She looks upon you, warmth in her eyes.~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~Sirene, I-~ EXTERN C0SIRE2J pl3.1

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 C0SireneIrenicusIsDead1
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Is this the end? It feels no different to me, but what of you, <CHARNAME>?~
END

// Hell

I_C_T PLAYER1 25 C0SireneEnteringHell1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~I... I thought I had seen the House of the Triad for a moment. 'Twas like a dream I never dared to imagine... but I heard your scream, so I turned away. Eternal rest seemed so close, yet... I stand at your side, <CHARNAME>, even in death.~
END

I_C_T PLAYER1 25 C0SireneEnteringHell2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~So, death was not the end for either of us... I thought perhaps this was the fate that awaited me, but... if I am to continue at your side even in this hell, then so be it.~
END

// Irenicus in hell

I_C_T HELLJON 7 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~In Ilmater's name, you will pay for your sins, Irenicus. There will be no more mercy for you, from us or the gods!~
END

I_C_T HELLJON 8 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~In Ilmater's name, you will pay for your sins, Irenicus. There will be no more mercy for you, from us or the gods!~
END

I_C_T HELLJON 9 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~In Ilmater's name, you will pay for your sins, Irenicus. There will be no more mercy for you, from us or the gods!~
END

I_C_T HELLJON 10 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~In Ilmater's name, you will pay for your sins, Irenicus. There will be no more mercy for you, from us or the gods!~
END

I_C_T HELLJON 7 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~A thousand deaths are not enough penance for the sins you have committed, Irenicus. May your death be swift, for your final judgment will not!~
END

I_C_T HELLJON 8 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~A thousand deaths are not enough penance for the sins you have committed, Irenicus. May your death be swift, for your final judgment will not!~
END

I_C_T HELLJON 9 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~A thousand deaths are not enough penance for the sins you have committed, Irenicus. May your death be swift, for your final judgment will not!~
END

I_C_T HELLJON 10 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~A thousand deaths are not enough penance for the sins you have committed, Irenicus. May your death be swift, for your final judgment will not!~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 C0SireneSecondSlayerChange0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~<CHARNAME>... did you sleep at all? You look horribly pale...~
END
++ ~Get away from me, I'm turning!~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1
++ ~It's coming again, Sirene! Run while you can!~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1
++ ~I feel... strange...~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1

CHAIN C0SIRE2J C0SireneSecondSlayerChange1
~What are you saying, <CHARNAME>? I cannot hear you... no, by the gods, NO!~
DO ~SetGlobal("C0SireneSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 C0SireneSlayerSurvived1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSecondSlayerChange","GLOBAL",1)~ THEN ~You... <CHARNAME>, are you...~
= ~This... this must end. We must restore you, or else... I dare not imagine it.~
END
IF ~~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("C0Sirene") Global("C0SireneSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Bodhi abduction

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB C0SireneKidnap
END

CHAIN BODHIAMB C0SireneKidnap
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
== BODHIAMB ~Ah, paladins are always the most satisfying to corrupt. So self-righteous and arrogant... and this one has the most intriguing background. The fiendish blood within her will appreciate what I shall do, I think.~
== C0SIRE2J ~I know what you intend, monster, but Ilmater will protect my soul. You will not have me.~
== BODHIAMB ~Your pitiful god cannot protect you, Sirene. Surely you feel the call of the darkness welcoming you...~
== C0SIRE2J ~No! I put my life in my lord's hands! <CHARNAME>, strike me down!~
END
++ ~(Do as she says)~ EXTERN C0SIRE2J C0SireneKidnap1
++ ~I... I can't!~ EXTERN BODHIAMB C0SireneKidnap2
++ ~(Do nothing)~ EXTERN BODHIAMB C0SireneKidnap2

CHAIN C0SIRE2J C0SireneKidnap1
~Thank you...~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bodhi")~ EXIT

CHAIN BODHIAMB C0SireneKidnap2
~Can you truly do it, <CHARNAME>, hmm? Cut down the one closest to you? I doubt it. Now be a good girl and come with me...~
== C0SIRE2J ~I will not harm <CHARNAME>, even if I must fall. I choose death in Ilmater's name!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bodhi2")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0SireneVampire","GLOBAL",3)~ THEN BODHIAMB C0SireneKidnap3
~Do you truly think this makes a difference, foolish <CHARNAME>? I will have her regardless. Her cold body will do. Follow me further and you will lose more than you can imagine... beginning now!~
END
IF ~~ DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
ForceSpell("C0Sirene",DRYAD_TELEPORT)
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
DestroySelf()~ UNSOLVED_JOURNAL @100001 EXIT

A_T_T C6bodhi 21 ~!Global("C0SireneVampire","GLOBAL",3)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("C0SireneVampire","GLOBAL",3)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~You have taken too much already! Return Imoen's soul, and Sirene's corpse!~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~And you have delivered on that promise. Return Sirene's body and perhaps I will be merciful.~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~I would have hunted you for your theft of Sirene alone. I will not lose my last hope of saving her from you.~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~You place too much confidence in sentiment. The theft of Sirene's body will not save you.~ EXTERN C6BODHI C0SireneAbConf
END

CHAIN C6BODHI C0SireneAbConf
~An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not.~
END
IF ~~ EXTERN C6BODHI C0SireneAb

CHAIN C6BODHI C0SireneAb
~Your pet fiendling is dead, <CHARNAME>. Quite impressive, truly. Perhaps her wretched god is with her after all, for I was unable to even touch her after laying her corpse into these tombs, much less turn her into one of us.~
= ~But that is of no consequence. I have taken from you what you treasure the most, <CHARNAME>, as was my intention. Fear not, however. You will join your beloved Sirene in the grave.~
= ~No... that is not the fate that awaits you, is it, hmm? Oh, how delightful this is... I shall take more pleasure in watching your life fade, knowing your soul is bound for oblivion, never to see the one you love again!~
END
IF ~~ EXTERN C6BODHI 22

// Sirene's body

CHAIN IF WEIGHT #-1
~Global("C0SireneVampire","GLOBAL",3)
Global("C0SireneBody","AR0809",2)~ THEN PLAYER1 body
~(Sirene's body is cold and lifeless in your arms. For all of Bodhi's taunts, she did not lie to you - Sirene is dead.)~ [C0BLANK]
DO ~SetGlobal("C0SireneBody","AR0809",3)
SetGlobal("C0SireneVampire","GLOBAL",4)~
END
IF ~InParty("Imoen2")~ EXTERN IMOEN2J body.1
IF ~!InParty("Imoen2") InParty("Aerie")~ EXTERN AERIEJ body.2
IF ~!InParty("Imoen2") !InParty("Aerie") InParty("Jaheira")~ EXTERN JAHEIRAJ body.3
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") InParty("Mazzy")~ EXTERN MAZZYJ body.4
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") InParty("Keldorn")~ EXTERN KELDORJ body.5
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") InParty("Anomen")~ EXTERN ANOMENJ body.6
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") InParty("Viconia")~ EXTERN VICONIJ body.7
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") !InParty("Viconia") InParty("Cernd")~ EXTERN CERNDJ body.8
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") !InParty("Viconia") !InParty("Cernd")~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN IMOEN2J body.1
~I- I'm so sorry, little <PRO_BROTHERSISTER>. I can't believe she's gone... but maybe it's not for good. There must be some way we can bring her back.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN AERIEJ body.2
~No! S-she can't be... she can't be dead! *sob* I... I'm so sorry, <CHARNAME>. My magic c-can't help when she's... she's died this way. M-maybe the priests of Ilmater can help us.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN JAHEIRAJ body.3
~This... must be hard on you, <CHARNAME>. Though it goes against my teachings, I cannot bear to see you suffer like this. They may still be hope... perhaps we can seek aid from the Ilmatari church.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN MAZZYJ body.4
~By Arvoreen's mercy... she did not deserve such an ignoble death. I know what it is like, <CHARNAME>, for I felt the same way when Patrick fell. Perhaps we should bring her to the priests of Ilmater.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN KELDORJ body.5
~I have seen many comrades fall in my lifetime, but she was too young to deserve this. You two deserved a long and full life together. Regardless, do not despair, my friend, for the priests of Ilmater in this city may still be able to save her.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN ANOMENJ body.6
~This... was not what she deserved. I would draw upon Helm's power to bring her back, but I fear no magic could reverse such a sacrificial death. I am truly sorry, <CHARNAME>. We should bring her body to her fellow clergymen.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN VICONIJ body.7
~So, the elg'caress's foolishness became the death of her, as I expected. Do not look at me, <CHARNAME>, I have no power to restore her in that condition. She has fellows in this wretched city, does she not? Beg them for aid if you must.~ 
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN CERNDJ body.8
~Death is a necessary part of the natural cycle, but perhaps in this case, there can be an exception. Regardless, I fear Sirene's ritual has prevented her from returning by normal means. Perhaps the local Ilmatari priests can assist us.~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

// Vampirism - priest of Ilmater

EXTEND_BOTTOM SLILMAT 0 #2
+ ~PartyHasItem("c0sbody")~ + ~Brother, I beg your assistance. My beloved, a fellow member of your faith, died to protect me. Is there anything you can do to return her to life?~ EXTERN SLILMAT C0SireneSLILMAT1
END

CHAIN SLILMAT C0SireneSLILMAT1
~Why... this is Sister Sirene of Ilmater's holy warriors! What has become of her?~
END
++ ~A powerful vampire attempted to turn her, but she did... something to stop it.~ EXTERN SLILMAT C0SireneSLILMAT2

CHAIN SLILMAT C0SireneSLILMAT2
~Please, allow me to see her.~
= ~By Ilmater, this is...~
= ~I see... this is much, much worse than I expected. I am truly sorry to say this, but... I fear she is gone for good.~
= ~Were it a simple matter of calling her spirit back from the Fugue Plane, I would gladly do everything within my power. But... if she has sacrificed her life to protect herself from the fate of undeath... then I fear my prayers will not be able to reach her.~
= ~There is nothing I can do. I am truly sorry.~
END
++ ~What, exactly, did she do to protect herself?~ EXTERN SLILMAT C0SireneSLILMAT3
++ ~I can't have that. Please, we must try something.~ EXTERN SLILMAT C0SireneSLILMAT4
++ ~That's not good enough. You restore her now, or else.~ EXTERN SLILMAT C0SireneSLILMAT4

CHAIN SLILMAT C0SireneSLILMAT3
~I cannot say for certain... but it seems as though she used her life as a sacrifice to bless her body, protecting it from corruption. It seems she was successful, but...~
= ~It seems that as a consequence, she has prevented herself from being resurrected. Such is the price of making such a sacrifice... you must have mattered much to her, <PRO_BROTHERSISTER>.~
END
++ ~I must have her back. Is there really nothing you can do?~ EXTERN SLILMAT C0SireneSLILMAT4
++ ~That's not good enough. You restore her now, or else.~ EXTERN SLILMAT C0SireneSLILMAT4

CHAIN SLILMAT C0SireneSLILMAT4
~Perhaps...~
= ~There may yet be hope... but the only one who can save her is Ilmater himself. If her faith is true, then perhaps he will grant her life anew...~
= ~I will prepare the rites to petition lord Ilmater. Her soul is likely on the road towards judgment as we speak, so we have no time to waste. This will require a whole day at the very least, so please make yourself at home, my <PRO_LADYLORD>.~
DO ~TakePartyItemNum("C0SBODY",1)
DestroyItem("C0SBODY")
ClearAllActions()
StartCutsceneMode()
StartCutscene("C0ILM01")~ EXIT

EXTEND_BOTTOM WILMAT 0 #2
+ ~PartyHasItem("c0sbody")~ + ~Sister, I beg your assistance. My beloved, a fellow member of your faith, died to protect me. Is there anything you can do to return her to life?~ EXTERN WILMAT C0SireneWILMAT1
END

CHAIN WILMAT C0SireneWILMAT1
~Why... this is Sister Sirene of Ilmater's holy warriors! What has become of her?~
END
++ ~A powerful vampire attempted to turn her, but she did... something to stop it.~ EXTERN WILMAT C0SireneWILMAT2

CHAIN WILMAT C0SireneWILMAT2
~Please, allow me to see her.~
= ~By Ilmater, this is...~
= ~I see... this is much, much worse than I expected. I am truly sorry to say this, but... I fear she is gone for good.~
= ~Were it a simple matter of calling her spirit back from the Fugue Plane, I would gladly do everything within my power. But... if she has sacrificed her life to protect herself from the fate of undeath... then I fear my prayers will not be able to reach her.~
= ~There is nothing I can do. I am truly sorry.~
END
++ ~What, exactly, did she do to protect herself?~ EXTERN WILMAT C0SireneWILMAT3
++ ~I can't have that. Please, we must try something.~ EXTERN WILMAT C0SireneWILMAT4
++ ~That's not good enough. You restore her now, or else.~ EXTERN WILMAT C0SireneWILMAT4

CHAIN WILMAT C0SireneWILMAT3
~I cannot say for certain... but it seems as though she used her life as a sacrifice to bless her body, protecting it from corruption. It seems she was successful, but...~
= ~It seems that as a consequence, she has prevented herself from being resurrected. Such is the price of making such a sacrifice... you must have mattered much to her, <PRO_BROTHERSISTER>.~
END
++ ~I must have her back. Is there really nothing you can do?~ EXTERN WILMAT C0SireneWILMAT4
++ ~That's not good enough. You restore her now, or else.~ EXTERN WILMAT C0SireneWILMAT4

CHAIN WILMAT C0SireneWILMAT4
~Perhaps...~
= ~There may yet be hope... but the only one who can save her is Ilmater himself. If her faith is true, then perhaps he will grant her life anew...~
= ~I will prepare the rites to petition lord Ilmater. Her soul is likely on the road towards judgment as we speak, so we have no time to waste. This will require a whole day at the very least, so please make yourself at home, my <PRO_LADYLORD>.~
DO ~TakePartyItemNum("C0SBODY",1)
DestroyItem("C0SBODY")
ClearAllActions()
StartCutsceneMode()
StartCutscene("C0ILM02")~ EXIT

// Post-Resurrection

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",5) Global("C0SirenePostResurrection","GLOBAL",0)~ THEN SLILMAT postres
~I must congratulate you for being granted the chance to return to this world after your arduous trial, sister. You must surely have the favor of our lord to be granted such a gift.~
DO ~SetGlobal("C0SirenePostResurrection","GLOBAL",1)~ EXTERN SLILMAT 0

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",5) Global("C0SirenePostResurrection","GLOBAL",0)~ THEN WILMAT postres2
~I must congratulate you for being granted the chance to return to this world after your arduous trial, sister. You must surely have the favor of our lord to be granted such a gift.~
DO ~SetGlobal("C0SirenePostResurrection","GLOBAL",1)~ EXTERN WILMAT 0

// Waukeen's Promenade

I_C_T AERIE 26 C0SireneAERIE26
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~This is no ogre, <CHARNAME>. No evil creature, at the very least.~
END

I_C_T QUAYLE 1 C0SireneQUAYLE1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~(smile) Is this the same Quayle that you and I remember, <CHARNAME>?~
END

// Faldorn

I_C_T CEFALDOR 0 C0SireneCEFALDOR0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Faldorn?! Have you truly gone mad, druid? Even as I remember you, you had not sunk to such depths! Do you even recognize us?~
== CEFALDOR ~Your inhuman stench is familiar to me, though from where I do not care to remember. Silence, now!~
END

// Bodhi

I_C_T BODHI 1 C0SireneBODHI1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Be wary, <CHARNAME>. This woman wears an aura of evil like a cloak. I would disbelieve anything she says to us.~
END

I_C_T BODHI 6 C0SireneBODHI6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I will not do this, <CHARNAME>, and I advise you not to trust a word this... this thing says.~
END

I_C_T BODHI 18 C0SireneBODHI18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I will have nothing to do with this creature, <CHARNAME>! Forgive me, but despite our friendship, this is where we part. Farewell.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0)
LeaveParty()
EscapeArea()~
END

I_C_T BODHI2 6 C0SireneBODHI26
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Do not believe these lies, <CHARNAME> Even the Shadow Thieves are but flesh and blood, but she is a being of pure evil, and our enemy. She cannot be trusted.~
END

I_C_T C6BODHI 0 C0SireneC6BODHI0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your evil ends here, Bodhi, I swear in Ilmater's name.~
END

// Docks District

I_C_T2 DCLERIC 1 C0SireneDCLERIC1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~In the name of Ilmater, your madness ends this day!~
END

I_C_T2 DCLERIC 2 C0SireneDCLERIC2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~In the name of Ilmater, your madness ends this day!~
END

I_C_T2 DCLERIC 3 C0SireneDCLERIC3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~In the name of Ilmater, your madness ends this day!~
END

I_C_T2 DCLERIC 4 C0SireneDCLERIC4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Twas a mistake allowing him to walk away, <CHARNAME>. Cyric's madmen are as cruel as they are mad, and will only sow discord so long as they are allowed to live.~
END

I_C_T2 MAEVAR 25 C0SireneMAEVAR25
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Edwin... not a name I had hoped to hear again.~
END

I_C_T2 MAEVAR 31 C0SireneMAEVAR31
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We have already been forced into one murder, <CHARNAME>. I do not wish to be a part of another.~
END

I_C_T EDWIN 1 C0SireneEDWIN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I had hoped never to meet you again since we parted, Red Wizard, though I should not be surprised that you work amongst such villains.~
== EDWIN ~I see you still keep your fiendling around, <CHARNAME>. This is the exact kind of company I speak of. No matter.~
END

I_C_T RENAL 30 C0SireneRENAL30
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~*sigh* Once again, to work with thieves... let us be done with this distasteful mission as quickly as possible.~
END

I_C_T RENAL 30 C0SireneRENAL30
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~*sigh* Working with thieves... I do not like this. Let us be done with this distasteful mission as quickly as possible.~
END

I_C_T ARAN 0 C0SireneARAN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The Shadowmaster himself... he is not as I expected, though perhaps appearances deceive.~
END

I_C_T ARAN 51 C0SireneARAN51
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Our task is a matter of life and death, and you think that these trinkets will satisfy? Do not mock us, thief.~
END

I_C_T LYROS 11 C0SireneLYROS11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I had hoped we'd seen the last of this mad necromancer when we parted ways with him.~
== LYROS ~And I had hoped you'd seen the inside of a coffin, paladin. I suppose we should both be disappointed, hmm?~
END

I_C_T2 RENFELD 6 C0SireneRENFELD6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I know we have important matters, <CHARNAME>, but we should bring him to aid imminently. His condition will get worse with every moment spent untreated.~
END

I_C_T2 RENFELD 8 C0SireneRENFELD8
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You cannot be so cruel, <CHARNAME>! He is suffering greatly and will die a painful death if we do not help him.~
END

I_C_T JAHEIRAJ 34 C0SireneJAHEIRAJ34
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Gods, Jaheira, you are becoming more pale as you speak. What did he do to you? How do you feel?~
== JAHEIRAJ ~I... I am alright, for the moment. But the bastard...~
END

I_C_T2 DLOST 0 C0SireneDLOST0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Oh, poor child... is there anything we can do, <CHARNAME>?~
END

I_C_T2 DLOST 3 C0SireneDLOST3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~That was cruel, <CHARNAME>. The girl was in desperate need of help, not your callousness.~
END

// Slums District

I_C_T2 LEHTIN 10 C0SireneLEHTIN10
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A foul man... his tone is as treacherous as that of a snake. I fear nothing good lies behind those doors.~
END

I_C_T HENDAK 1 C0SireneHendak1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I should not be surprised that this den indulges in slavery. We must put an end to it, <CHARNAME>.~
END

I_C_T HENDAK 40 C0SireneHendak40
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Perhaps 'tis for the best, though I fear 'twould only draw further attention from the slavers. You should be wary, Hendak.~
== HENDAK ~You speak the truth, my friend, though I know well the risks, and I do not fear them.~
END

I_C_T SLAVERM 0 C0SireneSLAVERM0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~What is this? The local law would knowingly turn a blind eye to this devilry?~
END

I_C_T HENDAK 31 C0SireneHendak31
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~As will we, whereever we find them. You have our promise of that.~
END

I_C_T LISSA 4 C0SireneLISSA4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~How disgusting... children are the gods' gift to be cherished. Such abuse is only worthy of punishment.~
END

INTERJECT GIRL1 0 C0SireneGIRL1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No, child, do not fear. You are free now. Go to Ilmater's temple. You will be safe there, I promise.~
EXTERN GIRL1 1

INTERJECT HAEGAN 0 C0SireneHAEGAN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your slaving days are at an end, monster.~
EXTERN HAEGAN 2

I_C_T GIRL2 0 C0SireneGIRL20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The fiends... leaving this poor child with those beasts. 'Tis a miracle that we managed to save her, at least.~
END

INTERJECT GIRL2 4 C0SireneGIRL2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Wait! Here, child... these are all the coins I have. I am sorry 'tis not much... but for food and shelter, it should suffice... keep it hidden, and stay safe.~
== GIRL2 ~I- I understand, miss. Th-thank you for your kindness!~
DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()~ EXIT

INTERJECT LLYNIS 7 C0SireneLLYNIS7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No, you will not escape your punishment so easily, murderer. Face justice!~
DO ~Attack("llynis")~
EXTERN LLYNIS 10

// Graveyard

I_C_T WELLYN 0 C0SireneWELLYN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis a restless spirit... but I sense no malice from him, only sorrow. Do not harm him, <CHARNAME>.~
END

I_C_T WELLYN 3 C0SireneWELLYN3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Unthinkable... only a fiend could possibly murder and innocent child. We must help this one.~
END

I_C_T TIRDIR 2 C0SireneTIRDIR2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Buried alive... a fate worse than death itself. Who could have done such a thing?~
END

I_C_T SETHLE 6 C0SireneSETHLE6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Do not lie to us, you scoundrel! We know of the man you helped bury alive!~
END

I_C_T2 BHCRYPT 0 C0SireneBHCRYPT0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Return to your grave, foul unliving beast!~
END

// Bridge District

I_C_T TANNER 8 C0SireneTanner8
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We have no intention of leaving, not until we make you pay for what you have done.~
END

I_C_T INSPECT 13 C0SireneINSPECT13
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, such an act could not have been done by any sane mind...~
END

I_C_T RAELIS 44 C0SireneRAELIS37
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You... you are of another plane, are you not? Something in my blood can sense it.~
== RAELIS ~And I sense the touch of Baator upon you, child. Most curious... though I fear we have more pressing matters on our hands.~
END

I_C_T2 PTHRAL01 1 C0SirenePTHRAL01
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~How terrible... forced against their wills to fight to the death. We have no option but to give them a merciful end.~
END

I_C_T2 KAYPAL01 3 C0SireneKAYPAL013
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You have strayed far from your path, and now you must face the consequences, sir Anarg. May the gods have mercy on your soul.~
END

I_C_T KAYPAL02 6 C0SireneKAYPAL026
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This man... Reynald de Chatillon. He is still a man of honor, <CHARNAME>. I hope we will not need to slay him like the rest.~
END

I_C_T2 NEB 5 C0SireneNEB5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>, 'tis the child-killer from Baldur's Gate! You shall face Ilmater's justice, monster!~
END

I_C_T2 ANOMENJ 129 C0SireneANOMENJ129
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No! Anomen, you cannot do this!~
END

I_C_T YUSUF 2 C0SireneYUSUF2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Why, Anomen? You have stained your hands with the blood of an innocent! How could you do such a thing?~
END

I_C_T HLSKULL 4 C0SireneHLSKULL4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A cruel fate it may be, <CHARNAME>, yet... something about this one's presence makes me wary. Perhaps 'tis not entirely undeserved.~
END

// Temple District

I_C_T DORN 18 C0SireneDORN18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You cannot truly consider associating with this blackguard, <CHARNAME>.~
END

INTERJECT DORN 16 C0SireneDORN16
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Vile fiend... that you can say such things without a hint of regret...~
== DORN ~Silence, fool. My words are for your leader, not you.~
== C0SIRE2J ~My words will not be enough this day. Draw, you thrall of evil. I will end you for the sake of those who fell by your hand.~
END
++ ~I agree with Sirene. Your evil ways are at an end, Dorn.~ EXTERN DORN 8
++ ~Put your weapon away, Sirene. Dorn could make a valuable ally.~ EXTERN C0SIRE2J SireneDORN1

INTERJECT DORN 23 C0SireneDORN23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Vile fiend... that you can say such things without a hint of regret...~
== DORN ~Silence, fool. My words are for your leader, not you.~
== C0SIRE2J ~My words will not be enough this day. Draw, you thrall of evil. I will end you for the sake of those who fell by your hand.~
END
++ ~I agree with Sirene. Your evil ways are at an end, Dorn.~ EXTERN DORN 8
++ ~Put your weapon away, Sirene. Dorn could make a valuable ally.~ EXTERN C0SIRE2J SireneDORN1

CHAIN C0SIRE2J SireneDORN1
~<CHARNAME>, if you align yourself with this fiend, then I will have no choice but to stand against you as well, for I have no intention of backing down. One of us must fall here.~
END
++ ~Fine, we'll do it your way. Dorn, prepare to die.~ EXTERN DORN 8
++ ~I'm sorry it had to come to this, Sirene.~ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
ActionOverride("DORN",JoinParty()) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~ EXIT
++ ~You asked for it, Sirene. Better say your prayers.~ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
ActionOverride("DORN",JoinParty()) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~ EXIT

I_C_T GARRICK 2 C0SireneGARRICK2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Do you not remember us, Garrick? 'Tis a shame... though he seems quite different. Whatever happened to him, I wonder?~
END

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",STATE_SLEEPING)
RandomNum(2,1)
Global("C0Sirene","LOCALS",0)~ THEN TIRLANA C0SireneIrlana
~Ho there! I recognize the brand of Ilmater on your armor, fellow knight. You are welcome among the knights of the Radiant Heart. But what cause do you have to hide your visage so carefully?~
DO ~SetGlobal("C0Sirene","LOCALS",1)~
== C0SIRE2J ~I... I fear I have a rather hideous scar that gives me great shame to reveal, especially in the face of one as radiant as you, my lady. Excuse me...~
EXIT

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",STATE_SLEEPING)
RandomNum(2,1)
Global("C0Sirene","LOCALS",0)~ THEN TCADRIL C0SireneIrlana
~Greetings, my lady. We seldom see knights of the Crying God in our halls, but you are certainly welcome among us regardless.~
DO ~SetGlobal("C0Sirene","LOCALS",1)~
== C0SIRE2J ~Oh... thank you, sir.~
EXIT

// Unseeing Eye

I_C_T2 CSGAAL 7 C0SireneCSGAAL7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This is utter blasphemy, <CHARNAME>! How could anyone believe such things?~
END

I_C_T HPRELATE 11 C0SireneHPRELATE11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Long have I wished to see these halls with my own eyes, <CHARNAME>. 'Tis as glorious, nay, more than I expected. I would not have dared to tread here without your company.~
END

I_C_T2 HURGISF 4 C0SireneHURGISF4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Remember, <CHARNAME>. Though those of evil intent may try to hide behind a guise, we have the power to see the truth in their hearts. Now is the time to use that power.~
END

I_C_T2 HURGISR 4 C0SireneHURGISR4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Remember, <CHARNAME>. Though those of evil intent may try to hide behind a guise, we have the power to see the truth in their hearts. Now is the time to use that power.~
END

I_C_T PLMETR01 22 C0SirenePLMETR0122
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~He has revealed his true colors... I hope that you understand the correct choice here, <CHARNAME>.~
END

I_C_T KAYL2 10 C0SireneKAYL210
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis a tragedy when one of our own chooses to abuse their position, though I fear that banishment only encourages them to stray further from the right.~
== KAYL2 ~You are not of the Order, milady, so it may seem difficult to understand. We do our best to keep our members on the right path, but sometimes they go too far.~
END

I_C_T KAYL2 14 C0SireneKAYL214
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I know not how far these men have fallen, <CHARNAME>, but 'tis still a discomforting thought to have to slay fellow paladins.~
END

I_C_T GAAL 6 C0SireneGAAL6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This is *foul*, <CHARNAME>. 'Tis crueller than even the churches of Loviatar and Talona.~
END

I_C_T2 GAAL 23 C0SireneGAAL23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You will do naught but die, madman, and may your insanity end with your tormented life!~
END

I_C_T THESHAL 5 C0SireneTHESHAL5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~He is losing control, <CHARNAME>. I do not savor the thought, but we must defend ourselves soon, I fear.~
END

I_C_T RIFTM01 0 C0SireneRIFTM010
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Strange... men, but not men, and neither are they undead. Are they guardians?~
== RIFTM01 ~Call us what you wish. It does not matter.~
END

I_C_T RIFTM01 14 C0SireneRIFTM0114
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Older than Ilmater himself... I cannot imagine how long these guardians have suffered for.~
END

I_C_T RIFTM01 21 C0SireneRIFTM0121
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Fear not, guardian. We have taken the device, 'tis true, but we mean no evil.~
END

// Government District

I_C_T TOLGER 75 C0SireneTOLGER75
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I do not trust this mage, <CHARNAME>. He may act civil, but he cannot hide his malevolent intent.~
END

INTERJECT TOLGER 80 C0SireneTOLGER80
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~You are the only fool, wizard, if you think we will listen to your lies any longer. This man is guiltless, as you well know, and if you intend on taking him, prepare to put your life on the line.~
EXTERN TOLGER 81

I_C_T2 VICG1 4 C0SireneVICG12
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Viconia, here? I do not have fond memories of her, but to be burned alive out of mere prejudice... I would not stand by and allow this to happen, <CHARNAME>.~
END

I_C_T2 VICG1 4 C0SireneVICG12a
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~'Tis too cruel of a fate even for a drow, <CHARNAME>. We cannot allow this to happen.~
END

I_C_T VICONI 2 C0SireneVICONI2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I have no love for worshippers of Shar, but after seeing what almost came to pass... if you wish for her to join us, <CHARNAME>, I would not object.~
END

I_C_T VICONI 11 C0SireneVICONI11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~*sigh* I feel disgusted just watching, <CHARNAME>. Was this a fair end to her life, I wonder? I hope to never encounter the same fate. Let... let us be away from here, please.~
END

I_C_T ANOMENJ 150 C0SireneANOMENJ150
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I know you must feel great turmoil, Anomen, truly. Your sister's death was unjust, but thoughtless revenge is not the solution.~
END

I_C_T MARIA 5 C0SireneMARIA5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Gods, how terrible... I feel that we should leave them be in a matter this severe, but I fear for sir Keldorn...~
END

I_C_T KELDORJ 23 C0SireneKELDORJ23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~There must be another way, sir. You cannot simply condemn your family to such a cruel fate! I know 'tis not your true desire.~
== KELDORJ ~You do not understand the graveness of this, child! This is no longer a matter of emotions- this is justice. My honor demands that I follow the rightful path, no matter how I may feel.~
== C0SIRE2J ~Sir Keldorn, you cannot mean such a thing...~
END

// Umar Hills

I_C_T VALYGAR 43 C0SireneVALYGAR43
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I believe him, <CHARNAME>. He is a ranger, and would not have slighted the wizards without reason.~
END

I_C_T2 VALYGAR 28 C0SireneVALYGAR28
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No! If you intend on killing this innocent man, <CHARNAME>, then I shall die alongside him!~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T UHMAY01 18 C0SireneUHMAY18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Quite the share of troubles that plagues this humble village, <CHARNAME>. Whether it be ogres, witches or wolves, none could be of good intent.~
END

I_C_T2 UHOGRE01 15 C0SireneUHOGRE0115
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis a surprise to see such a thing, <CHARNAME>. I am inclined to believe they truly mean Imnesvale no harm, so I think 'twould be best to inform the mayor.~
END

INTERJECT MAZZY 6 C0SireneMAZZY6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Wait, <CHARNAME>. I have sensed the evil of this place since we entered, and there is none within this noble one. Allow me to release her.~
EXTERN MAZZY 13

I_C_T MAZZY 13 C0SireneMAZZY13
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I believe she would make a valuable companion, <CHARNAME>, and I would like to have the company of a fellow knight.~
== MAZZY ~The choice is yours, of course. But if you will have me, my bow and sword are at your disposal.~
END

// Windspear Hills

I_C_T KELDORJ 103 C0SireneKELDORJ103
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~A-Ajantis? Aye, 'tis truly him... today is a dark day indeed. He was my friend and brother-in-arms, and we killed him.~
END

I_C_T GARREN 1 C0SireneGARREN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1) !InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Gods, no... look closely, <CHARNAME>. This... this is Ajantis. My friend and brother-in-arms, slain by my own hand. What evil could have misled us into doing this?~
END

I_C_T2 TAZOK 3 C0SireneTAZOK3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~We defeated you once, and we shall do it again!~
END

I_C_T2 FIRKRA02 25 C0SireneFIRKRA0225
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~In the name of Ilmater, and Ajantis and all who fell by your trickery, you will fall, dragon!~
END

I_C_T2 FIRKRA02 25 C0SireneFIRKRA0225
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~May Ilmater's blessing guide us to victory, <CHARNAME>. We shall end your evil and tyranny today, dragon!~
END

I_C_T FIRKRA02 29 C0SireneFIRKRA0229
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Please, do not consider this, <CHARNAME>. The man has suffered enough, do not take away from him what he has left.~
END

I_C_T2 FIRKRA02 32 C0SireneFIRKRA0232
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You... you foul betrayer! May you get the punishment you deserve!~
DO ~LeaveParty()
EscapeArea()
SetGlobal("C0SireneJoined","GLOBAL",0)~
END

// de'Arnise Keep

I_C_T NALIA 45 C0SireneNALIA45
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We should hear her out, <CHARNAME>. The distress in her tone is clear enough to me.~
END

I_C_T NALIA 46 C0SireneNALIA46
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We should hear her out, <CHARNAME>. The distress in her tone is clear enough to me.~
END

// Trademeet

I_C_T NEEBER 7 C0SireneNEEBER7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>, did we not meet this one in Nashkel? He is certainly bothersome enough to be the same person.~
END

I_C_T TRSKIN02 10 C0SireneTRSKIN0210
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We must help, <CHARNAME>. 'Tis the life of an innocent girl at stake.~
END

I_C_T TRSKIN02 15 C0SireneTRSKIN0215
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Gods, I had hoped to encounter the monster again, so that justice may be exacted, but... not like this.~
END

I_C_T MAZZYJ 58 C0SireneMAZZYJ58
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~If you would allow it, my friend, perhaps I could remain. Perhaps my healing powers may still be of use to your sister.~
== MAZZYJ ~No, no. I appreciate the offer, but I suspect the healing is done. I simply wish to be with Pala when she wakes. <CHARNAME> has greater need for your skills.~
END

INTERJECT TRSKIN03 1 C0SireneTRSKIN031
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~Wait, <CHARNAME>, something is not right. I sense an aura of evil about this woman, and 'tis familiar. Explain yourselves!~
== TRSKIN06 ~Er, well... surely you must be mistaken, we...~
EXTERN TRSKIN03 3

I_C_T TRGENI01 7 C0SireneTRGENI017
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The lives of innocents are not playthings for your amusement!~
END

I_C_T2 GPHIL01 3 C0SireneCPHIL013
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~True strength should be used to defend the weak, not oppress them. I cannot stand by and allow this to happen!~
DO ~Attack("gphil03")~
END

// Brynnlaw + Spellhold
	
EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("C0Sirene") Global("C0SirenePartyBG1","GLOBAL",1)~ + ~You should remember Sirene. Do you recognize her, Imoen?~ EXTERN C0SIRE2J C0SirenePPIMOEN0
END

CHAIN C0SIRE2J C0SirenePPIMOEN0
~She... oh, Ilmater's mercy, what has happened? I can barely recognize her... her mind is broken, and I have no power to do anything. Forgive me, <CHARNAME>.~
END
IF ~~ EXTERN PPIMOEN 1

I_C_T PIRCOR02 12 C0SirenePIRCOR0212
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This is disgusting, <CHARNAME>. We cannot stand by and allow this tyranny to continue.~
END

I_C_T PIRMUR01 2 C0SirenePIRMUR012
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your thugs are no more, witch. I suggest you surrender and hand over Claire now lest you force our hand.~
END

INTERJECT PPLDR01 1 C0SirenePPLDR011
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~I think not. We have no time for you, so I suggest you leave us be, lest we be forced to end your lives.~
EXTERN PPLDR01 2

INTERJECT PIRPIR05 1 C0SirenePIRPIR051
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~We are here for the sake of Ginia and Ason, slaving bastard. Defend yourself!~
EXTERN PIRPIR05 5

I_C_T PPDILI 0 C0SirenePPDILI0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, they have even incarcerated children? What kind of monsters would do such a thing?~
== PPDILI ~I like your face, pretty miss. Why do you have horns, though? They make you look funny. Are they a part of you?~
END

I_C_T2 PPDRADEE 3 C0SirenePPDRADEE3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Does he seem familiar to you, <CHARNAME>? Something about his ramblings reminds me of...~
END

I_C_T PPSAEM2 0 C0SirenePPSAEM20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You again? Your face was not one that I had wished to see after the tedious travel through that maze.~
== PPSAEM2 ~Perhaps what I am about to say might change your mind, my lady.~
END

I_C_T PPSAEM2 19 C0SirenePPSAEM219
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~To traverse through the Underdark or put our trust in this scoundrel... I cannot say I am fond of either prospect.~
END

I_C_T2 IMOEN2 22 C0SireneIMOEN222
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>, no. You cannot abandon her, not when she has suffered through such a terrible ordeal.~
== C0SIRE2J ~Leave me instead. I can fend for myself. Imoen needs you far more than you need me.~
END

// Yoshimo

APPEND C0SIRE2J

IF ~Global("C0SireneYoshimoHeart","GLOBAL",1)~ C0SireneYoshimoHeart
 SAY ~*sigh* 'Tis a tortured life ended too soon, <CHARNAME>. Despite his betrayal, I cannot hate him. I can only hope that Ilmater may forgive him for his mistake.~ [C0BLANK]
 = ~Keep his heart, <CHARNAME>. If the gods are merciful, then perhaps there is yet hope for him.~
IF ~~ DO ~SetGlobal("C0SireneYoshimoHeart","GLOBAL",2)~ EXIT
END

END

// Sahuagin City

I_C_T SAHKNG01 1 C0SireneSAHKNG011
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis as though he is sizing us up for his next meal, <CHARNAME>. I do not like this.~
END

I_C_T SAHKNG01 36 C0SireneSAHKNG0136
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I would not put it past these shark-fiends to turn against us once we served their purpose, <CHARNAME>.~
END

I_C_T SAHPR4 4 C0SireneSAHPR44
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A frightening prospect... I can only hope that their kind's arrogance betrays them in the future.~
END

// Underdark 

I_C_T UDSVIR03 23 C0SireneUDSVIR0323
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We would help, even if you had nothing to give us in exchange.~
END

I_C_T UDSILVER 0 C0SireneUDSILVER0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Oh... oh, my.Å She is so beautiful... I cannot even describe it.~
END

I_C_T UDSILVER 53 C0SireneUDSILVER53
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis like trading the blood of one fiend for another, <CHARNAME>. I cannot tell you which feels worse.~
END

INTERJECT UDPHAE01 61 C0SireneUDPHAE0161
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~What? Is there any cause for this? What threat do the deep gnomes pose, that you would murder them without reason?~
EXTERN UDPHAE01 62

I_C_T2 UDPHAE01 88 C0SireneUDPHAE188
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I dislike this, <CHARNAME>. Despite his hostility, Solaufein has been more than fair to us compared to the rest of these fiends. Perhaps we could warn him and find another way.~
END

I_C_T2 UDSOLA01 132 C0SireneUDSOLA01132
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A follower of the Dark Maiden, here... he is a braver man than I thought. 'Tis a good thing that we did not need to kill him.~
END

I_C_T2 UDSOLA01 140 C0SireneUDSOLA01140
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A follower of the Dark Maiden, here... he is a braver man than I thought. 'Tis a good thing that we did not need to kill him.~
END

I_C_T2 UDTRAP02 3 C0SireneUDTRAP023
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~His mind must have been broken by his imprisonment, <CHARNAME>, but perhaps it can be mended. Violence may not be the only way!~
END

I_C_T UDILSLA2 0 C0SireneUDILSLA20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You are welcome, friends, though I am curious as to why you are here, of all places.~
END

// Coran

I_C_T C6CORAN 1 C0SireneC6CORAN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~(laugh) 'Tis more likely you were overly preoccupied with female attention to care to seek us out, Coran.~
== C6CORAN ~Ah... dear, beautiful Sirene! 'Tis a pleasure to see you again. Er... perhaps I had such ideas, but my intention was to catch up to you eventually, I swear to you.~
== C0SIRE2J ~You have not changed one bit, Coran... unfortunately.~
== C6CORAN ~(laugh) I am what I am, milady.~
END

// Chapter 6-7

I_C_T C6ELF1 2 C0SireneC6ELF12
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~*sigh* By Ilmater, will it ever stop?~
END

I_C_T SUELF4 0 C0SireneC6ELF40
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Shh... fear not, children. We are friends, not monsters.~
END

I_C_T SUELF4 5 C0SireneC6ELF45
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Shh... fear not, children. We are friends, not monsters.~
END

I_C_T SUDEMIN 22 C0SireneSUDEMIN22
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Twas not enough, that much is clear, and 'twould seem your kin must share the blame for <CHARNAME>'s current condition.~
END

I_C_T SUDEMIN 32 C0SireneSUDEMIN32
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Though the issue of your lost soul is paramount, <CHARNAME>, we cannot just watch the city suffer.~
END

I_C_T2 SUJON 14 C0SireneSUJON14
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You have caused too many to suffer, and I will not rest until the blight of your existence has ended!~
END

// TALKS START HERE

CHAIN IF WEIGHT #-1 ~Global("C0SireneBG1Talk","GLOBAL",2)~ THEN C0SIRE2J t0
~<CHARNAME>... 'tis good to be in your company again. I have wondered if we would meet again, ever since we parted ways...~ [C0BLANK]
DO ~RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",3600) SetGlobal("C0SireneBG1Talk","GLOBAL",3)~
END
++ ~Likewise. It's always good to run into an old friend again.~ + t0.1
++ ~It's a pity you left after we defeated Sarevok together. You missed out on a lot.~ + t0.2
++ ~That's not surprising. I was this close to being sentenced to death after the Dragonspear incident, after all.~ + t0.3
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I'm surprised you're so pleased to see me again, after the Flaming Fist took me into custody. As I recall, you didn't want to see me again.~ + t0.4
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I've wondered the same thing since we were apart. I've missed you.~ + t0.5
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~Don't take it the wrong way, but in a way, I'm almost glad you left. I didn't want you to watch me hang for Skie's murder... even if that's not what happened in the end.~ + t0.6
++ ~We don't have time to talk right now, Sirene.~ + t.0

APPEND C0SIRE2J

IF ~~ t.0
SAY ~I understand. Another time, then.~
IF ~~ DO ~RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",3600) SetGlobal("C0SireneBG1Talk","GLOBAL",0)~ EXIT
END

IF ~~ t0.1
SAY ~I only wish that the circumstances were different. Khalid and Dynaheir... *sigh* Fate is cruel indeed.~
IF ~~ + t0.7
END

IF ~~ t0.2
SAY ~Aye, I can imagine... 'tis a shame, really. When I learned of the Shining Lady's crusade threatening the land, I returned to Baldur's Gate... if fate was kinder, perhaps we would have met again sooner, and faced the crusade together.~
IF ~~ + t0.7
END

IF ~~ t0.3
SAY ~Skie's death has weighed heavily on my mind... but if 'tis any comfort to you, <CHARNAME>, I do not blame you for it, regardless of what I believed... before we were forced to part.~
IF ~~ + t0.7
END

IF ~~ t0.4
SAY ~That... I... *sigh* That was impulsive of me. I allowed my emotions to cloud my judgment... lord Ilmater reminded me of that. I was wrong to believe you would truly do something as terrible as murder.~
= ~Truly, I wish I did not say those words to you, in that dreadful prison... but I cannot take back my actions. I can only beg your forgiveness for condemning you.~
++ ~I accept your apology. It was a hard situation, and I don't blame you in the least.~ + t0.4a
++ ~It's hard for me to just forgive what you said or did, but if you're sincere, then that will change with time.~ + t0.4a
++ ~It's too late for forgiveness. I'll allow you to remain with the group, but anything that was between us is done.~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ + t0.4b
++ ~You expect forgiveness for judging and abandoning me? Not a chance. Get out of my sight.~ + t0.4c
END

IF ~~ t0.4a
SAY ~I... you are kinder to me than I deserve, <CHARNAME>. Thank you.~
IF ~~ + t0.7
END

IF ~~ t0.4b
SAY ~I understand, <CHARNAME>. I must have hurt you greatly... this is what I deserve.~
IF ~~ + t0.7
END

IF ~~ t0.4c
SAY ~...If... if that is your wish, <CHARNAME>, then I will do as you command. I will not burden you with my presence again.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ t0.5
SAY ~I... *blush* I am flattered that you have thought of me at all, after everything you have been through, <CHARNAME>. ~
IF ~~ + t0.7
END

IF ~~ t0.6
SAY ~Aye, perhaps I only left because I feared the possibility of seeing your death... nothing would have been more horrible for me to witness. Yet I wonder, would your tragedies have been prevented had I stayed...~
IF ~~ + t0.7
END

IF ~~ t0.7
SAY ~*sigh* Forgive me. I have been haunted by guilt and regret ever since I left. I feel as though I have failed you, <CHARNAME>, by leaving you in your time of need.~
= ~Everything you have lost... Khalid, Dynaheir, even Imoen... I cannot help but feel partially responsible.~
++ ~Don't. There's nothing you could've possibly done, and no way you could have predicted what would happen.~ + t0.8
++ ~You would have just been another casualty on the list, had you stayed.~ + t0.8
++ ~Well, you're back with me again, and that's what matters now. What's done is done.~ + t0.8
++ ~That's enough talking for now. We can come back to this another time.~ + t0.12
END

IF ~~ t0.8
SAY ~That may indeed be true, but... truth be told, it does not comfort me. Since the day I offered my blade to your service, you have treated me as a friend and treated me fairly despite my cursed blood.~
= ~<CHARNAME>, so long as your cause is just, I will devote my life to your cause, whether 'tis vengeance for the fallen or Imoen's safety that you seek. I swear as a paladin of Ilmater... and as a friend.~
++ ~Thank you. I'm honored to have such a loyal friend.~ + t0.9
++ ~That's quite a promise. I'll hold you to it.~ + t0.10
++ ~Good to know. Now let's get moving.~ + t0.11
END

IF ~~ t0.9
SAY ~No, <CHARNAME>, 'tis my pleasure. I hope I will not disappoint you.~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.10
SAY ~Of course, <CHARNAME>. I hope I will not disappoint you.~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.11
SAY ~Aye... as you wish.~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.12
SAY ~There was... one more thing. Before we parted, I remember that we spoke of us, I expressed my desires for more than simple friendship. Have... have you considered the same, since then?~
++ ~We've gone over this once already, at Dragonspear. We even kissed, remember?~ + t0.13
++ ~Who can say? I'd like to find out.~ + t0.14
++ ~No. I trust you as a friend, Sirene, but let's not go any further than that.~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ + t0.15
END

IF ~~ t0.13
SAY ~Aye, I doubt I will ever forget... if you truly still feel anything for me, <CHARNAME>, as I admit I still do for you, then... we can talk of this again soon. I... I would like that.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ t0.14
SAY ~If that is the case... then perhaps we can speak more in the future. I... I would like that.~
IF ~~ EXIT
END

IF ~~ t0.15
SAY ~I understand, <CHARNAME>. I did not wish to force my feelings upon you. We shall continue as friends, then.~
IF ~~ EXIT
END
END

// Friendship talk 1

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",2)~ THEN C0SIRE2J t1
~You have told me little of your goals, <CHARNAME>. I do not presume to demand any answers from you, but I would like to know... do you seek Imoen's safety, or vengeance against your enemy?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Why do you ask?~ + t1.1
++ ~That's not for you to know.~ + t1.0
++ ~I'm sorry, but now is not really the time.~ + t1.x

APPEND C0SIRE2J

IF ~~ t1.x
SAY ~Yes, of course... I understand.~
IF ~~ DO ~SetGlobal("C0SireneFriendshipTalk","GLOBAL",1)~ EXIT
END

IF ~~ t1.0
SAY ~If that is the case, then... I will not bother you further.~
IF ~~ EXIT
END

IF ~~ t1.1
SAY ~I do not wish to sound ungrateful. You have offered me a place in your group, and I know you are not an evil <PRO_MANWOMAN>. I just... wish to know what drives you along your path. Is it Imoen or Irenicus you are after?~
++ ~Imoen's my main priority. Irenicus can rot in the Cowled Wizards' custody for all I care.~ + t1.2
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It's both. I want to save Imoen, but I also want to know what that mage wanted with me.~ + t1.3
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It's both. I want to save Imoen, but I also want to know what that mage wanted with me.~ + t1.3a
++ ~Irenicus is who I'm after. If I can save Imoen along the way, then that's all well and good too.~ + t1.4
++ ~My reasons for going after them are my own. I'd rather you not ask about it.~ + t1.0
END

IF ~~ t1.2
SAY ~That is an honorable cause, <CHARNAME>. I will be pleased to help you in any way I can.~
IF ~~ + t1.5
END

IF ~~ t1.3
SAY ~I understand. I would want to pursue him, as well, if he had done the same to me as he did to you.~
IF ~~ + t1.5
END

IF ~~ t1.3a
SAY ~I understand. After knowing what happened to Khalid and Dynaheir, not to mention Imoen... and yourself, most of all... I would want revenge.~
IF ~~ + t1.5
END

IF ~~ t1.4
SAY ~Revenge, then? For what he has done to others, or what he has done to you?~
= ~No, that does not matter. I know you are fighting for a good cause, and 'tis not my place to judge you. I will do my best for you, <CHARNAME>.~
IF ~~ + t1.5
END

IF ~~ t1.5
SAY ~That is all I had to ask. Thank you for indulging me... and I hope we may talk again.~
IF ~~ EXIT
END
END

// Friendship talk 2

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",4)~ THEN C0SIRE2J t2
~I- I wanted to thank you for allowing me to join you, <CHARNAME>. Many would not have given me such trust.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~They don't know you as well as I do. You're a close friend.~ + t2.1
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~Have you still been travelling alone all this time?~ + t2.2
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~Have you been travelling alone all this time?~ + t2.2
++ ~I can't see why. You're seem trustworthy enough, and you're skilled in battle.~ + t2.3
++ ~We have little time for small talk, Sirene. Perhaps another time.~ + t2.0

APPEND C0SIRE2J

IF ~~ t2.0
SAY ~If you say so, <CHARNAME>. Once again, I am grateful.~
IF ~~ EXIT
END

IF ~~ t2.1
SAY ~Aye, and I appreciate your friendship, <CHARNAME>, more than you could know.~
IF ~~ + t2.4
END

IF ~~ t2.2
SAY ~Yes. 'Tis rare for anyone to be willing to accept one with fell blood, whether 'tis from their own misgivings or their fear that others may judge them. It has... affected my life greatly, as you might imagine.~
IF ~~ + t2.4
END

IF ~~ t2.3
SAY ~Not all are as... accepting towards one with fell blood as you are, <CHARNAME>.~
IF ~~ + t2.4
END

IF ~~ t2.4
SAY ~Do you not have doubts, however? About allowing one such as myself to join you, despite what others may think?~
++ ~No, I trust you.~ + t2.5
++ ~That'd make me a hypocrite. Did you forget what I am?~ + t2.6
++ ~Who cares? I certainly don't.~ + t2.7
END

IF ~~ t2.5
SAY ~I know, and I thank you for that, but 'tis not only about whether you trust me, <CHARNAME>.~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.6
SAY ~No... no, I have not, <CHARNAME>, but that should give you more cause to doubt.~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.7
SAY ~This may not be my place to say so, but... perhaps you should, <CHARNAME>.~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.8
SAY ~To the people, you are a hero, one that deserves respect. Have you not considered, perhaps, what my presence means towards that?~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.10
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.11
END

IF ~~ t2.9
SAY ~You could be much more in the eyes of the people, <CHARNAME>. Have you not considered, perhaps, what my presence means towards that?~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.10
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.11
END

IF ~~ t2.10
SAY ~I have left you once, out of fear for what others may think when they see me at your side. I did not want to diminish the admiration others had for you.~
= ~Perhaps that was wrong of me to assume so, but... I wished the best for you, as my friend. Even now, I still wonder...~
IF ~~ + t2.11
END

IF ~~ t2.11
SAY ~I am grateful, <CHARNAME>, more grateful than you could possibly know to have a place here, but if you ever believe that I am causing you trouble, then... you should do what you see fit. I will not begrudge you for it.~
++ ~I would never do that.~ + t2.12
++ ~I'll consider it.~ + t2.13
END

IF ~~ t2.12
SAY ~You are kind, <CHARNAME>. Much kinder than I deserve. So long as you will have me, I will not fail you.~
IF ~~ EXIT
END

IF ~~ t2.13
SAY ~As you should, <CHARNAME>. But so long as you will have me, I will not fail you.~
IF ~~ EXIT
END
END
// Friendship talk 3

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",6)
!Class(Player1,PALADIN_ALL)
!Class(Player1,CLERIC_ALL)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ THEN C0SIRE2J t3
~Perhaps 'tis not my place to ask, but are you a <PRO_MANWOMAN> of faith, <CHARNAME>?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Yes, I am.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.1
++ ~I'm not sure.~ + t3.2
++ ~Will you judge me if I answer?~ + t3.3
++ ~No, I'm not.~ DO ~SetGlobal("C0SirenePCFaithless","GLOBAL",1) IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.4

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",6)
OR(4)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)~ THEN C0SIRE2J t3
~As a <PRO_MANWOMAN> of faith, <CHARNAME>... would you indulge me for a moment?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Of course. What do you want to ask?~ + t3.5
++ ~Now's not really the best time.~ + t3.0

APPEND C0SIRE2J

IF ~~ t3.0
SAY ~Very well, <CHARNAME>. I will not bother you on this again.~
IF ~~ EXIT
END

IF ~~ t3.1
SAY ~I see. That is good, then... perhaps you are suitable to answer this.~
IF ~~ + t3.5
END

IF ~~ t3.2
SAY ~So you have yet to find a god that aligns with your beliefs... that is alright. You may still be able to answer my question.~
IF ~~ + t3.5
END

IF ~~ t3.3
SAY ~No, of course not, my friend. I only had a question to ask, and... whether you have faith or not may be helpful to know.~
++ ~In that case, I'll say yes - I do worship a deity.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.1
++ ~I'm not sure. I believe they exist, and I'm not opposed to them... but I don't swear allegiance with any particular god.~ + t3.2
++ ~No, I'm not a servant of faith.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.4
END

IF ~~ t3.4
SAY ~I see... perhaps you are the most suitable to answer this, then.~
IF ~~ + t3.5
END

IF ~~ t3.5
SAY ~Do you believe one should be judged in death by the weight of their actions, rather by their loyalty to their god?~
+ ~OR(2)
Class(Player1,CLERIC_ALL)
CheckStatGT(Player1,14,WIS)~ + ~I know where this is going. You're thinking of the Wall of the Faithless, aren't you?~ + t3.6
++ ~What are you going on about?~ + t3.7
++ ~I've got no time to answer this right now. Ask someone else.~ + t3.0
END

IF ~~ t3.6
SAY ~Yes... that is correct, <CHARNAME>. You are wise to know that.~
IF ~~ + t3.7
END

IF ~~ t3.7
SAY ~While I spent time among my brothers and sisters of the Ilmatati church in Athkatla, we... spoke of many things regarding not only our faith, but the way of the gods in general.~
= ~At some point, we mentioned the Wall of the Faithless... the fate that awaits those who swear no allegiance to the gods. I have not heard the Wall mentioned since my studies during childhood, but the thought of it has persisted with me ever since.~
++ ~What do the Ilmatari think of the Wall?~ + t3.8
++ ~It's unjust. Many good men do not deserve the fate that awaits them.~ + t3.9
++ ~The Wall is a travesty. It was created solely to force others to worship, and punish those who don't.~ + t3.9
++ ~I think it's a worthy fate for the Faithless.~ + t3.10
++ ~I don't want to talk about the Wall.~ + t3.0
END

IF ~~ t3.8
SAY ~Some of us consider it unjust. Others believe 'tis not our place to decide, for Kelemvor, Lord of the Dead, was commanded by his fellow gods to maintain the Wall, to demand faith, to make an example of those who will not worship.~
IF ~~ + t3.10
END

IF ~~ t3.9
SAY ~I believe the same... inside the Wall are countless souls, both good and evil, condemned to the same fate as each other. A cruel worshipper of Cyric could find a better fate in death than a Faithless.~
IF ~~ + t3.10
END

IF ~~ t3.10
SAY ~There is no release for them, no chance at redemption for the wicked, no peace for those who suffered in life. Only crushing despair, until their will is destroyed utterly.~
= ~The thought of it... haunts my dreams often. I believe faith should be a choice, a thing to take pride in, not... a necessity of coercion.~
++ ~It's horrible, I agree.~ + t3.11
++ ~The Wall's existence is a testament to the cowardice of the gods.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.12
++ ~Do you not take comfort knowing you're safe from that fate?~ + t3.13
++ ~Not all gods depend on the Wall. Many draw their power from the love of their followers.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.14
END

IF ~~ t3.11
SAY ~The thought of it makes me question whether my faith is misplaced. I often wonder if... if my faith is little more than fear. Gods, I hope 'tis not.~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.12
SAY ~Harsh words, <CHARNAME>, yet I cannot deny there is truth to what you say. Perhaps even the gods are not free of mortal weakness.~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.13
SAY ~How could I, <CHARNAME>? I can hardly rest, knowing the Faithless are doomed to a fate they do not deserve.~
= ~I have failed to save so many others in my life. How many of them had never said a prayer, and were destined to become brick and mortar? Could I have helped them gain their faith, had I saved them? Am I partially to blame for the souls that are condemned to an eternity of suffering?~
++ ~No, you're not. You did everything you could.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.14
++ ~That was their choice to make, not yours.~ + t3.11
++ ~Blame the gods, not yourself.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.12
END

IF ~~ t3.14
SAY ~I can only believe that Ilmater himself does not support such an injustice, even if he has no power to stop it. *sigh* Proof that even the gods are not infallible, I suppose.~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.15
SAY ~I have wasted enough of your time with my pondering, my friend. Let us continue, and may we not think of this again.~
IF ~~ EXIT
END

IF ~~ t3.16
SAY ~I fear for you, my friend. The thought that one day, you may be destined for the Wall is... one that is hard to bear.~
= ~I only hope that one day, you may find a way to avoid that fate.~
IF ~~ EXIT
END
END

// Friendship talk 4

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",8)~ THEN C0SIRE2J t4
~I do not believe I have yet asked you, <CHARNAME>. You did not leave your home in Candlekeep entirely by choice... are you satisfied with the life you now lead?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~It may not have been my choice to leave Candlekeep, but I'm glad I did. I've grown much since then.~ + t4.1
++ ~Absolutely! Candlekeep was by far the most boring part of my life. I'm happy to be away from it.~ + t4.2
++ ~I'm not sure. I may have been happy living in peace and comfort.~ + t4.3
++ ~What brought this on?~ + t4.4
++ ~I'm not in the mood to talk about Candlekeep.~ + t4.0

APPEND C0SIRE2J

IF ~~ t4.0
SAY ~Oh. Very well... if you would prefer that.~
IF ~~ EXIT
END

IF ~~ t4.1
SAY ~Yes... I understand that feeling well. Though perhaps my childhood was less enviable than your own. I do not have many regrets for what I left behind.~
IF ~~ + t4.4
END

IF ~~ t4.2
SAY ~I see... so you have no regrets for leaving your peaceful life behind. Then we are... more similar than I believed.~
IF ~~ + t4.4
END

IF ~~ t4.3
SAY ~Perhaps. (smile) But 'tis difficult to imagine you in such a life, seeing how comfortable you are in this one.~
IF ~~ + t4.4
END

IF ~~ t4.4
SAY ~I have been considering how much struggle we must go through in our current way of life. So many lives have been taken by my hand... too many. It is something I have greatly regretted.~
= ~Sometimes I wonder if my life would have been better spent as a cloistered sister of the church, rather than a champion. 'Twould have been an easier life, no doubt.~
++ ~That's only half of it. We take lives, certainly, but only when we must.~ + t4.5
++ ~If this life of violence disgusts you so much, why don't you leave it behind?~ + t4.6
++ ~You must enjoy something about this life, or you wouldn't be here.~ + t4.7
++ ~That's enough talk for now.~ + t4.0
END

IF ~~ t4.5
SAY ~Aye... that is part of what drives me onwards. I doubt my life would have been better spent in a sheltered chapel. And... 'twould have been a life of loneliness. I would not have been blessed with your company.~
IF ~~ + t4.8
END

IF ~~ t4.6
SAY ~I have considered it. But I doubt my life would have been better spent in a sheltered chapel. And... 'twould have been a life of loneliness. I would not have been blessed with your company.~
IF ~~ + t4.8
END

IF ~~ t4.7
SAY ~Aye, that is true... I have done much good as a paladin than I may have done in a sheltered life. I have seen much of the realms beyond my childhood home. And... I am blessed with the company I now have.~
IF ~~ + t4.8
END

IF ~~ t4.8
SAY ~Thank you for listening, <CHARNAME>. Such things become easier to bear when spoken of to a friend.~
IF ~Global("C0SireneMatch","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",3)~ + t4.9
IF ~OR(2) !Global("C0SireneMatch","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t4.9
SAY ~If I may... you have been most kind to me since we met. I cannot deny I feel drawn to you... in more ways than one. I hope that does not bother you.~
++ ~What are you getting at?~ + t4.10
++ ~No, it doesn't. I'd love to get to know you better.~ + t4.11
++ ~That's touching, but I'd rather we remain friends.~ + t4.12
END

IF ~~ t4.10
SAY ~I mean to say that I am interested... no, attracted to you, <CHARNAME>. As a friend, and as a <PRO_MANWOMAN>. If that is too much, then... I apologize. I will not bring this up again.~
++ ~No, it's fine. I'd love to get to know you better.~ + t4.11
++ ~I'm flattered, but I prefer to leave it at friendship.~ + t4.12
++ ~You're a dear friend, but... I'm not attracted to women. I hope you can understand.~ + t4.12
++ ~Make sure you don't. I'm not interested in you that way.~ + t4.12
END

IF ~~ t4.11
SAY ~Oh, that... that is good. Perhaps we can talk again... soon, then.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ t4.12
SAY ~I understand, <CHARNAME>, truly. Having you as a friend is already more than I can ask for.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Friendship talk 5

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",10)~ THEN C0SIRE2J t5
~We have seen so much death. When I swore my vows to be a champion of the just, protector of the innocent... I had not expected to become so familiar with violence.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~What had you expected?~ + t5.1
++ ~Maybe this lifestyle isn't for you.~ + t5.2
++ ~I'm busy now. Can we talk later?~ + t5.0

APPEND C0SIRE2J

IF ~~ t5.0
SAY ~As you wish.~
IF ~~ DO ~SetGlobal("C0SireneFriendshipTalk","GLOBAL",9)~ EXIT
END

IF ~~ t5.1
SAY ~I hardly remember. I was still but a brash youth when I left my village for my pilgrimage, hoping to do good as the knight-errants of heroic tales. The reality was... far more complex than I had expected.~
IF ~~ + t5.2
END

IF ~~ t5.2
SAY ~'Tis not to say that I feel I am unsuited for this life, <CHARNAME>. I have the training and the will to be a champion of Ilmater, and I am grateful that I have the power to protect those close to me, such as you, but...~
= ~Sometimes 'tis difficult for me to overlook the blood that has stained my hands, no matter how black it may be. It is... sickening.~
++ ~I had no idea it affected you so much. You seem almost comfortable in the battlefield.~ + t5.3
++ ~You're right. It's horrible, thinking of how many lives I've ended. I've lost count at this point.~ + t5.4
++ ~Sometimes, killing is necessary to prevent further evil from occurring.~ + t5.5
++ ~It's a necessity of life. Better get used to it.~ + t5.6
END

IF ~~ t5.3
SAY ~I do not show it, so that my allies may not lose heart, but... it does pain me.~
IF ~~ + t5.6
END

IF ~~ t5.4
SAY ~Then you know it well. What I wouldn't give for a life of peace...~
IF ~~ + t5.6
END

IF ~~ t5.5
SAY ~You are right. Still, it does not make the inevitability any easier.~
IF ~~ + t5.6
END

IF ~~ t5.6
SAY ~Do you know why I choose to wear this white cloak, <CHARNAME>?~
++ ~It's a symbol of your faith, isn't it?~ + t5.7
++ ~I don't know. Why?~ + t5.8
++ ~I always thought it was just a choice of fashion.~ + t5.8
END

IF ~~ t5.7
SAY ~'Tis that, aye, but 'tis also more.~
IF ~~ + t5.8
END

IF ~~ t5.8
SAY ~Many of my fellow worshippers would have chosen something less striking, perhaps a holy symbol or a shield to place the mark of Ilmater upon.~
= ~I chose this cloak, so that the blood that stains it may serve as a reminder of what I must do to ensure that no more suffering will occur.~
= ~It is an icon which I have come to both love and despise at the same time. Foolish, is it not, that I carry a reminder of what I fear the most, and made it the symbol of my faith?~
++ ~I don't think it's foolish at all. I think it's a bold choice.~ + t5.9
++ ~Maybe a little, but I don't think any less of you for it.~ + t5.9
++ ~I think you should get rid of it.~ + t5.10
END

IF ~~ t5.9
SAY ~You are kind to say so, <CHARNAME>.~
IF ~~ + t5.11
END

IF ~~ t5.10
SAY ~I have considered it, but I doubt 'twould bring me any peace.~
IF ~~ + t5.11
END

IF ~~ t5.11
SAY ~At least now I have another's cause to fight for, one that is worth the blood I must shed. Somehow, that makes the thought more bearable.~
IF ~~ EXIT
END

END

// Friendship talk 6

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",12)~ THEN C0SIRE2J t6
~I... hope you did not think I was criticizing you during our last talk, <CHARNAME>. I did not mean to imply that I was dissatisfied with your leadership.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~No, of course not.~ + t6.1
++ ~Why would you think that?~ + t6.1
++ ~We don't have time for this right now.~ + t6.0

APPEND C0SIRE2J

IF ~~ t6.0
SAY ~Oh... very well.~
IF ~~ EXIT
END

IF ~~ t6.1
SAY ~When we last spoke, I mentioned my distaste for the fighting and death, and I realized that I sounded as though I were blaming you for leading us into it all. That is not what I intended.~
= ~Whether 'tis with you or in my lone journey, battle will never be gone from my life until the day I put down my blade. I have come to accept that.~
++ ~I don't mind if you feel bothered by the amount of fighting we get into. I hate it as much as you do.~ + t6.2
++ ~Do you think you'll ever retire from this life?~ + t6.3
++ ~Well, it's good to know you don't hate me, at least. Can we move on?~ + t6.4
END

IF ~~ t6.2
SAY ~I am glad to know you are as eager for all this fighting to end as I am, <CHARNAME>. Regardless, so long as you may bear it, so will I.~
IF ~~ + t6.3
END

IF ~~ t6.3
SAY ~Perhaps one day, I will settle down for a life of peace... though I do not see a chance for it within the next few years. I still have a duty to fulfil to my god, while I have the ability to.~
++ ~Where do you think you'll be within the next few decades?~ + t6.5
++ ~I, on the other hand, will happily be done with adventuring once I have the chance.~ + t6.6
++ ~Let's not ponder this right now. We have work to do.~ + t6.4
END

IF ~~ t6.4
SAY ~Yes, you are right. Thank you for indulging me for this brief moment.~
IF ~~ EXIT
END

IF ~~ t6.5
SAY ~If I do not fall in the name of Ilmater, then... perhaps I will retire to an Ilmatari church, to live my remaining years healing and mentoring others.~
= ~I could try to venture to Tethyr to find my fellow members of the Holy Order of Suffering, but... they may not accept me. Not as I am.~
++ ~Why not? Aren't followers of Ilmater supposed to be accepting?~ + t6.7
++ ~What about starting a family? Wouldn't you like that?~ + t6.8
++ ~This has been an interesting talk, but we really should move on.~ + t6.4
END

IF ~~ t6.6
SAY ~That is your right, my friend. You have gone through much more than anyone I have known, and you deserve a peaceful life. I, on the other hand...~
IF ~~ + t6.5
END

IF ~~ t6.7
SAY ~Many are, aye, but I have only known priests of my faith. I cannot be certain that the knights of the order will be as sympathetic towards my heritage... I have only ever known my mentor, and he was a just man, far less willing to compromise than the peaceful members of the church.~
IF ~~ + t6.9
END

IF ~~ t6.8
SAY ~I doubt that will ever happen, <CHARNAME>, much as I would like it. And the thought of burdening another with my blood... no, I think 'tis best if I remain alone.~
IF ~~ + t6.9
END

IF ~~ t6.9
SAY ~But we should not spend all day talking about the future, <CHARNAME>. Still, I appreciate these moments of small talk.~
IF ~~ EXIT
END

END

// Friendship talk 7

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",14)~ THEN C0SIRE2J t7
~They still look upon me with suspicion. I thought things would change, but... it has not.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Are you still concerned about what others think of you?~ + t7.1
++ ~What are you talking about?~ + t7.2
++ ~We have no time for this now. You'll just have to deal with it.~ + t7.0

APPEND C0SIRE2J

IF ~~ t7.0
SAY ~Yes, I suppose I must. Carry on, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ t7.1
SAY ~I know I should not be, but it bothers me regardless. For so long, my blood has dictated who I am, who others see me to be, and... it never gets any easier to handle.~
= ~I wonder sometimes, if others in the same situation are looked down upon as I am. Perhaps they are fortunate enough to have fewer signs of their heritage, or have learned to disguise themselves. Some may even be able to walk amongst others, head raised high despite it all.~
= ~If there is such a person, then I envy them. This is a difficult burden to bear, to be feared or loathed not for who, but what you are.~
++ ~Not all fear you. Some do respect you as a knight of Ilmater.~ + t7.3
++ ~If it makes you feel better, I fully support you going forward and giving those gawkers a few slaps to set them straight.~ + t7.4
++ ~Do you think you'd have been happier if you were born human, just as everyone else?~ + t7.5
END

IF ~~ t7.2
SAY ~The way others look upon my horns and see a cursed woman, <CHARNAME>. Even now, they stare.~
IF ~~ + t7.1
END

IF ~~ t7.3
SAY ~That is true. I can appreciate that, at least, rare as it is that others treat me that way. Though 'tis not respect I strive for, simply acceptance.~
IF ~~ + t7.6
END

IF ~~ t7.4
SAY ~*laugh* Perhaps that would, indeed, lighten my mood a little. Your jests give me some small comfort, at least.~
IF ~~ + t7.6
END

IF ~~ t7.5
SAY ~I am human, <CHARNAME>. No matter what blood runs in my veins, I was raised and taught as any human child was. Though if 'twere my wish... I am not certain.~
= ~Perhaps I would be happier if I were normal, but... I would not be myself. I would be another person, a reflection of what I could have become. The thought both awes... and terrifies me.~
IF ~~ + t7.6
END

IF ~~ t7.6
SAY ~I would have your thoughts once more, <CHARNAME>. Do you believe I am right to consider my blood a curse, despite what it has shaped me into?~
++ ~You should be proud of who you are. Regardless of what you were born as.~ + t7.7
++ ~There's no point considering what could have been, Sirene. You must learn to accept it.~ + t7.8
++ ~I can't answer that for you. You must decide for yourself.~ + t7.0
END

IF ~~ t7.7
SAY ~I want to, <CHARNAME>. Truly, I do.~
IF ~~ + t7.9
END

IF ~~ t7.8
SAY ~I have come to accept it long ago, but... perhaps there is more to this than resignation.~
IF ~~ + t7.9
END

IF ~~ t7.9
SAY ~Regardless, I want you to know that you have inspired me much, <CHARNAME>. You are a child of Bhaal, yet you are your own person first and foremost. That is the example that I aspire to follow.~
++ ~Thank you, Sirene.~ EXIT
++ ~You don't need to emulate me, Sirene. Do what you think is best.~ + t7.10
++ ~As well you should.~ EXIT
END

IF ~~ t7.10
SAY ~I do, <CHARNAME>. This is exactly what I think is best.~
IF ~~ EXIT
END
END

// Friendship talk 8

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",16)~ THEN C0SIRE2J t8
~'From sacrifice comes pain. From pain, endurance. From endurance, strength. May Ilmater grant <PRO_HIMHER> the power to succeed, and the strength to endure.'~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Your voice is beautiful when you pray. Even more so than usual.~ + t8.1
++ ~Are you praying, Sirene? I haven't heard you do that much.~ + t8.2
++ ~I'm glad to see you still haven't lost your faith, even after everything we've talked about.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t8.3

APPEND C0SIRE2J

IF ~~ t8.0
SAY ~Of course, <CHARNAME>. I will continue to pray for you, whenever I can.~
IF ~~ EXIT
END

IF ~~ t8.1
SAY ~Thank you, <CHARNAME>. In truth, there is a reason for that.~
IF ~~ + t8.2
END

IF ~~ t8.2
SAY ~I wanted you to hear my prayers, for those words were for you, <CHARNAME>.~
++ ~Why for me, specifically?~ + t8.4
++ ~You're not offering me to your god as a sacrifice or something, are you?~ + t8.5
++ ~That's kind of creepy, actually. What did you pray for?~ + t8.4
END

IF ~~ t8.3
SAY ~I have you to thank for that, my friend. You have been a constant source of support to me all this time.~
IF ~~ + t8.2
END

IF ~~ t8.4
SAY ~You are soon to face difficult trials, I know. I have given you my sword arm, yet... sometimes I feel as though that is not enough.~
= ~So I... gave you the only other thing I have to offer. My prayers, for your continued success and good fortune.~
++ ~That's very kind of you.~ + t8.6
++ ~I don't need prayers. Your friendship is enough.~ + t8.7
++ ~This is all very heartwarming, but may we move on?~ + t8.0
END

IF ~~ t8.5
SAY ~What? No, of course not... are you making light of me again, <CHARNAME>?~
IF ~~ + t8.4
END

IF ~~ t8.6
SAY ~It is little enough compared to the kindness you have shown me, <CHARNAME>.~
IF ~~ + t8.8
END

IF ~~ t8.7
SAY ~And you have it, I assure you. But this takes little of me, and perhaps 'twill be much for you.~
IF ~~ + t8.8
END

IF ~~ t8.8
SAY ~In truth, I have prayed in your name for some time now... but only recently have I had the courage to allow you to hear it. I think I have become... more comfortable around you.~
= ~You are a true friend, a leader worth admiring, and a wise mentor when I was in doubt. I owe much to you, perhaps too much to repay.~
++ ~We're friends, Sirene. Friends don't owe each other anything.~ + t8.9
++ ~Take your time. We're not dying any time soon.~ + t8.10
++ ~I appreciate it.~ + t8.11
END

IF ~~ t8.9
SAY ~No, but... I would give this to you for your sake. I would not like to see another rare friend lost.~
IF ~~ + t8.11
END

IF ~~ t8.10
SAY ~I know, <CHARNAME>. You would not lead us astray.~
IF ~~ + t8.11
END

IF ~~ t8.11
SAY ~When the time comes, I hope these prayers will aid you, <CHARNAME>. Ilmater watches over us both.~
IF ~~ EXIT
END
END
// Friendship talk 9

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",18)~ THEN C0SIRE2J t9
~You do not look well, <CHARNAME>. Whatever happened to you at that foul asylum... I dare not imagine it.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~Best that you don't. No one should ever go through what I did.~ + t9.1
++ ~Yes, well, losing a soul isn't something you experience every day.~ + t9.1
++ ~I'm fine. It'll take more than Irenicus's torture to bring me down.~ + t9.1
++ ~Could we leave this talk for another time? I'm not in the mood right now.~ + t9.0

APPEND C0SIRE2J

IF ~~ t9.0
SAY ~Yes, of course... but if you need anything, <CHARNAME>, I am always willing to lend an ear.~
IF ~~ EXIT
END

IF ~~ t9.1
SAY ~You are a strong <PRO_MANWOMAN>, <CHARNAME>. I cannot see you as anything less, not after knowing you suffered the way you did.~
= ~If 'tis not against your will to answer, my friend... how do you feel? Do you feel pain from what you have lost?~
++ ~Not pain, exactly. More like... an emptiness.~ + t9.2
++ ~There's no need to worry. I feel fine.~ + t9.3
++ ~Pain's the wrong word for it, Sirene. I'm angry. I want revenge.~ + t9.4
END

IF ~~ t9.2
SAY ~Yes... I thought you would describe it as such.~
IF ~~ + t9.5
END

IF ~~ t9.3
SAY ~If 'tis truly as you say, <CHARNAME>, then I should feel relieved. But I worry that you are only holding a brave front.~
IF ~~ + t9.5
END

IF ~~ t9.4
SAY ~Anger... yes, perhaps you are right to feel it. I would pray that you do not allow it to consume you, but...~
IF ~~ + t9.5
END

IF ~~ t9.5
SAY ~If 'tis of any comfort to you, <CHARNAME>, I would share some of my feelings with you.~
= ~I have known the feeling of becoming hollow. Though my soul was not torn out of my being, I have felt as though 'twas not mine that lingered in my body. It struggles within me, trying to escape. Sometimes... I feel as though it has.~
= ~In my worst moments, I wish 'twould all end, as though the world itself were crushing me.~
= ~I know it is pain that cannot be described, <CHARNAME>, but... I have found that your company soothes it. Now I hope that I... can help you in return. If you desire my support, I will gladly give it to you, whether 'tis words of comfort you require or simply a shoulder to lean on.~
++ ~Thank you. I'm glad to have such a faithful friend.~ + t9.6
++ ~That does make me feel better. I suspect I'll need more of your support from now on.~ + t9.6
++ ~I appreciate it, but I really am fine. I'll stay strong.~ + t9.7
++ ~In that case, could I... have that shoulder? Right now?~ + t9.8
++ ~Don't think of me as weak. I don't need sympathy.~ + t9.9
END

IF ~~ t9.6
SAY ~You do not need to be grateful for my friendship, <CHARNAME>. You have given me more than I could have ever wished for. This is... the least I could do in return.~
IF ~~ + t9.10
END

IF ~~ t9.7
SAY ~'Tis never wrong to depend on friends for once, <CHARNAME>. ~
IF ~~ + t9.10
END

IF ~~ t9.8
SAY ~(She makes an effort to put up a reassuring smile, taking your head on her shoulder, giving you her full support.)~
IF ~~ + t9.10
END

IF ~~ t9.9
SAY ~I- If that is what you wish, <CHARNAME>. I will intrude no longer.~
IF ~~ EXIT
END

IF ~~ t9.10
SAY ~No matter what it takes, we will make things right, my friend. This I swear to you.~
IF ~~ EXIT
END

END

// Friendship talk 10

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",20)~ THEN C0SIRE2J t10
~I have... considered my choices up to now since we encountered my brother. Things have changed. No... 'tis more accurate to say that *I* have changed.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~For better, or for worse?~ + t10.1
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~For better, or for worse?~ + t10.2
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~You certainly seem different since then. Have you rediscovered your faith?~ + t10.1
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~You certainly seem different since then. Have you come to terms with yourself?~ + t10.2
++ ~We have no time for this.~ + t10.0

APPEND C0SIRE2J

IF ~~ t10.0
SAY ~As you wish. But I do wish to say that... whatever the future holds for my current path, 'twas you who led me, and I appreciate what you have done.~
IF ~~ EXIT
END

IF ~~ t10.1
SAY ~My faith is restored, and I feel renewed. My prayers are with T'samon... I hope that he will give up his hatred, and that we may meet again as true siblings.~
IF ~~ + t10.3
END

IF ~~ t10.2
SAY ~'Tis strange... I am no longer a paladin, yet I do not feel loss. I feel as though... Ilmater has freed me.~
IF ~~ + t10.3
END

IF ~~ t10.3
SAY ~I could not have done this without you, <CHARNAME>. If you had not guided me, my doubts would have kept me in place, unable to decide what to truly believe in. For that, I thank you, truly.~
++ ~I did nothing. You did it all by yourself.~ + t10.4
++ ~You're welcome.~ + t10.5
END

IF ~~ t10.4
SAY ~No, you have taught me much, my friend. I will repay you however I can, no matter what it takes.~
IF ~~ + t10.5
END

IF ~~ t10.5
SAY ~No matter what may come, I should face it with courage, and trust in my beliefs. That is what you have shown me.~
IF ~~ EXIT
END
END

// Friendship talk 11

CHAIN IF ~Global("C0SireneFriendshipHellTalk","GLOBAL",2)~ THEN C0SIRE2J t11
~<CHARNAME>?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipHellTalk","GLOBAL",1)~
END
++ ~What is it?~ + t11.1
++ ~Is something wrong? Do you sense danger?~ + t11.1
++ ~Does this look like the place to be talking right now?~ + t11.1

APPEND C0SIRE2J

IF ~~ t11.1
SAY ~I just wanted to thank you for everything once again. For the pleasure of both your leadership, and friendship. It had been my honor to fight at your side... as well as to die at your side.~
++ ~Thank you, Sirene.~ + t11.2
++ ~Aww... thanks. That almost makes me forget the rather dismal place we're in.~ + t11.2
++ ~We're not dead yet. Not really.~ + t11.3
++ ~You can save the heartwarming words for when we get out of this hell.~ + t11.3
END

IF ~~ t11.2
SAY ~I just wished to say that... I do not blame you for leading us here. 'Twas my choice to follow you into these pits to aid you against your foe... and I have no regrets.~
++ ~No regrets? Not even a little bit?~ + t11.4
++ ~Do you really believe we won't make it back?~ + t11.5
++ ~That's all I needed to hear. Thank you.~ + t11.6
END

IF ~~ t11.3
SAY ~I know 'tis not the best place to exchange words, yet I cannot shake the feeling that we are soon to face our most difficult battle yet... and if we fail, then 'twill be too late for me to speak my mind.~
IF ~~ + t11.2
END

IF ~~ t11.4
SAY ~Well... (laugh) perhaps I have a few minor regrets on my mind. But... 'tis too late to think of them now.~
IF ~~ + t11.6
END

IF ~~ t11.5
SAY ~I cannot deny the possibility, yet... I believe we will succeed. Because... I believe in you.~
IF ~~ + t11.6
END

IF ~~ t11.6
SAY ~You are the one who has guided us thus far, and in the journey, I have only persevered because of you... so, once again, thank you, my friend.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + t11.7
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + t11.8
END

IF ~~ t11.7
SAY ~If not for your guidance, I would have likely lost my faith a long time ago... wondering what I was fighting for. Only Ilmater knows how far I would have gone astray.~
IF ~~ + t11.9
END

IF ~~ t11.8
SAY ~Because of your leadership, I have come to know what I must do... what path I must take. I can make my choices without hesitation, believing in my own ability... all because of you.~
IF ~~ + t11.9
END

IF ~~ t11.9
SAY ~Even were such things not the case, I have valued the extent of our friendship, <CHARNAME>. I am glad we have journeyed together for so long. I am more than the person I once was.~
++ ~It's not just you that's grown. I've learned a lot from your example, too.~ + t11.10
++ ~I hope we'll still be friends, even after all this is over.~ + t11.11
++ ~Finished? All right, let's move on.~ + t11.12
END

IF ~~ t11.10
SAY ~Is that so? (Sirene's lips slowly curve into a smile) ...then, I am truly satisfied. Thank you for everything, my friend.~
IF ~~ EXIT
END

IF ~~ t11.11
SAY ~Of course, <CHARNAME>. I doubt I will ever forget you, so long as I live.~
IF ~~ EXIT
END

IF ~~ t11.12
SAY ~Yes... with all our power... let us bring Irenicus to justice together.~
IF ~~ EXIT
END
END

// Lovetalk 1

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",2)~ THEN C0SIRE2J lt1
~Will you walk at my side for a moment, my friend?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~Sure. Is there a problem?~ + lt1.1
++ ~How can I refuse when a lady asks?~ + lt1.2
++ ~No, I'd rather we walk separately.~ + lt1.3

APPEND C0SIRE2J

IF ~~ lt1.1
SAY ~No, not at all. I just... wanted your company for a while.~
IF ~~ + lt1.2
END

IF ~~ lt1.2
SAY ~(You walk side by side, and while you may be imagining it, Sirene seems to be sidling closer to you as you move.)~
= ~I should take this time to say how much I appreciate your company, <CHARNAME>. With you, I am able to almost forget all the other difficulties of my life.~
= ~There have not been many as accepting as you. Your kindness has touched me greatly.~
++ ~My thanks for the compliment.~ + lt1.4
++ ~What can I say? Maybe I've grown fond of you.~ + lt1.5
++ ~I keep you around because you are useful, Sirene. Let's just leave it at that.~ + lt1.3
END

IF ~~ lt1.3
SAY ~As you wish, my friend. I am sorry if I have done something to upset you.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt1.4
SAY ~I am merely stating the truth, <CHARNAME>. You do not need to thank me.~
IF ~~ + lt1.6
END

IF ~~ lt1.5
SAY ~*blush* <CHARNAME>, that is... I am not sure how to respond, after hearing such a thing.~
++ ~Should I stop?~ + lt1.7
++ ~How about with a smile?~ + lt1.6
END

IF ~~ lt1.6
SAY ~(A gentle, nervous smile graces her lips, and suddenly you feel her hand touching yours.)~
++ ~You have a charming smile. I wish you'd show it more often.~ + lt1.8
++ ~I'm glad I have you.~ + lt1.9
++ ~(Pull away) Don't do that.~ + lt1.3
END

IF ~~ lt1.7
SAY ~No, please do not. I appreciate that you would think highly of me.~
IF ~~ + lt1.6
END

IF ~~ lt1.8
SAY ~For you, <CHARNAME>, I will try my best.~
IF ~~ EXIT
END

IF ~~ lt1.9
SAY ~As am I, <CHARNAME>.~
IF ~~ EXIT
END
END

// Lovetalk 2

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",4)~ THEN C0SIRE2J lt2
~Do you ever think of what could have been, <CHARNAME>? If it were not Bhaal's blood that runs in your veins?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~I try not to, no.~ + lt2.1
++ ~All the time.~ + lt2.2
++ ~Why would I think about such a thing?~ + lt2.1

APPEND C0SIRE2J

IF ~~ lt2.1
SAY ~Do you not think of how different your life would be, had you been born from mortal parents?~
IF ~~ + lt2.2
END

IF ~~ lt2.2
SAY ~I often think of where I would be, if infernal blood did not run in my veins. Perhaps I would never have become a ward of Ilmater's priests.~
= ~I may even have known my family. Is it so strange to wonder such things?~
++ ~No, not at all.~ + lt2.3
++ ~You'd be a completely different person.~ + lt2.4
++ ~It's pointless.~ + lt2.5
END

IF ~~ lt2.3
SAY ~I am relieved to hear you say that, my friend. Sometimes I worry that I have my head in the clouds, when I should be focused upon the present.~
IF ~~ + lt2.6
END

IF ~~ lt2.4
SAY ~Yes, that is true... I wonder if I would have liked the person I could have been.~
IF ~~ + lt2.6
END

IF ~~ lt2.5
SAY ~You may be right. Whatever I may believe, I cannot change what fate has made me.~
IF ~~ + lt2.6
END

IF ~~ lt2.6
SAY ~Still... the thought that I could have been normal is... well, 'tis something, at least. I cannot say I would not have preferred such a life.~
++ ~Do you truly dislike your heritage that much?~ + lt2.7
++ ~And what if we had never met? Would you still prefer that?~ + lt2.8
++ ~That's enough philosophizing for one day. We have reality to deal with.~ + lt2.9
END

IF ~~ lt2.7
SAY ~What a strange question, <CHARNAME>. What else could I compare it to? I am not that naive - I know things could have been much, much worse.~
IF ~~ + lt2.10
END

IF ~~ lt2.8
SAY ~No... I cannot say I would have. Being where I am now... perhaps I would not change the past, even had I the power.~
IF ~~ + lt2.10
END

IF ~~ lt2.9
SAY ~Yes, true. Lead on, then.~
IF ~~ EXIT
END

IF ~~ lt2.10
SAY ~I have wasted enough of your time with my daydreaming, <CHARNAME>. Still... it is good to have someone to share such thoughts with.~
IF ~~ EXIT
END
END

// Lovetalk 3

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",6)~ THEN C0SIRE2J lt3
~(You notice Sirene seemingly distracted, looking down at a small hand mirror.)~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~Sirene? Are you all right?~ + lt3.1
++ ~I didn't think you were one for vanity.~ + lt3.2
++ ~You're putting us all at risk, not paying attention to your surroundings.~ + lt3.3
++ ~(Leave her alone)~ + lt3.0

APPEND C0SIRE2J

IF ~~ lt3.0
SAY ~(Eventually, with a sad expression, she returns the mirror to her pack and moves on, as though nothing had happened.)~
IF ~~ EXIT
END

IF ~~ lt3.x
SAY ~Yes... we should.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt3.1
SAY ~Y-yes, of course I am, <CHARNAME>.~
IF ~~ + lt3.4
END

IF ~~ lt3.2
SAY ~I am not, <CHARNAME>. I was just pondering...~
IF ~~ + lt3.4
END

IF ~~ lt3.3
SAY ~Yes... I know, <CHARNAME>. I should not have been distracted, but...~
IF ~~ + lt3.4
END

IF ~~ lt3.4
SAY ~<CHARNAME>... do I seem a monster to you?~
++ ~What? Why would you say such a thing?~ + lt3.5
++ ~I'm not sure I understand what you're asking, Sirene.~ + lt3.5
++ ~Would you think less of me if I said yes?~ + lt3.6
END

IF ~~ lt3.5
SAY ~Perhaps this was too sudden. I have just been looking at the... 'gifts' my blood has bestowed upon me.~ [C0BLANK]
= ~Forgive me for saying so, but... I feel you are fortunate. Your heritage is a dark one, just as mine is, yet... you seem normal every way. 'Tis hard not to be envious of you.~
++ ~That's wrong, Sirene. The taint of Bhaal may not be visible, but it affects me all the same.~ + lt3.7
++ ~Would you have preferred it if our roles had been swapped?~ + lt3.8
++ ~I'm not comfortable talking about this with you. Perhaps we should leave it at that.~ + lt3.x
END

IF ~~ lt3.6
SAY ~I... no, I would not, <CHARNAME>. If you truly do, then... there is no reason for me to continue asking.~
++ ~I'm sorry. I didn't mean to imply anything.~ + lt3.5
++ ~No, go on. What were you going to say?~ + lt3.5
++ ~If that's so, then we should focus on the road.~ + lt3.x
END

IF ~~ lt3.7
SAY ~No, that is true... you may not have known what evil rested in your blood, but it has shaped your life all the same.~
IF ~~ + lt3.9
END

IF ~~ lt3.8
SAY ~I... I do not know. Perhaps I would not have.~
IF ~~ + lt3.9
END

IF ~~ lt3.9
SAY ~If I have offended you by suggesting that the burden you bear is any lighter than mine, then truly, I apologize. I cannot hope to know how much this truly means to you.~
++ ~I'm not offended, Sirene. You didn't mean anything by it.~ + lt3.10
++ ~Don't worry. I actually think you've had a much harder life than me.~ + lt3.10
++ ~It does make me uncomfortable. Maybe we should drop this.~ + lt3.x
END

IF ~~ lt3.10
SAY ~You are too kind, <CHARNAME>. I wish I had met... someone such as you sooner.~
= ~Thank you for listening to my thoughts. I am glad that you do not see me as the monster others think me to be. That is enough.~
IF ~~ EXIT
END
END

// Lovetalk 4

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",8)~ THEN C0SIRE2J lt4
~You are hurt, my friend, and it pains me to see it. Would you allow me to treat you?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
+ ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ + ~I can treat my own wounds, thank you.~ + lt4.1
++ ~That would be appreciated.~ + lt4.2
++ ~No, save your healing for those who need it more.~ + lt4.3
++ ~Leave me be.~ + lt4.4

APPEND C0SIRE2J

IF ~~ lt4.1
SAY ~I know your skills at healing are far greater than mine, <CHARNAME>, but if I can do anything, I will. Please, hold still.~
IF ~~ + lt4.5
END

IF ~~ lt4.2
SAY ~Hold still, <CHARNAME>. I will do my best to tend to your wounds.~
IF ~~ + lt4.5
END

IF ~~ lt4.3
SAY ~You are no less in need of help than anyone else, <CHARNAME>. Please, just hold still and allow me to tend to your wounds.~
IF ~~ + lt4.5
END

IF ~~ lt4.4
SAY ~...as you wish, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt4.5
SAY ~I should apologize. I am sworn to your service, and to protect you. That you would come to harm is the fault of my negligence.~
++ ~Don't blame yourself. Nobody can save everyone.~ + lt4.6
++ ~I've made you swear no such oath. You're free to stay or leave as you please.~ + lt4.6
++ ~I'm sick of hearing your doubts and self-pity. If you think you've failed, tell yourself that and leave me alone.~ + lt4.4
END

IF ~~ lt4.6
SAY ~I am here by choice, <CHARNAME>, and my oaths to Ilmater demand that I protect others to the best of my ability. This time, I feel I have failed.~
= ~If I cannot protect you from harm, then I can at least... take your pain from you...~
IF ~~ + lt4.7
END

IF ~~ lt4.7
SAY ~"Ilmater, One Who Endures... lift this one from <PRO_HISHER> suffering... and bestow <PRO_HISHER> pain upon your humble servant..."~
++ ~My wounds... they're on your body now!~ + lt4.8
++ ~What are you doing? Stop!~ + lt4.8
++ ~Thank you.~ + lt4.9
END

IF ~~ lt4.8
SAY ~Fear not, <CHARNAME>. I have done this many times, and... I am well used to it.~
IF ~~ + lt4.9
END

IF ~~ lt4.9
SAY ~This, too, is part of my duty. How do you feel, <CHARNAME>?~
++ ~Much better. But, Sirene...~ + lt4.10
++ ~Next time, I suggest sticking with bandages.~ + lt4.11
++ ~Promise me you'll never do that for me again.~ + lt4.12
END

IF ~~ lt4.10
SAY ~I will be fine, worry not. Come, let us walk together.~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END

IF ~~ lt4.11
SAY ~Perhaps, but... there is a certain sense of relief to doing this. Come, let us walk together.~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END

IF ~~ lt4.12
SAY ~(smile) I fear that is a promise I cannot make, my friend. Come, let us walk together.~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END
END

// Lovetalk 5 - after rest

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",10)~ THEN C0SIRE2J lt5
~(As you awaken, you hear Sirene groaning and crying softly in her sleep.)~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
= ~Nngh... n-no, wait... do not leave me... please!~
END
++ ~Sirene! Wake up!~ + lt5.1
++ ~(Shake her)~ + lt5.1
++ ~(Approach her but do not awaken her)~ + lt5.2
++ ~(Ignore her and start packing)~ + lt5.3

APPEND C0SIRE2J

IF ~~ lt5.1
SAY ~(She suddently grabs hold of your hand, clutching it close to her, as though afraid to let go.)~
= ~(Her eyes dart open, as she looks at you in shock.) Y-you... <CHARNAME>?~
++ ~You gave me a fright, Sirene. What's wrong? Nightmares?~ + lt5.4
++ ~Are you all right? Your face is all wet.~ + lt5.4
++ ~You're finally awake. Come on, we should get moving.~ + lt5.5
END

IF ~~ lt5.2
SAY ~Wh-why...? I... I can barely see you...~
IF ~~ + lt5.1
END

IF ~~ lt5.3
SAY ~(After a while, she awakens, wiping the sweat and tears from her face. With a resigned look, she packs while attempting to appear as though nothing's wrong.)~
IF ~~ EXIT
END

IF ~~ lt5.4
SAY ~(She sits up from her bedroll, lost in thought.)~
= ~I... I hope my behavior did not cause you distress. That dream... I have had it many times, yet I am no closer to understanding it.~
++ ~You were muttering something about someone leaving. What did you see?~ + lt5.6
++ ~Take your time. For now, we should really get moving.~ + lt5.5
++ ~You're still holding onto my hand, you know.~ + lt5.7
END

IF ~~ lt5.5
SAY ~Y-yes... I am sorry if I concerned you. I will be ready in a moment.~
IF ~~ EXIT
END

IF ~~ lt5.6
SAY ~It is always the same. Burning heat... and amidst the flames, visions... the shadow of a man and a woman, running.~
= ~I... I can only imagine they must be my parents. But they do not hear me, no matter how much I call for them.~
IF ~~ + lt5.8
END

IF ~~ lt5.7
SAY ~What- oh!~
IF ~~ + lt5.8
END

IF ~~ lt5.8
SAY ~(She suddenly realizes she is pressing your hand against her chest and lets go, blushing. She turns away to hide her embarrassment.)~
= ~I- I am sorry, <CHARNAME>. I should not have allowed you to see me like this.~
++ ~It's alright. We all have bad memories.~ + lt5.9
++ ~Don't let it affect you while you're awake.~ + lt5.10
END

IF ~~ lt5.9
SAY ~I wish they were memories, but I cannot bring them forth while awake, no matter how much I try.~
IF ~~ + lt5.10
END

IF ~~ lt5.10
SAY ~*sigh* I should not let this get in the way of my duty to you, <CHARNAME>. If you would... pretend you did not witness this, I would be most appreciative. Forgive me.~
IF ~~ EXIT
END
END

// Lovetalk 6

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",12)~ THEN C0SIRE2J lt6
~It has just occurred to me that... I have not been the most forthcoming with my past, <CHARNAME>.~ [C0BLANK]
== C0SIRE2J IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~We have been friends for some time, yet I have only told you of my early childhood, as I recall.~
== C0SIRE2J ~Perhaps you may be interested in knowing more of me. I feel that may... be necessary to build trust between us. Would you like that?~
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~I already trust you, Sirene.~ + lt6.1
++ ~Does this have anything to do with your dream from before?~ + lt6.2
++ ~Go ahead. I'm willing to listen.~ + lt6.3
++ ~Not right now.~ + lt6.4

APPEND C0SIRE2J

IF ~~ lt6.1
SAY ~I know, and for that I am grateful, but... I feel as though I have not been fair. I know much of you, both from your tales and what you have told me, yet... you know almost nothing of my past.~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.3
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.5
END

IF ~~ lt6.2
SAY ~Yes... well, perhaps not directly, but... it did lead me to consider telling you of myself.~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.3
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.5
END

IF ~~ lt6.3
SAY ~You already know a few things of me... about how the priests of Ilmater chose me to become a paladin, so that I might learn discipline after I grievously harmed one of my fellow wards at the temple. But there is more to that tale.~
IF ~~ + lt6.6
END

IF ~~ lt6.4
SAY ~As you wish, my friend. Perhaps another time.~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",11)~ EXIT
END

IF ~~ lt6.5
SAY ~I was abandoned as an infant and raised by priests of Ilmater... that you already know. I was a hot-tempered girl, feared and bullied by my fellow wards at the temple, until one day I committed a terrible sin out of anger.~
= ~The other children that did not fear me enough to stay away would throw stones in my direction and call me a cursed child. One day, I flew into a rage and attacked several of them, grievously wounding a boy.~
= ~I regretted it greatly, even then. I allowed the evil in my blood to control me, even if 'twas only for an instant... and I was punished for it.~
= ~But... the priests saw hope in me still, and believed that paladinhood would give me the discipline to control my darker impulses. Or perhaps they hoped to turn my anger into righteous fury... either way, I am grateful that they gave me this chance.~
++ ~I thought paladins usually belonged to a specific order.~ + lt6.7
++ ~Go on.~ + lt6.6
++ ~I've heard enough. Let's move on.~ + lt6.8
END

IF ~~ lt6.6
SAY ~My small village was not the home of skilled warriors. But one of the brothers of the temple was familiar with the Holy Warriors of Suffering, and called for a paladin of the order to train me personally. Sir Marc Morris, martyr of Ilmater.~
= ~I did not know this at first. When I first met this man who would become my mentor, face to face, I was still locked within my room within the temple, praying in repentance.~
++ ~What did you think at the time?~ + lt6.9
++ ~Go on.~ + lt6.9
++ ~I've heard enough. Let's move on.~ + lt6.8
END

IF ~~ lt6.7
SAY ~I am... by status, a knight of the Holy Warriors of Suffering. Though I have never met other of my order save for my mentor, I have become trained as one.~
IF ~~ + lt6.6
END

IF ~~ lt6.8
SAY ~As you wish.~
IF ~~ EXIT
END

IF ~~ lt6.9
SAY ~I wondered if he was here to take me away, perhaps to some asylum to be locked up. I remember asking him as much. Gods, how embarrassing that was...~
= ~He did not respond at first... he only looked back at me, at this young, brash, tainted child staring back in defiance. Then... he simply nodded.~
++ ~He approved of your behavior?~ + lt6.10
++ ~What happened then?~ + lt6.10
END

IF ~~ lt6.10
SAY ~He asked if I feared him. I said: "No." He asked me what I wanted the most, and I told him: "To be forgiven."~
= ~Sir Morris nodded at me again, and said that I had what it took to become a champion of the faith. I know not what led me to think so... but I trusted him.~
= ~He taught me how to hold a training sword; how to fight, not to hurt others, but defend them. I realized that even my infernal blood could be shed in the name of Ilmater.~
= ~That is the tale of how I first began my training as a paladin, my friend. Perhaps, in the future, I will tell you more... if you would like that.~
++ ~I'd like to know now.~ + lt6.11
++ ~Sure, another time.~ + lt6.12
++ ~I'm not interested.~ + lt6.13
END

IF ~~ lt6.11
SAY ~If only I could, <CHARNAME>, but... I need time to think of the best tale to tell. Give me time, and I will try not to bore you.~
IF ~~ EXIT
END

IF ~~ lt6.12
SAY ~Very well. I will think of the best tale to tell you... when the time comes.~
IF ~~ EXIT
END

IF ~~ lt6.13
SAY ~That is your decision to make... though if you change your mind, I will be willing to tell.~
IF ~~ EXIT
END

END

// Lovetalk 7

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",14)~ THEN C0SIRE2J lt7
~I told you the tale of how I came to join the paladin order of Ilmater, <CHARNAME>, but I did not finish the tale. Are you still interested?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~It wouldn't hurt to listen.~ + lt7.1
++ ~Not right now.~ + lt7.2
++ ~I'm not interested.~ + lt7.3

APPEND C0SIRE2J

IF ~~ lt7.1
SAY ~Very well. Where was I? I told you of how I first met my mentor, Sir Morris of the Holy Warriors. I began my martial training at the age of twelve.~
= ~I had never wielded a sword before, and I was not... the most temperate of pupils. My impatience often got the best of me, and I would hurt myself or otherwise put myself at risk of harm.~
= ~Strangely, however... though I expected Sir Morris to scold me each time I made a mistake, he rarely did. He simply tended to my wounds, and allowed me to continue.~
++ ~He never showed you where you went wrong?~ + lt7.4
++ ~Go on.~ + lt7.4
++ ~I'd rather not listen to this tale after all.~ + lt7.3
END

IF ~~ lt7.2
SAY ~As you wish. Another time, then.~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ lt7.3
SAY ~Very well. If you would prefer it.~
IF ~~ EXIT
END

IF ~~ lt7.4
SAY ~I realized something was strange, one day... when I had been particularly aggravated, though for what reason, I cannot recall... I went to the field to practice.~
= ~In my anger, I made a critical mistake in my footing, and suffered a near-fatal injury when my head struck a rock as I tripped.~
++ ~What happened next?~ + lt7.5
++ ~Ouch! Were you alright?~ + lt7.6
++ ~I don't want to hear any more.~ + lt7.3
END

IF ~~ lt7.5
SAY ~I lost consciousness, but when I came to... I was confused. My head was completely unharmed, and I felt as though I had awoken from a peaceful sleep.~
= ~When I turned my head to look around... what I saw startled and horrified me. Sir Morris was looking at me from above, his head bleeding from the same wound that I had inflicted upon myself.~
= ~He told me that he had taken my suffering upon himself, that *this* was the duty of the order of Ilmater - live to defend others, suffer for others, and, if necessary... die for others.~
= ~I realized then, every mistake I made, I made him suffer for it. I asked if he would have traded his life for mine, to save me from my own foolishness, and... he was silent. But I knew the answer, and I remember... shedding tears of remorse.~
++ ~That was a very brave thing he did.~ + lt7.6
++ ~Go on.~ + lt7.6
END

IF ~~ lt7.6
SAY ~Instead of apologizing to him, I... I begged him to teach me how to do the same. I was inspired. I wanted to save others as he had saved me.~
++ ~And he did, correct?~ + lt7.7
++ ~Touching story, but we really should be going.~ + lt7.8
END

IF ~~ lt7.7
SAY ~He smiled at me, while still bleeding heavily... that was the first time I ever saw my mentor smile.~
= ~I bandaged and tended to his wound myself afterward, and devoted every second of my time to learning the abilities of the Martyrs of Ilmater. I became dedicated towards my training ever since then, both in healing and swordplay.~
= ~I can only aspire to become as great a knight as my Sir Marc Morris himself... but I still have much to learn.~
= ~Thank you for listening, <CHARNAME>, to my long-winded tale. I hope it did not bore you.~
++ ~Not at all. It's a good story.~ + lt7.9
++ ~It dragged on a bit, but it's over now, right?~ + lt7.10
END

IF ~~ lt7.8
SAY ~Very well. I- I hope I did not bore you.~
IF ~~ EXIT
END

IF ~~ lt7.9
SAY ~That is good to know, <CHARNAME>. I have more to tell, if you will not tire of them.~
= ~But 'twould be best to leave that for another time, I think.~
IF ~~ EXIT
END

IF ~~ lt7.10
SAY ~Yes... yes, it is. I apologize for taking up so much of your time.~
IF ~~ EXIT
END
END

// Lovetalk 8

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",16)~ THEN C0SIRE2J lt8
~(Sirene is absently rubbing the scar over her left eye, as if it is causing her discomfort.)~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~Does it still hurt?~ + lt8.1
++ ~Where did you get that?~ + lt8.2
++ ~(Leave her alone)~ + lt8.0

APPEND C0SIRE2J

IF ~~ lt8.0
SAY ~(Sirene blinks a few times before stopping and falling back in line.)~
IF ~~ EXIT
END

IF ~~ lt8.1
SAY ~Hmm? Oh, no... well, perhaps it does a little, but...~
IF ~~ + lt8.3
END

IF ~~ lt8.2
SAY ~I have yet to tell you the origin of this scar, have I? Forgive me, but 'tis not a pleasant tale to tell. Perhaps 'tis best if you did not know.~
++ ~Regardless, I would like to hear it.~ + lt8.3
++ ~If you think that's best.~ + lt8.4
END

IF ~~ lt8.3
SAY ~Very well... though if you should regret it, I will stop when you say so.~
= ~'Twas... a few years since I had begun my pilgrimage. I was still a brash youth then. I was travelling along the Coast Way road, seeking to do my duty.~
= ~During this time, I was not alone. There was another... someone I cared for greatly. We were together, looking to do some good where we could.~
++ ~Will you tell me of that person?~ + lt8.5
++ ~Go on.~ + lt8.6
++ ~What does this have to do with your scar?~ + lt8.6
END

IF ~~ lt8.4
SAY ~Yes... I believe it is.~
IF ~~ EXIT
END

IF ~~ lt8.5
SAY ~Perhaps another time... if you are interested. That is another tale of its own.~
IF ~~ + lt8.6
END

IF ~~ lt8.6
SAY ~The Coast Way road was... a dangerous place. The road had always had the risk of bandits and raiders, but... 'twas worse at the time. A band of slavers, led by a man named Asador, had abducted many travellers.~
= ~In my arrogance, I led myself and my companion to seek out this slaving group... and we found them.~
++ ~That doesn't sound good. What happened next?~ + lt8.7
++ ~I think I've heard enough of this tale.~ + lt8.8
END

IF ~~ lt8.7
SAY ~We encountered our adversaries in a forest clearing, where we were outnumbered and at a disadvantage. We fought back, but were defeated and nearly slain... or worse. I fled into the woods, barely escaping with my life.~
= ~That night... I prayed to Ilmater, asking for guidance. I dreamed of the battle that day, and was compelled to return to the scene.~
++ ~You went back? Wasn't that dangerous?~ + lt8.10
++ ~Go on.~ + lt8.9
++ ~I've heard enough.~ + lt8.8
END

IF ~~ lt8.8
SAY ~As you wish. Perhaps 'tis for the best that you do not hear of the atrocities committed... nor what I was forced to do.~
IF ~~ EXIT
END

IF ~~ lt8.9
SAY ~I found corpses, men I had slain the prior day. I found a map on their bodies, leading me to their leader, Asador... and I knew what I had to do.~
= ~I disguised myself as one of the slavers, hiding my armor beneath their clothing, and found my way to their camp. I was hidden amongst my enemies, with the risk of being discovered. I shudder to think of it, even now... but I had to remove this threat, no matter what.~
++ ~You killed their leader, then?~ + lt8.11
++ ~Why didn't you just give the map to the nearest authorities?~ + lt8.12
++ ~That's enough. We should move on.~ + lt8.13
END

IF ~~ lt8.10
SAY ~Perhaps... but I trusted in my god, and so I went.~
IF ~~ + lt8.9
END

IF ~~ lt8.11
SAY ~Using my cover as a slaver, I found Asador. I recognized the fear his men had for him, and I had expected him to seem powerful. But he was... far from what I expected.~
++ ~What was he, then?~ + lt8.14
++ ~Go on.~ + lt8.14
END

IF ~~ lt8.12
SAY ~I should have. But I had a burning hate for these men, and... I wanted to slay them myself. I was foolish.~
IF ~~ + lt8.11
END

IF ~~ lt8.13
SAY ~As you wish, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ lt8.14
SAY ~In his private quarters, I saw a man- lean, short, with horns protruding from his forehead and cruel eyes. He was of fell blood- just as I was.~
= ~I was stunned, and let down my guard. He quickly realized I was not one of his men, and demanded to know who I was.~
++ ~What did you tell him?~ + lt8.15
++ ~Did you run away?~ + lt8.15
END

IF ~~ lt8.15
SAY ~I knew escape was impossible, and lying was futile. I said to him, with false bravado: "I am Sirene, champion of Ilmater. I have come to punish you for your crimes."~
= ~He laughed in my face, with a mocking compliment towards my audacity. I felt my fear give way to anger, and I challenged him to a duel.~
= ~Asador agreed. He was arrogant, and believed he would succeed... and, in truth, perhaps he would have.~
++ ~So you defeated and killed him?~ + lt8.16
++ ~Go on.~ + lt8.16
++ ~That's enough. We should move on.~ + lt8.13
END

IF ~~ lt8.16
SAY ~We drew our blades and fought, but his skill was far superior to mine. I fully expected to die, right there and then, but I would have died with my honor.~
= ~His first strike that landed... led to this scar on my face. At the same time, I was assaulted by burning ashes that burned away my cowl, revealing me for what I was.~
= ~He was shocked, and for an instant, he lowered his guard - and I struck him at that instant.~
++ ~Did it kill him?~ + lt8.17
++ ~Go on.~ + lt8.17
END

IF ~~ lt8.17
SAY ~The blow wounded him, but I was weak - 'twas not enough to slay him. He was furious, and raised his hand while chanting an incantation. At that moment I realized he was not merely a warrior, but also a mage.~
= ~I was engulfed by a ball of flame, and if not for my infernal blood, I would have likely died. But I was defeated... helpless before him.~
= ~I expected him to finish me, but he did not. When he pressed me against the ground, I realized what he intended for me was worse than a swift death, and I was horrified.~
++ ~That's horrible!~ + lt8.18
++ ~Did he... succeed?~ + lt8.18
++ ~I can't hear any more of this.~ + lt8.19
END

IF ~~ lt8.18
SAY ~He mocked me as he ripped my armor from my body, saying that I had too much potential to be killed or thrown aside. But... in his negligence, he had not noticed a knife he carried at his belt.~
= ~I... feigned defeat, and when he allowed himself to become vulnerable, I drew the knife and... stabbed him in the back of his neck.~
= ~Gods, I can still remember the taste of his blood as it dripped upon my face. Even now, years later, I still recall that moment in my darkest nightmares.~
++ ~But you saved yourself. Were you at least relieved?~ + lt8.20
++ ~Go on.~ + lt8.21
END

IF ~~ lt8.19
SAY ~Yes... perhaps that is for the best.~
IF ~~ EXIT
END

IF ~~ lt8.20
SAY ~Relieved, aye... but also horrified.~
IF ~~ + lt8.21
END

IF ~~ lt8.21
SAY ~At the moment before I committed the act, I lost all thoughts of my honor, my lord Ilmater, everything... all I could think of was survival. And... when I plunged the knife through Asador's throat... I did it without a moment's hesitation.~
= ~Looking at the corpse that lay atop me, the blood on my fingers, I realized the worst of what I could become. I threw the body from myself, and resisted the urge to scream.~
+ ~OR(2) PartyHasItem("c0sw2h") PartyHasItem("c0sw2h2")~ + ~How did you escape?~ + lt8.22
+ ~!PartyHasItem("c0sw2h") !PartyHasItem("c0sw2h2")~ + ~How did you escape?~ + lt8.23
END

IF ~~ lt8.22
SAY ~I escaped the same way I entered - I took Asador's cloak and wore it myself, as well as taking his blade... this one that I now carry with me.~
IF ~~ + lt8.24
END

IF ~~ lt8.23
SAY ~I escaped the same way I entered - I took Asador's cloak and wore it myself, as well as taking his blade... the blade of smoke and ashes that I carried for many years.~
IF ~~ + lt8.24
END

IF ~~ lt8.24
SAY ~Only one with blood of the lower planes could safely wield his blade. Asador's minions must have known that, for they believed me to be him without doubt as I left.~
= ~I knew I had seen the worst of my kind that day. The kind of person I would never become... so I learned to hate violence. The cruelty of Asador had taught me a valuable lesson.~
= ~That is the tale of my past, <CHARNAME>. I hope it did not overly disgust you.~
++ ~It was... uncomfortable, but I appreciate you telling me.~ + lt8.25
++ ~It was terrible. I can't believe you've been though such a thing.~ + lt8.25
END

IF ~~ lt8.25
SAY ~I should thank you, <CHARNAME>. You are the only person I have ever told this tale to... and 'twas easier to tell than I had thought. Perhaps this memory will no longer haunt my dreams.~
= ~I can only hope. I do not wish to carry it with my any longer.~
IF ~~ EXIT
END
END

// Lovetalk 9

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",18)~ THEN C0SIRE2J lt9
~You are a good listener, <CHARNAME>. Thank you for sparing me your time... I feel as though I have lifted several heavy burdens from my heart.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~Are you all right? You looked rather down after we last talked.~ + lt9.1
++ ~I'm glad my presence was enough to help you.~ + lt9.1
++ ~That's good, but could we talk later?~ + lt9.0

APPEND C0SIRE2J

IF ~~ lt9.0
SAY ~Of course, <CHARNAME>. I have said all that I needed to.~
IF ~~ EXIT
END

IF ~~ lt9.1
SAY ~The tale I spoke of last time... though it was somewhat frightening to retell, I feel better having done so. I have kept too many things to myself.~
= ~Though I hope that I am not coming across as unloading my burdens upon you, my friend. I know you have your own share of troubles.~
++ ~Perhaps I could tell you of them, one day.~ + lt9.2
++ ~It's fine. I like knowing more about you, even the... darker things.~ + lt9.3
++ ~As long as they're more pleasant than your last tale, go ahead and tell me everything.~ + lt9.4
END

IF ~~ lt9.2
SAY ~I would... like that, I think.~
IF ~~ + lt9.5
END

IF ~~ lt9.3
SAY ~I am just glad that... even knowing about what I have told you, you do not think any less of me.~
IF ~~ + lt9.5
END

IF ~~ lt9.4
SAY ~Do not worry, <CHARNAME>, the last time was the worst of it.~
IF ~~ + lt9.5
END

IF ~~ lt9.5
SAY ~(She takes your hand between both of hers) I am ever so grateful to have your friendship, your company, and...~
++ ~And?~ + lt9.6
++ ~Would you want for more? Because I'm willing to offer it.~ + lt9.7
++ ~(Take your hand away) Yes, well, let's leave it at that, shall we?~ + lt9.8
END

IF ~~ lt9.6
SAY ~Oh, nothing. Just a slip of the tongue. You have given me more than enough as you are.~
IF ~~ EXIT
END

IF ~~ lt9.7
SAY ~I- *blush* well, I will take that into consideration.~
IF ~~ EXIT
END

IF ~~ lt9.8
SAY ~Oh... of course. I apologize if I have stepped out of bounds.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Lovetalk 10

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",20)~ THEN C0SIRE2J lt10
~*sigh* I fear that I will never get used to the city. I had always heard such tales as a child, of how the streets of Waterdeep were paved in white and gold, but... I always suspected that the reality would be much different.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
== C0SIRE2J IF ~!Class(Player1,RANGER_ALL) !Class(Player1,DRUID_ALL)~ THEN ~What do you think, <CHARNAME>? Are you at home in such a place?~
== C0SIRE2J IF ~Class(Player1,RANGER_ALL)~ THEN ~You are a ranger, <CHARNAME>. I cannot imagine you are any more fond of this place as I am. Or am I wrong to assume such?~
== C0SIRE2J IF ~Class(Player1,DRUID_ALL)~ THEN ~You are a druid, <CHARNAME>. I cannot imagine you are any more fond of this place as I am. Or am I wrong to assume such?~
END
++ ~Not really. Candlekeep was better.~ + lt10.1
++ ~That's not a fair comparison. Not all cities are alike.~ + lt10.2
++ ~I prefer the city, actually.~ + lt10.3
++ ~We have no time to ponder such things, Sirene.~ + lt10.0

APPEND C0SIRE2J

IF ~~ lt10.0
SAY ~Yes, of course... I apologize.~
IF ~~ DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",2)~ EXIT
END

IF ~~ lt10.1
SAY ~Then you know what 'tis like. Well... I am relieved that you understand what I mean, at least.~
IF ~~ + lt10.4
END

IF ~~ lt10.2
SAY ~Aye, that is true for the place, but the people... I have a hard time differentiating the people here from those at Baldur's Gate.~
IF ~~ + lt10.4
END

IF ~~ lt10.3
SAY ~Do you truly? I do not wish to judge, but... I can hardly see the appeal.~
IF ~~ + lt10.4
END

IF ~~ lt10.4
SAY ~I have not seen many cities, but... I have never found one in which the people did not feel... burdened.~
= ~There are no words I know that could accurately describe how I feel about the city, but... I have begun to appreciate the peaceful village life I had left behind. ~
= ~Perhaps, if we had the time... I would like to see the countryside once more. Just to remember what 'tis like. Could we do that, I wonder?~
++ ~That's a good idea. I'd enjoy it as well.~ + lt10.5
++ ~So... are you asking for a date, then?~ + lt10.6
++ ~Maybe when we have the time, but not right now.~ + lt10.7
END

IF ~~ lt10.5
SAY ~Thank you, <CHARNAME>. It does not have to be today, or tomorrow, or even soon. Just... eventually. That is all I ask.~
IF ~~ EXIT
END

IF ~~ lt10.6
SAY ~*blush* No! I- I mean... if you would like to see it that way, that is your decision, but... I did not mean it that way.~
++ ~Are you saying you don't like me?~ + lt10.8
++ ~Alright, I get it. Maybe we'll go to the countryside eventually, but not right now.~ + lt10.7
END

IF ~~ lt10.7
SAY ~I understand, <CHARNAME>. It does not have to be today, or tomorrow, or even soon. Just... eventually. That is all I ask.~
IF ~~ EXIT
END

IF ~~ lt10.8
SAY ~No, I did not mean to say that...~
= ~*sigh* You, you are... a brilliant leader, and a <PRO_MANWOMAN> that I admire greatly. But if you ask about my deeper feelings... I- I fear I will only make a fool of myself.~
= ~As I was saying... I would like to see the countryside once more, to relive some memories of my childhood, and... spend more time with you, <CHARNAME>.~
IF ~~ EXIT
END
END

// lovetalk 11 - at Umar Hills

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",22) !Global("C0SireneUmarLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt11
~Yes, this place is perfect... would you take a walk with me, <CHARNAME>?~ [C0BLANK]
DO ~SetGlobal("C0SireneUmarLovetalk","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("c0slake1")~
EXIT

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",22) Global("C0SireneUmarLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt11a
~I remember a lake just like this one, not far from my temple... the other children rarely played there, so 'twas a place where I could have some peace.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
= ~When I was five, my horns had already grown to the point that I could no longer hide them beneath my hair... I was but an odd-looking child to my fellows before that, but after they realized what I was...~
= ~(While speaking, she sits down close to the edge of the pond, picking reeds and twisting them absently)~
= ~The first time one of the other children threw a stone at me, I remember I ran away, crying to the lake, so that I might be alone.~
END
++ ~That's terrible. Were you really all alone?~ + lt11.1
++ ~Go on.~ + lt11.1
++ ~Well, that's interesting and all, but we really should be going.~ + lt11.0

APPEND C0SIRE2J

IF ~~ lt11.0
SAY ~As you wish, <CHARNAME>. We have spent enough time here.~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END

IF ~~ lt11.1
SAY ~One of the younger sisters of the temple, Camilla, found me there... or perhaps she had followed me.~
= ~I was shamed to weep in front of her that day, but she comforted me. She brought me to that same place day after day, telling me stories, teaching me to sing...~
= ~Once, she showed me how to whistle, using a leaf to make a soothing tune. I could never do it as a child. I wonder if now...~
= ~(She plucks a thin leaf from a nearby bush, bringing it to her lips. A very soft, mournful, disjointed note comes from her.)~
= ~(She laughs) No, I believe I had only gotten worse since then. But I enjoyed the time I spent there, where I forgot about what I... what I am.~
++ ~Here, let me show you how to do it.~ + lt11.2
++ ~Did you love her? She seems to mean a great deal to you.~ + lt11.3
++ ~I'm glad you could have moments of peace, no matter how brief they were.~ + lt11.4
++ ~This was a nice diversion, but we really should go back.~ + lt11.0
END

IF ~~ lt11.2
SAY ~(You take the leaf from her, placing it between your lips and whistling a pleasant tune.)~
= ~(She sits back on the grass, eyes shut, listening intently.)~
++ ~(Stop and kiss her)~ + lt11.2a
++ ~Did you enjoy that?~ + lt11.2b
END

IF ~~ lt11.2a
SAY ~Oh... (She is initially shocked, but relaxes as she holds you close to her. Her lips are warm, almost hot.)~
= ~(When you finally part, she is noticeably flustered, but not at all upset.) <CHARNAME>...~
++ ~Was that too bold of me?~ + lt11.2c
++ ~*That's* something new, isn't it?~ + lt11.2d
END

IF ~~ lt11.2b
SAY ~Yes, I did, <CHARNAME>. Thank you for entertaining me, though you had no need to do so.~
IF ~~ + lt11.4
END

IF ~~ lt11.2c
SAY ~N-no, not at all, <CHARNAME>, actually, I, um... (She runs her tongue across her lips nervously)~
= ~I enjoyed that. Thank you.~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.2d
SAY ~Yes, it was... 'twas unexpected, but... I enjoyed it. We, um...~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.3
SAY ~Sister Camilla was like a sister to me, <CHARNAME>. If I had held deeper feelings for her, I would not have known them for what they were.~
= ~You could say that she was important to me, and you would be correct - but... not in the same way that you are.~
IF ~~ + lt11.4
END

IF ~~ lt11.4
SAY ~Now that I think back... my childhood was a difficult one, but despite it all... there were still many valuable memories there.~
= ~Thank you for bringing me here, <CHARNAME>. It has meant a lot to me, and... 'tis the most enjoyment I have had in a while.~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.5
SAY ~Come, <CHARNAME>. We should not keep the others waiting.~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END

IF ~~ lt11.6
SAY ~Come, <CHARNAME>. We should return to our tasks.~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END
END

// Lovetalk 12

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",24)~ THEN C0SIRE2J lt12
~(smile) Would you care for a sweet, <CHARNAME>?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~What sort of sweet?~ + lt12.1
++ ~Ooh, I love sweets! Give me some!~ + lt12.1
++ ~No thanks, I hate sweets.~ + lt12.2
++ ~Now's not the time for snacks, Sirene.~ + lt12.0

APPEND C0SIRE2J

IF ~~ lt12.0
SAY ~Oh, very well... if you insist, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ lt12.1
SAY ~(She takes a small bar of chocolate from a velvet pouch in her hands, breaks it in half, and hands one half to you.)~
IF ~~ + lt12.3
END

IF ~~ lt12.2
SAY ~Oh. 'Tis a shame... I had been hoping to share this chocolate with you.~
IF ~~ + lt12.3
END

IF ~~ lt12.3
SAY ~I have always loved sweet things... they remind me of the better moments of my childhood, when Sister Camilla would take me along with some of the girls of the village to the lakeside, to share little cakes and sing silly little songs together.~
= ~Things changed, of course, when I began my martial training under Sir Morris. But she would still bring me chocolate cakes while I was out in the field.~
= ~I... I wonder if she is well. It has been many years since we last met.~
++ ~Don't you ever write home?~ + lt12.4
++ ~I think of home as well, sometimes. About Winthrop, Tethtoril, all those old monks...~ + lt12.5
++ ~You sound homesick. Do you think you'll ever go back?~ + lt12.6
END

IF ~~ lt12.4
SAY ~Rarely... and as a wandering knight, it is... difficult, if not impossible, for them to contact me in return. 'Tis a shame... I would like to hear from them once again.~
IF ~~ + lt12.7
END

IF ~~ lt12.5
SAY ~You are closer to home than I, at least. The choice to return could be yours, once this is all over.~
IF ~~ + lt12.7
END

IF ~~ lt12.6
SAY ~I hope... I pray that I might, aye. But I may never get the chance.~
IF ~~ + lt12.7
END

IF ~~ lt12.7
SAY ~'Tis a strange thing, not to treasure the things you have until they are gone... if I had known I would miss them so badly, I... I would have liked to make more of such memories.~
= ~Ah, but wait... *laugh*~
++ ~What's so funny?~ + lt12.8
++ ~Well, this was a nice break, but we really should be moving on.~ + lt12.0
END

IF ~~ lt12.8
SAY ~The thought just occurred to me... I regret not having more fond memories, but... here I am, making new ones, with someone I consider dear to me. I have all that I could wish for, and I did not even notice.~
= ~(She takes the last piece of chocolate, looks at it with quiet contemplation for a moment, before returning it to the bag.)~
= ~This is all there is left, <CHARNAME>. Would you care to finish it?~
++ ~Thank you.~ + lt12.9
++ ~No, you take it.~ + lt12.10
++ ~(Break it in half, giving a piece to her)~ + lt12.11
++ ~(Take it and slip it into her mouth)~ + lt12.12
END

IF ~~ lt12.9
SAY ~The best things in life are shared between friends.~
IF ~~ EXIT
END

IF ~~ lt12.10
SAY ~(She smiles, takes it, and snaps the bar in half before returning a half to you.)~
IF ~~ + lt12.9
END

IF ~~ lt12.11
SAY ~Thank you.~
IF ~~ + lt12.9
END

IF ~~ lt12.12
SAY ~Oh...~
= ~(Before you take your hand away, she takes your fingers and kisses them.)~
= ~*That* is something I will remember fondly, <CHARNAME>.~
IF ~~ EXIT
END
END
// Lovetalk 13

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",26)~ THEN C0SIRE2J lt13
~(Sirene is sneaking glances in your direction, while unsuccessfully trying to keep you from noticing.)~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~Is there a reason you're watching me, Sirene?~ + lt13.1
++ ~What? Is there something on my face?~ + lt13.1
++ ~(Ignore her)~ + lt13.2

APPEND C0SIRE2J

IF ~~ lt13.1
SAY ~Oh, 'tis nothing, <CHARNAME>. I was just...~
IF ~Gender(Player1,MALE)~ + lt13.3
IF ~Gender(Player1,FEMALE)~ + lt13.4
END

IF ~~ lt13.2
SAY ~(She eventually abandons all subtlety, ogling you while under the impression you do not notice, before blushing and turning away.)~
IF ~~ EXIT
END

IF ~~ lt13.3
SAY ~I was just... admiring your features, <CHARNAME>. I do not think I have met another as... as attractive as you.~
++ ~Well, thank you, Sirene.~ + lt13.5
++ ~I'm flattered... I think.~ + lt13.5
++ ~I think you're beautiful as well.~ + lt13.6
++ ~You're blushing again.~ + lt13.8
END

IF ~~ lt13.4
SAY ~I was just... admiring your beauty, <CHARNAME>. I do not think I have met another as beautiful as you.~
++ ~Well, thank you, Sirene.~ + lt13.5
++ ~I'm flattered... I think.~ + lt13.5
++ ~I think you're beautiful as well.~ + lt13.7
++ ~I noticed you're more comfortable with praising women. Am I wrong to think so?~ + lt13.9
END

IF ~~ lt13.5
SAY ~I speak only the truth as I see it, <CHARNAME>. I hope this is not too much, but... I do find you appealing.~
IF ~~ + lt13.10
END

IF ~~ lt13.6
SAY ~I... I am flattered that you think so, <CHARNAME>.~
IF ~~ + lt13.10
END

IF ~~ lt13.7
SAY ~I... I am flattered that you think so, <CHARNAME>, but I could not compare to you. There is an... appeal to you that I am drawn to.~
IF ~~ + lt13.10
END

IF ~~ lt13.8
SAY ~It... happens, <CHARNAME>. Perhaps more frequently than usual, when I am around you.~
IF ~~ + lt13.10
END

IF ~~ lt13.9
SAY ~No... you are not wrong, <CHARNAME>. It is... easier. Most women I have met are less likely to take such a comment in a, um... flirtatious light.~
IF ~~ + lt13.10
END

IF ~~ lt13.10
SAY ~I think 'twas... your kindness and acceptance which first appealed to me, but past that... I consider you attractive both inside and outside.~
++ ~Are you saying you're attracted to me, then?~ + lt13.11
++ ~You're dodging around what you're really trying to say, Sirene.~ + lt13.12
END

IF ~~ lt13.11
SAY ~I, well... yes, I am. I think of you often. Sometimes... less innocently than I should. *blush*~
IF ~~ + lt13.13
END

IF ~~ lt13.12
SAY ~No, I... *sigh* well, yes. You are probably right.~
IF ~~ + lt13.13
END

IF ~~ lt13.13
SAY ~This... this is all becoming very awkward, <CHARNAME>. I- I think 'twould be best to end this conversation here.~
IF ~~ EXIT
END
END

// Lovetalk 14 - rest at inn

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",28)~ THEN C0SIRE2J lt14
~(You have retired for the evening, ready for a night of well-deserved rest. As you are undressing, you hear a light knock on your door.)~ [C0BLANK]
END
++ ~Who's there?~ + lt14.1
++ ~Come in, whoever it is.~ + lt14.2
++ ~(Ignore it and go to bed)~ + lt14.0
++ ~Go away!~ + lt14.0

APPEND C0SIRE2J

IF ~~ lt14.0
SAY ~(There is no response, and all is quiet until you finally drift off to sleep.)~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",31) RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700) RestParty()~ EXIT
END

IF ~~ lt14.1
SAY ~(There is a long pause you get a response) 'Tis I, <CHARNAME>... if you have not retired to your bed already, I would... like to share your company a while.~
++ ~Sirene? Come in.~ + lt14.2
++ ~No, I'm too tired right now.~ + lt14.0
END

IF ~~ lt14.2
SAY ~(Sirene slips into the room and shuts the door as quietly as she can.)~
= ~I am sorry to disturb, <CHARNAME>. I know you must be tired.~
++ ~What's wrong? Can't sleep?~ + lt14.3a
++ ~Do you need to talk to me?~ + lt14.3
++ ~Yes, I am. Whatever it is, can you leave it until tomorrow?~ + lt14.2a
END

IF ~~ lt14.2a
SAY ~As you wish. Rest well.~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",31) RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700) RestParty()~ EXIT
END

IF ~~ lt14.3a
SAY ~No, 'tis not that. I just... wished to talk to you for a while.~
IF ~~ + lt14.3
END

IF ~~ lt14.3
SAY ~(She moves to sit beside you on the bed, taking your hand)~
= ~Forgive my undignified manner, <CHARNAME>. I was alone, and... I began to feel restless.~
++ ~I can tell. How much wine did you drink?~ + lt14.4
++ ~This is unlike you. What's the matter?~ + lt14.5
++ ~I'm sorry, but I really am tired right now, Sirene. We can talk tomorrow.~ + lt14.2a
END

IF ~~ lt14.4
SAY ~Only a couple glasses. I needed to... to work up the courage to see you alone.~
IF ~~ + lt14.6
END

IF ~~ lt14.5
SAY ~I... that is... you, <CHARNAME>, are the matter.~
IF ~~ + lt14.6
END

IF ~~ lt14.6
SAY ~I have been thinking of you much as of late, and... it has been difficult to stop myself. I fear you have changed me, <CHARNAME>, with this growth in our... feelings towards each other.~
= ~For most of my life, I have been resigned to be alone, and I had accepted it. But, since I have known you, I have come to fear bearing that loneliness once more.~
= ~You have become too important to me, <CHARNAME>, and I... I now know I have fallen for you, for 'tis more than just your company I desire.~
= ~When I am with you, my words, my feelings... nothing comes as easily. This... whirlwind of emotions and desire towards you frightens me, yet I... I wish to get... closer...~
++ ~Are you saying that you wish to... bed me?~ + lt14.7
++ ~I understand. Come here, and let me show you how I feel about you.~ + lt14.8
++ ~No, Sirene. This is too soon. Don't do something we both might regret.~ + lt14.9
END

IF ~~ lt14.7
SAY ~I... yes, that is exactly what I am saying. I can no longer deny my desire for you. If... if this is a mistake, then I want you to tell me, for I cannot do it myself.~
++ ~No, wait. Actually... I want this as well. Come here...~ + lt14.8
++ ~I think this is too soon. We don't have to rush things like this.~ + lt14.9
++ ~I'm sorry. I just don't think of you that way.~ + lt14.11
END

IF ~~ lt14.8
SAY ~*sigh* Gods... may the gods forgive my weakness, for I can resist no longer.~
= ~(She presses herself against you, pushing you down upon the sheets and guides your hands to the string holding her bodice, showering your face with kisses, gently biting your ear.)~
= ~(Her breath carries the scent of red wine; her fingers stroke your bare skin as she removes each piece of your clothing, urging you to give in.)~
++ ~(Surrender yourself to her)~ + lt14.10
++ ~(Take control, rolling her beneath you)~ + lt14.10
++ ~No... stop it. I've changed my mind.~ + lt14.9
END

IF ~~ lt14.9
SAY ~*sigh* Yes, you are right, <CHARNAME>. This was impulsive of me. I should... I should go, before I change my mind.~
= ~(She rises abruptly to leave, as though fearful that she will be unable to.)~
= ~Rest well, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",30) RestParty()~ EXIT
END

IF ~~ lt14.10
SAY ~I am yours, <CHARNAME>, all yours...~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",30) SetGlobal("C0SireneSlept","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ lt14.11
SAY ~*sigh* Then 'tis as I feared.~
= ~(Resignedly, she rises and moves to the door, defeated.)~
= ~I want you to know... I hold no resentment toward you for this. Rest well, my friend.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) RestParty()~ EXIT
END
END
// Lovetalk 15

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",30)~ THEN C0SIRE2J lt15
~Good <DAYNIGHTALL>, <CHARNAME>. Did... did you rest well?~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~So, about last night...~ + lt15.1
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~So, about last night...~ + lt15.2
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~I wish you had been there when I awoke.~ + lt15.3
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~I only wish you had stayed with me.~ + lt15.2
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~Very much so. How about you?~ + lt15.3
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~Very much so. How about you?~ + lt15.2

APPEND C0SIRE2J

IF ~~ lt15.1
SAY ~No, please say nothing, <CHARNAME>. I should apologize to you. I allowed passion to take me... then fled like a coward when I was overwhelmed by it.~
IF ~~ + lt15.4
END

IF ~~ lt15.2
SAY ~I... I think 'twas right for us to part last night, before... before we did anything we might regret. There was no need to force anything between us, and I... I apologize. If you would rather we end this now, then... I understand.~
++ ~I don't want that, Sirene. What happened is behind us now, but I still care for you.~ + lt15.5
++ ~Maybe that's for the best. We can't afford to let any distractions get in the way of our tasks.~ + lt15.6
END

IF ~~ lt15.3
SAY ~I... I am sorry for leaving you in the morning. I was overwhelmed, and fled like a coward when I awoke. You deserve better than to be treated that way.~
IF ~~ + lt15.4
END

IF ~~ lt15.4
SAY ~Perhaps what we did was a... mistake, perhaps not. Regardless, I think 'twould be best not to speak of it for now. I... I hope you can understand.~
IF ~~ EXIT
END

IF ~~ lt15.5
SAY ~I- I see. That, at least, gives me hope.~
IF ~~ EXIT
END

IF ~~ lt15.6
SAY ~Yes... you are right. We shall remain friends, then.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Lovetalk 16

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",32)~ THEN C0SIRE2J lt16
~<CHARNAME>, I- I must confess the truth to you. I have kept this from you for too long, and I can bear to do so no longer.~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~What is it?~ + lt16.1
++ ~I know what you're going to say, Sirene. You don't have to spell it out for me.~ + lt16.2
++ ~Look, Sirene... I think we made a mistake before. We should end this thing between us.~ + lt16.x

APPEND C0SIRE2J

IF ~~ lt16.x
SAY ~(She looks back at you in silence, stunned.)~
= ~Do... do you truly mean that, <CHARNAME>?~
= ~I... (She turns away from you)~
++ ~Are you... crying?~ + lt16.1x
++ ~I'm sorry.~ + lt16.2x
END

IF ~~ lt16.1x
SAY ~...no. No, 'tis nothing. I am fine, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt16.2x
SAY ~So am I, <CHARNAME>...~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt16.1
SAY ~Since the day we met, you have become someone truly important to me, <CHARNAME>, someone I feel bound to protect with my life. I enjoy speaking with you, and when you smile at me, I feel at ease...~
++ ~Go on.~ + lt16.3
++ ~Is this some sort of roundabout love confession?~ + lt16.4
++ ~Please, stop it. I know what you're trying to say, but I cannot return your feelings.~ + lt16.x
END

IF ~~ lt16.2
SAY ~I must, <CHARNAME>. If I do not... then I fear this feeling clutching at my heart will never let go.~
IF ~~ + lt16.1
END

IF ~~ lt16.3
SAY ~Oh... damn it all. What I truly mean is... I have fallen in love with you, <CHARNAME>.~
++ ~You... you have?~ + lt16.3a
++ ~I'm glad you finally said it. I love you as well, Sirene.~ + lt16.5
++ ~This is hard to say, but... I cannot return your feelings, Sirene. We should remain friends.~ + lt16.x
END

IF ~~ lt16.3a
SAY ~Aye, <CHARNAME>. Though I thought 'twas but a brief affection at first, but as time passed, I became drawn to your kindness, your strength and courage...~
= ~I think I had fallen for you a long time ago, but... I could not put it into words. But this affection for you has grown to the point where... I cannot hide it anymore.~
= ~So I ask of you, <CHARNAME>... do you feel the same for me?~
++ ~Of course I do.~ + lt16.5
++ ~I'm sorry, Sirene. I don't.~ + lt16.x
END

IF ~~ lt16.4
SAY ~N-no! *blush* Well, perhaps...~
IF ~~ + lt16.3
END

IF ~~ lt16.5
SAY ~Do... do you truly?~
++ ~I do.~ + lt16.6
++ ~Do you doubt me?~ + lt16.7
END

IF ~~ lt16.6
SAY ~By Ilmater, I... I never would have imagined...~
IF ~Global("C0SireneFlowers","GLOBAL",1)~ + lt16.8
IF ~!Global("C0SireneFlowers","GLOBAL",1)~ + lt16.9
END

IF ~~ lt16.7
SAY ~N-no, of course not. I just... never would have imagined...~
IF ~Global("C0SireneFlowers","GLOBAL",1)~ + lt16.8
IF ~!Global("C0SireneFlowers","GLOBAL",1)~ + lt16.9
END

IF ~~ lt16.8
SAY ~Perhaps I should have seen it sooner, with the flirting, and the flowers, and...~
IF ~~ + lt16.9
END

IF ~~ lt16.9
SAY ~I thought... perhaps 'twas just a flight of fancy, the thought that you would be in love with me. But now I know that 'tis real, I...~
= ~(She sighs in exasperation before giving a small laugh.)~
= ~Of course, now my words would fail me. So I will ask... will you hold me, <CHARNAME>?~
++ ~Absolutely.~ + lt16.10
++ ~(Say nothing, just embrace her)~ + lt16.10
++ ~I'd love to, but for now, we should get going.~ + lt16.11
END

IF ~~ lt16.10
SAY ~Thank you.~
= ~With you at my side, I... I feel as though all the suffering, the trials I have endured... they have all been worth it, if this is to be my reward.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ lt16.11
SAY ~Mm, very well, <CHARNAME>. Perhaps, tonight instead... we could share more of our feelings together. I would like that.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",2)~ EXIT
END

END

// Lovetalk 17

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",34)~ THEN C0SIRE2J lt17
~(You notice that Sirene is smiling to herself, a rare occurrence for her.)~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~It's nice to see you smile for once, Sirene.~ + lt17.1
++ ~Hey, what's so funny?~ + lt17.2
++ ~(Leave her alone)~ + lt17.0

APPEND C0SIRE2J

IF ~~ lt17.0
SAY ~(After a while, she approaches and touches you gently. Her arms wrap around you in a warm embrace.)~
IF ~~ EXIT
END

IF ~~ lt17.1
SAY ~I have had cause for it as of late, I think. You have given me such joy just by being at my side.~
IF ~~ + lt17.3
END

IF ~~ lt17.2
SAY ~Nothing. I am simply... very happy.~
IF ~~ + lt17.3
END

IF ~~ lt17.3
SAY ~It feels good having released the feelings I once held secret from you, <CHARNAME>. My heart feels much lighter, now that you know how I feel for you.~
= ~I do not believe I have felt such happiness in a long time.~
++ ~So long as you're happy, I'm happy.~ + lt17.4
++ ~Have you never felt this way before?~ + lt17.5
++ ~I'm glad to hear it. Shall we walk together?~ + lt17.6
END

IF ~~ lt17.4
SAY ~I only hope that this comes to last. I would not want to lose you as... as I have lost others before.~
= ~Theirs was pain enough. But you... losing you would be worse than anything else.~
= ~*sigh* I am sorry. I should not ruin the moment with such thoughts.~
IF ~~ + lt17.6
END

IF ~~ lt17.5
SAY ~I may have believed I did, once, but 'twas all hidden beneath my own fears and insecurities, and... I did not truly know what love was.~
= ~Now I know better. I know what I feel for you is truly love, and... I am not afraid of it any longer.~
IF ~~ + lt17.6
END

IF ~~ lt17.6
SAY ~(She takes your hand and walks with you, arm in arm.)~
= ~For once, I feel I am truly blessed, to have you at my side. Please, never leave me.~
IF ~~ EXIT
END
END
// Lovetalk at Ust Natha

CHAIN IF ~Global("C0SireneUstNathaLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt18
~My- Veldrin. I... I wish to speak with you privately. This is important.~ [C0BLANK]
DO ~SetGlobal("C0SireneUstNathaLovetalk","GLOBAL",2)~
END
+ ~Gender(Player1,MALE)~ + ~Of course, my mistress.~ + lt18.1
+ ~Gender(Player1,FEMALE)~ + ~Of course.~ + lt18.1
++ ~*whisper* You need to be more demanding.~ + lt18.2
++ ~A room for two, then? We'll have all the privacy we need.~ + lt18.3
++ ~Not here. We can't afford to reveal anything.~ + lt18.0

APPEND C0SIRE2J

IF ~~ lt18.0
SAY ~Yes, you are right, I suppose... I shall hold my thoughts, then.~
IF ~~ EXIT
END

IF ~~ lt18.1
SAY ~Here, where we will not be overheard...~
= ~...~
++ ~Wh-why are you just staring at me?~ + lt18.4
++ ~I thought you had something to say.~ + lt18.4
++ ~(Say nothing and look at her)~ + lt18.4
++ ~This is getting awkward. Let's just leave before someone suspects us.~ + lt18.0
END

IF ~~ lt18.2
SAY ~*sigh* Veldrin, just... come. Quickly.~
IF ~~ + lt18.1
END

IF ~~ lt18.3
SAY ~*sigh* Now is not the time for jests, Veldrin. Just come aside with me a moment.~
IF ~~ + lt18.1
END

IF ~~ lt18.4
SAY ~*sigh* Forgive me, <CHARNAME>. I was meaning to speak, but I became distracted by your new features.~
= ~'Tis so strange. Your face, even your voice is entirely different... even face to face, I can no longer recognize you...~
= ~Only your eyes, without the cruelty and ambition of these fiends around us can assure me 'tis truly you. I feel as though I am once more amongst a crowd of hostile strangers, and I am not proud to admit it, but I... I am afraid.~
++ ~I understand. I'm afraid too.~ + lt18.5
++ ~Don't worry. I'm still <CHARNAME>, you're still Sirene, and that will never change.~ + lt18.5
++ ~You look completely strange to me too. I'll admit, it makes me uncomfortable.~ + lt18.5
++ ~There's nothing we can do about it at this point.~ + lt18.5
++ ~It's pointless to complain about it, now that we're already here.~ + lt18.5
END

IF ~~ lt18.5
SAY ~*sigh* I suppose it does no good to say such things. We are here for a cause, and I cannot afford to be plagued with such doubts. Just...~
= ~(She raises one ebony hand to stroke your cheek while none of the patrons notice.)~
= ~So strange... <CHARNAME>, promise me that you will not allow this place to change you. That is all I ask.~
++ ~I promise.~ + lt18.6
++ ~You're right. I can't let myself be corrupted.~ + lt18.6
++ ~Enough of this. Why don't we get a private room instead?~ + lt18.7
++ ~I'm sorry. I can't promise that.~ + lt18.8
END

IF ~~ lt18.6
SAY ~Thank you.~
IF ~~ + lt18.9
END

IF ~~ lt18.7
SAY ~No, <CHARNAME>... even knowing it were you, I will only regret anything between us in these false forms. But... I wish I could... at least...~
IF ~~ + lt18.9
END

IF ~~ lt18.8
SAY ~I feared that you may say that...~
IF ~~ + lt18.9
END

IF ~~ lt18.9
SAY ~(Sirene leans forward to kiss you, but stops just short of it.)~
= ~*sigh* I have forgotten myself already... 'tis neither the place nor the time. Please, let us be gone from this place as soon as possible.~
IF ~~ EXIT
END
END

// Phaere

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~My companion, Sirene.~ EXTERN UDPHAE01 110
END

APPEND C0SIRE2J

IF ~Global("C0SirenePhaere","GLOBAL",1)~ C0SirenePhaere
SAY ~You... <CHARNAME>, were you...~ [C0BLANK]
IF ~Global("PhaereInnuendo","GLOBAL",2)~ + C0SirenePhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ + C0SirenePhaere2
END

IF ~~ C0SirenePhaere1
SAY ~You were with that... beast of a woman for far too long. I was worried if... if you and her...~
= ~*sigh* No, I will not ask. For better and worse, I think 'tis best if I did not know. If you care for me at all, <CHARNAME>, then do not tell me.~
IF ~~ DO ~SetGlobal("C0SirenePhaere","GLOBAL",2)~ EXIT
END

IF ~~ C0SirenePhaere2
SAY ~You managed to escape the drow's clutches sooner than I thought. I feared that she may have used you for torture, or worse...~
= ~I am glad. Both that you are safe and the knowledge that you are still you. Come, we should go.~
IF ~~ DO ~SetGlobal("C0SirenePhaere","GLOBAL",2)~ EXIT
END
END

// Lovetalk after Bodhi

CHAIN IF ~Global("C0SireneSleepLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt19
~I wonder if you will wish to hear this, my love, but... I have been thinking of my time spent in the Fugue Plane.~ [C0BLANK]
DO ~SetGlobal("C0SireneSleepLovetalk","GLOBAL",2)~
END
++ ~It was a terrible ordeal. Are you all right?~ + lt19.1
++ ~I'm just so glad I didn't lose you.~ + lt19.2
++ ~Could we just forget that horrible moment ever happened?~ + lt19.3

APPEND C0SIRE2J

IF ~~ lt19.1
SAY ~Y-yes, I am now, more or less. At least... I am, physically.~
IF ~~ + lt19.4
END

IF ~~ lt19.2
SAY ~And I am glad for that as well, <CHARNAME>. Leaving you behind was... more painful than anything I have experienced.~
IF ~~ + lt19.4
END

IF ~~ lt19.3
SAY ~I wish I could, <CHARNAME>, but I have learned too much to simply forget now.~
IF ~~ + lt19.4
END

IF ~~ lt19.4
SAY ~The prospect of death... the true, final death, while it has frightened me before, I had always been willing to accept it as part of my duty to Ilmater.~
= ~When I learned that I may have needed to make the ultimate sacrifice, to give my life so that I may not be turned, and become a weapon to be used against you, I... I accepted that as my fate without hesitation.~
++ ~You shouldn't have. I would've fought tooth and nail to save us both.~ + lt19.5
++ ~It broke my heart to watch you die, Sirene. I don't want to ever see that happen again.~ + lt19.6
++ ~It was very brave of you to sacrifice yourself for me.~ + lt19.6
END

IF ~~ lt19.5
SAY ~I know, <CHARNAME>, and I love you all the more for that, but... I could not allow myself to become everything I despised. Even if it meant we would be apart forever.~
IF ~~ + lt19.6
END

IF ~~ lt19.6
SAY ~When I accepted that I would have to die, I was... peaceful. Even in that graveyard, I felt no fear. I had only hope that you would be victorious over our foes, and carried that hope into death.~
= ~But when I saw you, in that dream - or was it truly a dream? I... I found that everything I had convinced myself to believe was only a facade.~
= ~Even as I awaited judgment, my one sole regret was to lose you as I departed for Martyrdom. When you came to me, I... I fell apart. I was reminded of everything I would lose.~
= ~So as I awoke back in my body once more, I... decided that I would not choose death so easily again. I do not want to depart once again with any regrets.~
++ ~I'm glad you decided that.~ + lt19.7
++ ~Promise me, you'll never do something that foolish again.~ + lt19.8
++ ~Come, we have a journey to finish.~ + lt19.7
END

IF ~~ lt19.7
SAY ~(She kisses you suddenly, pressing her body against yours.)~
IF ~Global("C0SireneSlept","GLOBAL",1)~ + lt19.9
IF ~!Global("C0SireneSlept","GLOBAL",1)~ + lt19.10
END

IF ~~ lt19.8
SAY ~I promise, my love. I know that I should have trusted you... and I can only hope that you will forgive me for not doing the same before.~
IF ~~ + lt19.7
END

IF ~~ lt19.9
SAY ~I... I regret how I fled from you last time, the morning after I told you about my true feelings. I promise, I will not run again. Will you... have me, my love?~
++ ~Is... is this really the best time?~ + lt19.11
++ ~Absolutely. Shall we go aside for a while?~ + lt19.12
++ ~No. Not until I'm whole again.~ + lt19.13
END

IF ~~ lt19.10
SAY ~I... I regret the way things ended the night that I told you everything... about my true feelings for you. You refused me then, but I ask now... will you have me?~
++ ~Is... is this really the best time?~ + lt19.11
++ ~Absolutely. Shall we go aside for a while?~ + lt19.12
++ ~No. Not until I'm whole again.~ + lt19.13
++ ~I love you, Sirene, but no. I don't want this to be all we're about.~ + lt19.13
END

IF ~~ lt19.11
SAY ~If you have no wish for it, I will not force you. I just... would not want to fall again before... we shared this time together.~
++ ~Then let's find somewhere private for a while.~ + lt19.12
++ ~Not now, Sirene. Wait until I'm whole again, at least.~ + lt19.13
++ ~I love you, Sirene, but no. I don't want this to be all we're about.~ + lt19.13
END

IF ~~ lt19.12
SAY ~Come with me, my love... let us forget everything else for a while, and make this time about us.~
IF ~!Global("C0SireneSlept","GLOBAL",1)~ DO ~SetGlobal("C0SireneSlept","GLOBAL",1) RestParty()~ EXIT
IF ~Global("C0SireneSlept","GLOBAL",1)~ DO ~RestParty()~ EXIT
END

IF ~~ lt19.13
SAY ~Yes, you are right. I... I do not need this to love you. Let me... at least hold you for a while.~
IF ~~ DO ~SetGlobal("C0SireneSleepLovetalk","GLOBAL",3)~ EXIT
END

END

// Lovetalk after sex

CHAIN IF ~Global("C0SireneAfterSleep","GLOBAL",1)~ THEN C0SIRE2J lt20
~(Sirene lies on the soft grass next to you, dishevelled and breathless. She shifts to your side, taking your hand while holding you close.)~ [C0BLANK]
DO ~SetGlobal("C0SireneAfterSleep","GLOBAL",2)~
= ~Thank you for that, <CHARNAME>... please, stay...~
END
++ ~Did you enjoy that?~ + lt20.1
++ ~If you want, we can stay here forever.~ + lt20.2
++ ~No, I really do need to get up.~ + lt20.3
++ ~I wish I could, but we have things to do. Come on, let's get dressed.~ + lt20.0

APPEND C0SIRE2J

IF ~~ lt20.0
SAY ~Of course... (smile) The memory of your touch shall be enough. Come, my love... 'tis time to rise.~
IF ~~ EXIT
END

IF ~~ lt20.1
SAY ~Aye... more than you can imagine.~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.2
SAY ~(laugh) If only...~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.3
SAY ~(smile) Am I truly that bad?~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.4a
SAY ~'Twas the most amazing feeling I have ever had. You were amazing. I had never thought I would come to love such a thing...~
= ~'Tis another feeling altogether, to be so close to you, to feel you, and...~
IF ~~ + lt20.5
END

IF ~~ lt20.4b
SAY ~'Twas the most amazing feeling I have ever had... I had never thought I would come to love such a thing, and with another woman...~
= ~You are so beautiful, so radiant, so...~
IF ~~ + lt20.5
END

IF ~~ lt20.5
SAY ~(laugh) Am I being overly dramatic? 'Tis a little embarrassing.~
= ~(She turns to her side to face you and lovingly brushes your face while smiling.)~
= ~I love you, <CHARNAME>...~
++ ~I love you too.~ + lt20.6
++ ~We can have another go...~ + lt20.7
++ ~Let's get dressed.~ + lt20.0
END

IF ~~ lt20.6
SAY ~(She responds with several kisses over your chest, rising to your neck and face.)~
IF ~~ + lt20.8
END

IF ~~ lt20.7
SAY ~(laugh) 'Tis a tempting offer, but...~
= ~(She shakes her head.) No, we should not overindulge. We have more important matters at hand.~
IF ~~ + lt20.8
END

IF ~~ lt20.8
SAY ~Come, let us get dressed, my love. Once you are restored, perhaps we can consider what this has meant to us together... but I will treasure this memory forever.~
IF ~~ DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1) RealSetGlobalTimer("C0SireneLoveTimer","GLOBAL",3600)~ EXIT
END
END

// Chapter 5.

CHAIN IF ~Global("C0SireneChapter5","GLOBAL",1)~ THEN C0SIRE2J c5
~The air is so heavy, and the darkness is overwhelming...~ [C0BLANK]
DO ~SetGlobal("C0SireneChapter5","GLOBAL",2)~
= ~I thought the tales were exaggerating, but 'tis every bit as treacherous as they tell. Lead on, <CHARNAME>... we must always be on our guard here.~
EXIT

// Planar Sphere Abyss

APPEND C0SIRE2J

IF ~Global("C0SireneAbyss","GLOBAL",1)~ C0SireneAbyss
SAY ~Gods, this is worse than I could have imagined... I never thought that I would come here, of all places.~ [C0BLANK]
+ ~CheckStatGT(Player1,13,INT)~ + ~What, the Abyss?~ + C0SireneAbyss1
++ ~What do you mean?~ + C0SireneAbyss2
++ ~Uh, yeah. Where are we exactly?~ + C0SireneAbyss2
++ ~Let's just get what we came for and get back into the sphere, then.~ + C0SireneAbyss0
END

IF ~~ C0SireneAbyss0
SAY ~Aye... lead on.~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss1
SAY ~Aye, exactly. I was unsure at first, but with this feeling in my blood... no, I do not doubt it.~
IF ~~ + C0SireneAbyss3
END

IF ~~ C0SireneAbyss2
SAY ~'Tis the Abyss, <CHARNAME>. Or at least, one layer of it. I was unsure at first, but with this feeling in my blood... no, I do not doubt it.~
IF ~~ + C0SireneAbyss3
END

IF ~~ C0SireneAbyss3
SAY ~I may have told you this before, but my fell lineage is said to have originated from the Nine Hells. Just as devils and demons oppose each other, my very presence in this place brings forth a fury, unlike anything I have ever felt before.~
= ~I can suppress it for the brief time we must spend in this place, but... I do not enjoy being here.~
++ ~I'm sorry. We'll be out of here as soon as we can.~ + C0SireneAbyss4
++ ~Would you rather wait in the sphere instead?~ + C0SireneAbyss5
++ ~As long as you don't decide to 'lose it' around me anytime soon.~ + C0SireneAbyss6
++ ~Alright. We'll get what we came for and go back inside as soon as possible.~ + C0SireneAbyss0
END

IF ~~ C0SireneAbyss4
SAY ~There is no need to apologize, <CHARNAME>, but thank you regardless.~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss5
SAY ~No. I would be more uncomfortable leaving you to face the denizens of the Abyss alone. Lead on.~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss6
SAY ~You may jest, <CHARNAME>, but in truth... it may actually happen. At the very least, I may act more wrathful in battle. Lead on.~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

// Temple of Lathander

IF ~Global("C0SireneLathander","GLOBAL",1)~ C0SireneLathander
SAY ~Magnificent... the faithful of Lathander truly have an eye for beauty.~ [C0BLANK]
+ ~Kit(Player1,GODLATHANDER)~ + ~Our religion does encourage creativity, after all.~ + C0SireneLathander1
++ ~It's quite something, I admit.~ + C0SireneLathander2
++ ~Really? ...I don't see it.~ + C0SireneLathander3
++ ~This? This is hideous! The designers' artistic sense is atrocious!~ + C0SireneLathander3
++ ~If you say so.~ + C0SireneLathander0
END

IF ~~ C0SireneLathander0
SAY ~I- I apologize for being distracted. I know we have not come for sightseeing. Please, lead on.~
IF ~~ DO ~SetGlobal("C0SireneLathander","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneLathander1
SAY ~(smile) Truly, I do not think I have ever mentioned how much I admire your faith. Had I been raised amongst your clergy, I think I would have embraced it as much as Ilmater's teachings.~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander2
SAY ~I am happy to know you feel the same. But 'tis more than the beauty that attracts me. I have always admired the beliefs of those who worship the Morninglord. I think if my circumstances were different, I would have embraced it as much as Ilmater's teachings.~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander3
SAY ~Well, erm... to each <PRO_HISHER> own, I suppose.~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander4a
SAY ~'Tis nostalgic, as well. After all, we met outside of a temple of Lathander, did we not? I think that, in a way, 'tis good fortune when my path crosses with that of the Morninglord.~
IF ~~ + C0SireneLathander5
END

IF ~~ C0SireneLathander4b
SAY ~While I travelled the Sword Coast, I crossed the Beregost's temple of Lathander. There was beauty there, but 'twas in its simplicity. This is entirely different. 'Tis as though this temple were made by more than the hands of mortals.~
IF ~~ + C0SireneLathander5
END

IF ~~ C0SireneLathander5
SAY ~But... 'tis more than just the beauty of this temple that fills me with joy.~
= ~Though the faiths of Lathander and Ilmater are different in many ways, their portfolios are closely aligned. While Ilmater governs endurance and perserverance, Lathander brings forth the vitality and renewal that follows. As such, I hope you can understand why I consider the followers of the Morninglord almost to be those of my own faith.~
= ~Oh... I have spoken for too long as is. Forgive me, I did not mean to lecture you. We should carry on.~
IF ~~ DO ~SetGlobal("C0SireneLathander","GLOBAL",2)~ EXIT
END

// Tanner's basement

IF ~Global("C0SireneTanner","GLOBAL",1) Global("EnteredTanner","GLOBAL",1)~ C0SireneTannerBasement
SAY ~Ilmater's mercy, what atrocities have been committed here... these bodies have been defiled beyond restoration. I can only pray they did not suffer before they died.~ [C0BLANK]
= ~Step carefully, <CHARNAME>. I can only imagine what mechanisms the murderer must have set up for us.~
IF ~~ DO ~SetGlobal("C0SireneTanner","GLOBAL",2)~ EXIT
END

// Neb's head

IF ~Global("C0SireneNebHead","GLOBAL",1)~ C0SireneNebHead
SAY ~Despicable wretch... if nothing else, 'tis at least a relief to know that his atrocities are at an end.~ [C0BLANK]
= ~*sigh* We should take the fiend's head to the local authorities. Small comfort for the children, but... t'would be best if the law knew of this.~
IF ~~ DO ~SetGlobal("C0SireneNebHead","GLOBAL",2)~ EXIT
END

// Demogorgon's shrine

IF ~Global("C0SireneDemogorgon","GLOBAL",2)~ C0SireneDemogorgon
SAY ~This... this place emanates evil from every stone, <CHARNAME>. We should not be here.~ [C0BLANK]
++ ~What do you mean?~ DO ~SetGlobal("C0SireneDemogorgon","GLOBAL",3)~ + C0SireneDemogorgon2
++ ~There's something strange about that statue.~ DO ~SetGlobal("C0SireneDemogorgon","GLOBAL",3)~ + C0SireneDemogorgon2
END

IF ~~ C0SireneDemogorgon2
SAY ~I... I can scarcely believe it, but this is a shrine to the Prince of Demons, <CHARNAME>. I cannot imagine why there is such a place here, but...~
= ~It cannot be anything else. I have seen that effigy's likeness once, in a tome within the library of Ilmater's temple. And... my blood is reacting with fear and hatred just by being here.~
= ~We must not remain, <CHARNAME>. I feel an unnatural urge to smash everything in this room, and doing so would only draw the ire of the demon, or that of his servants.~
++ ~Then we will leave immediately.~ + C0SireneDemogorgon3
++ ~Just a moment. I want to look around a bit first.~ + C0SireneDemogorgon4
END

IF ~~ C0SireneDemogorgon3
SAY ~Yes, that would be for the best. Thank you... <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ C0SireneDemogorgon4
SAY ~If you must... though I advise that you avoid the statue at all costs. Even touching it may draw the demon's attention.~
IF ~~ EXIT
END
END

// Given Carsomyr

CHAIN IF WEIGHT #-1 ~Global("C0SireneCarsomyr","GLOBAL",1)~ THEN C0SIRE2J C0SireneCarsomyr
~Wh-what is the meaning of this, <CHARNAME>?~ [C0BLANK]
DO ~SetGlobal("C0SireneCarsomyr","GLOBAL",2)~
END
++ ~Meaning of what? Is there something wrong?~ + C0SireneCarsomyr2
++ ~I'm giving you a sword. Is there a problem?~ + C0SireneCarsomyr2

APPEND C0SIRE2J

IF ~~ C0SireneCarsomyr2
SAY ~<CHARNAME>, you know not what you speak of. This... this blade is a holy avenger! Only the greatest of paladins are ever granted the honor...~
++ ~It is? Er... I didn't know that.~ + C0SireneCarsomyr3
+ ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + ~Well, then it's a perfect match for you.~ + C0SireneCarsomyr4a
+ ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + ~Well, then it's a perfect match for you.~ + C0SireneCarsomyr4b
++ ~Can you wield it or not?~ + C0SireneCarsomyr5
END

IF ~~ C0SireneCarsomyr3
SAY ~You should not speak so lightly of such a thing, <CHARNAME>. Such a blade can only be wielded by the purest of heart. As for whether I could...~
IF ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + C0SireneCarsomyr4a
IF ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + C0SireneCarsomyr4b
END

IF ~~ C0SireneCarsomyr4a
SAY ~No... no, I could not. I do not believe myself worthy.~
IF ~~ + C0SireneCarsomyr6
END

IF ~~ C0SireneCarsomyr4b
SAY ~No... no, I could not. I do not believe myself worthy. If anyone deserves to wield such a blade, it should be you.~
IF ~~ + C0SireneCarsomyr6
END

IF ~~ C0SireneCarsomyr5
SAY ~Well... yes, perhaps I could, but...~
IF ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + C0SireneCarsomyr4a
IF ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + C0SireneCarsomyr4b
END

IF ~~ C0SireneCarsomyr6
SAY ~I do not deserve to wield such a blade, even if I could. My blood is tainted... even to touch it, never mind wield it, puts it ill at ease. 'Tis made for greater hands than mine.~
+ ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + ~You're just as worthy of wielding this blade as I am. Take it.~ + C0SireneCarsomyr7
++ ~I think you're being too hard on yourself. Fiendish blood or no, the sword accepts you. You should wield it with pride.~ + C0SireneCarsomyr7
++ ~I won't force you to use it, if you truly don't want to.~ + C0SireneCarsomyr8
++ ~Your choice.~ + C0SireneCarsomyr8
END

IF ~~ C0SireneCarsomyr7
SAY ~Yes... you are correct, of course. If the blade considers me worthy... then by all rights I should carry it with pride.~
= ~Truth be told, I have always dreamed of wielding such a blade in Ilmater's name, since the day I read its name. But never would I have imagined that my dream would come true... thank you for believing in me, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ C0SireneCarsomyr8
SAY ~*sigh* I cannot be selfish, can I? If the blade considers me worthy, then by all rights I should accept the honor. For now, I will wield the blade, so long as it allows me.~
IF ~~ EXIT
END

// Post-Daeron encounter

IF ~Global("C0SireneDaeron","GLOBAL",2)~ daeron
SAY ~How... how could this have come to pass?~ [C0BLANK]
+ ~Global("C0SireneDaeronExecute","GLOBAL",1)~ + ~You did what you had to, Sirene.~ + daeron1
+ ~Global("C0SireneDaeronKill","GLOBAL",1)~ + ~You did what you had to, Sirene.~ + daeron2
+ ~Global("C0SireneDaeronLeave","GLOBAL",1)~ + ~You did what you had to, Sirene.~ + daeron3
+ ~Global("C0SireneDaeronRedeem","GLOBAL",1)~ + ~You did what you had to, Sirene.~ + daeron4
++ ~Think about it later. Right now, we need to move on.~ + daeron0
END

IF ~~ daeron0
SAY ~This... this has been quite the revelation for me, <CHARNAME>. I... I will have to come to terms with it in time.~
IF ~~ DO ~SetGlobal("C0SireneDaeron","GLOBAL",3)~ EXIT
END

IF ~~ daeron1
SAY ~That... that is not what I mean, <CHARNAME>. This was the right thing to do, I know it. But...~
IF ~~ + daeron5
END

IF ~~ daeron2
SAY ~I... I have just slain my fellow brothers and sisters, when I had sworn to myself never to harm another of my faith. Yet... this was the *right* thing to do?~
IF ~~ + daeron5
END

IF ~~ daeron3
SAY ~I did nothing, <CHARNAME>. Even knowing what Daeron did, I did nothing. I allowed him to leave, to escape from judgment. How could this have been right?~
IF ~~ + daeron5
END

IF ~~ daeron4
SAY ~That is not what I mean, <CHARNAME>. Daeron will face proper judgment for what he has done, but...~
IF ~~ + daeron5
END

IF ~~ daeron5
SAY ~Ilmater *supported* him, <CHARNAME>. He knew everything Daeron was doing, but continued to give him power, continued to make him believe that what he was doing was righteous. Why... why did my lord not stop him? How could he allow this to happen?~
= ~I have never doubted Ilmater in my life, only my own ability to serve him. Yet after what I have seen, I wonder if... if he is all that I believed him to be.~
++ ~Perhaps Ilmater pitied him. Even Daeron believed himself that what he did was right, after all.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + daeron6
++ ~You can't doubt your god, Sirene. Ilmater trusts his followers to do his will, and you must continue, regardless of how others abuse that trust.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",2)~ + daeron7
+ ~!Global("C0SireneDaeronLeave","GLOBAL",1)~ + ~Gods act in strange ways, Sirene. Perhaps you were always meant to be the one to stop him.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + daeron8
++ ~What can I say? Maybe you're right.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + daeron9
++ ~You don't need Ilmater to tell you what's right and what's wrong, Sirene. You can trust yourself to judge that.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-2)~ + daeron10
++ ~Think on it. I'm afraid I can't help you much on this.~ + daeron0
END

IF ~~ daeron6
SAY ~You may be right. Perhaps Ilmater hoped that Daeron would see the truth and repent before things came to this... but if that is so, then he was wrong, was he not?~
IF ~~ + daeron11
END

IF ~~ daeron7
SAY ~Perhaps... perhaps I am wrong to doubt.~
IF ~~ + daeron11
END

IF ~~ daeron8
SAY ~Why? Why would he... require me to do this? Why could he not prevent this with his own guidance?~
IF ~~ + daeron11
END

IF ~~ daeron9
SAY ~I hope I am wrong, <CHARNAME>. By the gods, I truly wish I am wrong.~
IF ~~ + daeron11
END

IF ~~ daeron10
SAY ~I shall... think of that.~
= ~Gods, I cannot believe I am truly thinking of this. 'Twould be a betrayal of everything I have learned...~
IF ~~ + daeron11
END

IF ~~ daeron11
SAY ~*sigh* This is my burden to bear, <CHARNAME>, not yours. I am sorry for taking up so much of your time. We should move on.~
IF ~~ DO ~SetGlobal("C0SireneDaeron","GLOBAL",3)~ EXIT
END
// Messenger

IF ~Global("C0SireneMessenger","GLOBAL",2)~ C0SireneLetter
SAY ~(Sirene is reading the letter intently; her expression suddenly darkens)~ [C0BLANK]
= ~'...If you wish to know the truth of all your sins, meet me at the location below'... 'T.D.T'. What could this possibly mean?~
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~Is this from that conjurer we encountered during the journey to Dragonspear Castle?~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
++ ~Do you know who wrote this letter?~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
++ ~We have no time for distractions, Sirene.~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
END

IF ~~ C0SireneLetter1
SAY ~I cannot be certain... but this letter mentions the encounter at Dead Man's Pass. It can only be...~
= ~The one who wrote this letter... I know not who he is, but from what little I learned from our previous encounter, he knows about my past. Before he attempted to kill me, he called me 'kinslayer'.~
= ~This will likely be dangerous, but... I wish to speak with this 'T.D.T'. Though with such hostility in his message, I do not doubt there will be violence.~
++ ~I'm not sure that's a good idea. This reeks of a trap.~ + C0SireneLetter2
++ ~Well, what are we waiting for? Let's go find him.~ + C0SireneLetter2
++ ~We have greater priorities, Sirene. I can't waste time chasing after strangers.~ + C0SireneLetter2
END

IF ~~ C0SireneLetter2
SAY ~I... cannot ask for your aid in this, <CHARNAME>. This man is powerful, and I cannot allow you to risk your life for my sake. The matter of your soul is still my highest priority.~
= ~Though... I need to know what this man wishes of me, and what he knows of my past. If... if you would allow it, we can reach the location drawn on this letter via the City Gates. But I will not force you to do so.~
= ~The decision is ultimately yours, <CHARNAME>. I do not doubt that this will be dangerous, but... I would not want such an opportunity to simply pass by.~
IF ~~ EXIT
END

// T'samon's Camp

IF ~Global("C0SIR1SireneArea","C0SIR1",1)~ C0SireneArea
SAY ~I believe this is the place. 'Tis very ominous... look at the ground, <CHARNAME>. It looks as though it has been poisoned. There is also a strange presence, as though there are hidden enemies around every corner.~ [C0BLANK]
= ~I suggest we prepare for battle just in case. This place makes me feel uneasy, to say the least.~
IF ~~ DO ~SetGlobal("C0SIR1SireneArea","C0SIR1",2)~ EXIT
END

// Post-encounter

IF ~Global("C0SirenePostEncounter","GLOBAL",1)~ C0SirenePostEncounter
SAY ~...~ [C0BLANK]
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SirenePostEncounter1
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SirenePostEncounter2
END

IF ~~ C0SirenePostEncounter1
SAY ~He is gone. I wonder if I will ever see him again.~
++ ~Are you alright?~ + C0SirenePostEncounter3
++ ~If so, I hope he returns a changed man.~ + C0SirenePostEncounter4
++ ~Would you want that?~ + C0SirenePostEncounter5
END

IF ~~ C0SirenePostEncounter2
SAY ~'Tis done. Of all those I have been forced to kill, this was... by far the most difficult. It has cost me much.~
++ ~Are you alright?~ + C0SirenePostEncounter6
++ ~You weren't forced to kill him. You chose it yourself.~ + C0SirenePostEncounter7
++ ~Perhaps, but you are free now, are you not?.~ + C0SirenePostEncounter8
END

IF ~~ C0SirenePostEncounter3
SAY ~No, not right now, but... I think I will be, in time.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter4
SAY ~Aye... I hope so as well.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter5
SAY ~I... am not sure. Perhaps, one day.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter6
SAY ~No. I feel... angry. Almost betrayed.~
= ~Yet, strangely, I also feel relieved, as though a great burden has left me. 'Tis a difficult feeling to describe.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter7
SAY ~Aye, I did. But whether 'twas right or wrong, I can only decide for myself. I have lost Ilmater's favor with this action, and his guidance with it.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter8
SAY ~Free? Aye... I suppose that I am.~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter9
SAY ~I... I require some time to think, <CHARNAME>. I need to... reflect on how this has changed me. Perhaps we can talk later.~
IF ~~ DO ~SetGlobal("C0SirenePostEncounter","GLOBAL",2)~ EXIT
END

// New Power

IF ~Global("C0SireneNewPowers","GLOBAL",2)~ C0SireneNewPowers
SAY ~<CHARNAME>, since our encounter with... my brother, T'samon, I have taken time to reflect upon my actions, and there have been some... developments in my power.~ [C0BLANK]
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SireneNewPowers1
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SireneNewPowers2
END

IF ~~ C0SireneNewPowers1
SAY ~I have prayed to Ilmater for guidance... and I believe he has shown his favor towards my decision of mercy by granting me a special boon.~
= ~My healing touch has become stronger, and I can now purge others of their ailments of both body and mind and protect them from such afflictions for a short while afterwards.~
= ~It may take some time to become accustomed to this new power... I doubt I could draw upon it more than once a day. But I think 'twill be a valuable asset to our cause.~
IF ~~ DO ~ApplySpellRES("C0TITLE2",Myself) AddSpecialAbility("C0ILMS4") SetGlobal("C0SireneNewPowers","GLOBAL",3)~ EXIT
END

IF ~~ C0SireneNewPowers2
SAY ~Since I relinquished the boons granted to me by Ilmater, I have... made efforts to relearn the powers from my heritage, so that I will not become a burden to you.~
= ~It has been many years since I have attempted using my tiefling powers, and they are weaker than I remember them, but I still have enough control to use them as I please to a limited extent.~
= ~My infernal blood allows me to unleash flames from my hands, conceal myself with a distorted illusion and even strike others blind with a glance... all vicious powers, which I had once sworn a vow never to use. But... I am not bound by that anymore, and without my former powers, I fear I will need them.~
IF ~~ DO ~AddSpecialAbility("C0SBLIND")
AddSpecialAbility("C0SBURN")
AddSpecialAbility("C0SBLUR") SetGlobal("C0SireneNewPowers","GLOBAL",3)~ EXIT
END

// Chapter 6 - Pre-Bodhi talk

IF ~Global("C0SireneC6BodhiTalk","GLOBAL",1)~ C0SireneC6Bodhi
SAY ~Wait, <CHARNAME>... I need to speak with you.~ [C0BLANK]
++ ~I'm listening, what is it?~ DO ~SetGlobal("C0SireneC6BodhiTalk","GLOBAL",2)~ + C0SireneC6Bodhi1
++ ~Not right now. We've got a task to complete.~ DO ~SetGlobal("C0SireneC6BodhiTalk","GLOBAL",2)~ + C0SireneC6Bodhi2
END

IF ~~ C0SireneC6Bodhi1
SAY ~We are soon to face the first of our two main adversaries, but... there is something you must know before we go on.~
= ~I had... a vision, not long after we saw the light once more. I think... 'twas a warning. A warning from Ilmater.~
++ ~What was it?~ + C0SireneC6Bodhi3
++ ~Are you all right?~ + C0SireneC6Bodhi4
++ ~We have no time to listen to your dreams, <CHARNAME>.~ + C0SireneC6Bodhi5
END

IF ~~ C0SireneC6Bodhi2
SAY ~I know. That I why I must speak with you now. Please listen to me, <CHARNAME>.~
IF ~~ + C0SireneC6Bodhi1
END

IF ~~ C0SireneC6Bodhi3
SAY ~In my vision, I saw... death. My death.~
++ ~What?!~ + C0SireneC6Bodhi6
++ ~Go on...~ + C0SireneC6Bodhi6
END

IF ~~ C0SireneC6Bodhi4
SAY ~I... I will be, in due time. I think...~
IF ~~ + C0SireneC6Bodhi3
END

IF ~~ C0SireneC6Bodhi5
SAY ~'Twas no mere dream, <CHARNAME>. This concerns us both. Please, just listen to me!~
IF ~~ + C0SireneC6Bodhi3
END

IF ~~ C0SireneC6Bodhi6
SAY ~I... I was lying on cold stone, my vision blurred. You were not there... but I was not alone. That vampire... Bodhi was with me, her lips at my throat.~
= ~I felt pain... unbearable pain as I felt her fangs. Then... nothing. No pain, nor warmth... I felt evil within me, manifesting into an inhuman hunger... threatening to tear me apart from within if I did not sate it.~
= ~Then... I saw you, <CHARNAME>, and all I felt was that hunger. I could not stop myself from leaping towards you and...~
= ~(She lets out a pained groan and grasps her forehead.)~
++ ~So... you saw her turning you into a vampire?~ + C0SireneC6Bodhi7
++ ~But... but that's nothing more than a dream, right?~ + C0SireneC6Bodhi8
++ ~What could it possibly mean?~ + C0SireneC6Bodhi7
++ ~(Embrace her)~ + C0SireneC6Bodhi9
END

IF ~~ C0SireneC6Bodhi7
SAY ~It... it must be a warning from Ilmater. I can see no other possibility...~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi8
SAY ~I... I do not think so, <CHARNAME>. It must have been a glimpse into the future.~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi9
SAY ~<CHARNAME>... (she clings to you desperately, as though afraid you will disappear if she lets go)~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi10
SAY ~I... I will not become a vampire, <CHARNAME>. I will not allow that... that monster to corrupt me, to make me betray everything I have lived for. And I cannot hurt you... ever.~
++ ~I understand. Stay behind, and I will face her alone.~ + C0SireneC6Bodhi11
++ ~What will you do, then?~ + C0SireneC6Bodhi11
END

IF ~~ C0SireneC6Bodhi11
SAY ~If my presence means I would be turned against you and harm you, then... I should not come with you. But I cannot bear the thought of allowing you to face Bodhi alone...~
= ~No. There is only one choice. If Bodhi attempts to take me, then... you must kill me, <CHARNAME>. I would sooner die by your hand than become corrupted into a tool of evil.~
++ ~No! You cannot demand this of me!~ + C0SireneC6Bodhi12
++ ~Do you have a clue what you're saying, Sirene? I could never kill you.~ + C0SireneC6Bodhi12
++ ~If that is what must be done, then so be it. I promise I will do as you ask.~ + C0SireneC6Bodhi13
END

IF ~~ C0SireneC6Bodhi12
SAY ~I... I know 'tis difficult. I hope it will not come to such an extreme, either... but if it is truly what happens, then... I would sooner choose death.~
= ~You must understand, <CHARNAME>. Undeath is anathema to a paladin. If I were to fall to it, I fear I will never redeem myself in Ilmater's eyes. And... if I were to slay you as a result, then... I could not continue on.~
= ~I can only trust you to spare me from such a fate, <CHARNAME>. That is why... why I want your promise, that you will kill me before such a thing comes to pass.~
++ ~I... I promise.~ + C0SireneC6Bodhi13
++ ~If I have no other choice. But it won't come to that, Sirene.~ + C0SireneC6Bodhi13
++ ~No, I can't promise such a thing. We'll make it through this, I know it. Don't make me do this to you.~ + C0SireneC6Bodhi14
END

IF ~~ C0SireneC6Bodhi13
SAY ~Thank you, <CHARNAME>...~
= ~I... I can only hope that I am mistaken. But if I am not... then your promise means I can face death without any fear.~
IF ~~ EXIT
END

IF ~~ C0SireneC6Bodhi14
SAY ~<CHARNAME>...~
= ~Perhaps I am worried about nothing. I can only hope I am mistaken, but if my fears come true, then... I can only do what is necessary. I will not harm you, <CHARNAME>, whatever that may cost me.~
IF ~~ EXIT
END

// Chapter 5 + 7 PID

IF ~IsGabber(Player1) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ C0SirenePIDUnderdark
SAY ~No, not here, <CHARNAME>. Danger is around every corner, and we must stay alert.~ [C0BLANK]
IF ~~ EXIT
END

IF ~IsGabber(Player1) AreaCheck("AR2900")~ C0SirenePIDHell
SAY ~<CHARNAME>... there are greater matters at hand. We can talk once this is over.~ [C0BLANK]
IF ~~ EXIT
END

// Romance conflict

IF ~Global("C0SireneRomanceConflict","GLOBAL",1) RealGlobalTimerExpired("C0SireneRomanceConflictTimer","GLOBAL")~ C0SireneConflict
SAY ~<CHARNAME>, may we talk a moment? 'Tis of an important matter to me.~ [C0BLANK]
++ ~Of course. What is it?~ + C0SireneConflict1
++ ~I'm afraid I don't have the time right now.~ + C0SireneConflict0
END

IF ~~ C0SireneConflict0
SAY ~I... I see. Forgive me, then. I will not bother you again.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict1
SAY ~I... I know we have talked often, and I do feel that we have become close. However, I feel like 'tis time to ask if... if you have affections for someone else. Within our group, in particular.~
= ~It may not be my place to ask, but... at the same time, I hope you will be truthful. I do not wish to intrude, if you truly have strong feelings for another.~
++ ~If you're forcing me to make a choice, then I'll admit it- I'd choose you. Whether it goes any further than that is up to you.~ + C0SireneConflict8
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~In that case, I'll be honest. I may truly have feelings for Aerie.~ + C0SireneConflict2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~My thoughts about Jaheira are... complicated. I may be seeing her as more than just a guardian.~ + C0SireneConflict3
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + ~Anomen is rough around the edges, but I think it may work out.~ + C0SireneConflict4
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~Viconia may in fact have captured my heart.~ + C0SireneConflict5
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + ~Rasaad is a good man. I do wish to become closer with him.~ + C0SireneConflict6
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~I'm not entirely sure how well it'll, but I do like Neera, even with the danger involved.~ + C0SireneConflict7
++ ~For another? No... I much prefer talking to you, in truth.~ + C0SireneConflict8
++ ~Not in particular. I greatly value all our allies, but I'm not interested in starting a relationship.~ + C0SireneConflict9
++ ~What are you implying, Sirene? I don't have any special feelings for you, or anyone in particular.~ + C0SireneConflict9
END

IF ~~ C0SireneConflict2
SAY ~Ah... I should have realized sooner. Aerie is close to my own heart as well... I hope you will take good care of her, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict3
SAY ~I understand, <CHARNAME>. I do not think such feelings are so wrong, in truth.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict4
SAY ~Aye, he is not such a bad person, despite his flaws. Perhaps you may bring out the good in him.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict5
SAY ~If that is so, then I pray you know what you are doing. I do not think she is incapable of kindness, but... take care not to let her pull you into the darkness.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict6
SAY ~In that case, I only ask that you treat him well, <CHARNAME>. He has suffered much, and I only wish for some happiness in his life once more.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict7
SAY ~(laugh) I think the risk may be worth it, <CHARNAME>. She truly is a kind person, regardless of how unpredictable she may be.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict8
SAY ~Oh... I am flattered, truly. I hope that we may... continue as we were, then.~
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict9
SAY ~I see. That is... disappointing, I suppose. I thought that perhaps... no, never mind. That is your decision to make.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END
END

// Low Reputation

CHAIN IF WEIGHT #-1 ~Global("C0SireneLowRep","GLOBAL",1)~ THEN C0SIRE2J C0SireneRep01
~<CHARNAME>, I feel as though you are taking us down the wrong path.~ [C0BLANK]
DO ~SetGlobal("C0SireneLowRep","GLOBAL",2)~
= ~I shall withhold judgment for now, but I suggest you make a turn for the better.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneRepBreak","GLOBAL",1)~ THEN C0SIRE2J C0SireneRep02
~So, you have no intention of changing your course. In that case, I will take my leave. May Ilmater show mercy upon your soul, for if we meet again, I will have none.~ [C0BLANK]
DO ~SetGlobal("C0SireneRepBreak","GLOBAL",2) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// Sirene/Viconia 2

CHAIN
IF ~Global("C0SireneViconiaRest","GLOBAL",2)~ THEN C0SIRE2J C0SireneViconia2
~Viconia, you have not taken your share of the meal yet. Here it is.~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaRest","GLOBAL",3)
SetGlobal("C0SireneViconia2","GLOBAL",2)~
== BVICONI ~What is this slop, jalil? Do you truly expect me to eat this?~
== C0SIRE2J ~'Tis the remainder of the yesterday's stew, Viconia. You seemed to appreciate it then.~
== BVICONI ~Clearly it has not aged well. The very scent offends me. Take it away.~
== C0SIRE2J ~If you truly hate me so much, Viconia, then simply say so. There is no need to taunt me like this.~
== BVICONI ~Oh? Am I truly so transparent? Clearly I must learn to mask my feelings more carefully.~
== C0SIRE2J ~Take the food or leave it, Viconia. I am simply looking out for you.~
== BVICONI ~Is this your feeble attempt at showing... what would you surfacers call it? Pity? Compassion? Pah. To drow, such things may as well be the same. Weak virtues.~
== BVICONI ~You claim you are 'looking out' for me? You are the one mocking me, elg'caress. Your actions are naught but pity. I spit upon your pity, and if you expect gratitude, then you will have none.~
== C0SIRE2J ~...~
== BVICONI ~Hmm... the fury in your eyes burn like flames, elg'caress. Are you about to burn yourself from within? That would be most amusing.~
== C0SIRE2J ~*smash*~
== BVICONI ~Oh my. Such a waste. I did not expect such childlike tantrums from you.~
== C0SIRE2J ~I have had enough of this. Starve to death, Viconia, if that is what you'd prefer. I will remember to do you no more favors.~
EXIT

// FLIRTS
APPEND C0SIRE2J

IF ~Global("C0SireneFlirt","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",1)~ flirt1
SAY ~(Sirene has been watching you closely as of late.)~ [C0BLANK]
IF ~RandomNum(15,1) Global("C0SirenePartyBG1","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a1
IF ~RandomNum(15,2)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a2
IF ~RandomNum(15,3)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a3
IF ~RandomNum(15,4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a4
IF ~RandomNum(15,5)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a5
IF ~RandomNum(15,6)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a6
IF ~RandomNum(15,7)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a7
IF ~RandomNum(15,8)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a8
IF ~RandomNum(15,9) AreaType(OUTDOOR) TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a13
IF ~RandomNum(15,9) !AreaType(OUTDOOR) !TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a10
IF ~RandomNum(15,10) AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a14
IF ~RandomNum(15,10) !AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a11
IF ~RandomNum(15,11) CheckStatGT(Player1,5,FATIGUE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a15
IF ~RandomNum(15,11) !CheckStatGT(Player1,5,FATIGUE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a12
IF ~RandomNum(15,12) AreaType(OUTDOOR) TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a17
IF ~RandomNum(15,12) AreaType(OUTDOOR) TimeOfDay(NIGHT)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a18
IF ~RandomNum(15,13) AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a19
IF ~RandomNum(15,13) !AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a9
IF ~RandomNum(15,14) ReputationGT(Player1,18)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a20
IF ~RandomNum(15,14) ReputationLT(Player1,19)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a21
IF ~RandomNum(15,15)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a22
IF ~HPPercentLT(Player1,50) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a16
END

IF ~~ a1
SAY ~Do you remember Beregost, <CHARNAME>? The day we first met?~
++ ~Of course I do.~ + a1.1a
++ ~Not particularly.~ + a1.1b
END

IF ~~ a1.1a
SAY ~(smile) 'Twas a blessing, I think, to have had the chance to travel at your side.~
IF ~~ EXIT
END

IF ~~ a1.1b
SAY ~I remember it as though it were yesterday...~
IF ~~ + a1.1a
END

IF ~~ a2
SAY ~(She brushes against you, slipping something small and delicate into your hand. You look down to see a tiny white blossom. When you look back at Sirene, she has turned away from you and is appearing to keep her distance.)~
IF ~~ EXIT
END

IF ~~ a3
SAY ~(She approaches and strokes your arm, smiling gently.) How are you, my friend?~
IF ~~ EXIT
END

IF ~~ a4
SAY ~(She is loosening her armor before she notices you and shifts away with embarrassment to avoid eye contact.)~
IF ~~ EXIT
END

IF ~~ a5
SAY ~I had a dream last night, my friend, of a <PRO_MANWOMAN>... I could not see <PRO_HISHER> face, but I felt I still knew <PRO_HIMHER>...~
= ~I believe... 'twas you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ a6
SAY ~(She is nibbling on something as she realizes you are watching her.)~
= ~Do you like chocolate, <CHARNAME>? (laugh) I must admit, 'tis a childish thing, but I am quite partial to it.~
IF ~~ EXIT
END

IF ~~ a7
SAY ~(She walks up and kisses your cheek, and as though just realizing what she did, flushes.)~
= ~I-I do not know what came over me, <CHARNAME>...~
++ ~It's okay.~ + a7.1
++ ~I liked it. Thank you.~ + a7.1
++ ~That was nice, but I've got another one that feels lonely...~ + a7.2
++ ~Don't do it again.~ + a7.0
END

IF ~~ a7.0
SAY ~I... I understand.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ a7.1
SAY ~(She looks relieved that you were receptive to her advances.)~
= ~I... I might do that again, another time, if you do not mind.~
IF ~~ EXIT
END

IF ~~ a7.2
SAY ~(She laughs and kisses your other cheek.)~
= ~Now, that is enough. We have important things to do... right?~
IF ~~ EXIT
END

IF ~~ a8
SAY ~(She approaches with a wet cloth and tenderly wipes the sweat off your face.)~
IF ~~ EXIT
END

IF ~~ a9
SAY ~(She looks at you silently, observing every detail on your face before raising a hand to brush off a fallen eyelash from your cheek.)~
IF ~~ EXIT
END

IF ~~ a10
SAY ~(She sidles to your side bashfully and walks with you for a while.)~
IF ~~ EXIT
END

IF ~~ a11
SAY ~(She takes your hand and links her fingers with yours, flashing a brief smile your way as you walk side by side.)~
IF ~~ EXIT
END

IF ~~ a12
SAY ~(She is scratching at an intimate gap on her breastplate but stops when she notices you.)~
++ ~I could help you with that.~ + a12.1
++ ~What are you doing, Sirene?~ + a12.2
++ ~(Look away.)~ + a12.3
END

IF ~~ a12.1
SAY ~N-no! Er, I mean... 'twould be most inappropriate, I think... (blush)~
IF ~~ EXIT
END

IF ~~ a12.2
SAY ~N-nothing...~
IF ~~ EXIT
END

IF ~~ a12.3
SAY ~(You think you could hear a sigh of relief, and she has likely resumed to trying to relieve an unreachable itch.)~
IF ~~ EXIT
END

IF ~~ a13
SAY ~(She has pulled down her hood and is running her fingers through her hair, and you watch her shoulder-length flaming locks dance in the sunlight.)~
IF ~~ EXIT
END

IF ~~ a14
SAY ~(Despite her heavy armor, she nimbly steps past the fallen twigs, roots and pools of mud on the forest path with grace.)~
IF ~~ EXIT
END

IF ~~ a15
SAY ~You look tired, <CHARNAME>. Perhaps 'twould be best to make camp soon, for your sake.~
IF ~~ EXIT
END

IF ~~ a16
SAY ~(There is an expression of horror and concern on her face as she observes your wounds.)~
= ~Do not move, <CHARNAME>. (She whispers a blessing with her hands touching your injuries.)~
IF ~~ DO ~ForceSpell(Player1,PALADIN_LAY_ON_HANDS)~ EXIT
END

IF ~~ a17
SAY ~(The day is hot and dry, and Sirene is indulging in her waterskin. She raises it overhead and allows water to flow across her face and into her armor.)~
= ~(She realizes that you are watching and stops quickly, blushing.)~
IF ~~ EXIT
END

IF ~~ a18
SAY ~(Her eyes, normally a light chartreuse, are glowing with an orange tint in the darkness. Even so, they only portray warmth and care when looking at you.)~
IF ~~ EXIT
END

IF ~~ a19
SAY ~(She has stopped to wash her face in a nearby stream, and raises her head to look at you. The glistening drops of water dotting her face and hair are oddly appealing.)~
IF ~~ EXIT
END

IF ~~ a20
SAY ~You are such a kind and virtuous person, <CHARNAME>... I cannot deny I am envious. But my admiration for you is greater than any other feelings I hold.~
IF ~~ EXIT
END

IF ~~ a21
SAY ~(She observes you quietly, biting on her lip as though words are trying to escape from her, yet she seems uncomfortable with letting them out.)~
IF ~~ EXIT
END

IF ~~ a22
SAY ~(She is quietly humming a tune you are not familiar with, and when she looks at you, she seems to continue with more enthusiasm.)~
IF ~~ EXIT
END

// Flirts for Branwen, C0SireneRomanceActive=2

IF ~Global("C0SireneFlirt","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ flirt2
SAY ~(Sirene is watching you with newfound confidence, her eyes full of warmth.)~ [C0BLANK]
IF ~RandomNum(17,1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b1
IF ~RandomNum(17,2) !Race(Player1,GNOME)
!Race(Player1,DWARF)
!Race(Player1,HALFLING)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b2
IF ~RandomNum(17,3)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b3
IF ~RandomNum(17,4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b4
IF ~RandomNum(17,5)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b5
IF ~RandomNum(17,6) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b6
IF ~RandomNum(17,6) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b6a
IF ~RandomNum(17,7) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b7
IF ~RandomNum(17,7) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b7a
IF ~RandomNum(17,8) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b8
IF ~RandomNum(17,8) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b8a
IF ~RandomNum(17,9) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b9
IF ~RandomNum(17,9) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b9a
IF ~RandomNum(17,10) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b10
IF ~RandomNum(17,10) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b10a
IF ~RandomNum(17,11)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b11
IF ~RandomNum(17,12)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b12
IF ~RandomNum(17,13)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b13
IF ~RandomNum(17,14)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b14
IF ~RandomNum(17,14) Global("C0SireneVampire","GLOBAL",4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b15
IF ~RandomNum(17,15) Gender(Player1,MALE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b17
IF ~RandomNum(17,15) Gender(Player1,FEMALE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b18
IF ~RandomNum(17,16)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b19
IF ~RandomNum(17,17)
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR0406")
!AreaCheck("AR0509")
!AreaCheck("AR0513")
!AreaCheck("AR0522")
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR1105")
!AreaCheck("AR1602")
!AreaCheck("AR2010")~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b20
IF ~RandomNum(17,17) OR(11)
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0513")
AreaCheck("AR0522")
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR1105")
AreaCheck("AR1602")
AreaCheck("AR2010")~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b21
IF ~HPPercentLT(Player1,50) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b16
END

IF ~~ b1
SAY ~(She walks close to you and kisses you fully on the lips.)~
IF ~~ EXIT
END

IF ~~ b2
SAY ~(She presses herself against you, flinging her arms limply over your shoulders, relying on your support to keep her standing.)~
IF ~~ EXIT
END

IF ~~ b3
SAY ~(She brushes herself across you as she walks by, and you catch her strange but alluring scent.)~
IF ~~ EXIT
END

IF ~~ b4
SAY ~<CHARNAME>... (Your name almost seems to linger on her lips, and her soft voice remains in your mind long after the word was spoken.)~
IF ~~ EXIT
END

IF ~~ b5
SAY ~I love you, <CHARNAME>... 'tis becoming easier to say each time I try.~
IF ~~ EXIT
END

IF ~~ b6
SAY ~(She strokes your thigh with immodest intentions.) I hope you know what I am getting at, <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ b6a
SAY ~(She looks at you wistfully, regretfully, raising her hand to touch your face... but stops just before she makes contact.)~
IF ~~ EXIT
END

IF ~~ b7
SAY ~<CHARNAME>... I cannot hold it in any longer. I need you. Tonight.~
IF ~~ EXIT
END

IF ~~ b7a
SAY ~(Her lips quiver as she makes eye contact with you, forming a nervous half-smile.)~
IF ~~ EXIT
END

IF ~~ b8
SAY ~(Having seen Sirene's body without the usual constrictions of her armor, you only just notice how different she looks on the road.)~
IF ~~ EXIT
END

IF ~~ b8a
SAY ~(She is watching you intently, and you feel slightly exposed under her gaze.)~
IF ~~ EXIT
END

IF ~~ b9
SAY ~(She takes you with surprising confidence and showers you with kisses from face to neck.)~
= ~You can look forward to getting more later...~
IF ~~ EXIT
END

IF ~~ b9a
SAY ~I hope you do not resent me for... my actions that night, <CHARNAME>. Perhaps you were right to keep me away.~
IF ~~ EXIT
END

IF ~~ b10
SAY ~(She is licking her lips sensually, an unusual act for her usually modest self. You have noticed her doing similar things in your sight ever since consummating your love with her.)~
IF ~~ EXIT
END

IF ~~ b10a
SAY ~You have taught me much of love and desire since we met, <CHARNAME>. I... have learned to appreciate how I feel for you.~
IF ~~ EXIT
END

IF ~~ b11
SAY ~Close your eyes...~ 
= ~(She slips a small piece of chocolate into your mouth, and you enjoy the sweetness of the sudden treat.)~
IF ~~ EXIT
END

IF ~~ b12
SAY ~(She darts forward and nibbles your nose affectionately, giggling with embarrassment afterwards.)~
IF ~~ EXIT
END

IF ~~ b13
SAY ~(She presses her forehead against yours, looking directly into your eyes. It seems a long moment passes before she lets you go.)~
IF ~~ EXIT
END

IF ~~ b14
SAY ~(She embraces you lovingly, nipping your ear with her pointed teeth gently enough to not cause pain.)~
IF ~~ EXIT
END

IF ~~ b15
SAY ~I... I have never known fear like when I thought I would lose you forever, there at the tombs. I am so glad that we were not parted...~
IF ~~ EXIT
END

IF ~~ b16
SAY ~<CHARNAME>... I do not like to see you hurt. Come to me...~
= ~(She touches your wounds and mutters prayers under her breath. You feel your wounds closing.)~
IF ~~ DO ~ForceSpell(Player1,PALADIN_LAY_ON_HANDS)~ EXIT
END

IF ~~ b17
SAY ~(She touches you, exploring your jawline before running her fingers down your chest.)~
IF ~~ EXIT
END

IF ~~ b18
SAY ~(She touches you, exploring your jawline before moving down to the curves of your chest.)~
IF ~~ EXIT
END

IF ~~ b19
SAY ~(She hands you a cloth bag full of fat red dates.) Try them, <CHARNAME>. They are delicious.~
IF ~~ EXIT
END

IF ~~ b20
SAY ~(She wraps her arms around your neck and whispers sweet nothings into your ear, while nipping at it gently.)~
IF ~~ EXIT
END

IF ~~ b21
SAY ~(In the relative safety and comfort of the inn, Sirene sits at your side and leans on your shoulder, eyes lidded. You are unsure of whether she has dozed off.)~
= ~(The image of her smiling with her eyes closed, resting at your side makes her look extremely innocent and endearing.)~
IF ~~ EXIT
END

IF ~IsGabber(Player1) !Global("C0SireneRomanceActive","Global",2)~ C0SirenePID    			
SAY ~You have need of me, <CHARNAME>?~ [C0SIR015]
+ ~Global("C0SireneBook","GLOBAL",0) PartyHasItem("c0sbook")~ + ~How's the book?~ + book
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirt
+ ~RandomNum(4,1)~ + ~How are you doing?~ + p1.1
+ ~RandomNum(4,2)~ + ~How are you doing?~ + p1.2
+ ~RandomNum(4,3)~ + ~How are you doing?~ + p1.3
+ ~RandomNum(4,4)~ + ~How are you doing?~ + p1.4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + ~What do you think of our quest?~ + chapter2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of our quest?~ + chapter3a
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of our quest?~ + chapter3b
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~What do you think of our quest?~ + chapter4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + ~What do you think of our quest?~ + chapter6
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~What do you think of our quest?~ + chapter7
++ ~May I ask you a question?~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~I'd rather you not talk with me for a while, Sirene.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~I miss talking to you. You can chat me up whenever you wish.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~I think there's something wrong with your voice.~ + stringfix
++ ~No, never mind.~ EXIT
END

IF ~IsGabber(Player1) Global("C0SireneRomanceActive","Global",2)~ C0SireneRomancePID    			
SAY ~(Sirene smiles as you approach.) I am by your side.~ [C0SIR016]
+ ~Global("C0SireneBook","GLOBAL",0) PartyHasItem("c0sbook")~ + ~How's the book?~ + book
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirt
+ ~RandomNum(4,1)~ + ~How are you doing?~ + p1.1
+ ~RandomNum(4,2)~ + ~How are you doing?~ + p1.2
+ ~RandomNum(4,3)~ + ~How are you doing?~ + p1.3
+ ~RandomNum(4,4)~ + ~How are you doing?~ + p1.4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + ~What do you think of our quest?~ + chapter2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of our quest?~ + chapter3a
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of our quest?~ + chapter3b
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~What do you think of our quest?~ + chapter4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + ~What do you think of our quest?~ + chapter6
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~What do you think of our quest?~ + chapter7
++ ~May I ask you a question?~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~I'd rather you not talk with me for a while, Sirene.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~I miss talking to you. You can chat me up whenever you wish.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~I think there's something wrong with your voice.~ + stringfix
++ ~Never mind.~ EXIT
END

// Flirt Menu

IF ~~ flirt
SAY ~Yes?~ [C0SIR017]
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
Global("C0SireneSleepLovetalk","GLOBAL",2) Global("C0SireneSlept","GLOBAL",0)
OR(11)
AreaType(OUTDOOR)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~Sirene, I'm ready. Stay with me tonight.~ DO ~SetGlobal("C0SireneSlept","GLOBAL",1)~ + sleepwithme
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Kiss her)~ + r1.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Kiss her)~ + r1.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Kiss her)~ + r1.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Kiss her)~ + r1.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Caress her face)~ + r2.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Caress her face)~ + r2.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Caress her face)~ + r2.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Caress her face)~ + r2.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Take her hand)~ + r3.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Take her hand)~ + r3.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Take her hand)~ + r3.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Take her hand)~ + r3.4
+ ~RandomNum(4,1)~ + ~(Stroke her hair)~ + f1.1
+ ~RandomNum(4,2)~ + ~(Stroke her hair)~ + f1.2
+ ~RandomNum(4,3)~ + ~(Stroke her hair)~ + f1.3
+ ~RandomNum(4,4)~ + ~(Stroke her hair)~ + f1.4
+ ~RandomNum(4,1)~ + ~(Kiss her cheek)~ + f2.1
+ ~RandomNum(4,2)~ + ~(Kiss her cheek)~ + f2.2
+ ~RandomNum(4,3)~ + ~(Kiss her cheek)~ + f2.3
+ ~RandomNum(4,4)~ + ~(Kiss her cheek)~ + f2.4
+ ~RandomNum(4,1)~ + ~You look beautiful.~ + f3.1
+ ~RandomNum(4,2)~ + ~You look beautiful.~ + f3.2
+ ~RandomNum(4,3)~ + ~You look beautiful.~ + f3.3
+ ~RandomNum(4,4) Gender(Player1,FEMALE)~ + ~You look beautiful.~ + f3.4
+ ~RandomNum(4,4) Gender(Player1,MALE)~ + ~You look beautiful.~ + f3.5
+ ~RandomNum(4,1)~ + ~(Hug her)~ + f4.1
+ ~RandomNum(4,2)~ + ~(Hug her)~ + f4.2
+ ~RandomNum(4,3)~ + ~(Hug her)~ + f4.3
+ ~RandomNum(4,4) Gender(Player1,FEMALE)~ + ~(Hug her)~ + f4.4a
+ ~RandomNum(4,4) Gender(Player1,MALE)~ + ~(Hug her)~ + f4.4b
+ ~RandomNum(4,1)~ + ~(Massage her shoulders)~ + f5.1
+ ~RandomNum(4,2)~ + ~(Massage her shoulders)~ + f5.2
+ ~RandomNum(4,3)~ + ~(Massage her shoulders)~ + f5.2
+ ~RandomNum(4,4)~ + ~(Massage her shoulders)~ + f5.3
+ ~RandomNum(4,1)~ + ~I love your eyes.~ + f6.1
+ ~RandomNum(4,2)~ + ~I love your eyes.~ + f6.2
+ ~RandomNum(4,3)~ + ~I love your eyes.~ + f6.3
+ ~RandomNum(4,4)~ + ~I love your eyes.~ + f6.4
+ ~RandomNum(4,1)~ + ~Sirene...~ + f7.1
+ ~RandomNum(4,2)~ + ~Sirene...~ + f7.2
+ ~RandomNum(4,3)~ + ~Sirene...~ + f7.3
+ ~RandomNum(4,4)~ + ~Sirene...~ + f7.4
+ ~RandomNum(4,1)~ + ~(Tickle her)~ + f8.1
+ ~RandomNum(4,2)~ + ~(Tickle her)~ + f8.2
+ ~RandomNum(4,3)~ + ~(Tickle her)~ + f8.3
+ ~RandomNum(4,4)~ + ~(Tickle her)~ + f8.4
+ ~RandomNum(4,1) Global("C0SireneLovetalk","GLOBAL",20)~ + ~(Offer her chocolate)~ + f9.1
+ ~RandomNum(4,2) Global("C0SireneLovetalk","GLOBAL",20)~ + ~(Offer her chocolate)~ + f9.2
+ ~RandomNum(4,3) Global("C0SireneLovetalk","GLOBAL",20)~ + ~(Offer her chocolate)~ + f9.3
+ ~RandomNum(4,4) Global("C0SireneLovetalk","GLOBAL",20)~ + ~(Offer her chocolate)~ + f9.4
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1)~ + ~I want you tonight.~ + r4.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1)~ + ~I want you tonight.~ + r4.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1)~ + ~I want you tonight.~ + r4.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1)~ + ~I want you tonight.~ + r4.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I love you.~ + r5.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I love you.~ + r5.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I love you.~ + r5.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~I love you.~ + r5.4
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~Will you bathe with me?~ + r6.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~Will you bathe with me?~ + r6.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~Will you bathe with me?~ + r6.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~Will you bathe with me?~ + r6.4
+ ~RandomNum(4,1) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Press your body against hers suggestively)~ + r7.1
+ ~RandomNum(4,2) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Press your body against hers suggestively)~ + r7.2
+ ~RandomNum(4,3) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Press your body against hers suggestively)~ + r7.3
+ ~RandomNum(4,4) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ + ~(Press your body against hers suggestively)~ + r7.4a
+ ~RandomNum(4,4) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + ~(Press your body against hers suggestively)~ + r7.4b
+ ~RandomNum(5,1) Global("C0SireneSlept","GLOBAL",1)~ + ~(Press your body against hers suggestively)~ + r7.1
+ ~RandomNum(5,2) Global("C0SireneSlept","GLOBAL",1)~ + ~(Press your body against hers suggestively)~ + r7.2
+ ~RandomNum(5,3) Global("C0SireneSlept","GLOBAL",1)~ + ~(Press your body against hers suggestively)~ + r7.3
+ ~RandomNum(5,4) Global("C0SireneSlept","GLOBAL",1) Gender(Player1,FEMALE)~ + ~(Press your body against hers suggestively)~ + r7.4a
+ ~RandomNum(5,4) Global("C0SireneSlept","GLOBAL",1) Gender(Player1,MALE)~ + ~(Press your body against hers suggestively)~ + r7.4b
+ ~RandomNum(5,5) Global("C0SireneSlept","GLOBAL",1)~ + ~(Press your body against hers suggestively)~ + r7.5
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1)~ + ~(Stroke her thighs)~ + r8.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1)~ + ~(Stroke her thighs)~ + r8.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1)~ + ~(Stroke her thighs)~ + r8.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1)~ + ~(Stroke her thighs)~ + r8.4
+ ~Global("C0SireneStopFlirting","GLOBAL",0)~ + ~I really like you, Sirene, but I need to concentrate. Please stop flirting with me.~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",1)~ + noflirt
+ ~Global("C0SireneStopFlirting","GLOBAL",1)~ + ~I miss your attention, Sirene. If you want to flirt with me, then go ahead.~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",0)~ + yesflirt
++ ~Sirene, I know we've become close recently, but I have to tell you know... I want us to just be friends, and nothing more.~ + breakup
++ ~No, nothing.~ EXIT
END

// Romance novel

IF ~~ book
SAY ~Oh... *blush* It... it is wonderful.~
= ~I stayed up all night reading it. The story is so beautiful. I, um... *sniffle*~
++ ~Heh, I see.~ + book1
++ ~Can I read it?~ + book2
++ ~Don't get all sappy on me, now.~ + book3
++ ~Whatever. Just keep your head out of the clouds.~ + book3
END

IF ~~ book1
SAY ~<CHARNAME>, stop... stop teasing me. *blush*~
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Stop teasing? Would you rather I... (lean forward to kiss her)~ + book1a
++ ~But you're cute when you're embarrassed.~ + book1b
++ ~Haha, sorry.~ + book1c
END

IF ~~ book1a
SAY ~Oh! Mmmph...~
++ ~How's that? Better than that silly book?~ + book1d
++ ~Did you like that?~ + book1d
END

IF ~~ book1b
SAY ~Stop it, you are so... Oh, gods, I need to hide my face now.~
IF ~~ + book1c
END

IF ~~ book1c
SAY ~I- Is there something we should be doing right now? Perhaps we should... focus on the road. Yes, I think 'twould be best.~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ book1d
SAY ~Yes...~
IF ~~ + book1c
END

IF ~~ book2
SAY ~Any time you wish. 'Tis your gold that bought it, after all.~
= ~I, um, am not quite finished yet. But once I am, it is yours.~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ book3
SAY ~A-aye, of course. You do not need to doubt me.~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ again
SAY ~I understand.~
IF ~~ EXIT
END

IF ~~ noflirt
SAY ~Oh... I did not realize my attention was bothering you so much. Forgive me.~
IF ~~ EXIT
END

IF ~~ yesflirt
SAY ~(smile) Very well.~
IF ~~ EXIT
END

IF ~~ breakup
SAY ~I... had hoped you had some interest in me, <CHARNAME>, but perhaps I have misunderstood... do you truly mean it?~
++ ~I am.~ + breakup2
++ ~No, forget it.~ + again
END

IF ~~ breakup2
SAY ~I... very well. Thank you for telling me.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ sleepwithme
SAY ~(smile) Then let us find a place for ourselves...~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ brotheralive
SAY ~*sigh* Not well, <CHARNAME>.~
= ~I know that I did the right thing... you assured me that. Yet, I still feel angry, betrayed. Even though I never knew him, 'twas...~
= ~(She shakes her head sadly) I do not want to talk about it.~
IF ~~ EXIT
END

IF ~~ brotherdead
SAY ~*sigh* Now I know how you must have felt, killing Sarevok in the Undercity... 'tis horrible.~
= ~I do not feel regret, not for his death nor for walking away from Ilmater's path. But... I wish I had known him as more than the man I slew.~
IF ~~ EXIT
END

IF ~~ chapter2
SAY ~I cannot say I savor the thought of aligning with Shadow Thieves, but truly, I see little choice.~
IF ~~ EXIT
END

IF ~~ chapter3a
SAY ~Were the task to save Imoen not of utmost importance, I would not deign to work with the Shadow Thieves. But I suppose 'tis necessary.~
IF ~~ EXIT
END

IF ~~ chapter3b
SAY ~Were the task to save your friend not of utmost importance, I would not deign to work with the Shadow Thieves. But I suppose 'tis necessary.~
IF ~~ EXIT
END

IF ~~ chapter4
SAY ~This whole isle and its inhabitants are surrounded by evil, <CHARNAME>. I hope we can complete our task posthaste.~
IF ~~ EXIT
END

IF ~~ chapter6
SAY ~The elves can be trusted to cooperate with us, though they are reluctant to share the whole truth. We can only hope to earn their trust.~
IF ~~ EXIT
END

IF ~~ chapter7
SAY ~Many lives are at stake now, <CHARNAME>, including your own. We must stop Irenicus as soon as we can.~
IF ~~ EXIT
END

IF ~~ f1.1
SAY ~(Your fingers run through the soft flaming locks of Sirene's hair, brushing down to her neck.)~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~(Sirene catches your hand and, while smiling, presses it gently against her cheek before letting go.)~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~(Sirene sighs softly in contentment as she allows you to touch her auburn locks)~
IF ~~ EXIT
END

IF ~~ f1.4
SAY ~(laugh) <CHARNAME>... is now truly the time for that?~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~(Sirene flushes slightly as you press your lips against her cheek.)~
= ~<CHARNAME>...~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~(Sirene's skin is smooth and slightly tastes slightly salty of sweat. She smiles nervously as your pull away.)~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~(Before you move away from her, she takes your face and kisses you in return.)~
IF ~~ EXIT
END

IF ~~ f2.4
SAY ~(laugh) What did I do to deserve that?~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~(She simply flushes and looks away with a slight smile.)~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~Oh, th... thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~(smile) Thank you for your compliment.~
IF ~~ EXIT
END

IF ~~ f3.4
SAY ~And you are the most beautiful, charming woman I have ever... (blush) oh, excuse me...~
IF ~~ EXIT
END

IF ~~ f3.5
SAY ~And you are the greatest, most wonderful man I have ever... (blush) oh, excuse me...~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~(Sirene flinches as you embrace her.)~
= ~Oh! Hm, hmm...~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~(Sirene falls into you as you hold her, hands pressing against your back.)~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~(While embracing you in return, Sirene leans forward and nuzzles your hair.)~
IF ~~ EXIT
END

IF ~~ f4.4a
SAY ~(Sirene sighs in contentment and leans her head over your shoulder.)~
IF ~~ EXIT
END

IF ~~ f4.4b
SAY ~(Sirene sighs in contentment and presses her head against your chest.)~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~Oh, I would like that. Thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~Mm, 'tis quite comfortable... you are good at this, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~(Sirene looses the straps of her armor and relaxes as you work your fingers on her shoulders.)~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~Oh, thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f6.2
SAY ~(smile) You are being kind, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~(Sirene responds by leaning towards you, giving you a clear look into her chartreuse yellow eyes.)~
IF ~~ EXIT
END

IF ~~ f6.4
SAY ~I am glad at least you like them.~
IF ~~ EXIT
END

IF ~~ f7.1
SAY ~Yes, <CHARNAME>?~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~<CHARNAME>...~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~(smile) I am here.~ [C0SIR012]
IF ~~ EXIT
END

IF ~~ f7.4
SAY ~Hmm?~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~(Sirene doubles over in a fit of uncomfortable giggles as you tease the gaps between her armor.)~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~No, no, stop it! 'Tis too much!~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~(Sirene playfully swats your hands away.)~
IF ~~ EXIT
END

IF ~~ f8.4
SAY ~(Sirene laughs and fidgets as you tickle the curves of her neck where her skin is exposed.)~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~(Sirene licks her lips and fingers teasingly after eating the piece of chocolate you gave her, and with a coy smile traces her chocolate-stained finger across your lips.)~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~(Sirene breaks off a piece and slips it into your mouth.)~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~Mm, just what I needed...~
IF ~~ EXIT
END

IF ~~ f9.4
SAY ~(Sirene takes the chocolate with one hand and, with the other, takes your hand to her lips and licks your fingers.)~
IF ~~ EXIT
END

IF ~~ r1.1
SAY ~(Sirene responds to you passionately, pressing herself against you.)~
IF ~~ EXIT
END

IF ~~ r1.2
SAY ~(When you finally pull apart, Sirene stops you and licks your lips sweetly.)~
IF ~~ EXIT
END

IF ~~ r1.3
SAY ~(She is forced to catch her breath once the kiss ends.) <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ r1.4
SAY ~Mmmph...~
IF ~~ EXIT
END

IF ~~ r2.1
SAY ~(Sirene's face is smooth and warm, and she closes her eyes as your fingers brush up her cheekbones and over her eyebrows.)~
IF ~~ EXIT
END

IF ~~ r2.2
SAY ~(Sirene takes your hand as it lays on her cheek and kisses it.)~
IF ~~ EXIT
END

IF ~~ r2.3
SAY ~(In response, Sirene touches your face in return, exploring your features with a soft touch.)~
IF ~~ EXIT
END

IF ~~ r2.4
SAY ~(Sirene's face flushes with color at your touch, turning warm as you teasingly stroke her cheek and jaw.)~
IF ~~ EXIT
END

IF ~~ r3.1
SAY ~(Sirene's nails are slightly longer and curved compared to the average human female, though it feels pleasant when they dig slightly into your palm.)~
IF ~~ EXIT
END

IF ~~ r3.2
SAY ~(Sirene's hand is feminine in shape, yet is as strong and calloused as a warrior's hand.)~
IF ~~ EXIT
END

IF ~~ r3.3
SAY ~(Sirene responds by linking his fingers with yours.)~
IF ~~ EXIT
END

IF ~~ r3.4
SAY ~(You walk together, hand in hand, for a long while before she reluctantly lets you go.)~
IF ~~ EXIT
END

IF ~~ r4.1
SAY ~(You can see her eyes flare with desire upon hearing your words.)~
= ~I am yours, whenever you want me.~
IF ~~ EXIT
END

IF ~~ r4.2
SAY ~I hope you are willing to back that up, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ r4.3
SAY ~(teasingly) Tonight? Must we wait that long?~
IF ~~ EXIT
END

IF ~~ r4.4
SAY ~Mm, I shall be waiting eagerly, <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ r5.1
SAY ~(smile) It means more than you can imagine to hear you say that, <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ r5.2
SAY ~I love you as well... more than I can say.~
IF ~~ EXIT
END

IF ~~ r5.3
SAY ~(Though you have said the same words to her before, she seems pleased to hear them each time.)~
IF ~~ EXIT
END

IF ~~ r5.4
SAY ~'Tis the only words I need to hear, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ r6.1
SAY ~(She raises an eyebrow with a none too honest smile.)~
= ~If you wish to look at my body, <CHARNAME>, you do not need to make such excuses.~
IF ~~ EXIT
END

IF ~~ r6.2
SAY ~'Twould be a pleasant diversion, I think. Yes... I will.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r6.3
SAY ~(laugh) I may have asked you the same, had you not come to me first... shall we?~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r6.4
SAY ~Aye, though 'twould be best if it were done in private, I think.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r7.1
SAY ~(Sirene's hands rest on your sides and you can feel her warm breath on your neck.)~
IF ~~ EXIT
END

IF ~~ r7.2
SAY ~(Even with the armor Sirene wears, her body is shapely and petite, and you feel the curves of her body from her chest to her slender waist.)~
IF ~~ EXIT
END

IF ~~ r7.3
SAY ~(laugh) <CHARNAME>... I am not sure whether I should feel embarrassed.~
IF ~~ EXIT
END

IF ~~ r7.4a
SAY ~(As you lightly press against her, you feel her chest heaving and falling slowly against yours, and she traces a finger along your breast.)~
IF ~~ EXIT
END

IF ~~ r7.4b
SAY ~(As you lightly press against her, you feel her chest heaving and falling slowly against yours, and she traces a finger along your chest.)~
IF ~~ EXIT
END

IF ~~ r7.5
SAY ~Mmm... <CHARNAME>, I would like to try this again... without all this armor and clothing.~
IF ~~ EXIT
END

IF ~~ r8.1
SAY ~(Sirene lets out a sharp gasp when you touch her inner thighs, and she abruptly grasps your hand.)~
= ~<CHARNAME>, please...~
IF ~~ EXIT
END

IF ~~ r8.2
SAY ~Aaah... (Sirene closes her eyes in pleasure as you stroke her tenderly.)~
IF ~~ EXIT
END

IF ~~ r8.3
SAY ~(Sirene bashfully tries to move away, but relents and allows you to touch the unarmored parts of her legs.)~
IF ~~ EXIT
END

IF ~~ r8.4
SAY ~(Sirene takes your hand and, instead of pulling it away, guides it between her legs and moans softly.)~
IF ~~ EXIT
END

IF ~~ p1.1
SAY ~I am well. Why? Is there something you need of me?~
IF ~~ EXIT
END

IF ~~ p1.2
SAY ~I am thinking of the tasks we have ahead of us.~
IF ~~ EXIT
END

IF ~~ p1.3
SAY ~Everything is fine. What of yourself?~
IF ~~ EXIT
END

IF ~~ p1.4
SAY ~I am... a little lost in thought at the moment. Do not mind me.~
IF ~~ EXIT
END

IF ~~ stringfix 
SAY ~Aye, that may be... give me a moment.~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0RESET")~ EXIT 
END

// Questions

IF ~~ questions
SAY ~Of course. Ask what you will.~
+ ~OR(2)
Global("BardPlotOn","GLOBAL",5)
Global("BardPlotOn","GLOBAL",6)
GlobalGT("playquality","GLOBAL",0)
Global("C0SirenePIDPlay","GLOBAL",0)~ + ~I noticed you were almost tearing up by the end of that Turmish play. Did you really like it that much?~ DO ~SetGlobal("C0SirenePIDPlay","GLOBAL",1)~ + bardplay
+ ~Global("C0SirenePIDIlmater","GLOBAL",0) Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Are you satisfied with following Ilmater?~ DO ~SetGlobal("C0SirenePIDIlmater","GLOBAL",1)~ + ilmater
+ ~Global("C0SirenePIDHome","GLOBAL",0)~ + ~Have you ever missed home?~ DO ~SetGlobal("C0SirenePIDHome","GLOBAL",1)~ + home
+ ~Global("C0SirenePIDPaladin","GLOBAL",0)~ + ~How long have you been a paladin?~ DO ~SetGlobal("C0SirenePIDPaladin","GLOBAL",1)~ + paladin
+ ~Global("C0SirenePIDRadiantHeart","GLOBAL",0)~ + ~What do you think of the Order of the Radiant Heart?~ DO ~SetGlobal("C0SirenePIDRadiantHeart","GLOBAL",1)~ + radiantheart
+ ~Global("C0SirenePIDScars","GLOBAL",0)~ + ~Do your scars still cause you pain?~ DO ~SetGlobal("C0SirenePIDScars","GLOBAL",1)~ + scars
+ ~Global("C0SirenePIDFood","GLOBAL",0)~ + ~What kinds of food do you prefer?~ DO ~SetGlobal("C0SirenePIDFood","GLOBAL",1)~ + food
+ ~Global("C0SirenePIDSettle","GLOBAL",0)~ + ~Have you ever considered settling down?~ DO ~SetGlobal("C0SirenePIDSettle","GLOBAL",1)~ + settle
+ ~GlobalGT("C0SireneLovetalk","GLOBAL",16)
!Global("C0SirenePIDFirstLove","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Can you tell me about your first love?~ + firstlove
+ ~Global("C0SirenePIDFirstLove","GLOBAL",1)
!Global("C0SirenePIDSecondLove","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Can you tell me about your second love?~ DO ~SetGlobal("C0SirenePIDSecondLove","GLOBAL",1)~ + secondlove
+ ~Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SirenePIDAppearance","GLOBAL",0)~ + ~I've noticed you're taking care of your appearance more than usual. What brought this change?~ + appearance
+ ~Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SirenePIDBhaalspawn","GLOBAL",0)~ + ~Do you ever have any doubts about loving a Bhaalspawn?~ + bhaalspawn
+ ~GlobalLT("C0SireneTsamon","GLOBAL",3)~ + ~How do you feel about your faith at the moment?~ + faith
+ ~NumInPartyAliveGT(2)~ + ~I'd like to ask you about one of our companions.~ + companions
++ ~On second thought, there's nothing I wish to ask.~ EXIT
END

IF ~~ bardplay
SAY ~Oh... aye, have I mentioned that I have a weakness towards romance in fiction? That play struck me deeply... I have not seen anything of its like in my life.~
IF ~GlobalLT("playmistake","GLOBAL",3)~ + bardplay1
IF ~!GlobalLT("playmistake","GLOBAL",3)~ EXIT
END

IF ~~ bardplay1
SAY ~Your performance was exemplary as well, <CHARNAME>. Sometimes 'tis easy to forget that you are as much an artist as a leader.~
IF ~~ EXIT
END

IF ~~ ilmater
SAY ~I... have never stopped to consider it. Though I was raised among priests of Ilmater, 'twas never demanded for me to follow the faith. To worship the Crying God was my own decision.~
= ~Perhaps if I had made a different choice, my life would have been easier. Am I satisfied as I am? I do not know, but I do find satisfaction in helping others with their burdens and suffering. And that is why I continue to serve Ilmater, despite all my responsibilities.~
IF ~~ EXIT
END

IF ~~ home
SAY ~Sometimes... though I do not truly miss the people, save for the brothers and sisters of the temple. They were always wary of me, even after I took my vows to become a paladin.~
= ~There was one exception, however... the baker of the village was a devout follower of Ilmater, and often visited the church. Unlike most of the villagers, he always treated me well, and sometimes brought sweet pastries for all the children.~
= ~When I was accepted into the order of the Holy Warriors of Suffering, he was the only one aside from the priests to congratulate me. But... he passed away not long before I left on my pilgrimage.~
= ~What of you, <CHARNAME>? Do you miss your home? It has been a long time since you last returned.~
++ ~I often think of Candlekeep. I would return right now if I had the choice.~ + home1
++ ~It was a good childhood, but I don't really miss it.~ + home1
++ ~Are you kidding me? The day I left was the happiest time of my life!~ + home1
END

IF ~~ home1
SAY ~I see... 'tis interesting to know your thoughts. But we have talked long enough, we should move on.~
IF ~~ EXIT
END

IF ~~ paladin
SAY ~Eight years now, I believe... though it feels like it has been my entire life. 'Tis been a while since I have stopped to consider how much time has passed by.~
IF ~~ EXIT
END

IF ~~ radiantheart
SAY ~I did not spend any time among them, but from what I know, they appear to be the only true pillar of moral virtue within the city of Athkatla. I respect them, despite their... uncompromising code.~
IF ~~ EXIT
END

IF ~~ scars
SAY ~Sometimes, aye. Though rarely enough to hamper my performance in battle... often when I lay at rest, I think of the battles which led to these scars, and I will relive the feeling of pain.~
= ~You may think it foolish, <CHARNAME>, but many of my scars bring me pride, for they were gained in exchange for protecting others.~
IF ~~ EXIT
END

IF ~~ food
SAY ~I was not raised among wealth, <CHARNAME>. As a ward of the church of Ilmater, I learned to appreciate the meals the priests took the time and effort to provide.~
= ~Sometimes, I hunted in the wild to try and acquire meat for my fellows, but I was never too fond of the taste. I much preferred the taste of fish, although I lacked the patience for fishing.~
IF ~~ EXIT
END

IF ~~ settle
SAY ~I would like the prospect of retiring from battle and starting a family, but I have a duty to my order... a duty to Ilmater. I cannot see myself leaving this life, so long as there are still others in need.~
IF ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + settle2
IF ~!Global("C0SireneRomanceActive","GLOBAL",1)
!Global("C0SireneRomanceActive","GLOBAL",2)~ + settle3
END

IF ~~ settle2
SAY ~Though... if there was another willing to settle down at my side, I cannot deny the thought would be tempting... perhaps enough to tempt me to let go of this life.~
IF ~~ EXIT
END

IF ~~ settle3
SAY ~Besides, I doubt that another would be willing to spend a lifetime at my side. No, I think I will be serving as Ilmater's servant even as I grow old, until I die.~
IF ~~ EXIT
END

IF ~~ firstlove
SAY ~If you wish... though I must warn you 'tis not a happy tale. Do you truly wish to know?~
++ ~Yes, I do.~ DO ~SetGlobal("C0SirenePIDFirstLove","GLOBAL",1)~ + firstlove1
++ ~Perhaps another time.~ + again
END

IF ~~ firstlove1
SAY ~Very well. My first love... was a companion I once knew a few years past. I was only nineteen then... 'twas only around two years since I left my home village on my pilgrimage.~
= ~He was a mercenary from Tethyr... a young man, perhaps two years my senior. We met on the road to the Sword Coast, while he was serving as a guard for a merchant caravan.~
= ~The caravan was attacked by a group of troglodyte raiders, and many of the guards defending the band were wounded. I helped tend to their wounds, and that was when I met him.~
++ ~What was his name?~ + firstlove2
++ ~I've no interest in hearing any more.~ + again
END

IF ~~ firstlove2
SAY ~His name was Cail. After we met, I travelled with the merchants for a time, though I kept my heritage a secret for the longest time out of fear that I would be turned away.~
= ~Cail found out first, however... I had left the group to bathe one day, and he, the philanderer that he was, followed me. By the time I realized, I had already entered the water and there was no chance to hide.~
++ ~How did he react?~ + firstlove3
++ ~Ouch. I hope you taught him a lesson.~ + firstlove4
++ ~I'd rather not hear any more.~ + again
END

IF ~~ firstlove3
SAY ~He was shocked at first, but I gave him little time to speak. I was more hotheaded then, and in a fit of rage and embarrassment I took my bag and swung it at him.~
IF ~~ + firstlove5
END

IF ~~ firstlove4
SAY ~*laugh* I certainly did, although I was more hotheaded in my youth. I was furious and shamed when I saw him, and in a fit of rage I took my bag and swung it at him.~
IF ~~ + firstlove5
END

IF ~~ firstlove5
SAY ~I struck him square in the head and he reeled backwards, and that was when I came to my senses. I left the water to help him, fearing I had harmed him severely.~
= ~When he came to, he simply laughed it off. He said that he was shocked that I did not kill him, and that I reacted just as any other woman would have. He did not believe my blood made me any different.~
= ~Ever since then, I trusted Cail completely, and over time we became close.~
++ ~What happened to him?~ + firstlove6
END

IF ~~ firstlove6
SAY ~I... I did say this tale did not have a happy ending, did I not?~
= ~Cail and I parted ways with the caravan once they had completed their journey, and we travelled together. We had only become lovers soon after that, but...~
= ~We encountered a band of Asador's slaver army on the Coast Way road. We were outnumbered four to one, and though we defeated them, Cail... he took a poisoned arrow to the chest.~
= ~I felt as though my life would end then. I tried to save him, but in the end, I could only hold him and ease his passing.~
++ ~I'm sorry. That must have been awful.~ + firstlove7
++ ~Was revenge the reason you killed Asador?~ + firstlove8
END

IF ~~ firstlove7
SAY ~I... thank you for listening, <CHARNAME>. I have not told this tale to anyone aside from you... I feel slightly better having done so.~
IF ~~ EXIT
END

IF ~~ firstlove8
SAY ~It was Cail's death that drove me to seek Asador's death, aye... but I would have killed him regardless, if the choice was given to me. Revenge did not bring me any peace.~
IF ~~ + firstlove7
END

IF ~~ secondlove
SAY ~Did I mention that? It must have been a slip of the tongue. Regardless, I see no harm in telling.~
= ~This tale has a happier ending than the last... her name was Ashera, and she was a priestess of Sune.~
= ~I cannot say this is an interesting tale. We met long after I had avenged Cail's death, and she... saved my life after a foolish action almost cost me my life.~
= ~Like Cail, she never judged me for my blood, and encouraged me to embrace beauty. In time, I began to care for her.~
++ ~Was she beautiful?~ + secondlove2
++ ~What happened to her?~ + secondlove3
END

IF ~~ secondlove2
SAY ~Ashera was a great beauty, said by her fellow priests to have been blessed by Sune herself. But she told me 'twas her dedication, not divine intervention, that gave her beauty, and that I could do the same if I made the attempt.~
= ~She had a talent for giving joy to others, and I think that was why I was... attracted to her, moreso than her beauty.~
IF ~~ + secondlove3
END

IF ~~ secondlove3
SAY ~We parted ways eventually, albeit amiably. I still had my pilgrimage, and though I was relucant to part, I knew it must happen. Though...~
= ~The day before I left, I was injured and taken back to the temple of Sune. Ashera tended to my wounds, and... we spent the night together.~
++ ~Do you want to see her again?~ + secondlove4
++ ~We've talked enough. Let's move on.~ EXIT
END

IF ~~ secondlove4
SAY ~I would like that, aye, though whether we could rekindle our relationship... I doubt it. I prayed that she could seek love and companionship with another when I left. Even now, I... still hope for that.~
IF ~~ EXIT
END

IF ~~ appearance
SAY ~Well... *blush* have I, truly? I have not noticed any changes... perhaps you are mistaken.~
++ ~What's that I smell, then? Is that perfume?~ + appearance1
++ ~No, I don't think I am. Your hair looks tidier than usual. Shinier, too.~ + appearance2
++ ~Really? So what's with your sudden change of attire during our last stay at an inn?~ + appearance3
++ ~Maybe I am. Never mind.~ EXIT
END

IF ~~ appearance1
SAY ~N-no! It was just a... healing salve. That must be the scent you mentioned.~
++ ~You're a terrible liar, Sirene. Why not just tell the truth? I promise I won't laugh.~ + appearance4
++ ~Suuure.~ + appearance4
++ ~Whatever...~ EXIT
END

IF ~~ appearance2
SAY ~I... just needed to shorten and trim it after one of our previous foes almost grabbed it in the midst of battle. 'Twas growing a little too long.~
++ ~You're a terrible liar, Sirene. Why not just tell the truth? I promise I won't laugh.~ + appearance4
++ ~Suuure.~ + appearance4
++ ~Whatever...~ EXIT
END

IF ~~ appearance3
SAY ~It... it was because the day was warmer than usual. That was why I...~
++ ~You're a terrible liar, Sirene. Why not just tell the truth? I promise I won't laugh.~ + appearance4
++ ~Suuure.~ + appearance4
++ ~Whatever...~ EXIT
END

IF ~~ appearance4
SAY ~*sigh* This is no good. Aye, I have been... taking care of myself more closely as of late, so that I might... impress you.~
++ ~I know. I'm flattered that you'd put in so much effort.~ + appearance5
++ ~You don't have to change yourself for me. I like you just as you are.~ + appearance5
END

IF ~~ appearance5
SAY ~*blush* Thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ bhaalspawn
SAY ~*smile* Why would I? I know you for who you are, just as you saw past my blood. I would be a hypocrite to judge you for your heritage.~
IF ~~ EXIT
END

IF ~~ faith
SAY ~That is a curious question, <CHARNAME>... though I have been considering the matter of my faith in Ilmater much, as of late.~
IF ~GlobalGT("C0SireneFaith","GLOBAL",5)~ + maxfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",6) GlobalGT("C0SireneFaith","GLOBAL",0)~ + goodfaith
IF ~Global("C0SireneFaith","GLOBAL",0)~ + midfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",0) GlobalGT("C0SireneFaith","GLOBAL",-6)~ + badfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",-5)~ + minfaith
END

IF ~~ maxfaith
SAY ~My faith may have wavered in the past, but... your support has given me the confidence to be proud of my service of my god. Thank you for that, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ goodfaith
SAY ~I admit some doubts remain, but... I am slowly beginning to understand what it truly means to serve Ilmater. Perhaps with time, I will abandon what uncertainties that remain.~
IF ~~ EXIT
END

IF ~~ midfaith
SAY ~I am... conflicted, <CHARNAME>. Perhaps I will have a better answer for you in the future.~
IF ~~ EXIT
END

IF ~~ badfaith
SAY ~My doubts are beginning to question whether I am worthy of being Ilmater's servant. Things may change, but... I wonder for how long I will be able to continue this path.~
IF ~~ EXIT
END

IF ~~ minfaith
SAY ~This may sound blasphemous, but... I am beginning to wonder if service to Ilmater is truly the role I am meant to play. Sometimes I wonder if... I should consider making my own path, without the rules of a deity to control me.~
IF ~~ EXIT
END

// Companions

IF ~~ companions
SAY ~Of course... for you, I will do my best to answer truthfully.~
+ ~InParty("Aerie")~ + ~What do you think of Aerie?~ + aerie
+ ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ + ~What do you think of Anomen?~ + anomengood
+ ~InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ + ~What do you think of Anomen?~ + anomenbad
+ ~InParty("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)~ + ~What do you think of Anomen?~ + anomenneutral
+ ~InParty("Cernd")~ + ~What do you think of Cernd?~ + cernd
+ ~InParty("Edwin")~ + ~What do you think of Edwin?~ + edwin
+ ~InParty("E3Fade")~ + ~What do you think of Fade?~ + fade
+ ~InParty("L#Fou")~ + ~What do you think of Foundling?~ + foundling
+ ~InParty("C0Gley")~ + ~What do you think of Gleya?~ + gleya
+ ~InParty("HaerDalis")~ + ~What do you think of Haer'Dalis?~ + haerdalis
+ ~InParty("Imoen") Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of Imoen?~ + imoen1
+ ~InParty("Imoen") !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~What do you think of Imoen?~ + imoen2
+ ~InParty("Jaheira")~ + ~What do you think of Jaheira?~ + jaheira
+ ~InParty("Jan")~ + ~What do you think of Jan?~ + jan
+ ~InParty("Keldorn")~ + ~What do you think of Keldorn?~ + keldorn
+ ~InParty("Korgan")~ + ~What do you think of Korgan?~ + korgan
+ ~InParty("Mazzy")~ + ~What do you think of Mazzy?~ + mazzy
+ ~InParty("Minsc")~ + ~What do you think of Minsc?~ + minsc
+ ~InParty("Nalia")~ + ~What do you think of Nalia?~ + nalia
+ ~InParty("Neera")~ + ~What do you think of Neera?~ + neera
+ ~InParty("C0PaiNa")~ + ~What do you think of Pai'Na?~ + paina
+ ~InParty("Rasaad")~ + ~What do you think of Rasaad?~ + rasaad
+ ~InParty("Viconia")~ + ~What do you think of Viconia?~ + viconia
+ ~InParty("Valygar")~ + ~What do you think of Valygar?~ + valygar
+ ~InParty("Yoshimo")~ + ~What do you think of Yoshimo?~ + yoshimo
+ ~InParty("YxYve")~ + ~What do you think of Yvette?~ + yvette
++ ~Never mind. I don't want to know.~ EXIT
END

IF ~~ aerie
SAY ~I care greatly about her, but sometimes I feel overly protective at the same time, worrying about the risks of this life. 'Tis unfair to her.~
IF ~~ EXIT
END

IF ~~ anomengood
SAY ~Knighthood suits him well. He is a worthy companion, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ anomenbad
SAY ~I cannot condone what he has done, <CHARNAME>. I will accept him as a comrade, but you will not care to hear how I feel about him.~
IF ~~ EXIT
END

IF ~~ anomenneutral
SAY ~He distrusts me, and our faiths are in disagreement, but I can sympathize with his dreams.~
IF ~~ EXIT
END

IF ~~ cernd
SAY ~I believe he is a good man... even if I do not understand him.~
IF ~~ EXIT
END

IF ~~ edwin
SAY ~I do not trust him, <CHARNAME>. He is loyal to no one but himself.~
IF ~~ EXIT
END

IF ~~ fade
SAY ~We share little in common, yet I still feel a certain kinship with her. I hope to gain her friendship one day.~
IF ~~ EXIT
END

IF ~~ foundling
SAY ~Truth be told, I cannot fully trust him. He has lived and grown in the shadow of evil... and I cannot say I care for the powers that evil has nurtured within him.~
IF ~~ EXIT
END

IF ~~ gleya
SAY ~I have a strange admiration for her spirit and carefree nature.~
IF ~~ EXIT
END

IF ~~ haerdalis
SAY ~I find him rather charming, though his nihilistic ideology is mildly discomforting.~
IF ~~ EXIT
END

IF ~~ imoen1
SAY ~She... by Ilmater, <CHARNAME>, she is so different to the girl I remember. I cannot imagine the horrors that must have driven her to thus.~
IF ~~ EXIT
END

IF ~~ imoen2
SAY ~I shudder to think of the things that could drive her into her current state. Though I did not know her, I can see hints of the youthful girl she must have once been...~
IF ~~ EXIT
END

IF ~~ jaheira
SAY ~I admire her discipline, and value her friendship.~
IF ~~ EXIT
END

IF ~~ jan
SAY ~I do not know what to make of his chatter, <CHARNAME>. I do not wish to offend him, but how is it possible to withstand it?~
IF ~~ EXIT
END

IF ~~ keldorn
SAY ~'Tis an honor to travel and fight at his side, though I feel 'tis more than I deserve. I hope I can learn from his example.~
IF ~~ EXIT
END

IF ~~ korgan
SAY ~I cannot approve of your decision to keep him, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ mazzy
SAY ~She is a close friend and stalwart sister-at-arms. I have nothing but the truest respect and admiration for her.~
IF ~~ EXIT
END

IF ~~ minsc
SAY ~He is a valuable friend, and his heart is pure. I am satisfied to share his company.~
IF ~~ EXIT
END

IF ~~ nalia
SAY ~I cannot say I have known many nobles so closely. She is... not what I expected.~
IF ~~ EXIT
END

IF ~~ neera
SAY ~She is a dear friend. I am fond of her, despite the danger her magic poses.~
IF ~~ EXIT
END

IF ~~ paina
SAY ~She can be cruel, yet I would like to believe she can be kind, as well... I do not fully understand her yet.~
IF ~~ EXIT
END

IF ~~ rasaad
SAY ~I respect his skill and the tenets of his faith, but his pursuit of vengeance concerns me.~
IF ~~ EXIT
END

IF ~~ viconia
SAY ~I am uneasy with the presence of a Sharran, but... I know her life has been a cruel one. My feelings regarding her are... conflicted, and that is all I can say.~
IF ~~ EXIT
END

IF ~~ valygar
SAY ~He is a difficult man to talk to, <CHARNAME>, but he does truly have a kind heart. I would not devalue his friendship.~
IF ~~ EXIT
END

IF ~~ yoshimo
SAY ~He seems likeable enough despite his profession, I am oddly fond of him.~
IF ~~ EXIT
END

IF ~~ yvette
SAY ~I cannot deny that I am wary of her origins... yet I do enjoy her company. She reminds me of someone I... once knew, that was important to me.~
IF ~~ EXIT
END

END // END for APPEND