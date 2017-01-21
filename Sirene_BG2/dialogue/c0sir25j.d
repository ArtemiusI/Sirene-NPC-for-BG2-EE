BEGIN C0SIR25J

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Tell me about Sirene.~ + C0SireneVoloBio1
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Tell me about Sirene.~ + C0SireneVoloBio2
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Tell me about Sirene.~ + C0SireneVoloBio3
END

CHAIN SARVOLO C0SireneVoloBio1
~Though her lineage may serve as a terrible burden, none could ever doubt that Sirene of the Holy Warriors of Suffering has become one of the greatest champions of Ilmater that has e'er walked the Realms. Her conviction serves as an inspiration to all.~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You are truly an artist with words, master Volo. I am honored.~
EXTERN SARVOLO 9

CHAIN SARVOLO C0SireneVoloBio2
~Though her lineage may serve as a terrible burden, none could ever doubt that the unlikely heroine Sirene has become one of the greatest forces of good that has e'er walked the Realms. Her conviction serves as an inspiration to all.~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You are truly an artist with words, master Volo. I am honored.~
EXTERN SARVOLO 9

CHAIN SARVOLO C0SireneVoloBio3
~From fire-forged friendship to romance, the union between <CHARNAME> and Sirene is a tale worthy of the ages. Never have a pair of lovers half as devoted e'er walked the Realms.~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You are truly an artist with words, master Volo. I am honored.~
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 C0SireneSolarFriend1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~'Tis the end of the path, my friend, but these last steps are your own to make. No matter your choice may be... 'twas an honor to have your company and friendship for this journey.~
END

// romanced, Sirene and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarPers","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarPers","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarPers
END

CHAIN C0SIR25J C0SireneSolarPers
~...~
= ~I... I know not what words would satisfy, <CHARNAME>. We have faced so much to come here... and now, I must face the possibility of us parting forever. 'Tis too much to bear...~
END
++ ~I would never leave you behind, Sirene.~ EXTERN C0SIR25J C0SireneSolarPers1.1
++ ~Don't lose hope yet. I haven't made my choice, after all.~ EXTERN C0SIR25J C0SireneSolarPers1.1
++ ~I'm sorry. I want to take my father's place... and that means I must leave you.~ EXTERN C0SIR25J C0SireneSolarPers1.1

CHAIN C0SIR25J C0SireneSolarPers1.1
~Even knowing this time would come, I could not have prepared enough for this. I cannot offer you anything more than my love. 'Tis a mere pittance compared to the power you have in your reach, I know...~
= ~But... I have lived my entire life on faith, so now... now I will put my faith in you, <CHARNAME>. I will be selfish this one time, and believe that you will choose me.~
= ~Whatever may happen at the end of this journey, <CHARNAME>, I wish for you to know... my love has always belonged to you. Even if I should become nothing but dust, my heart will still be yours.~
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

CHAIN C0SIR25J C0SireneSolarLeave
~Then 'tis truly farewell, then... I hope you shall not forget me in your eternal life, my love, for I shall hold your memory close until the end of my life.~
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarStay","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarStay","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarStay
END

CHAIN C0SIR25J C0SireneSolarStay
~You... you chose... me?~
END
++ ~Of course I did.~ EXTERN C0SIR25J C0SireneSolarStay1.1
++ ~I'd gladly choose you a thousand times over.~ EXTERN C0SIR25J C0SireneSolarStay1.1
++ ~That's right. We'll be together to the end of our mortal lives.~ EXTERN C0SIR25J C0SireneSolarStay1.1

CHAIN C0SIR25J C0SireneSolarStay1.1
~I... I did not even dare to dream...~
= ~No matter what may come... I will not make you regret this choice. Not in this life and beyond... I swear to you.~
= ~I love you, <CHARNAME>... I love you so... so much...~
END
++ ~(Kiss her)~ EXTERN C0SIR25J C0SireneSolarStay1.2
++ ~I love you too, Sirene.~ EXTERN C0SIR25J C0SireneSolarStay1.2

CHAIN C0SIR25J C0SireneSolarStay1.2
~Thank you...~
COPY_TRANS FINSOL01 32

// Sirene's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0SireneRomanceActive","GLOBAL",2) InParty("C0Sirene") See("C0Sirene") Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN HGWRA01 C0SireneWraith1
END

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0SireneRomanceActive","GLOBAL",2) InParty("C0Sirene") See("C0Sirene") !Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN HGWRA01 C0SireneWraith2
END

CHAIN HGWRA01 C0SireneWraith1
~What of the inevitable pain you must give to the one you love? This tiefling you call 'Sirene'.~
== C0SIR25J ~Pain? You are wrong, Gorion, for <CHARNAME>'s love has brought me only happiness, not pain.~
EXTERN HGWRA01 24

CHAIN HGWRA01 C0SireneWraith2
~What of the inevitable pain you must give to the one you love? This tiefling you call 'Sirene', forsaken by her god.~
== C0SIR25J ~Pain? You are wrong, Gorion, for <CHARNAME>'s love has brought me only happiness, not pain.~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0SWRA1")~ EXIT
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0SWRA2")~ EXIT
END

BEGIN C0SLOVE1 

CHAIN 
IF ~Global("C0SireneWraithSpirit1","GLOBAL",0)~ THEN C0SLOVE1 C0SireneWraithSpirit1
~Hello, Sirene.~
DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",1)~
== C0SIR25J ~Wh- who are you?~
== C0SLOVE1 ~Do you not recognize me? This face that called you daughter?~
== C0SIR25J ~'Daughter'? No, surely you cannot be...~
== C0SLOVE1 ~I am Lena, your mother. You have my eyes, child. Oh, how I wish I could have seen them in life...~
== C0SIR25J ~Mother? Are you... are you truly my mother?~
== C0SLOVE1 ~Yes, dear... oh, how much joy this brings me, to see my child grown. I only regret not living to raise you.~
== C0SIR25J ~I... I have wanted that, as well. I have wanted that more than anything.~
== C0SLOVE1 ~It is not too late, Sirene. You can still join us. Edric and I have waited for you all too long, for the daughter we lost to cruel fate. We can become a family once more, in the next life.~
== C0SIR25J ~... No... no, 'tis too late for that. Forgive me... mother. My place is here, with <CHARNAME>.~
== C0SLOVE1 ~I see.~
== C0SLOVE1 ~So, T'samon was correct after all. You should have died instead.~
== C0SIR25J ~W-what?~
== C0SLOVE1 ~Did your brother never tell you? About how I carried you from the our home as it burned to the ground, bringing you to him as the rafters crushed the life out of me?~
== C0SLOVE1 ~I regret that, now.~
== C0SIR25J ~Mother...~
== C0SLOVE1 ~I am not your mother. You are not my daughter. You are nothing more than a murderer.~
== C0SIR25J ~No, mother! I... I cannot be grateful enough, nor sorry enough for your sacrifice. Though I never knew you, I always wished I could. I promise!~
== C0SLOVE1 ~...~
= ~I was trained to become a mage, just like your brother. Did you know that? I could have lived a long and happy life, with power at my disposal, had I not run off with Edric. All because I wanted you.~
== C0SLOVE1 ~I wanted, so dearly, to hold you in my arms and love you, Sirene, and now look at what that love has done to me.~
== C0SIR25J ~No... please... do not say such a thing!~
== C0SLOVE1 ~That love is now dead, just as I am. Now, there is only hate. Hate for the child who led to my death. You.~
== C0SLOVE1 ~I look upon you, and see only the one who killed me. My soul finds no rest, Sirene, not even in the afterlife. All because of you... my greatest mistake.~
== C0SIR25J ~No! I am... so, so sorry, mother! Please, make it stop!~
END 
++ ~Stop it! She's not responsible for what happened to you!~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! She doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't you believe it, Sirene! It's a lie!~ EXTERN HGWRA01 25 

BEGIN C0SLOVE2

CHAIN 
IF ~Global("C0SireneWraithSpirit1","GLOBAL",0)~ THEN C0SLOVE2 C0SireneWraithSpirit1
~Heh... so we meet again, sister.~
DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",1)~
== C0SIR25J ~T'samon? No, this is a deception. I killed you myself.~
== C0SLOVE2 ~Perhaps. But the fact that I am here means that some part of you regrets killing me, as much as you may deny it.~
== C0SIR25J ~Why have you returned? Was death not enough to end your hatred? Must your memory haunt me until the end of my life?~
== C0SLOVE2 ~Memory? Aye... perhaps that is all I am. A mere shadow of all the crimes you have committed.~
== C0SIR25J ~I have committed no crimes.~
== C0SLOVE2 ~Is that so? Did your precious Ilmater not forsake you, for the crime of murdering your own kin?~
== C0SIR25J ~I... you are no kin of mine, regardless of the blood we share. I slew a Talonite that day.~
== C0SLOVE2 ~Heh... this is how I thought it would be. The traitor to our blood, cursed child of the De'bryll family, openly denouncing her own bloodline. Does this fill you with pride, Sirene?~
== C0SIR25J ~No, I will hear no more of this. Return to the hell you climbed from, spectre!~
== C0SLOVE2 ~Mother, father, myself... nothing but ashes now. We died so you may live. Died because of you!~
== C0SIR25J ~I-it was not... I-~
== C0SLOVE2 ~You cannot hide from the cold truth, Sirene. If my spirit can never know rest, then I shall haunt you with your guilt, for all of eternity. You, who should have died instead!~
== C0SIR25J ~N-no! I will not hear such venomous lies! I will not!~
END
++ ~Stop, T'samon! She's not responsible for what happened to you!~ EXTERN HGWRA01 25
++ ~Stop this, Gorion! She doesn't deserve this!~ EXTERN HGWRA01 25
++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't you believe it, Sirene! It's a lie!~ EXTERN HGWRA01 25 

// Cespenar

EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("C0SS1H1")~ THEN GOTO CESPENAR1
END
  
APPEND BOTSMITH
  IF ~~ THEN BEGIN CESPENAR1 SAY ~Oooo, shiny sword! Is from Celestia, hmm? ...Ow! Is hot!~
    IF ~PartyHasItem("C0SS1H1")
        !PartyHasItem("C0SCOMP1")~ THEN GOTO CESPENAR2
    IF ~PartyHasItem("C0SS1H1")
        PartyHasItem("C0SCOMP1")~ THEN GOTO CESPENAR3
  END
  
  IF ~~ THEN BEGIN CESPENAR2 SAY ~See hole in pommel? Should have enchanted gem somewhere that fits. Me knows recipe to make it more powerful, but you no has right gem, so no recipe.~
    IF ~~ THEN GOTO CESPENARNO
  END
  
  IF ~~ THEN BEGIN CESPENAR3 SAY ~See hole in pommel? Eye of Celestial gem goes in there. Me knows recipe to make sword more powerful. With 15,000 gp, me can make sword burn your enemies to ashes. Is sounds good?~
    IF ~PartyGoldLT(15000)~ THEN REPLY ~I don't have enough gold.~ GOTO CESPENARNO
    IF ~PartyGoldGT(14999)~ THEN REPLY ~That sounds good. Do it.~ DO ~SetGlobal("C0CelestialFireUpgrade","GLOBAL",1)
												SetGlobal("C0CelestialFireCraft","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 DestroyGold(15000)
                                                 TakePartyItemNum("C0SS1H1",1)
                                                 DestroyItem("C0SS1H1")
                                                 TakePartyItemNum("C0SCOMP1",1)
                                                 DestroyItem("C0SCOMP1")~ GOTO 11
    IF ~~ THEN REPLY ~Not at this time. What else?~ GOTO CESPENARNO
  END

  IF WEIGHT #-1 ~GlobalGT("C0CelestialFireCraft","GLOBAL",0)~ THEN BEGIN CESPENAR4 SAY ~Enjoy! Now Cespenar goes back to his duties, oh yes! Lots of goodies to find, lots to collect!~ [BOTSM10]
    IF ~~ THEN DO ~SetGlobal("C0CelestialFireCraft","GLOBAL",0)~ EXIT
  END

  IF ~~ THEN BEGIN CESPENARNO SAY ~Me keeps looking then, okay?~
   COPY_TRANS BOTSMITH 4
  END
END


// Various non-essential interjection for ToB.

I_C_T SARMIST 0 C0SireneSARMIST
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, such an overwhelming aura of evil... what manner of being is this?!~
END 

I_C_T SARVAM01 2 C0SireneSARVAM012
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your kind knows nothing of mercy, and shall receive none in return.~
END

I_C_T2 SARSPIR 0 C0SireneSARSPIR0
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This spirit... he is chained within this world, somehow, and not willingly. We must find him again, if we are to help him.~
END

I_C_T2 SARSPIR 3 C0SireneSARSPIR3
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Be at peace...~
END

I_C_T2 ORPHAN1 1 C0SireneORPHAN11
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>! 'Twas uncalled for to frighten the poor child so!~
END

I_C_T AMTGEN01 0 C0SireneAMTGEN010
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By the gods, this cannot be...~
END 

I_C_T AMSAEMON 0 C0SireneSaemon
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Fate truly has a strange sense of humor, 'twould seem. We cross paths with this scoundrel again.~
END 

I_C_T HGNYA01 29 C0SireneHGNYA0129
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Her compassion returns with her heart... despite the terrible deed she has committed, I dread to think of what we must do.~
END

I_C_T BALTH 6 C0SireneBalth6
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis strange that he acts so reluctantly, <CHARNAME>, given the threat the Five pose to this town.~
END

I_C_T AMASANA 1 C0SireneAMASANA1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A kind soul such as her does not deserve such an end, <CHARNAME>. But can we intervene without this ending in bloodshed?~
END

I_C_T2 AMMONK01 3 C0SireneAMMONK013
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No, I cannot stand by and allow this injustice to happen, <CHARNAME>!~ DO ~Attack("ammonk01")~
END

INTERJECT AMCLER01 4 C0SireneAMCLER014
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No thanks are necessary, sir. I wish that we could help further.~
EXTERN AMCLER01 5

I_C_T AMCLER01 6 C0SireneAMCLER016
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I would not presume to make your decisions, but... surely we can spare something.~
END

I_C_T BALTH 20 C0SireneBalth20
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I- I fear he does not lie, <CHARNAME>. His words ring true... 'twould mean that we have been deceived all along.~
END

I_C_T BAERIE25 154 C0SireneBAERIE25154
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Oh! 'Tis sooner than I expected. I have assisted with childbirth in my hometown before. I am a little nervous, but... please allow me to help.~
END

I_C_T BAERIE25 159 C0SireneBAERIE25159
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~What a beautiful child... you are truly blessed, <CHARNAME>.~
END

// Watcher's Keep interjections, ToB

I_C_T GORCAMB 0 C0SireneGORCAMB0
== GORCAMB IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hmm... though perhaps my initial judgment was inaccurate. This one has a distinctly... Baatorian scent about her.~
== C0SIR25J IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~You are mistaken. Infernal blood may run in my veins, but my soul belongs to Ilmater.~
== C0SIR25J IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~You are mistaken. Infernal blood may run in my veins, but I am no being of the Hells.~
== GORCAMB ~I see. You have gone native among the Primes. Most interesting.~
END

I_C_T GORDEMO 1 C0SireneImprisonedOneMet1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~We... we are not alone, <CHARNAME>. I do not know what to make of it, but it is as though both my blood and powers are responding to this... presence. Whether it is good or evil, I cannot say.~
END

I_C_T GORODR1 35 C0SireneGORODR135
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~What has become of your faith, that you would forsake your duty so easily? Even if <CHARNAME> would show mercy, will you even have the courage to face Helm?~
END

I_C_T GORCHR 0 C0SireneGORCHR0
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~My blood churns at the mere sight of this creature, <CHARNAME>. Trust nothing it says.~
END

I_C_T GORCAR 15 C0SireneGORCAR15
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He may be a despicable man, <CHARNAME>, but he is defenseless now. Show him mercy.~
END

// Watcher's Keep interjections, SoA

I_C_T GORCAMB 0 C0SireneGORCAMB0
== GORCAMB IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Hmm... though perhaps my initial judgment was inaccurate. This one has a distinctly... Baatorian scent about her.~
== C0SIR25J IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~You are mistaken. Infernal blood may run in my veins, but my soul belongs to Ilmater.~
== C0SIR25J IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~You are mistaken. Infernal blood may run in my veins, but I am no being of the Hells.~
== GORCAMB ~I see. You have gone native among the Primes. Most interesting.~
END

I_C_T GORDEMO 1 C0SireneImprisonedOneMet1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~We... we are not alone, <CHARNAME>. I do not know what to make of it, but it is as though both my blood and powers are responding to this... presence. Whether it is good or evil, I cannot say.~
END

I_C_T GORODR1 35 C0SireneGORODR135
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~What has become of your faith, that you would forsake your duty so easily? Even if <CHARNAME> would show mercy, will you even have the courage to face Helm?~
END

I_C_T GORCHR 0 C0SireneGORCHR0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~My blood churns at the mere sight of this creature, <CHARNAME>. Trust nothing it says.~
END

I_C_T GORCAR 15 C0SireneGORCAR15
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~He may be a despicable man, <CHARNAME>, but he is defenseless now. Show him mercy.~
END

APPEND C0SIR25J

// ToB friendship talks, LG

// 1

IF ~Global("C0SireneTalkToB","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ LG1
SAY ~By Ilmater... I have seen entire cities in suffering before, but... it never becomes any easier to witness.~ [C0BLANK]
= ~None of these innocents deserved this fate. The evil that has occurred here... it must be stopped.~
++ ~And it will be, trust me.~ + LG1.1
++ ~Do you think we can save them? I'm not a god yet.~ + LG1.2
++ ~Right now, I'm more concerned about how to get out of this mess.~ + LG1.3
END

IF ~~ LG1.1
SAY ~There is evil within and without. So long as either exists, this city will suffer. I pray to Ilmater to guidance, but all I have are questions...~
= ~I can only trust that you know what to do, <CHARNAME>. You have led us thus far. I have faith in you.~
++ ~We'll do what we can, but... I can't promise you it'll be enough.~ + LG1.4
++ ~I can make mistakes, too. I'm not as great as you think I am.~ + LG1.5
++ ~What do I care if these people suffer? This has nothing to do with me.~ + LG1.6
END

IF ~~ LG1.2
SAY ~We must do something, <CHARNAME>. We are the only ones who can.~
IF ~~ + LG1.1
END

IF ~~ LG1.3
SAY ~We cannot just ignore these people, <CHARNAME>? Not when we have even the slightest chance to help them.~
IF ~~ + LG1.1
END

IF ~~ LG1.4
SAY ~I can only hope. You have already brought us victory once, from Hell itself.~
IF ~~ + LG1.7
END

IF ~~ LG1.5
SAY ~Perhaps, but you are stronger than anyone I have ever know. This, I know to be true. If I have no faith in you, then there is no one else.~
IF ~~ + LG1.7
END

IF ~~ LG1.6
SAY ~Reconsider. I beg of you. The Bhaalspawn brought the people into this. They need a Bhaalspawn to save them.~
IF ~~ + LG1.7
END

IF ~~ LG1.7
SAY ~Ilmater has always guided me to trust in your leadership, your ability. This time... the stakes are higher than ever. We must succeed.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 2

IF ~Global("C0SireneTalkToB","GLOBAL",4) Alignment("C0Sirene",LAWFUL_GOOD)~ LG2
SAY ~We have ended a most terrible threat, but... at what cost?~ [C0BLANK]
= ~Saradush... is gone. Its people slaughtered. How could I not have anticipated this?~
= ~This was a victory, but... 'twas also a failure. I cannot feel relief, knowing it.~
++ ~I know. I feel terrible too.~ + LG2.1
++ ~It wasn't our fault.~ + LG2.1
++ ~What more could we possibly have done?~ + LG2.1
END

IF ~~ LG2.1
SAY ~If we had won sooner, perhaps we could have saved them all. Perhaps...~
= ~No, there is no point in such self-defeating thoughts. At least... their souls may find rest. No more lives will be lost... not from this, at least.~
= ~And... now we know there are more. More beings like Yaga-Shura, his equals in power and cruelty. That means many more will suffer...~
= ~We must put this to an end, <CHARNAME>. Countless lives depend on us.~
++ ~I know. We're doing all we can.~ + LG2.2
++ ~Stop it. You're only going to make me feel worse.~ + LG2.3
++ ~They're the least of my concerns now. I have myself to worry about.~ + LG2.4
END

IF ~~ LG2.2
SAY ~I only hope that it is enough. I pray to Ilmater that it is.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ LG2.3
SAY ~Ignoring it will help no one, <CHARNAME>... but yes, you are right. I am sorry.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ LG2.4
SAY ~You are as much a victim in all of this as those who have fallen, <CHARNAME>. If you will not do it for them, do it for yourself.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 3

IF ~Global("C0SireneTalkToB","GLOBAL",6) Alignment("C0Sirene",LAWFUL_GOOD)~ LG3
SAY ~'From sacrifice comes pain. From pain, endurance. From endurance, strength. May Ilmater grant me the courage to lay down my life for those I hold dear, and the strength to endure.'~ [C0BLANK]
++ ~That's the first time I've heard you utter those words in a while.~ + LG3.1
++ ~It's been a long day, Sirene. Get some rest.~ + LG3.2
++ ~Can you be done with that quickly? I'm trying to sleep.~ + LG3.0
END

IF ~~ LG3.0
SAY ~Worry not, <CHARNAME>, I will be finished in a moment.~
= ~(She mutters a few more words under her breath before departing to her own bedroll.)~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LG3.1
SAY ~Yes, I have not prayed in some time. I have been... distracted.~
IF ~~ + LG3.3
END

IF ~~ LG3.2
SAY ~In due time, <CHARNAME>. I just... needed this.~
IF ~~ + LG3.3
END

IF ~~ LG3.3
SAY ~Our battles only grow more difficult as time goes on. I needed to remind myself of what I am fighting for.~
++ ~What are you fighting for?~ + LG3.4
++ ~May I join you?~ + LG3.5
++ ~Well, I think you should rest while you can.~ + LG3.0
END

IF ~~ LG3.4
SAY ~You, of course... my friend.~
IF ~~ + LG3.6
END

IF ~~ LG3.5
SAY ~Of course you may. I always appreciate your company.~
IF ~~ + LG3.6
END

IF ~~ LG3.6
SAY ~I have decided, <CHARNAME>... when you no longer have need of me, 'tis time for me to join my brothers and sisters of the order, here in Tethyr.~
= ~Perhaps they will accept me. Perhaps not. But I should no longer fear meeting them.~
++ ~I think that's a good idea.~ + LG3.7
++ ~Won't you stay with me once this is over?~ + LG3.8
++ ~If that's what you want.~ + LG3.7
END

IF ~~ LG3.7
SAY ~Because of your support, <CHARNAME>, I can proudly call myself a true knight of the Holy Warriors of Suffering. I once had my doubts about my worth... but no longer.~
= ~You will always have my friendship and my loyalty, whether you become mortal or divine. This I promise you. Though we will part ways, I will remember our journeys together.~
= ~But there is still a ways to go before this is all over. Rest well, <CHARNAME>. Tomorrow, we come closer to the end.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LG3.8
SAY ~I cannot say I am not tempted, <CHARNAME>, but there are still things I have yet to do in my life. This is one of them.~
IF ~~ + LG3.7
END

// ToB friendship talks, CG

// 1

IF ~Global("C0SireneTalkToB","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG1
SAY ~Once again, we are thrown in the midst of the chaos. Does it ever bother you, my friend?~ [C0BLANK]
++ ~No, not really. I've grown used to killing.~ + CG1.1
++ ~I don't think about it. I just push forwards.~ + CG1.2
++ ~I'd rather focus on getting us out of it. Let's go.~ + CG1.0
END

IF ~~ CG1.0
SAY ~Yes, you are right. Another time, then.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.1
SAY ~So have I, truth be told. 'Tis a sickening thought.~
IF ~~ + CG1.3
END

IF ~~ CG1.2
SAY ~That is a way of dealing with it, I suppose. I only wish I could do the same.~
IF ~~ + CG1.3
END

IF ~~ CG1.3
SAY ~Though despite all of this being thrown your way against your will, you do not try to evade it. You face it head on. You... do not truly enjoy this, do you?~
++ ~What a strange question. You're asking me if I'm enjoying all this carnage?~ + CG1.4
++ ~No, of course I don't.~ + CG1.5
++ ~Maybe I do. It's in my blood to kill, after all.~ + CG1.6
++ ~Trust me, if it were up to me I'd run away from all this right now.~ + CG1.7
END

IF ~~ CG1.4
SAY ~Oh. Did I truly come across that way to you? I apologize.~
= ~But... I would like to know. Not to judge, simply to... understand. I believe I know you well enough to see you are more than simply a Bhaalspawn.~
++ ~I really can't say. Do *you* enjoy this?~ + CG1.8
++ ~I hate all of this. The fighting, the killing, the magic dragging me around against my will...~ + CG1.5
++ ~Perhaps I do. Just a little.~ + CG1.6
END

IF ~~ CG1.5
SAY ~That is good... I was beginning to wonder... not that I doubt you, <CHARNAME>. I would be a poor friend if I did.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.6
SAY ~Do you truly? Then... I would be cautious, <CHARNAME>. I would not like to see a friend such as you become... any less than you are.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.7
SAY ~But you cannot.~
++ ~I know that.~ + CG1.9
++ ~But is it wrong to wish it?~ + CG1.10
END

IF ~~ CG1.8
SAY ~No. I do not.~
= ~If there is any satisfaction I have, it is in ensuring that evil is put to an end. I take no pleasure in what I must do.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.9
SAY ~*sigh* You did not deserve such a difficult life, <CHARNAME>.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.10
SAY ~No. No, it is not. You did not deserve such a difficult life, <CHARNAME>.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 2

IF ~Global("C0SireneTalkToB","GLOBAL",4) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG2
SAY ~Saradush has fallen... but at least Yaga-Shura is no longer alive to cause any more tragedies. That, at least, is a blessing.~ [C0BLANK]
++ ~Still, I can't help but think we failed those people.~ + CG2.1
++ ~Unfortunately, this is just the beginning of our worries.~ + CG2.2
++ ~There's no time for this. We should move on.~ + CG2.0
END

IF ~~ CG2.0
SAY ~Of course.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG2.1
SAY ~If we could not save them, at least we avenged them... and, had we not arrived, they would have been doomed long ago. Perhaps this truly was the most we could have accomplished.~
IF ~~ + CG2.3
END

IF ~~ CG2.2
SAY ~Yes, you are right. To think that there would be others, just as strong, if not stronger than the Bhaalspawn we have defeated thus far... it is difficult to believe, but I know we will succeed.~
IF ~~ + CG2.3
END

IF ~~ CG2.3
SAY ~I mourn those who have fallen in Saradush... they were innocents in this whole affair, but this war destroyed them. Just one person, with his divine blood, brought forth this much ruination.~
= ~It angers me, <CHARNAME>. Yaga-Shura's defeat was for the good of many people, yet this battle left me with nothing but bitterness. Will it ever fade?~
++ ~I'll let you know if it does.~ + CG2.4
++ ~Even if it doesn't, you'll just have to grin and bear it.~ + CG2.4
++ ~Why are you asking me this? Let's just go.~ + CG2.0
END

IF ~~ CG2.4
SAY ~However long this feeling may last... so long as it does, I will make sure that beings like the Five will not live to threaten another innocent ever again.~
= ~We should go, <CHARNAME>. Our enemies await us, and my blade awaits them.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 3

IF ~Global("C0SireneTalkToB","GLOBAL",6) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG3
SAY ~My cloak... the symbol of my dedication to Ilmater. 'Tis like parting with an old friend.~ [C0BLANK]
= ~(She looks upon the nearby fire sadly)~
++ ~What- what are you doing?~ + CG3.1
++ ~Are you really going to burn it?~ + CG3.1
++ ~(Do nothing)~ + CG3.0
END

IF ~~ CG3.0
SAY ~(Before hesitation stops her, Sirene sends the cloak into the flames, its pure white color slowly burning into a charred black.)~
= ~Too late for regrets.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ CG3.1
SAY ~I once wore this as a mark of pride, <CHARNAME>. Now that I am no longer Ilmater's champion, it... it has no more meaning.~
= ~This is something I should have done for some time, but... I could not bear to let it go.~
++ ~Then don't. If it has no meaning now, then give it a new meaning.~ + CG3.2
++ ~But you're just going to burn it? Do you hate your former duty so much?~ + CG3.3
++ ~Destroy it, then. You're a free woman now.~ + CG3.0
END

IF ~~ CG3.2
SAY ~(She stops, unfolds the cloak and raises it in front of her.)~
= ~'Tis strange... once, this meant many things to me. Pride, faith, pain, regret... now, I look upon it, and I am not sure what to feel.~
= ~Perhaps you are right. I need not cut my ties so quickly, even if I am a different person now. Thank you for your help, my friend.~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ CG3.3
SAY ~I do not hate it, <CHARNAME>, 'twas a life that I was... am still proud of. But... like many things, I must be strong enough to put it behind me.~
= ~If I cannot bring myself to part with even this, then how can I continue on my current path? No, I must burn it.~
++ ~I guess you're right. Burn it, then.~ + CG3.0
++ ~No, I don't think you need to. You gave it meaning once. You can do it again.~ + CG3.2
END

// ToB lovetalks

// Lovetalk 1

IF ~Global("C0SireneToBLovetalk","GLOBAL",2)~ b1
SAY ~I had thought that after venturing into the depths of Hell, we would at least have a moment's respite. 'Twould seem we could not even have that.~ [C0BLANK]
= ~Here we are once more, <CHARNAME>. Does it bother you?~
++ ~It does. I thought I was done with adventuring, at least for a while.~ + b1.1
++ ~Not really. This is where I belong - getting my boots dirty on the road.~ + b1.1
++ ~Perhaps we could talk later instead. I've got a lot on my mind right now.~ + b1.0
END

IF ~~ b1.0
SAY ~Yes, of course. I just thought you would appreciate the distraction talking would bring. I am not eager to return to this life, but if you must, then I will follow you.~
= ~I am here for you, my love, now and always.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

IF ~~ b1.1
SAY ~I knew your journey was not done yet, but when I learned that we were leaving, I... I was disappointed. I thought 'twould be our time to spend together in peace at last.~
= ~We will still have that chance, will we not, <CHARNAME>? You and me, somewhere in another place, living happily ever after?~
+ ~Gender(Player1,MALE)~ + ~Maybe with some children. I think I'd like that.~ + b1.2
+ ~Gender(Player1,FEMALE)~ + ~Maybe with some children. I think I'd like that.~ + b1.3
++ ~I'm sure we will.~ + b1.4
++ ~Who knows? Anything could happen.~ + b1.4
++ ~I don't know. I may have to take Bhaal's place among the gods.~ + b1.5
END

IF ~~ b1.2
SAY ~I have never considered myself as a mother. I have always thought of my blood as a curse, one that I did not wish to burden another with... but with you, I... I think 'twould be worth it.~
IF ~~ + b1.4
END

IF ~~ b1.3
SAY ~We could even build an orphanage together, raising others as the priests of my church raised me. I would like that.~
IF ~~ + b1.4
END

IF ~~ b1.4
SAY ~(sigh) This is all just wishful thinking. 'Tis more important that we put the last part of your destiny to a swift end.~
= ~Then... I hope it will finally be our time to spend together.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

IF ~~ b1.5
SAY ~I... I have tried not to consider that possibility. The thought of having you vanish from my life is worse than anything I could imagine.~
= ~If 'twere truly what is meant to be, <CHARNAME>, then... would you want that?~
++ ~And leave you behind? Not in a million years.~ + b1.6
++ ~I don't want it. I want to be mortal.~ + b1.6
++ ~Yes. I would.~ + b1.7
END

IF ~~ b1.6
SAY ~Then you have given me at least a little to hope for. That is enough.~
IF ~~ + b1.4
END

IF ~~ b1.7
SAY ~I see... then perhaps 'tis best if we... end what is between us, so I will not leave you with any burdens.~
= ~This was not what I wanted, <CHARNAME>, but what you want matters more to me than... than anything.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

// Post-Saradush

IF ~Global("C0SireneToBLovetalk","GLOBAL",4)~ b2
SAY ~(As Sirene rests at your side, you hear panicked breaths, followed by a sharp gasp.) N-no!~ [C0BLANK]
++ ~Nightmares?~ + b2.1
++ ~(Take her hand)~ + b2.1
++ ~(Pretend to be asleep)~ + b2.0
END

IF ~~ b2.0
SAY ~(Through half-lidded eyes, you see Sirene's dim figure sitting up, face cupped in her hands.)~
= ~(She eventually lies down again, though you doubt she will get any sleep tonight.)~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.1
SAY ~<CHARNAME>? ...'Twas a terrible nightmare. I am sorry for disrupting your rest.~
++ ~Are you all right?~ + b2.2
++ ~What did you dream of?~ + b2.3
++ ~Well, we have a long day ahead of us tomorrow, so try and get what rest you can.~ + b2.4
END

IF ~~ b2.2
SAY ~No... I am not.~
IF ~~ + b2.3
END

IF ~~ b2.3
SAY ~Saradush... burned to the ground, its people slaughtered. It was innocent of any crime, <CHARNAME>, yet it fell because of the Bhaalspawn. How could I possibly rest knowing that?~
++ ~You didn't see the city destroyed, but I see it still greatly affects you.~ + b2.5
++ ~I know. I feel as terrible about it as you do.~ + b2.6
++ ~It had nothing to do with us, Sirene. You don't need to beat yourself up over it.~ + b2.6
END

IF ~~ b2.4
SAY ~Go to sleep first, my love. I... I need some time awake. Perhaps the whole night.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.5
SAY ~'Tis worse that I did not see Saradush fall with my own eyes, <CHARNAME>. All I have are my own thoughts of the people dying, and I, without any power to save them...~
IF ~~ + b2.7
END

IF ~~ b2.6
SAY ~I know we are not to blame for what happened, yet... I wonder if there was anything more we could have done, perhaps to save those innocents...~
IF ~~ + b2.7
END

IF ~~ b2.7
SAY ~'Tis good that we defeated Yaga-Shura, ensured that his evil will threaten no one else, yet... this does not feel like victory. Far from it, in truth.~
++ ~Don't worry. Once we've defeated all of this 'Five', we'll have truly won.~ + b2.8
++ ~We did all we could. I can assure you of that.~ + b2.8
++ ~Have some rest. We'll carry on in the morning.~ + b2.10
END

IF ~~ b2.8
SAY ~(She nods slightly) I... feel a little better. Thank you for listening, <CHARNAME>. You should have some rest.~
++ ~(Take her into your arms and undo the laces of her underclothes)~ + b2.11
++ ~You, too.~ + b2.10
++ ~(Go back to sleep.)~ + b2.10
END

IF ~~ b2.10
SAY ~(Sirene leans forward to kiss you slightly before rising.) I need some time to clear my thoughts. Rest well.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.11
SAY ~<CHARNAME>... <CHARNAME>, I think this is hardly the time-~
++ ~You're stressed. This will help, I promise.~ + b2.12
++ ~Maybe you're right. Now's not the time.~ + b2.10
END

IF ~~ b2.12
SAY ~(She sighs, but nods slightly, reaching for your clothing to undress you in turn. She surrenders herself to you and allows you to embrace her fully.)~
= ~(Moments later, when you are both relaxed and content, she is resting peacefully in your arms.)~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

// Sirene's talk after Gorion Wraith:

IF ~Global("C0SireneWraithSpirit1","GLOBAL",2)~ b3
SAY ~Foul specter... to try and torture my mind in such a way. There is no mercy for such depraved... such remorseless creatures. Using my doubts as a weapon to strike at me... only a fiend could stoop so low!~ [C0BLANK]
++ ~I'm sorry.~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.1
++ ~Don't you believe any of it. It was all a cruel joke.~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.2
++ ~That spirit may have had a point.~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.3
END

IF ~~ b3.1
SAY ~You... you have nothing to apologize for, <CHARNAME>. 'Twas not your fault that any of this happens. It... it is mine...~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.2
SAY ~Is it? I am not even sure myself.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.3
SAY ~No... no! I cannot believe that! If I accept that spirit's poisonous words at the truth, then everything that I have stood for... everything I...~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.4
SAY ~I... I have lived my life following Ilmater's guidance, yet all I remember are not my deeds, but my failures... doubts that haunt me to this day.~
IF ~~ + b3.6
END

IF ~~ b3.5
SAY ~I... I gave up everything I once believed in for the sake of finding my own path towards what I believe in. But... I clearly have not rid myself of doubts yet.~
IF ~~ + b3.6
END

IF ~~ b3.6
SAY ~That... that wraith shamed me with my own self-doubt, <CHARNAME>. I am ashamed to admit it, but... if I did not have that weakness within me, none of that would have happened.~
++ ~We all have doubts, Sirene. You're no less of a person because of it.~ + b3.7
++ ~You don't know that. It could have twisted any words in order to hurt you.~ + b3.8
++ ~What can I say? Maybe you're right.~ + b3.9
END

IF ~~ b3.7
SAY ~I... I know, <CHARNAME>, yet my weakness could have led to my death, or worse... yours, had your willpower not won the day. I cannot allow that to happen again.~
IF ~~ + b3.9
END

IF ~~ b3.8
SAY ~Perhaps, but even then, 'twas it not I that gave it the weapon to harm me the most cruelly? I cannot absolve myself of blame, even knowing of that creature's evil nature.~
IF ~~ + b3.9
END

IF ~~ b3.9
SAY ~I... I cannot bring myself to think on this any longer, <CHARNAME>. I am at fault for allowing my doubts to almost destroy us both... and that is something I cannot forgive myself for.~
IF ~~ EXIT
END

// Fourth lovetalk

IF ~Global("C0SireneToBLovetalk","GLOBAL",6)~ b4
SAY ~I- I hope my prior moment of weakness did not concern you, <CHARNAME>. I am... better now, thanks to you.~ [C0BLANK]
++ ~I'm glad. I was frightened for you.~ + b4.1
++ ~It wasn't weakness, Sirene. No one could call you weak for how you reacted.~ + b4.2
++ ~Are you sure? I'm willing to do anything to help if you're not fine.~ + b4.3
END

IF ~~ b4.1
SAY ~Ever since our encounter with that evil spectre, I have considered the truth of what happened to... to my parents.~
= ~I remember almost nothing about what happened. Sometimes, I believe I dream of it... I see images of what could have happened, but my mind cannot make sense of them.~
= ~I think that somewhere, deep inside my mind, I had already made a picture of what I believed had happened... what I believed my mother thought of me. That is what those wraiths used to torment me.~
++ ~But that's not what really happened. Do you fully believe that now?~ + b4.4
++ ~Your parents might have given their lives for you, but it was because they loved you. You shouldn't doubt anyone for that. Not them, and definitely not yourself.~ + b4.5
++ ~I think you should keep thinking on it. You're on the right track.~ + b4.5
END

IF ~~ b4.2
SAY ~I know, <CHARNAME>. Now I understand.~
IF ~~ + b4.1
END

IF ~~ b4.3
SAY ~No, no, truly, 'tis alright. I have made my peace.~
IF ~~ + b4.1
END

IF ~~ b4.4
SAY ~Yes, I- I do.~
IF ~~ + b4.5
END

IF ~~ b4.5
SAY ~I must honor the sacrifice my mother made to save my life... and that means to live fully, and... love freely. To carry on holding this guilt is a disservice to them.~
= ~(smile) I think my parents would have loved you, <CHARNAME>. I may have never known them, but... they would have approved of the <PRO_MANWOMAN> who brought such joy in my life.~
= ~Perhaps in some ways, that evil wraith did some good after all. It has strengthened my resolve.~
= ~Ah... no, that is wrong. *You* did that for me, my love. Once again, you have saved me from myself.~
++ ~You did it yourself. I just gave you a push in the right direction.~ + b4.6
++ ~I hope you can live without that burden from now on.~ + b4.6
++ ~Anything for you, my love.~ + b4.6
END

IF ~~ b4.6
SAY ~I think I have been blessed more times than I know. I was saved by my parents, raised and nurtured by Ilmater, and now... loved by you.~
= ~How could I possibly have any more doubts about my life?~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

// Second rest lovetalk

IF ~Global("C0SireneToBLovetalk","GLOBAL",8)~ b5
SAY ~'Tis a quiet night.~ [C0BLANK]
++ ~You're right.~ + b5.1
++ ~Let's enjoy it while we can.~ + b5.1
++ ~I prefer the daytime. Let's go to sleep.~ + b5.1
END

IF ~~ b5.1
SAY ~(She wraps her arms around her legs, shivering)~
= ~I- I wanted to ask you, <CHARNAME>, if you would... oh, curse it, words cannot satisfy what I have to...~
= ~(She stops mid-sentence, watching you with barely-restrained desire for a moment, before leaping into you, pushing you down upon the sheets, kissing your neck and biting your ear.)~
++ ~Wh-whoa! What's gotten into you?~ + b5.2
++ ~(Reciprocate her advances)~ + b5.3
++ ~No, stop it. I'm not in the mood right now.~ + b5.4
END

IF ~~ b5.2
SAY ~Shh. This was long overdue, my love. Just enjoy the moment while it lasts.~
IF ~~ + b5.3
END

IF ~~ b5.3
SAY ~(She pulls your clothing away with eagerness, before stripping herself down in turn. She is smiling coyly - an unusual expression for her.)~
= ~Tonight I am yours to use as you please, <CHARNAME>. I hope... you will not disappoint me.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END 

IF ~~ b5.4
SAY ~I- very well, <CHARNAME>. I cannot force myself upon you. Perhaps we should sleep apart tonight, instead. Rest well.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",3) RestParty()~ EXIT
END

// Post-rest talk
IF ~Global("C0SireneToBLovetalk","GLOBAL",10)~ b6
SAY ~I hope you had a pleasant sleep, <CHARNAME>.~ [C0BLANK]
++ ~You're smiling like a cat that got into the cream. I guess that means you enjoyed our night together?~ + b6.1
++ ~Oh, absolutely.~ + b6.1
++ ~You were... different, last night. In a good way.~ + b6.1
END

IF ~~ b6.1
SAY ~I thought you needed something to take your mind off recent events. This, I felt you would appreciate... as I certainly did.~
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Last night was wonderful. Especially when you used your powers to restore us for another round.~ + b6.2
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Last night was wonderful. Especially that fiery-hand thing you did to spice things up.~ + b6.2
++ ~I'm touched, but you really didn't have to do it for me. Just having you is more than enough.~ + b6.3
++ ~It was very nice. Shall we go again?~ + b6.4
++ ~Let's get moving. Can't keep my brothers and sisters waiting, can we?~ + b6.5
END

IF ~~ b6.2
SAY ~(blush) That was... well, I am not sure of how that idea came to me. I was... overly excited.~
IF ~~ + b6.5
END

IF ~~ b6.3
SAY ~For us, my love... I did it for us. Your pleasure... is my pleasure. Just as your pain is mine.~
IF ~~ + b6.5
END

IF ~~ b6.4
SAY ~(smile) Another night, perhaps. If we attempted everything we did last night once more I... *ahem* doubt that either of us would be able to walk easily afterwards.~
IF ~~ + b6.5
END

IF ~~ b6.5
SAY ~Shall we move on? Back to the fields of battle, I fear. I cannot wait to be away from them once more. Doubly so, now.~
IF ~~ EXIT
END

// Abazigal and Sendai defeated

IF ~Global("C0SireneFourFive","GLOBAL",1)~ b7
SAY ~Abazigal and Sendai... the last of our enemies, both fallen. We... we were victorious.~ [C0BLANK]
++ ~Not yet. One more foe remains.~ + b7.1
++ ~You sound like you can't believe it.~ + b7.2
++ ~I told you we'd win.~ + b7.3
++ ~Yes, 'we' were victorious. We did it together.~ + b7.3
END

IF ~~ b7.1
SAY ~I know, <CHARNAME>, 'tis just that...~
IF ~~ + b7.3
END

IF ~~ b7.2
SAY ~No, 'tis quite the opposite...~
IF ~~ + b7.3
END

IF ~~ b7.3
SAY ~(Suddenly, she drops her weapon, running forward to hug you, laughing quietly)~
= ~I... I never doubted you, <CHARNAME>. I knew we would emerge victorious. You have never failed anyone. Not me, and not yourself. This is your victory, <CHARNAME>.~
++ ~I- I wouldn't say I've *never* failed... but, yeah.~ + b7.4
++ ~No, my love, it's our victory.~ + b7.4
++ ~(Awkwardly pat her on the back)~ + b7.4
END

IF ~~ b7.4
SAY ~We have come so far, <CHARNAME>, I can hardly believe we would fail now. The end is so close...~
= ~(When she parts from you, you notice there are tears in her eyes- of joy, not sadness)~
= ~I can see us now, in a future not too far away... we can make it, <CHARNAME>. I know it.~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

// ToB, final challenge, killing the Ravager, romance only

IF ~Global("C0SireneChallenge5","GLOBAL",1)~ b9
SAY ~'Tis soon to be the end, is it not?~ [C0BLANK]
++ ~Yep.~ + b9.1
++ ~For Melissan. Not for us.~ + b9.1
++ ~Yes. Now let's get to it.~ + b9.1
END

IF ~~ b9.1
SAY ~Then I suppose I cannot put this off any longer...~
= ~(She takes a deep breath before continuing.)~
= ~...Will you... marry me, <CHARNAME>?~
++ ~W-what?!~ + b9.2
++ ~Are you truly proposing to me?~ + b9.2
++ ~I will.~ + b9.4
END

IF ~~ b9.2
SAY ~Not now, of course. But once we are victorious- and we will be, my love- I want you to marry me.~
++ ~I didn't expect you to be so confident about this.~ + b9.3
++ ~I will, Sirene.~ + b9.4
++ ~I'm not sure...~ + b9.5
END

IF ~~ b9.3
SAY ~'Tis unlike me, I know. But... I have considered this for far too long. I cannot continue without knowing your answer.~
++ ~You don't have to say anything else. I've wanted to propose to you too, since forever. Let's get married once this is all over.~ + b9.4
++ ~Well, you threw me off guard when you just went and said it, but now that I've recovered... yes. I accept.~ + b9.4
++ ~I'm not sure...~ + b9.5
++ ~No, Sirene. I'm sorry. I love you, and I'll stay with you forever, but marriage is something I don't want.~ + b9.6
END

IF ~~ b9.4
SAY ~Thank you...~
IF ~PartyHasItem("c0sring")~ + b9.4a
IF ~!PartyHasItem("c0sring")~ + b9.9
END

IF ~~ b9.4a
SAY ~(You notice a brief flash of light from Sirene's hand, which she raises to show you her mother's wedding ring)~
= ~I wanted to keep it for this occasion... I know 'tis a mere formality, and 'tis a little embarrassing to ask this of you, but... would you do me the honor?~
++ ~Of course... my beloved wife.~ + b9.9
++ ~(Put the ring on her finger)~ + b9.9
END

IF ~~ b9.5
SAY ~Why... why do you hesitate, my love? Do you... not feel as I do?~
++ ~I'm sorry, Sirene. I love you, but I just don't want the commitment.~ + b9.6
++ ~I've decided. I will take my father's place in the heavens.~ + b9.7
++ ~Forgive me. I didn't want to say it until now, but... I no longer have feelings for you.~ + b9.8
++ ~Never mind. When you make eyes like that... *sigh* all right. I accept.~ + b9.4
++ ~Forget what I said. I would like nothing more than to marry you.~ + b9.4
END

IF ~~ b9.6
SAY ~I see... 'tis not the answer I desired, but I will accept it. But do not think you will escape me that easily. I will change your mind one day.~
= ~(She smiles before kissing you.)~
= ~Now I will have no more regrets. Through joy and sorrow, we are now joined as one. Thank you... my love.~
IF ~~ DO ~SetGlobal("C0SirenePropose","GLOBAL",1) SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

IF ~~ b9.7
SAY ~*sigh* I had hoped you would not say that. You have the right, and I will not stop you if that is truly your desire.~
= ~But... I will continue to hope. Hope that when the time comes, I will change your mind.~
= ~(She leans forward and kisses you.)~
= ~Regardless... there is still time. When we are freed from all these burdens... then perhaps we can decide what the future truly holds.~
IF ~~ DO ~SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

IF ~~ b9.8
SAY ~I- I see. I... I had hoped that we would be together forever, but...~
= ~No. I will speak no more of this. We... we should press on.~
IF ~~ DO ~SetGlobal("C0SireneChallenge5","GLOBAL",2)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ b9.9
SAY ~(She leans forward and kisses you.)~
= ~Now I will have no more regrets. Through joy and sorrow, we are now joined as one. Thank you... my love.~
IF ~~ DO ~SetGlobal("C0SirenePropose","GLOBAL",1) SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

// Temple of Ilmater

IF ~Global("C0SireneIlmaterTemple","GLOBAL",1)~ temple
SAY ~<CHARNAME>, may I have your map for a moment?~ [C0BLANK]
++ ~Sure. Here you go.~ + temple1
++ ~Why do you need it?~ + temple2
END

IF ~~ temple1
SAY ~Thank you. Yes... it is as I've heard.~
= ~There is a village within this region which houses a chapel of Ilmater marked upon the map. I would... like to visit it, if we have the time.~
++ ~Why didn't you tell me earlier?~ + temple3
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~But you're no longer a paladin of Ilmater.~ + temple4
++ ~I guess we can stop by if we get a chance.~ + temple5
++ ~Not right now. We've got important matters at hand.~ + temple6
END

IF ~~ temple2
SAY ~There is something I need to... confirm. It will not take long.~
++ ~Sure. Take it.~ + temple1
++ ~If you must.~ + temple1
END

IF ~~ temple3
SAY ~I did not expect to be taken here of all places. I did not even know where we were before, but now that I know, I would like to see it.~
IF ~~ + temple5
END

IF ~~ temple4
SAY ~Aye, but I still consider myself a follower, even if I no longer have Ilmater's favor. 'Twould... bring me some peace of mind.~
IF ~~ + temple5
END

IF ~~ temple5
SAY ~There is no rush. This is not an important thing, just a favor I would ask, when we have the time. Tell me when you are willing to visit, and I will lead us there.~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",2)~ EXIT
END

IF ~~ temple6
SAY ~True enough. When we have the time, however, perhaps you could consider it? If you change your mind, tell me and I will lead us there.~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneIlmaterTemple","GLOBAL",3)~ temple.0
SAY ~Oh...~ [C0BLANK]
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("c0scut4")~ EXIT
END

IF ~Global("C0SireneIlmaterTemple","GLOBAL",4)~ temple.1
SAY ~When I learned that there was a temple of Ilmater I could pay my respects to, this... *this* was not what I had expected.~ [C0BLANK]
++ ~What had you expected?~ + temple.2
++ ~No kidding. Looks like this place fell apart a while ago.~ + temple.3
++ ~There's nothing here. This was a waste of time.~ + temple.4
END

IF ~~ temple.2
SAY ~I... do not know. I knew it was aged, but I believed there may have still been someone here, yet there is none. No, wait...~
IF ~~ + temple.4
END

IF ~~ temple.3
SAY ~Perhaps the Bhaalspawn wars tore this chapel down. Or perhaps it was abandoned long ago, yet no one bothered to come... wait.~
IF ~~ + temple.4
END

IF ~~ temple.4
SAY ~Strange... the temple has fallen, but... the ground was blessed, somewhat recently. Someone has been here.~
= ~There may be something around this chapel. We should look around, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",5)~ EXIT
END

IF ~Global("C0SireneHolyBook","GLOBAL",1)~ holybook
SAY ~That... is the holy tome of the Ilmatari church. Every initiate knows at least the tenets of faith. Wait... there is more.~ [C0BLANK]
= ~I see... there are rituals for the priesthood of Ilmater written in these pages, <CHARNAME>, similar to divine magic.~
= ~These were gifted by Ilmater to his Painbearers to... manipulate pain. Transfer it from one person to another, harden the body to better endure it, even bestow it upon others...~
= ~This is a valuable item to the church, <CHARNAME>. Why would the priests have left it behind?~
++ ~Maybe they didn't. Someone might have put it here afterwards.~ + holybook1
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Can you make use of it?~ + holybook2
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~Can you make use of it?~ + holybook3
END

IF ~~ holybook1
SAY ~Yes... it could have been whoever blessed this place. Perhaps they meant for someone to find it... or to protect it from unsavory hands.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + holybook2
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + holybook3
END

IF ~~ holybook2
SAY ~I may be able to use some of these rituals, but... I am not a priest. They would not have the same power in my hands as that of a true Painbearer. Some are too complex for me to possibly use.~
IF ~~ + holybook4
END

IF ~~ holybook3
SAY ~(She shakes her head) These rituals require a connection to a god to access their power, something that I no longer have. I cannot use this tome... but perhaps another priest could.~
IF ~~ + holybook4
END

IF ~~ holybook4
SAY ~While this venture was less than I expected, some good came of it after all. Perhaps this tome may help us in the future.~
= ~Give me some time to say a prayer to Ilmater at the altar before we leave, <CHARNAME>... wait! Someone is coming!~
IF ~~ DO ~SetGlobal("C0SireneHolyBook","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c0scut5")~ EXIT
END

IF ~Global("C0SireneBandits","GLOBAL",1)~ bandits
SAY ~Raiders, bandits. It seems as though they were lying in wait for someone who could retrieve what the followers of Ilmater left here.~
= ~*sigh* I am sorry, <CHARNAME>. This was meant to be a momentary diversion. I hoped that we could come somewhere peaceful and have a brief respite from the battles we must face, but it seems there is no escaping them no matter where we go.~
++ ~I appreciate the effort, even if it didn't work out.~ + bandits1
++ ~What should we do now?~ + bandits1
++ ~Let's go. We'd best return to dealing with the Bhaalspawn.~ + bandits1
END

IF ~~ bandits1
SAY ~One day, perhaps the people will return, and this place will be built anew, I can only hope. To see a place such as this fall and become lost... such a pity.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + bandits2
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + bandits3
END

IF ~~ bandits2
SAY ~A moment, <CHARNAME>. I should consecrate these grounds with Ilmater's blessing before we leave. It should not be disturbed again.~
IF ~~ DO ~SetGlobal("C0SireneBandits","GLOBAL",2)
	StartCutsceneMode()
	FadeToColor([20.0],0)
	Wait(2)
	PlaySound("CAS_P03")
	AddExperienceParty(10000)
	CreateVisualEffectObject("icprayi",Myself)
	FadeFromColor([20.0],0)
	EndCutSceneMode()~ EXIT
END

IF ~~ bandits3
SAY ~I have concerns for leaving this place as it is, but there is nothing I can do, I fear. We should go, <CHARNAME>, before we draw more threats to this holy place.~
IF ~~ DO ~SetGlobal("C0SireneBandits","GLOBAL",2) AddExperienceParty(10000)~ EXIT
END

// Post-aunt talk

IF ~Global("C0SireneMeetsAunt","GLOBAL",3)~ aunt
SAY ~Thank you for allowing me this time to spend with my aunt, <CHARNAME>. I have heard such... fantastic stories.~
= ~I am happy to know there are still others of my family that live, and care for me, but at the same time... to know that my parents loved me, and 'twas cruel fate that tore them apart, I- I...~
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Hug her)~ + aunt1
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Hug her)~ + aunt2
++ ~What would you like me to call you now? Sirene, or Rainee?~ + aunt3
++ ~Yes, well, that's enough of that. We've got business to attend to.~ + aunt4
END

IF ~~ aunt1
SAY ~Th-thank you, my love. My family is gone... no, not entirely true. I still have you. You are as close to family as I have ever had.~
IF ~~ + aunt5
END

IF ~~ aunt2
SAY ~Th-thank you, <CHARNAME>. My family is gone... but 'tis good to know I still have a friend at my side.~
IF ~~ + aunt5
END

IF ~~ aunt3
SAY ~I have always been Sirene to you, <CHARNAME>. That will never change.~
IF ~~ + aunt5
END

IF ~~ aunt4
SAY ~(She wipes a tear from her eye and nods.)~
IF ~~ + aunt6
END

IF ~~ aunt5
SAY ~It is enough to know that I was not despised or abandoned... I feel as though a weight, one which I did not know was there, has now been removed. And now...~
= ~(She looks down at her mother's wedding ring with a tearful smile.)~
= ~I... I know she would have approved of who I am today. She would wish for me to be with you to the end of this journey.~
IF ~~ + aunt6
END

IF ~~ aunt6
SAY ~Lead on, <CHARNAME>. I will be right behind you.~
IF ~~ DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",4)~ EXIT
END

// Sirene-initiated flirts

// Flirts for Sirene, C0SireneRomanceActive=2

IF ~Global("C0SireneFlirtToB","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ flirt3
SAY ~(Sirene's eyes are full of warmth as she approaches you.)~ [C0BLANK]
IF ~Global("C0SireneFlirtCounter3","GLOBAL",0)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f1
IF ~Global("C0SireneFlirtCounter3","GLOBAL",1)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f2
IF ~Global("C0SireneFlirtCounter3","GLOBAL",2)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f3
IF ~Global("C0SireneFlirtCounter3","GLOBAL",3)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f4
IF ~Global("C0SireneFlirtCounter3","GLOBAL",4)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f5
IF ~Global("C0SireneFlirtCounter3","GLOBAL",5)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f6
IF ~Global("C0SireneFlirtCounter3","GLOBAL",6)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f7
IF ~Global("C0SireneFlirtCounter3","GLOBAL",7)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f8
IF ~Global("C0SireneFlirtCounter3","GLOBAL",8)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f9
IF ~Global("C0SireneFlirtCounter3","GLOBAL",9)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f10
IF ~Global("C0SireneFlirtCounter3","GLOBAL",10)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f11
IF ~Global("C0SireneFlirtCounter3","GLOBAL",11)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f12
IF ~Global("C0SireneFlirtCounter3","GLOBAL",12)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f13
IF ~Global("C0SireneFlirtCounter3","GLOBAL",13)~ DO ~IncrementGlobal("C0SireneFlirtCounter3","GLOBAL",1)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f14
IF ~TimeOfDay(NIGHT) Global("C0SireneFlirtCounter3","GLOBAL",14)~ DO ~SetGlobal("C0SireneFlirtCounter3","GLOBAL",0)
RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f15
END

IF ~~ f1
SAY ~(She strokes your thighs gently, perhaps consciously trying to arouse you with her touch)~
IF ~~ EXIT
END

IF ~~ f2
SAY ~Love is such a beautiful thing, <CHARNAME>. That you are the object of my love makes it all the better.~
IF ~~ EXIT
END

IF ~~ f3
SAY ~(She walks close and embraces you from behind.)~
= ~Sometimes I wonder if I can still hold you after this is all over... but until that time comes, let me enjoy these moments while I can.~
IF ~~ EXIT
END

IF ~~ f4
SAY ~(She takes your hand and guides you through the beginning motions of a dance, then stops and laughs.)~
= ~I could not stop myself, <CHARNAME>. I wish that one day we may do it properly.~
IF ~~ EXIT
END

IF ~~ f5
SAY ~(She looks down upon her armor.) Once I thought I wore this to protect myself. Now I know 'tis truly meant to protect you, my love.~
IF ~~ EXIT
END

IF ~~ f6
SAY ~Once, when I looked upon you, my blood would warm my cheeks. Now, I no longer feel that... because I no longer doubt my love for you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f7
SAY ~(She pulls you close to her and begins to fondle you intimately) You make me very glad that I did not swear my vow of chastity, <CHARNAME>. (laugh) Strange how these things happen.~
IF ~~ EXIT
END

IF ~~ f8
SAY ~We will succeed, my love. I promise.~
IF ~~ EXIT
END

IF ~~ f9
SAY ~I have... attempted to learn more things about cooking lately. I hope the last meal I made was good enough.~
++ ~Anything you make looks good to me.~ + f9a
++ ~I could certainly taste the improvement.~ + f9b
++ ~Keep working on it. You'll become a master in no times.~ + f9c
END

IF ~~ f9a
SAY ~Now, I cannot have that. After all, how will I ever improve myself without honesty?~
IF ~~ EXIT
END

IF ~~ f9b
SAY ~Oh, that is good. Here I was thinking 'twas too bland for you.~
IF ~~ EXIT
END

IF ~~ f9c
SAY ~(laugh) I seriously doubt that... but if you say so.~
IF ~~ EXIT
END

IF ~~ f10
SAY ~I have dreamed for someone to love for so long... I never would have expected that someone to be you, <CHARNAME>.~
= ~Not that I have any regrets.~
IF ~~ EXIT
END

IF ~~ f11
SAY ~(She cups your face in her hands while leaning forward to kiss you, strongly and passionately. This amount of confidence is surprising, coming from her.)~
IF ~~ EXIT
END

IF ~~ f12
SAY ~You... and me. Tonight...~
IF ~~ EXIT
END

IF ~~ f13
SAY ~(She takes your hand and presses a bar of chocolate into your hands.) Eat, <CHARNAME>. You will feel better, I promise.~
IF ~~ EXIT
END

IF ~~ f14
SAY ~She touches your face gently, tracing the contours of your features.~
IF ~Gender(Player1,MALE)~ + f14a
IF ~Gender(Player1,FEMALE)~ + f14b
END

IF ~~ f14a
SAY ~You are so handsome, my love. I am still amazed that one such as you could be mine.~
IF ~~ EXIT
END

IF ~~ f14b
SAY ~You are so beautiful, my love. I am still amazed that one such as you could be mine.~
IF ~~ EXIT
END

IF ~~ f15
SAY ~The night may be dark, but I have no fears, because you are my light... my love.~
IF ~~ EXIT
END

// Player-initiated dialogue, ToB. Again, in the bottom of the file, and, again, no flirting for the final battle, AR6200.

IF ~IsGabber(Player1) AreaCheck("AR6200")~ PPID0
SAY ~<CHARNAME>, 'tis the final battle of your fate. Let us end this.~
IF ~~ EXIT
END

IF ~IsGabber(Player1) !Global("C0SireneRomanceActive","Global",2)~ C0SirenePID    			
SAY ~You have need of me, <CHARNAME>?~ [C0SIR015]
+ ~Global("C0SireneIlmaterTemple","GLOBAL",2)
OR(8)
AreaCheck("AR3000")
AreaCheck("AR5200")
AreaCheck("AR5202")
AreaCheck("AR5203")
AreaCheck("AR6000")
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~ + ~I'd like to go to that temple you mentioned.~ + gotemple
+ ~RandomNum(4,1)~ + ~How are you doing?~ + p1.1
+ ~RandomNum(4,2)~ + ~How are you doing?~ + p1.2
+ ~RandomNum(4,3)~ + ~How are you doing?~ + p1.3
+ ~RandomNum(4,4)~ + ~How are you doing?~ + p1.4
++ ~May I ask you a question?~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~I'd rather you not talk with me for a while, Sirene.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~I miss talking to you. You can chat me up whenever you wish.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~I think there's something wrong with your voice.~ + stringfix
++ ~No, never mind.~ EXIT
END

IF ~IsGabber(Player1) Global("C0SireneRomanceActive","Global",2)~ C0SireneRomancePID    			
SAY ~(Sirene smiles as you approach.) I am by your side.~ [C0SIR016]
+ ~Global("C0SireneIlmaterTemple","GLOBAL",2)
OR(8)
AreaCheck("AR3000")
AreaCheck("AR5200")
AreaCheck("AR5202")
AreaCheck("AR5203")
AreaCheck("AR6000")
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~ + ~I'd like to go to that temple you mentioned.~ + gotemple
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirt
+ ~RandomNum(4,1)~ + ~How are you doing?~ + p1.1
+ ~RandomNum(4,2)~ + ~How are you doing?~ + p1.2
+ ~RandomNum(4,3)~ + ~How are you doing?~ + p1.3
+ ~RandomNum(4,4)~ + ~How are you doing?~ + p1.4
++ ~May I ask you a question?~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~I'd rather you not talk with me for a while, Sirene.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~I miss talking to you. You can chat me up whenever you wish.~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~I think there's something wrong with your voice.~ + stringfix
++ ~Never mind.~ EXIT
END

// Visit temple of Ilmater

IF ~~ gotemple
SAY ~Yes, of course. We can go now, if you would like that.~
++ ~Lead the way.~ + gotemple2
++ ~Maybe not right now.~ EXIT
END

IF ~~ gotemple2
SAY ~Follow me. 'Tis quite a long walk.~
IF ~~ DO ~StartCutSceneMode()
FadeToColor([30.0],0)
Wait(4)
ActionOverride(Player1,LeaveAreaLUA("c0sir3","",[1362.547],W))
ActionOverride(Player2,LeaveAreaLUA("c0sir3","",[1414.549],W))
ActionOverride(Player3,LeaveAreaLUA("c0sir3","",[1482.548],W))
ActionOverride(Player4,LeaveAreaLUA("c0sir3","",[1349.610],W))
ActionOverride(Player5,LeaveAreaLUA("c0sir3","",[1416.608],W))
ActionOverride(Player6,LeaveAreaLUA("c0sir3","",[1490.609],W))
FadeFromColor([30.0],0)
EndCutSceneMode()~ EXIT
END

// Flirt Menu

IF ~~ flirt
SAY ~Yes?~ [C0SIR017]
+ ~RandomNum(4,1)~ + ~(Kiss her)~ + r1.1
+ ~RandomNum(4,2)~ + ~(Kiss her)~ + r1.2
+ ~RandomNum(4,3)~ + ~(Kiss her)~ + r1.3
+ ~RandomNum(4,4)~ + ~(Kiss her)~ + r1.4
+ ~RandomNum(4,1)~ + ~(Caress her face)~ + r2.1
+ ~RandomNum(4,2)~ + ~(Caress her face)~ + r2.2
+ ~RandomNum(4,3)~ + ~(Caress her face)~ + r2.3
+ ~RandomNum(4,4)~ + ~(Caress her face)~ + r2.4
+ ~RandomNum(4,1)~ + ~(Take her hand)~ + r3.1
+ ~RandomNum(4,2)~ + ~(Take her hand)~ + r3.2
+ ~RandomNum(4,3)~ + ~(Take her hand)~ + r3.3
+ ~RandomNum(4,4)~ + ~(Take her hand)~ + r3.4
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
+ ~RandomNum(4,1)~ + ~(Offer her chocolate)~ + f9.1
+ ~RandomNum(4,2)~ + ~(Offer her chocolate)~ + f9.2
+ ~RandomNum(4,3)~ + ~(Offer her chocolate)~ + f9.3
+ ~RandomNum(4,4)~ + ~(Offer her chocolate)~ + f9.4
+ ~RandomNum(4,1)~ + ~I want you tonight.~ + r4.1
+ ~RandomNum(4,2)~ + ~I want you tonight.~ + r4.2
+ ~RandomNum(4,3)~ + ~I want you tonight.~ + r4.3
+ ~RandomNum(4,4)~ + ~I want you tonight.~ + r4.4
+ ~RandomNum(4,1)~ + ~I love you.~ + r5.1
+ ~RandomNum(4,2)~ + ~I love you.~ + r5.2
+ ~RandomNum(4,3)~ + ~I love you.~ + r5.3
+ ~RandomNum(4,4)~ + ~I love you.~ + r5.4
+ ~RandomNum(4,1)~ + ~(Press your body against hers suggestively)~ + r7.1
+ ~RandomNum(5,1)~ + ~(Press your body against hers suggestively)~ + r7.1
+ ~RandomNum(5,2)~ + ~(Press your body against hers suggestively)~ + r7.2
+ ~RandomNum(5,3)~ + ~(Press your body against hers suggestively)~ + r7.3
+ ~RandomNum(5,4)~ + ~(Press your body against hers suggestively)~ + r7.4a
+ ~RandomNum(5,4)~ + ~(Press your body against hers suggestively)~ + r7.4b
+ ~RandomNum(5,5)~ + ~(Press your body against hers suggestively)~ + r7.5
+ ~RandomNum(4,1)~ + ~(Stroke her thighs)~ + r8.1
+ ~RandomNum(4,2)~ + ~(Stroke her thighs)~ + r8.2
+ ~RandomNum(4,3)~ + ~(Stroke her thighs)~ + r8.3
+ ~RandomNum(4,4)~ + ~(Stroke her thighs)~ + r8.4
+ ~Global("C0SireneStopFlirting","GLOBAL",0)~ + ~I really like you, Sirene, but I need to concentrate. Please stop flirting with me.~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",1)~ + noflirt
+ ~Global("C0SireneStopFlirting","GLOBAL",1)~ + ~I miss your attention, Sirene. If you want to flirt with me, then go ahead.~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",0)~ + yesflirt
++ ~Sirene, I know we've become close recently, but I have to tell you know... I want us to just be friends, and nothing more.~ + breakup
++ ~No, nothing.~ EXIT
END


IF ~~ again
SAY ~All right.~
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
SAY ~(Sirene responds to you passionately, pressing herself into you.)~
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
SAY ~(You can see desire in her eyes upon hearing your words.)~
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

IF ~~ r7.1
SAY ~(Sirene's hands rest on your sides and you can feel her warm breath on your neck.)~
IF ~~ EXIT
END

IF ~~ r7.2
SAY ~(Even with the armor Sirene wears, her body is shapely and petite, and you feel the curves of her body from her chest to her slender waste.)~
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
SAY ~Everything is fine. How about yourself?~
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


// Questions

IF ~~ questions
SAY ~Of course. Ask what you will.~
+ ~NumInPartyAliveGT(2)~ + ~I'd like to ask you about one of our companions.~ + companions
++ ~On second thought, there's nothing I wish to ask.~ EXIT
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
+ ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ + ~What do you think of Sarevok?~ + sarevok
+ ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ + ~What do you think of Sarevok?~ + sarevok2
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
SAY ~We share little in common, yet I still feel a certain kinship with her.~
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

IF ~~ sarevok
SAY ~I doubt you will care for what I have to say regarding him.~
IF ~~ EXIT
END

IF ~~ sarevok2
SAY ~You have talked to him much recently, <CHARNAME>. I think you know him better than I.~
IF ~~ EXIT
END

IF ~~ viconia
SAY ~I am uneasy with the presence of a Sharran, but... I know her life has been a cruel one. My feelings regarding her are... conflicted, and that is all I can say.~
IF ~~ EXIT
END

IF ~~ valygar
SAY ~He is a difficult man to talk to, <CHARNAME>, but he does truly have a kind heart. I would not disregard his friendship.~
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