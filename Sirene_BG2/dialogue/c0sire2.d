// First meeting

BEGIN C0SIRE2

IF ~Global("C0SireneBegin","GLOBAL",0) Alignment(Player1,MASK_EVIL)~ THEN BEGIN j.evil
 SAY ~*sigh* 'Tis not so difficult, I know. But why do I hesitate-~ [C0BLANK]
 = ~Ah... pardon me, my <PRO_LADYLORD>. I was just about to leave. Good day to you.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("C0SireneBegin","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ THEN BEGIN j.notevil
 SAY ~*sigh* 'Tis not so difficult, I know. But why do I hesitate-~ [C0BLANK]
IF ~~ DO ~SetGlobal("C0SireneBegin","GLOBAL",1)~ + j.notevil2
END
 
IF ~~ j.notevil2
 SAY ~Ah... pardon me, I apologize for getting in your way. I was just about to leave...~
	++ ~Sirene! It's been a while.~ DO ~SetGlobal("C0SirenePartyBG1","GLOBAL",1)~ + j1
	++ ~Who are you?~ + j2
	++ ~Well, don't let me keep you.~ + j0
END
 
IF ~~ j0
 SAY ~Good day to you.~
IF ~~ DO ~EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ j1
 SAY ~<CHARNAME>! 'Tis truly you... I did not expect to see you here.~
 = ~Forgive me for not recognizing you... my mind was elsewhere. What are you doing here in Amn?~
	++ ~I was captured and tortured by an evil mage. Rather not talk about it.~ + j4
	++ ~It's a long story. What are you doing here?~ + j3
	++ ~Would you like to join me? I can tell you all about it on the road.~ + j5
	++ ~I don't have time to explain right now, Sirene. Maybe later.~ + j6
END

IF ~~ j2
 SAY ~I am Sirene of the church of Ilmater. I am not from Amn... I have travelled a long way from my church to aid those in need in the Crying God's name.~
	++ ~You're not a knight of the Order?~ + j7
	++ ~I'm <CHARNAME>.~ + j8
	++ ~I see. Well, nice to meet you, but I'm too busy to talk now.~ + j0
END

IF ~~ j3
 SAY ~I was... well, 'tis not something I wish to speak of.~
 = ~I only returned to Amn recently, likely not long before yourself. I intended to visit the High Halls of the Radiant Heart for myself, but... I cannot bring myself to enter.~
 = ~I was just about to leave, but... I am willing to travel at your side, <CHARNAME>, if you wish. There is little else for me in this place.~
	++ ~You should join my party, Sirene. We can talk on the road.~ + j5
	++ ~I'm sorry. This isn't a good time.~ + j6
END

IF ~~ j4
 SAY ~You were...~
 = ~Oh, by Ilmater. I had hoped you would be well since we parted. Forgive me. Perhaps if I had remained...~
	++ ~Trust me, it's better that you didn't. Khalid and Dynaheir lost their lives.~ + j9
	++ ~What about you? I remember you said you wanted to travel on your own for a while. Why are you here?~ + j3
	++ ~You should join my party, Sirene. We can talk on the road.~ + j5
	++ ~I'm sorry. This isn't a good time.~ + j6
END

IF ~~ j5
 SAY ~Aye, of course. 'Tis a pleasure to travel with you once more, <CHARNAME>.~
	++ ~By the way, we need to rescue Imoen. She was taken by the Cowled Wizards at Waukeen's Promenade along with the mage who captured me. It's going to be dangerous.~ + j11a
	++ ~By the way, I'm going after the wizard who captured me and destroyed half of Waukeen's Promenade. His name is Irenicus.~ + j12
	++ ~Alright, let's go.~ DO ~JoinParty()~ EXIT
END

IF ~~ j6
 SAY ~Very well. I will be at the temple of Ilmater in the Slums District. You may find me there.~
IF ~~ DO ~EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ j7
 SAY ~Nay, my <PRO_LADYLORD>. I am not. I had intended to visit the High Halls, but...~
 = ~Oh! I have not even asked your name yet, my <PRO_LADYLORD>. 'Tis discourteous of me.~
	++ ~I'm <CHARNAME>.~ + j8
END

IF ~~ j8
 SAY ~You... you are <CHARNAME>, the hero of Baldur's Gate? I have heard of you during my travels.~
 = ~I was recovering from injuries in the town of Beregost, at the Temple of Lathander... 'tis a surprise that we never met... or perhaps we had. You appear familiar, but I do not remember from where.~
 = ~I never expected to have met you here in Athkatla, of all places. Had I known you were here, I would have sought you out. This may be forward of me, but... I would like to join your company. I have heard tales of your heroism, and there is nowhere else for me to go.~
	++ ~You seem quite capable. I accept your offer.~ + j10
	++ ~I've got all the help I need.~ + j6
	++ ~I'd rather not. I'm not too fond of paladins.~ + j6
END

IF ~~ j9
 SAY ~No! Gods, it cannot be...~
 = ~I... 'tis worse than anything I could have heard. Do you intend to seek out their killer?~
	++ ~Of course. But I haven't even asked why you're here yet.~ + j3
	++ ~Let's not talk about me for the moment. Why are you in Amn?~ + j3
	++ ~I do. Will you help me?~ + j5
	++ ~Maybe. But would you like to join me again?~ + j5
	++ ~I'm sorry. This isn't a good time.~ + j6
END

IF ~~ j10
 SAY ~Thank you. I will not disappoint you, <CHARNAME>.~
	++ ~By the way, my task is to rescue my childhood friend Imoen. She was taken by the Cowled Wizards at Waukeen's Promenade along with the mage who captured me. It's going to be dangerous.~ + j11b
	++ ~By the way, I'm going after the wizard who captured me and destroyed half of Waukeen's Promenade. His name is Irenicus.~ + j12
	++ ~Alright, let's go.~ DO ~JoinParty()~ EXIT
END

IF ~~ j11a
 SAY ~Imoen... I had wondered why she was not with you, but I would have never expected that the Cowled Wizards were involved... of course I will aid you, <CHARNAME>.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ j11b
 SAY ~The Cowled Wizards... I have heard little good of them during my time in Amn. I do not fear danger, my <PRO_LADYLORD>, and if you have a friend in need, then I will do what I can.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ j12
 SAY ~I have heard talk of what happened at the Promenade... very well, <CHARNAME>. I will help you seek out this man.~
IF ~~ DO ~JoinParty()~ EXIT
END

// Talked to again, not in party

IF ~Global("C0SireneBegin","GLOBAL",1) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BEGIN k0
 SAY ~Welcome to the temple of Ilmater, my <PRO_LADYLORD>.~
IF ~~ + k1
END

IF ~~ k1
 SAY ~Is there something you need?~
 	++ ~Would you like to join my party?~ + k2
	++ ~No, nothing.~ + k3
END

IF ~~ k2
 SAY ~If that is your wish, <CHARNAME>.~
	+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~By the way, we need to rescue Imoen. She was taken by the Cowled Wizards at Waukeen's Promenade along with the mage who captured me. It's going to be dangerous.~ + j11a
	+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~By the way, my task is to rescue my childhood friend Imoen. She was taken by the Cowled Wizards at Waukeen's Promenade along with the mage who captured me. It's going to be dangerous.~ + j11b
	++ ~By the way, I'm going after the wizard who captured me and destroyed half of Waukeen's Promenade. His name is Irenicus.~ + j12
	++ ~Alright, let's go.~ DO ~JoinParty()~ EXIT
END

IF ~~ k3
 SAY ~As you wish. May Ilmater bless your path.~
IF ~~ EXIT
END

IF ~Global("C0SireneBegin","GLOBAL",1) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BEGIN k4
 SAY ~'Tis good to see you again, <CHARNAME>.~
IF ~~ + k1
END