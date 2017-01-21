// Dorn conflict
CHAIN IF WEIGHT #-1 ~Global("C0SireneDorn","GLOBAL",2)~ THEN C0SIRE2J C0dorn1
~<CHARNAME>, this man...~ [C0BLANK]
DO ~SetGlobal("C0SireneDorn","GLOBAL",3)~
== DORNJ ~What do you want, fiendling?~
== C0SIRE2J ~You know exactly what I want to say. Do not try and hide it. You may be capable of concealing it from our leader, but not from me.~
= ~You have the touch of the Lower Planes upon you. I know it too well, blackguard. I refuse to walk with you at my side.~
== DORNJ ~You think to unnerve me by unveiling my power? I care not. If you have a problem with my presence, show it with your blade. I will enjoy spitting your cowardly self upon mine.~
END
	++ ~Can't you both get along?~ EXTERN C0SIRE2J C0dorn2
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0SIRE2J C0dorn3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORNJ C0dorn4

CHAIN C0SIRE2J C0dorn2
~I will neither stand his presence nor allow him to walk away and cause suffering to innocents. One such as he deserves no mercy or compassion.~
== DORNJ ~The next one to suffer with be you, paladin whelp.~
== C0SIRE2J ~Draw your blade, soulless bastard.~
END
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0SIRE2J C0dorn3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORNJ C0dorn4
	++ ~Oh, very well. Get to it.~ EXTERN C0SIRE2J C0dorn5

CHAIN C0SIRE2J C0dorn3
~As you wish. Forgive me for what I must do. May Ilmater have mercy on your soul, <CHARNAME>.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ C0dorn4
~Die then, sanctimonious fools!~
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0SIRE2J C0dorn5
~Your judgment is at hand!~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0SIRE2P C0dorn6
~Those that have suffered at your hands are avenged.~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORNP C0dorn7
~Ha! Weak, as they all are. I did truly enjoy that. Let us leave her to rot, <CHARNAME>.~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornToB","GLOBAL",2)~ THEN C0Sir25J C0dorntob1
~<CHARNAME>, this man...~ [C0BLANK]
DO ~SetGlobal("C0SireneDornToB","GLOBAL",3)~
== DORN25J ~What do you want, fiendling?~
== C0Sir25J ~You know exactly what I want to say. Do not try and hide it. You may be capable of concealing it from our leader, but not from me.~
= ~You have the touch of the Lower Planes upon you. I know it too well, blackguard. I refuse to walk with you at my side.~
== DORN25J ~You think to unnerve me by unveiling my power? I care not. If you have a problem with my presence, show it with your blade. I will enjoy spitting your cowardly self upon mine.~
END
	++ ~Can't you both get along?~ EXTERN C0Sir25J C0dorntob2
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0Sir25J C0dorntob3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORN25J C0dorntob4

CHAIN C0Sir25J C0dorntob2
~I will neither stand his presence nor allow him to walk away and cause suffering to innocents. One such as he deserves no mercy or compassion.~
== DORN25J ~The next one to suffer with be you, paladin whelp.~
== C0Sir25J ~Draw your blade, soulless bastard.~
END
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0Sir25J C0dorntob3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORN25J C0dorntob4
	++ ~Oh, very well. Get to it.~ EXTERN C0Sir25J C0dorntob5

CHAIN C0Sir25J C0dorntob3
~As you wish. Forgive me for what I must do. May Ilmater have mercy on your soul, <CHARNAME>.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORN25J C0dorntob4
~Die then, sanctimonious fools!~
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0Sir25J C0dorntob5
~Your judgment is at hand!~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0Sir25P C0dorn6
~Those that have suffered at your hands are avenged.~
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORN25P C0dorn7
~Ha! Weak, as they all are. I did truly enjoy that. Let us leave her to rot, <CHARNAME>.~
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",2) JoinParty()~
EXIT

// Hexxat

CHAIN IF WEIGHT #-1 ~Global("C0SireneHexxat","GLOBAL",2)~ THEN C0SIRE2J C0hexxatconflict
~Hold, vampire. I will have a few words with you.~ [C0BLANK]
DO ~SetGlobal("C0SireneHexxat","GLOBAL",3)~
== HEXXATJ ~What is it, my friend?~
== C0SIRE2J ~Do not mock me, monster. I am no friend of yours.~
== HEXXATJ ~There is no need for such hostilities. We are allies now.~
== C0SIRE2J ~No. I do not consider you an ally. Were it not for <CHARNAME>, I would have ended your existence upon first sight.~
== HEXXATJ ~If <CHARNAME> trusts me, then perhaps it is in your best interest to do the same.~
== C0SIRE2J ~I will not trust a being without humanity nor compassion, and neither will I suffer your company. Draw steel.~
== HEXXATJ ~I'm not interested in fighting you, paladin.~
== C0SIRE2J ~Then there is only one alternative. <CHARNAME>, Either it goes or I do.~
END
	++ ~In that case, I'm afraid you'll have to leave, Sirene.~ EXTERN C0SIRE2J C0hexxatconflict1
	++ ~Fine. Hexxat, you'll have to go.~ EXTERN HEXXATJ C0hexxatconflict2

CHAIN C0SIRE2J C0hexxatconflict1
~I had thought better of you, <CHARNAME>. Very well. I will go.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

CHAIN HEXXATJ C0hexxatconflict2
~A pity. You know where to find me once you've wised up.~
DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)~ 
EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0SireneHexxatToB","GLOBAL",2)~ THEN C0Sir25J C0hexxatconflicttob
~Hold, vampire. I will have a few words with you.~ [C0BLANK]
DO ~SetGlobal("C0SireneHexxatToB","GLOBAL",3)~
== HEXXATJ ~What is it, my friend?~
== C0SIR25J ~Do not mock me, monster. I am no friend of yours.~
== HEXXA25J ~There is no need for such hostilities. We are allies now.~
== C0SIR25J ~No. I do not consider you an ally. Were it not for <CHARNAME>, I would have ended your existence upon first sight.~
== HEXXA25J ~If <CHARNAME> trusts me, then perhaps it is in your best interest to do the same.~
== C0SIR25J ~I will not trust a being without humanity nor compassion, and neither will I suffer your company. Draw steel.~
== HEXXA25J ~I'm not interested in fighting you, paladin.~
== C0SIR25J ~Then there is only one alternative. <CHARNAME>, either it goes or I do.~
END
	++ ~In that case, I'm afraid you'll have to leave, Sirene.~ EXTERN C0Sir25J C0hexxatconflicttob1
	++ ~Fine. Hexxat, you'll have to go.~ EXTERN HEXXA25J C0hexxatconflicttob2

CHAIN C0Sir25J C0hexxatconflicttob1
~I had thought better of you, <CHARNAME>. Very well. I will go.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

CHAIN HEXXA25J C0hexxatconflicttob2
~A pity. You know where to find me once you've wised up.~
DO ~SetGlobal("ohh_hexxatjoined","LOCALS",0)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1788.1148],SE)~ 
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera1","GLOBAL",0)
!Global("OHN_PLOT","GLOBAL",6)~ THEN BC0SIRE2 C0SireneNeera1
~'Tis a good thing you have done, Neera, bringing all these outcast mages together.~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera1","GLOBAL",1)~
== BNEERA ~They needed a home. I couldn't just stand by and watch.~
== BC0SIRE2 ~But you know that they will still be hunted. They cannot remain forever.~
== BNEERA ~I know. But I'm doing all I can! It's not like I can just just go to Thay, bash the leader of the Order of the Eight Staves with a big stick and tell them to leave me alone, right?~
== BC0SIRE2 ~What will you do then?~
== BNEERA ~I dunno. They're getting along so well now, I can't just tell them they need to pack up and go their own ways. It wouldn't be right. Especially after everything we did to bring them all together...~
== BC0SIRE2 ~They could leave together. 'Twould be safer to travel as a group, anyhow.~
== BNEERA ~Wouldn't a group of mages moving across Amn look suspicious? Look, let's just see what the Red Wizards are up to next, and if they're gonna go after my friends again, we'll stop them together. Right?~
== BC0SIRE2 ~Of course I will help you, Neera. 'Tis as much my duty to protect them as yours.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera2","GLOBAL",0)
Global("OHN_PLOT","GLOBAL",6)~ THEN BNEERA C0SireneNeera2
~It's done. Whew, and all in a day's work. I'm exhausted.~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera2","GLOBAL",1)~
== BC0SIRE2 ~You deserve to be proud of yourself, Neera. You have done the best you could for the mages.~
== BNEERA ~Thanks. I feel all warm and fuzzy inside. Speaking of which, I'm starving.~
== BC0SIRE2 ~(smile) 'Tis a pleasure to see how you have grown, my friend.~
== BNEERA ~Oh, stop. I'm blushing now. I'm really not used to all this heroism stuff.~
== BNEERA ~(growl)~
== BNEERA ~Aaaand there goes my tummy again. Just when I couldn't get more embarrassed. Got any food?~
== BC0SIRE2 ~I may have something...~
== BNEERA ~What've you got-OH GODS CHOCOLATE. GIMME QUICKLY.~
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera2","GLOBAL",1)~ THEN BNEERA C0SireneNeera3
~Hey, Sirene. Got any more chocolate? My sweet tooth's nagging me again.~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera2","GLOBAL",2)~
== BC0SIRE2 ~I have a little left... here, take it all.~
== BNEERA ~Mmm-mmm!~
== BNEERA ~You know, I've heard some mages spend their lifetimes trying to turn lead into gold. If I get bored of travelling and decide to settle down, I think I'll research turning metals into chocolate. Yum.~
== BC0SIRE2 ~(laugh) Though I assume the wild magic would complicate things.~
== BNEERA ~Well, yeah. I wouldn't like to take a bite and find out it's... er, something else. Uh, actually, I'd rather not think about that. Eww.~
== BC0SIRE2 ~Do you see yourself ever truly setting down?~
== BNEERA ~Sometimes... but then again, I see a lot of things in my future. Anything could happen.~
== BNEERA ~That is, if I don't blow myself up in the meantime.~
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeeraToB1","GLOBAL",0)~ THEN BC0SIR25 C0SireneNeeraToB1
~You appear to be in a good mood today, Neera.~ [C0BLANK]
DO ~SetGlobal("C0SireneNeeraToB1","GLOBAL",1)~
== BNEERA25 ~Why shouldn't I be? The day is nice, we've got plenty of food, and I haven't had a bad surge yet. Can't I enjoy the small pleasures?~
== BC0SIR25 ~Of course, but you do realize that we are in more danger than ever now?~
== BNEERA25 ~Well, yeah. *Technically* it's just <CHARNAME> that's in danger, but I see your point.~
== BC0SIR25 ~Yet despite knowing that, your disposition seems more cheerful than ever.~
== BNEERA25 ~I guess so. It's... one of those feelings, you know? The kind that's hard to explain. I just know we're gonna get through this alive. Somehow.~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneRasaad1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad1
~You bear your suffering well, Rasaad... as an Ilmatari, I cannot help but respect you.~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad1","GLOBAL",1)~
== BRASAAD ~I thank you, Sirene, but my suffering brings me no pride.~
== BC0SIRE2 ~Is there anything I may do to help?~
== BRASAAD ~No, my friend. I do not wish for anyone to be burdened with my troubles, more than they already have.~
== BC0SIRE2 ~I do not wish to see you waste away in your pain, Rasaad. Will nothing ease your mind?~
== BRASAAD ~Only revenge.~
== BC0SIRE2 ~Revenge will not bring you peace, Rasaad.~
== BRASAAD ~If it does not, then nothing will.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneRasaad2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad2
~Do you remember our travels together along the Sword Coast, Rasaad? Of Ulgoth's Beard and Baldur's Gate?~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad2","GLOBAL",1)~
== BRASAAD ~I do, though I try not to think of the Cloud Peaks.~
== BC0SIRE2 ~...of course. Your brother's monastery. I am sorry, Rasaad, I forgot.~
== BRASAAD ~Why do you bring this up, Sirene?~
== BC0SIRE2 ~Forgive me, I had only hoped to bring up happier times. 'Twas shortsighted of me not to think of the worst moment of it.~
== BRASAAD ~I do not blame you, my friend. There are good memories of our travels as well. Perhaps we should speak of those instead.~
== BC0SIRE2 ~(smile) 'Twould be my pleasure.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneRasaad2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad2
~You bear a great burden, Rasaad, though you try to hide it. Would you tell me?~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad2","GLOBAL",1)~
== BRASAAD ~I do not wish to force my burden upon anyone, especially not you, my friend. You already do too much for us.~
== BC0SIRE2 ~Then I fear we are at an impasse. So long as I am Ilmater's servant, my duty is to shoulder the burden of others. Please, trust me on this.~
== BRASAAD ~...~
== BRASAAD ~My brother died at my hand.~
== BC0SIRE2 ~What?~
== BRASAAD ~He was a follower of Selune as I am. Until he lost his way... when we next met, it was as enemies. I... slew him with these fists.~
== BC0SIRE2 ~I...~
== BC0SIRE2 ~Forgive me, Rasaad. I was foolish and arrogant to ask... 'tis a greater burden than any I have known.~
== BRASAAD ~You are not at fault here, Sirene. But I do not wish to speak of it any longer.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneRasaad3","GLOBAL",0)
GlobalGT("OHR_PLOT","GLOBAL",5)~ THEN BC0SIRE2 C0SireneRasaad3
~How do you feel, my friend?~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad3","GLOBAL",1)~
== BRASAAD ~Hollow. It was all for naught. Alorgoth escaped, despite all my efforts.~
== BC0SIRE2 ~Our efforts, Rasaad. The failure is all of ours.~
== BRASAAD ~No. You have done nothing wrong, my friend. That you would help me at all means more than I can say.~
== BC0SIRE2 ~This is not the way I would prefer to help, however. What do you intend to do now?~
== BRASAAD ~Move onward. I have no other choice.~
== BC0SIRE2 ~There is always a choice, Rasaad. Reconcile with your order. They need you, just as you need them.~
== BRASAAD ~The shame I have brought to my order is beyond redemption, Sirene. I cannot face them after everything I have done, as much as I would wish it.~
== BC0SIRE2 ~I do not want to see you continue this self-destructive path of vengeance.~
== BRASAAD ~Vengeance is all there is left.~
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneToBRasaad1","GLOBAL",0)~ THEN BC0SIR25 C0SireneToBRasaad1
~May we talk a while, my friend?~ [C0BLANK]
DO ~SetGlobal("C0SireneToBRasaad1","GLOBAL",1)~
== BRASAA25 ~Of course we may. What of?~
== BC0SIR25 ~Well... anything. Anything at all.~
== BRASAA25 ~Just small talk? ...I have forgotten what it is like.~
== BC0SIR25 ~Aye, so have I. After all that has happened, I feel as though I have lost the knowledge of how to speak to a friend. Not of battle or strategy, just of... normal things.~
== BC0SIR25 ~But... I would like to have it back. No matter how long it takes.~
== BRASAA25 ~Shall we walk together, then, until one of us thinks of something to say?~
== BC0SIR25 ~Aye, that suits me just as well.~
== BRASAA25 ~Then that is what we shall do.~
EXIT
