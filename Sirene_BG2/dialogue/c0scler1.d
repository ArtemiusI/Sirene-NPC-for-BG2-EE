BEGIN C0SCLER1

CHAIN IF WEIGHT #-1
~Global("C0SireneDaeron","GLOBAL",0)~ THEN C0SCLER1 encounter1
~You have borne your suffering well and proven yourself as worthy in the eyes of this humble servant. Your tenacity has pleased the Crying God.~
DO ~SetGlobal("C0SireneDaeron","GLOBAL",1)~
== C0SCLER3 ~*cough* P-praise be to the One Who Endures, that he may g-guide me through the many trials to... c-come.~
== C0SCLER1 ~Good. You may go now.~
== C0SCLER3 ~B-but...~
== C0SCLER2 ~Excuse me, Reverend Daeron... but we have company.~
== C0SCLER1 ~What is- ah. Worry not, acolytes, I will speak for us. Hail and well met, travellers.~
END
++ ~Well met to you as well. What brings you here?~ EXTERN C0SCLER1 encounter2
++ ~Who are you?~ EXTERN C0SCLER1 encounter2

CHAIN C0SCLER1 encounter2
~We are followers of Ilmater, stranger. I am Daeron, high priest... former high priest of the Amnian church of Ilmater... now fallen, sadly.~
== C0SIRENJ ~Fallen? What do you mean by that, brother?~
== C0SCLER1 ~Hm? You wear the symbol of Ilmater, but I do not recognize your face.~
== C0SIRENJ ~Oh. Forgive me... I am Sirene, of the Holy Order of Suffering. 'Tis a pleasure to meet you, revered brother.~
== C0SCLER1 ~You are a knight of the order? Hm-hm, it is good that they continue to thrive. I was once of the order as well.~
== C0SIRENJ ~Truly? Then you are by all rights my superior, then. I trained under Sir Marc Morris of the order. Do you know of him, sir?~
== C0SCLER1 ~Marc... yes, a good man, if a little too soft at times. There is no need for formalities, champion. I have retired from that life for many years, and... I have no rights to any title, now. I am naught but a pilgrim.~
== C0SIRENJ ~Yes, you said our church in Amn had fallen... what did you mean by that?~
== C0SCLER1 ~'Twas a most unfortunate affair. Our temple had few enemies, but even fewer ways to protect ourselves from what foes we did have. The temple of Ilmater was attacked and plundered by our mortal enemies, the Loviatans. These acolytes you see... are all that remain of our priesthood.~
== C0SIRENJ ~What?! Oh, gods...~
END
++ ~Is there anything we can do to help?~ EXTERN C0SCLER1 encounter3
++ ~So... you're just turning tail and running away to another land?~ EXTERN C0SCLER1 encounter4
++ ~And what of this man here? Is he of your order as well?~ EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter3
~Your charity is greatly appreciated, but we cannot ask such a thing of you. Our faith's creed is to give aid, not recieve it.~
= ~No... we will continue on to other lands where our faith continues to thrive, and start anew from there.~
EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter4
~We are not warriors by trade, stranger. While I may have once been a knight, my fighting days are behind me.~
= ~Even had I the youth and vigor I once owned, I could not ask my followers to rush into death for what has already been lost to us. Leaving it all behind is all we can do.~
EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter5
~This one was just recently inducted into the faith of Ilmater. That is what you had witnessed when you came across us.~
= ~He has willingly given up his mortal possessions to become a faithful of the Crying God, and will follow us on our journey.~
END
+ ~OR(2) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ + ~Is that so? How strange... for a faith that prides itself on selflessness and charity, that sounds suspiciously like a shakedown.~ EXTERN C0SIRENJ encounter6
+ ~Class(Player1,PALADIN_ALL)~ + ~Your words sound sincere, but there is something that doesn't add up... for some reason, the shadow of guilt hangs over you. You are lying, brother Daeron.~ EXTERN C0SIRENJ encounter6
+ ~OR(2) Class(Player1,THIEF_ALL) Class(Player1,BARD_ALL)~ + ~Oh, quit being ridiculous. Any rogue could recognize this scene for what it really is. It's clearly a shakedown!~ EXTERN C0SIRENJ encounter6
++ ~I see. Well, you may carry on, then. Good journey to you.~ EXTERN C0SCLER3 encounter7

CHAIN C0SIRENJ encounter6
~<CHARNAME>! Ware your words when speaking with my...~
EXTERN C0SCLER3 encounter7

CHAIN C0SCLER3 encounter7
~Y-your Grace! I... I must speak!~
== C0SCLER1 ~'Tis hardly the time nor the place, acolyte, I suggest you-~
== C0SCLER3 ~This... this man, this *deceiver*, is no true follower of the faith. H-he... he came across me, wounded and dying, and conscripted me into the church of Ilmater, claiming everything I owned as part of my 'initiation'!~
== C0SIRENJ ~What... what is this?~
== C0SCLER3 ~It- it is all true, I swear in the name of the gods! I... I had no choice but to indulge in this *farce* lest he leave me to die on the road!~
= ~Y-you are a champion of the god he claims to worship, so I beg of you, Your Grace, bring him to justice!~
== C0SIRENJ ~Is... is what this man saying true, brother?~
END
++ ~Stay calm, Sirene. Let this one say it for himself.~ EXTERN C0SCLER1 encounter8
++ ~I suggest you think carefully on how you answer. After all, your life is on the line.~ EXTERN C0SCLER1 encounter8
++ ~If it isn't, then the man is clearly out of his mind and needs immediate care.~ EXTERN C0SCLER1 encounter8
++ ~I'm almost impressed. I didn't think you lot had it in you.~ EXTERN C0SCLER1 encounter8

CHAIN C0SCLER1 encounter8
~...I see there is no more hiding the reality of things. Aye, this man speaks truly.~
== C0SIRENJ ~Then... you are not truly a follower of Ilmater as you claimed to be?~
== C0SCLER1 ~I am everything I claimed to be, no more and no less. However, these are... trying times, and our situation called for... desperate measures.~
== C0SIRENJ ~Desperate enough to rob innocents, betraying those that we pledge our service to? You are mad!~
== C0SCLER1 ~Our faith was a foundation of hope and virtue in the corruption that is Amn. The Order of the Radiant Heart may claim to be such a thing, yet they are bound by the aristocracy and serve as little more than figures on pedestals. I could not allow this land to become taken by the evil that destroyed us.~
== C0SCLER1 ~We must rebuild. However, our dedication to Ilmater alone would never provide us with what we truly need. Those that we inducted into the order... they understood that.~
END
++ ~They understood, or did you beat that understanding into them?~ EXTERN C0SIRENJ encounter9
++ ~You're actually trying to defend your actions? You disgust me.~ EXTERN C0SIRENJ encounter9
++ ~How pathetic. You're desperately grabbing at straws, now that your life hangs on the balance. We should just kill them all, Sirene.~ EXTERN C0SIRENJ encounter9

CHAIN C0SIRENJ encounter9
~Your actions... were inexcusable, revered brother Daeron. Truly, it saddens me that... that one such as you would descend to this level.~
= ~Though our order is a merciful one, your crimes... cannot be allowed to stand. You must be judged for your actions.~
== C0SCLER1 ~...~
== C0SCLER1 ~If 'tis your will that I pay for what I have done, then I will submit myself to your judgment, champion. However, I ask that you spare my followers in return. They are not to blame for what I commanded of them.~
== C0SIRENJ ~You would accept your fate so easily for their sakes?~
== C0SCLER1 ~My acolytes did but follow my commands. Perhaps you were guided by the Crying God to punish my sins, but not theirs.~
== C0SCLER1 ~I have little to fear from death, but each of these priests may still do much good in their lives, and do not deserve such a cruel end. I will accept punishment in all of their steads.~
== C0SIRENJ ~I...~
== C0SIRENJ ~I do not know what to do, <CHARNAME>. My duty demands I do as the revered brother asks... but 'tis a difficult decision to make. I ask for your thoughts on this, as a leader and friend.~
END
++ ~There is still some honor in this one. Execute him, but let the others live. They should get a chance to redeem themselves.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRENJ encounter10
+ ~CheckStatGT(Player1,16,CHR)~ + ~Regardless of their intentions, they still knowingly abused their positions to rob others. None of them deserve to live.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-4)~ EXTERN C0SIRENJ encounter11
+ ~CheckStatLT(Player1,17,CHR)~ + ~Regardless of their intentions, they still knowingly abused their positions to rob others. None of them deserve to live.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRENJ encounter0
+ ~CheckStatGT(Player1,14,CHR)~ + ~Let them go, Sirene. They'll get what they deserve sooner or later.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-2)~ EXTERN C0SIRENJ encounter12
+ ~CheckStatLT(Player1,15,CHR)~ + ~Let them go, Sirene. They'll get what they deserve sooner or later.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRENJ encounter0
++ ~This judgment isn't yours to make. These men should turn themselves in to the laws of the land.~ EXTERN C0SIRENJ encounter13
++ ~I'm itching for a good fight. We should just execute the lot of them.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRENJ encounter0

CHAIN C0SIRENJ encounter0
~No... I cannot agree with you on that, <CHARNAME>. I see there is no other choice... I shall personally go through with your judgment, Daeron.~
== C0SCLER1 ~As you wish. But before you do your duty, champion, I must tell you... I do not regret my actions, and I will say the same to lord Ilmater when I stand in judgment.~
== C0SIRENJ ~... ...Very well. Go in peace.~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronExecute","GLOBAL",1)
		  AddExperienceParty(5000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT1")~ EXIT

CHAIN C0SIRENJ encounter10
~Yes, you are right... if the revered brother is willing to sacrifice himself, then... this is the right thing to do. I shall personally go through with your judgment, Daeron.~
== C0SCLER1 ~As you wish. But before you do your duty, champion, I must tell you... I do not regret my actions, and I will say the same to lord Ilmater when I stand in judgment.~
== C0SIRENJ ~... ...Very well. Go in peace.~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronExecute","GLOBAL",1)
		  AddExperienceParty(5000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT1")~ EXIT
		  
CHAIN C0SIRENJ encounter11
~That is...~
= ~I would never have considered such a harsh judgment, but... the sins of these men cannot be denied. Perhaps... perhaps you are right.~
== C0SCLER1 ~You cannot be considering this, champion. Your action would mark you as much a betrayer as I!~
== C0SIRENJ ~No, brother. Though it pains me to do his, you all must pay penance for your actions. Forgive us...~
== C0SCLER1 ~Madness! You are a disgrace to the order of the Holy Warriors, woman! If this is how things must be, we will fight you to the last man! To me, acolytes!~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronKill","GLOBAL",1)
		  Enemy()
		  ActionOverride("C0SCLER2",Enemy())
		  ActionOverride("C0SCLER3",Enemy())
		  ActionOverride("C0SCLER4",Enemy())
		  ActionOverride("C0SCLER5",Enemy())
		  ActionOverride("C0SCLER6",Enemy())
		  ActionOverride("C0SCLER7",Enemy())
		  ActionOverride("C0SCLER8",EscapeArea())
		  ReputationInc(-2)~ EXIT
		  
CHAIN C0SIRENJ encounter12
~It seems wrong to allow such a thing to simply pass... but I cannot bring myself to execute my senior. I... I will spare your life, Revered Brother Daeron. But I hope that you will consider your actions, and... one day, return to the true following of Ilmater.~
== C0SCLER1 ~Hmm. Perhaps. Regardless of what you may think of us, you have our utmost gratitude, champion. We shall leave you in peace.~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronLeave","GLOBAL",1)
		  AddExperienceParty(2000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT2")~ EXIT
		  
CHAIN C0SIRENJ encounter13
~Yes, you speak the truth, <CHARNAME>... I do not have the right to judge these men by my own hand. 'Tis true that my duty demands that I bring these men to their proper judgment. Will you accept that, brother Daeron?~
== C0SCLER1 ~The law will not look kindly upon our crimes. Though your words have merit, I will not allow my acolytes to suffer for my sake. As I said, champion - take my life if you will, but spare the others a doomed fate.~
END
+ ~CheckStatGT(Player1,15,CHR)~ + ~Have you truly deluded yourself into believing this is the best for all involved, Daeron? Your 'saving' of these men will be their doom. If there is any honor left in you, then you should know this is the only correct thing to do.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",3)~ EXTERN C0SCLER1 encounter14
+ ~CheckStatGT(Player1,15,WIS)~ + ~Perhaps. But you are no fool, Daeron - you know this is a far more merciful fate than whatever else awaits your followers if they do not submit themselves to the law. Their past crimes will catch up to them sooner or later.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",3)~ EXTERN C0SCLER1 encounter14
++ ~I see there is no convincing you. Do what you must, Sirene.~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRENJ encounter10

CHAIN C0SCLER1 encounter14
~You... you are correct.~
= ~Truly, I... I am shamed. Perhaps I have strayed farther than I believed.~
= ~'Twould seem that I have grown old, and foolish. I believed so strongly that the cause I supported was right, that the ends justified the means, that I forgot everything that I had once strived for as a knight of my god...~
== C0SIRENJ ~Please... do not despair, brother. If you are truly faithful in Ilmater, then believe in his mercy. If you truly regret your actions, then this need not be the end for you.~
== C0SCLER1 ~Aye, champion. We will... do as you ask, and give ourselves to the Order of the Radiant Heart for judgment. If our crimes demand for blood, then... that is what we must accept. Such is the true way of Ilmater.~
END
++ ~How can we be sure you'll do as you say?~ EXTERN C0SCLER1 encounter15
++ ~I'm sure they will be merciful, so long as you show true remorse.~ EXTERN C0SCLER1 encounter15
++ ~Yes, yes, now can you just go already?~ EXTERN C0SCLER1 encounter15

CHAIN C0SCLER1 encounter15
~We swear to you, in the name of Ilmater, by what honor I once owned as a Holy Warrior of Suffering, and as a follower of the Crying God, that we shall seek penance for my actions in this life and beyond. May the gods strike us down if we speak falsely.~
== C0SIRENJ ~I trust in your oath. May you find peace, brother, no matter what fate awaits you. Farewell.~
== C0SCLER1 ~Farewell to you, champion. Please, take this artifact from our former temple as a token of faith... I doubt I will need it any longer.~
END
IF ~~ DO ~GiveItem("c0sbrac","C0Sirene")
		  AddExperienceParty(15000)
		  SetGlobal("C0SireneDaeronRedeem","GLOBAL",1)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT3")~ EXIT

BEGIN C0SCLER3