// Romantic Encounters

APPEND C0SIRENJ

// Ada

IF WEIGHT #-1 ~Global("C0SireneREAda","GLOBAL",1)~ Ada
SAY ~'Twould seem you allowed your base desires to control you, <CHARNAME>. I hope your tryst with that priestess of chaos was worth it.~ [C0BLANK]
++ ~I have no idea what you're talking about.~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada1
++ ~Look, I made a mistake, alright? Let's move on.~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada2
++ ~What I decide to do is none of your business.~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada3
END

IF ~~ Ada1
SAY ~I am no fool, <CHARNAME>. Even the cacophony of this place could not mask the sounds of... forget it. We should just go.~
IF ~~ EXIT
END

IF ~~ Ada2
SAY ~I wish that I could, <CHARNAME>. I will not hold this against you, but... I advise you take care in your dealings with such people. Some will desire more from you than... never mind.~
IF ~~ EXIT
END

IF ~~ Ada3
SAY ~Aye, you may act as you desire, but I... would advise you choose the objects of your flirtations more carefully from now on.~
IF ~~ EXIT
END

// Anishai

IF WEIGHT #-1 ~Global("C0SireneREAnishai","GLOBAL",1)~ Anishai
SAY ~Was that truly a necessary part of this ruse, <CHARNAME>? Were you not concerned that she would attack you while you were vulnerable? Or did you-~ [C0BLANK]
= ~*sigh* I had my misgivings about this task from the beginning, but now I would sooner slay each and every one of these rogues than keep this up any longer.~
= ~Let us just continue, <CHARNAME>. I pray to Ilmater that I can forget this distasteful thing ever happened.~
IF ~~ DO ~SetGlobal("C0SireneREAnishai","GLOBAL",2)~ EXIT
END

// Aran

IF WEIGHT #-1 ~Global("C0SireneREAran","GLOBAL",1)~ Aran
SAY ~You look satisfied, <CHARNAME>. The Shadowmaster must have prepared quite the evening feast.~ [C0BLANK]
++ ~It was really quite nice.~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran1
++ ~Do you disapprove?~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran2
++ ~Eh, it was alright.~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran1
END

IF ~~ Aran1
SAY ~Hmm.~
++ ~You don't sound too pleased. Were you worried about me?~ + Aran2
++ ~Let's just be on our way.~ EXIT
END

IF ~~ Aran2
SAY ~No... well, perhaps I was a little concerned for you when you chose to have a private evening with a rogue. But I cannot deny he has been more than cordial with us so far.~
= ~And... the Shadowmaster does seem quite charming, so I cannot fault you for wanting to share his company... I half-thought perhaps I would have to wait for you all night.~
++ ~Why, you almost sound jealous, Sirene.~ + Aran3
++ ~You know, I could always try to hook the two of you up if you're interested...~ + Aran3
++ ~Whatever. We've got things to do.~ EXIT
END

IF ~~ Aran3
SAY ~I... *blush* no, you must have misunderstood me. Can we not talk of this?~
IF ~~ EXIT
END

// Bjornin

IF WEIGHT #-1 ~Global("C0SireneREBjornin","GLOBAL",1)~ Bjornin
SAY ~I saw sir Bjornin pass by. You must have done a lot to soothe him, <CHARNAME>. He could not have looked more pleased.~ [C0BLANK]
+ ~!Global("RE_BjorninSex","GLOBAL",1)~ + ~Yes... *blush*~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin1
+ ~!Global("RE_BjorninSex","GLOBAL",1)~ + ~You don't know the half of it.~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin1
+ ~Global("RE_BjorninSex","GLOBAL",1)~ + ~Yes... *blush*~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin2
+ ~Global("RE_BjorninSex","GLOBAL",1)~ + ~You don't know the half of it.~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin3
++ ~If you're feeling left out, I could always offer the same treatment to you...~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin4
+ ~Global("C#Bjorni_HaveMetBefore","LOCALS",1) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It was nice to see him again.~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin5
+ ~Global("C#Bjorni_HaveMetBefore","LOCALS",1) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It was nice to see him again.~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin6
++ ~It's ally not worth talking about.~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ EXIT
END

IF ~~ Bjornin1
SAY ~I would ask what you did to give him such peace of mind, but... I think 'twould be best left unspoken.~
IF ~~ EXIT
END

IF ~~ Bjornin2
SAY ~Judging from your action, I think 'twould be best if I did not press for details.~
IF ~~ EXIT
END

IF ~~ Bjornin3
SAY ~No, and I suspect I do not want to. *sigh* You are too much sometimes, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ Bjornin4
SAY ~I... think I must pass, <CHARNAME>. I am flattered, but... I do not think my scars will please you nearly as much as Bjornin's.~
IF ~~ EXIT
END

IF ~~ Bjornin5
SAY ~So this was not your first meeting with him? I must ask, were the two of you... no, never mind. Forget it.~
IF ~~ EXIT
END

IF ~~ Bjornin6
SAY ~Yes, 'twas good to see such a valiant knight still lives. Though 'twould seem your relationship with him has changed greatly since the last time.~
IF ~~ EXIT
END

// Chanelle

IF WEIGHT #-1 ~Global("C0SireneREChanelle","GLOBAL",1)~ Chanelle
SAY ~You look well, <CHARNAME>. The maid did... excellent work caring for you.~ [C0BLANK]
++ ~Uh, yeah.~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle1
+ ~Gender(Player1,FEMALE)~ + ~Don't look so bothered. Is there anything strange for a maid tending to her lady?~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle2
+ ~Gender(Player1,MALE)~ + ~Don't look so bothered. Is there anything strange for a maid tending to her lord?~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle3
+ ~Global("RE_ChanelleSex","GLOBAL",1)~ + ~Yes... 'caring' being the key word here.~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle4
++ ~Right. Now let's get going.~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle0
END

IF ~~ Chanelle0
SAY ~Y-yes... of course.~
IF ~~ EXIT
END

IF ~~ Chanelle1
SAY ~You look... different.~
++ ~No need to be so mesmerized. Is it so strange that I took a bath?~ + Chanelle5
++ ~Whatever. Let's get going.~ + Chanelle0
END

IF ~~ Chanelle2
SAY ~N-no, I suppose not. It's just that... when I heard the laughter, I wondered if...~
++ ~Wait, you were listening in on me?~ + Chanelle7
++ ~Erm, let's just move on from this...~ + Chanelle0
END

IF ~~ Chanelle3
SAY ~I... I would not know, <CHARNAME>. Is such a thing common among nobility? If so, then...~
++ ~There aren't many male servants in this keep, so I had Chanelle tend to me. Is that a problem?~ + Chanelle2
++ ~What?~ + Chanelle6
++ ~Look, it was just an innocent bath. Let's leave it at that, alright?~ + Chanelle0
END

IF ~~ Chanelle4
SAY ~Mmph... I suppose as a lord now, you are entitled to your... privileges, but I wonder if 'tis within reason to take advantage of your servants this way...~
++ ~Hey, don't say that. I just took a bath, alright?~ + Chanelle5
++ ~Well, in any case, there's no sense standing around wondering. Let's go.~ + Chanelle0
END

IF ~~ Chanelle5
SAY ~'Tis not the bath that concerns me, it was the, erm, privacy. When you disappear with an attractive maiden it leads me to wonder...~
++ ~What?~ + Chanelle6
++ ~Hooold it right there, Sirene.~ + Chanelle0
END

IF ~~ Chanelle6
SAY ~Gods, what am I even saying? This is so embarrassing. Please, pay me no heed, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ Chanelle7
SAY ~I- I was... no, I mean... gods, I did not mean to, <CHARNAME>, I swear!~
++ ~Uh-huh.~ EXIT
++ ~You have a really dirty side to you, Sirene. I'm impressed.~ + Chanelle8
++ ~Next time, why don't you just come in and join me?~ + Chanelle8
END

IF ~~ Chanelle8
SAY ~I- nngh, p-please, <CHARNAME>, that is enough teasing. I can only bear so much embarrassment at once.~
= ~C-could we just move on?~
IF ~~ EXIT
END

// Desharik

IF WEIGHT #-1 ~Global("C0SireneREDesharik","GLOBAL",1)~ Desharik
SAY ~What happened, <CHARNAME>? Tell me you did not allow that despicable man to touch you.~ [C0BLANK]
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~(Lie) No, I didn't.~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik1
+ ~!Global("RE_DesharikSex","GLOBAL",1)~ + ~No, I didn't.~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik2
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~I did, and I liked it.~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik3
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~It was disgusting, but I had to get us into Spellhold one way or another.~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik4
++ ~What business is that of yours, Sirene?~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik5
++ ~(Ignore her)~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ EXIT
END

IF ~~ Desharik1
SAY ~You deny it, but that look in the pirate's eyes told me otherwise.~
IF ~~ + Desharik4
END

IF ~~ Desharik2
SAY ~I... I see. I believe you, <CHARNAME>, and truth be told, I am relieved.~
IF ~~ EXIT
END

IF ~~ Desharik3
SAY ~I thought... you would have had more dignity than this, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ Desharik4
SAY ~Whatever you may think of yourself, <CHARNAME>, you are still a woman with dignity. To offer yourself so freely... I know you are better than that. There could have been another way.~
IF ~~ EXIT
END

IF ~~ Desharik5
SAY ~None... but I wanted to know. If you will not tell me, though... then I will respect your wishes.~
IF ~~ EXIT
END

// Eldoth

IF WEIGHT #-1 ~Global("C0SireneREEldoth","GLOBAL",1)~ Eldoth
SAY ~I... passed the door to your room last night, <CHARNAME> and I heard voices from within. You were not alone, were you?~ [C0BLANK]
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It was Eldoth. We spoke a little over wine.~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth1
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~It was Eldoth. We spoke a little over wine.~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth2
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~Eavesdropping, were you?~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth1
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~Eavesdropping, were you?~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth2
++ ~No comment.~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ EXIT
END

IF ~~ Eldoth0
SAY ~Of course. Forgive me... I overstepped.~
IF ~~ EXIT
END

IF ~~ Eldoth1
SAY ~I thought the voice sounded familiar.~
IF ~~ + Eldoth2
END

IF ~~ Eldoth2
SAY ~You... you did not allow him into your bed, did you?~
+ ~Global("RE_EldothSex","GLOBAL",1)~ + ~Yes, I did.~ + Eldoth3
+ ~!Global("RE_EldothSex","GLOBAL",1)~ + ~No, of course not.~ + Eldoth4
+ ~Global("RE_EldothSex","GLOBAL",1)~ + ~(Lie) No, of course not.~ + Eldoth5
++ ~That's none of your business.~ + Eldoth0
END

IF ~~ Eldoth3
SAY ~*sigh* I... feared as much.~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth4
SAY ~That... that is good. I could not bring myself to trust him.~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth5
SAY ~Is that so? I... wish I could believe you.~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth6
SAY ~You know Eldoth as well as I do, <CHARNAME>. His treatment of Skie was nothing short of deplorable, and had you not been there to lead, I would have likely cut him down a long time ago.~
= ~His intentions upon you are anything but pure, you should know that. No good could come of playing his games.~
= ~*sigh* That is enough of that. What you did is your business and I should know better than to pry.~
IF ~~ EXIT
END

// Garren

IF WEIGHT #-1 ~Global("C0SireneREGarren","GLOBAL",1)~ Garren
SAY ~The lord Windspear seemed much happier since he returned with you last night. I hope you were able to give him comfort.~ [C0BLANK]
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~You're more right than you think.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~Uh... 'comfort'. Yeah.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~He's had a hard life. I felt he could use some encouragement.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~!Global("RE_GarrenSex","GLOBAL",1)~ + ~He's had a hard life. I felt he could use some encouragement.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren2
+ ~!Global("RE_GarrenSex","GLOBAL",1)~ + ~I don't like the way you said that. We spoke, nothing more.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren4
++ ~I'll tell you all about it another time.~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ EXIT
END

IF ~~ Garren1
SAY ~I know not what you said to him, but from the way he looked upon you before you parted, I could tell you had replaced something important that was missing in him.~
++ ~Look, Sirene, I-~ + Garren3
++ ~Uh, sure. Let's go with that.~ EXIT
END

IF ~~ Garren2
SAY ~You have a compassionate heart, <CHARNAME>. Perhaps that is why others are drawn to you, just as I was.~
IF ~~ EXIT
END

IF ~~ Garren3
SAY ~Stop, <CHARNAME>. I do not want to know.~
IF ~~ EXIT
END

IF ~~ Garren4
SAY ~I... I am sorry. I did not mean to imply otherwise.~
IF ~~ EXIT
END

// Hendak

IF WEIGHT #-1 ~Global("C0SireneREHendak","GLOBAL",1)~ Hendak
SAY ~Hendak admires you greatly, <CHARNAME>. He is an honorable man, and I hope you have treated him well.~ [C0BLANK]
++ ~I'm flattered by his attention. It will be sad to leave him.~ + Hendak1
++ ~You sound envious. Would you rather I treated you the same way?~ + Hendak2
++ ~I'd rather not talk about this.~ EXIT
END

IF ~~ Hendak1
SAY ~I... I understand, <CHARNAME>. I know the feeling well.~
IF ~~ EXIT
END

IF ~~ Hendak2
SAY ~I did not say that. Although... I would not be opposed to it.~
IF ~~ EXIT
END

// Ilona

IF WEIGHT #-1 ~Global("C0SireneREIlona","GLOBAL",1)~ Ilona
SAY ~The merchant was very generous with his hospitality. I have not received such a warm welcome from a stranger in a long time.~ [C0BLANK]
+ ~Global("RE_IlonaSex","GLOBAL",1)~ + ~Hmm? Oh, yes. You're right.~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona1
+ ~!Global("RE_IlonaSex","GLOBAL",1)~ + ~Hmm? Oh, yes. You're right.~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona2
++ ~Perhaps we could use his generosity again another time.~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona2
++ ~We've no time for this. Come on.~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ EXIT
END

IF ~~ Ilona1
SAY ~...I would ask why that young lady entered your chambers last night, but I doubt you would tell me the truth. I- I hope you will not make a habit of this, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ Ilona2
SAY ~Though I wonder if 'twere the merchant's gratitude you sought, or that of his daughter? No, forgive me. 'Twas unworthy of me to imply that.~
IF ~~ EXIT
END

// Jarlaxle

IF WEIGHT #-1 ~Global("C0SireneREJarlaxle","GLOBAL",1)~ Jarlaxle
SAY ~*sigh* Even in such a dangerous place, with such a dangerous man? Truly, <CHARNAME>, whatever will I do with you?~ [C0BLANK]
++ ~Oh, come on. Would you have let such an opportunity pass?~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle1
++ ~I couldn't resist. He was very pretty. And his head was... shiny.~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle2
++ ~Well, you could've joined in. I'm sure he wouldn't have refused two beautiful drow women.~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle3
++ ~Heehee.~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ EXIT
END

IF ~~ Jarlaxle1
SAY ~I would have at least had a moment's consideration for where we were, but... hmm.~
IF ~~ EXIT
END

IF ~~ Jarlaxle2
SAY ~*sigh*~
IF ~~ EXIT
END

IF ~~ Jarlaxle3
SAY ~...no. No, I could not have. And I will thank you not to put such base images into my mind again.~
IF ~~ EXIT
END

// Lais

IF WEIGHT #-1 ~Global("C0SireneRELais","GLOBAL",1)~ Lais
SAY ~I noticed you leaving your quarters last night, <CHARNAME>. Did you not sleep well?~ [C0BLANK]
++ ~Don't worry about me. I slept fine.~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais1
++ ~I was feeling a little restless, so I went for a walk in the forest.~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais1
++ ~Actually, I went to meet up with that cute elven girl from the inn.~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais2
END

IF ~~ Lais1
SAY ~Hmm... I see. Regardless, if you have anything on your mind, I am here to help.~
IF ~~ EXIT
END

IF ~~ Lais2
SAY ~Oh... so that was why. I thought perhaps your nightmares were troubling you again. But... well, I should not ask how you spent the night. Let us move on.~
IF ~~ EXIT
END

// Laran

IF WEIGHT #-1 ~Global("C0SireneRELaran","GLOBAL",1)~ Laran
SAY ~You spent a lot of time with that young squire, <CHARNAME>. I hesitate to ask this, but did you... did you seduce him?~ [C0BLANK]
++ ~I did. What of it?~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~Well, maybe. He was too great of a catch to resist.~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~I couldn't help myself! Did you see the lad?~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~No, I didn't. Don't ask me again.~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ EXIT
END

IF ~~ Laran1
SAY ~Such behavior is... not quite what I expected of you, <CHARNAME>. Taking advantage of him? That is cruel.~
++ ~You were eyeing him as well. Did you think I didn't notice?~ + Laran2
++ ~Maybe it was. He was entirely into it though, I swear!~ + Laran3
++ ~You're just jealous I never did the same for you.~ + Laran2
END

IF ~~ Laran2
SAY ~I... have no idea what you speak of, <CHARNAME>. Let us forget we ever talked of this.~
IF ~~ EXIT
END

IF ~~ Laran3
SAY ~Stop. I do not want to hear this.~
IF ~~ EXIT
END

// Mekrath

IF WEIGHT #-1 ~Global("C0SireneREMekrath","GLOBAL",1)~ Mekrath
SAY ~I did not trust that mage. But he gave you what you asked for, and left us in peace... did you learn much from him?~ [C0BLANK]
++ ~Oh, yes. Quite a lot.~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ + Mekrath1
++ ~Not really. It was quite boring, just like Gorion's lessons.~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ + Mekrath1
++ ~You wouldn't get it. You're not a mage.~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ EXIT
END

IF ~~ Mekrath1
SAY ~Oh, I... see.~
= ~...~
= ~Do I want to know the details?~
++ ~No.~ EXIT
++ ~Nope!~ EXIT
++ ~Not in the slightest.~ EXIT
++ ~That depends. How much do you already know of naked nymphs?~ + Mekrath2
END

IF ~~ Mekrath2
SAY ~Wh- *ahem* Perhaps 'tis best if I do not ask.~
IF ~~ EXIT
END

// Rebecca

IF WEIGHT #-1 ~Global("C0SireneRERebecca","GLOBAL",1)~ Renal
SAY ~What did the wise woman say to you, <CHARNAME>? Did she truly see your future?~ [C0BLANK]
++ ~She said... I was going to die. Then come back. I still don't know what that means.~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ + Rebecca1
++ ~Trust me, you don't want to know.~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ EXIT
+ ~Global("RE_RebeccaSex","GLOBAL",1)~ + ~That's between me and her. Among other things.~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ EXIT
END

IF ~~ Rebecca1
SAY ~Oh. I had hoped that she would tell you something happier. Perhaps something of you and...~
= ~*ahem* Regardless, if she truly foresaw your death, then I can only hope we may prove her wrong.~
IF ~~ EXIT
END

// Renal Bloodscalp

IF WEIGHT #-1 ~Global("C0SireneRERenal","GLOBAL",1)~ Renal
SAY ~You are bleeding, <CHARNAME>! How could I have missed this... let me see it!~ [C0BLANK]
++ ~No, it's fine. I... had an accident last night.~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal1
++ ~Renal did it. He came to visit me.~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal2
++ ~(Allow her to treat it, but do not respond)~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal1
++ ~(Pull away) I'm fine.~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ EXIT
END

IF ~~ Renal1
SAY ~You should have come to me. I cannot bear to see you wounded, <CHARNAME>. You mean so much to me.~
IF ~~ EXIT
END

IF ~~ Renal2
SAY ~You allowed that dangerous rogue into your chambers? Have you... have you gone mad?~
= ~Please, never do such a thing again. If I had known, I would have killed him, without regret. I promise you that.~
IF ~~ EXIT
END

// Ribald Barterman

IF WEIGHT #-1 ~Global("C0SireneRERibald","GLOBAL",1)~ Ribald
SAY ~Forgive my curiosity, <CHARNAME>, but I have noticed we have visited the Adventurer's Mart more frequently than usual. You often follow Ribald to the backrooms, yet never return with anything. I admit I am... curious of what you do.~ [C0BLANK]
++ ~Er... it's best if you don't know.~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald1
++ ~If you want to know, why not follow me in next time? I'm sure Ribald will have something very nice for you.~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald2
++ ~I go with Ribald to... relieve some of the stress of adventuring. Let's just leave it at that.~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald3
++ ~Not your business, Sirene.~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ EXIT
END

IF ~~ Ribald1
SAY ~That... does not exactly put my mind at ease, but if you say so.~
IF ~~ EXIT
END

IF ~~ Ribald2
SAY ~I... do not even want to know if that means what I believe it means. You are beginning to talk like... an old friend I knew. I think I know too well where this is going.~
IF ~~ EXIT
END

IF ~~ Ribald3
SAY ~Yes... we may, in fact, leave it at that. I think 'twould be for the best.~
IF ~~ EXIT
END

// Saemon Havarian

IF WEIGHT #-1 ~Global("C0SireneRESaemon","GLOBAL",1)~ Saemon
SAY ~I am amazed that you can trust the rogue enough to share private company with him. Have you forgotten everything he has done to us?~ [C0BLANK]
++ ~Come on. *He* didn't do that much harm. Technically speaking.~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ + Saemon1
++ ~I haven't. But he's too charming to resist. Call me a weak woman.~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ + Saemon2
++ ~That's enough of that, Sirene.~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ EXIT
END

IF ~~ Saemon1
SAY ~Besides drugging us and leaving us at the mercy of your mortal enemy? Who ripped your soul from your chest? If I were to enter a room with that scoundrel, 'twould be with a blade in my sleeve, nothing less.~
IF ~~ + Saemon3
END

IF ~~ Saemon2
SAY ~This is no joking matter, <CHARNAME>! What if he drugged you again, intending to finish you for Irenicus, who he could still be serving for all we know? What if-~
IF ~~ + Saemon3
END

IF ~~ Saemon3
SAY ~*sigh* Forgive me. I am... angry, at our situation, and I fear for your safety more than even. Just... watch yourself, <CHARNAME>.~
IF ~~ EXIT
END

// Sheri

IF WEIGHT #-1 ~Global("C0SireneRESheri","GLOBAL",1)~ Sheri
SAY ~You dance well, <CHARNAME>. You were a perfect match for the lady bardess.~ [C0BLANK]
++ ~Are you jealous, Sirene?~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri1
++ ~Next time, I'd like you to dance with me instead.~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri2
++ ~I was just going with it, to be honest. I don't dance.~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri3
++ ~There's no time for this.~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ EXIT
END

IF ~~ Sheri1
SAY ~Am I? I do not know myself anymore... perhaps I am envious of your dancing ability. Or perhaps 'twas the bardess's beauty...~
IF ~~ + Sheri4
END

IF ~~ Sheri2
SAY ~I... am not sure about that, <CHARNAME>. I do not dance half as well as the bardess, and I fear I would disappoint you.~
++ ~You talk like I care about that.~ + Sheri4
++ ~Well, just keep it in mind, alright?~ + Sheri4
++ ~Maybe you're right.~ EXIT
END

IF ~~ Sheri3
SAY ~Well, regardless, the two of you made a striking picture together.~
++ ~You sound jealous.~ + Sheri1
++ ~I think it would be even an even better picture if it were you dancing with me.~ + Sheri3
++ ~Whatever. Let's move on.~ EXIT
END

IF ~~ Sheri4
SAY ~(Sirene ponders for a moment before shaking her head as though to clear her thoughts)~
= ~We have no time for this nonsense, <CHARNAME>. Forget it.~
IF ~~ EXIT
END

// Talak

IF WEIGHT #-1 ~Global("C0SireneRETalak","GLOBAL",1)~ talak
SAY ~(Sirene's face is twisted with disgust as you return, and in her current form, it is frightening.)~ [C0BLANK]
= ~I know not what possessed you, <CHARNAME>. You accepted that wretched fiend's offer? To indulge in this... debauchery?~
= ~(She shakes her head) Perhaps this form is less of an illusion than I believed. I can only hope that when all is right, you will never do such a thing again.~
IF ~~ EXIT
END

// Isabelle

IF WEIGHT #-1 ~Global("C0SireneREIsabelle","GLOBAL",1)~ Isabelle
SAY ~The shieldmaiden seems almost a different person. She was nervous before speaking with you, but then her face was almost glowing with joy. Would that I had the same power to help others with their burdens.~ [C0BLANK]
++ ~Trust me, it's not that hard.~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ + Isabelle1
++ ~Would you like me to demonstrate, when we have the time?~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ + Isabelle2
++ ~I'm keeping my secrets.~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ EXIT
END

IF ~~ Isabelle1
SAY ~You seemed quite sad when 'twas time to part. Were you drawn to the maiden?~
= ~I would not hold it against you, she was... very beautiful. (cough) Not... not that I am envious.~
IF ~~ EXIT
END

IF ~~ Isabelle2
SAY ~I... would like that, though now you have me curious as to what such a demonstration will involve.~
= ~Perhaps... in the future, you could show me.~
IF ~~ EXIT
END

// Anne (will break romance)

IF WEIGHT #-1 ~Global("C0SireneREAnne","GLOBAL",1)~ Anne
SAY ~Despicable... I had thought you above such disgusting actions, <CHARNAME>. I must have been mistaken about you.~ [C0BLANK]
++ ~Sirene, I-~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
++ ~But-~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
++ ~I don't-~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
END

IF ~~ Anne1
SAY ~No. I do not wish to hear any of your lies. I doubt I will ever look upon you the same way again.~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) SetGlobal("C0SireneShutUp","GLOBAL",1)~ EXIT
END

// Cernd

IF WEIGHT #-1 ~Global("C0SireneRECernd","GLOBAL",1)~ Cernd
SAY ~Cernd seems a different man today. He is acting unusually bashful, especially when looking at you.~ [C0BLANK]
+ ~Global("RE_CerndSex","GLOBAL",1)~ + ~We lay together last night. It was... different.~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ + Cernd1
++ ~Maybe he likes me. Who knows?~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ + Cernd2
++ ~(Shrug and avoid answering)~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ EXIT
END

IF ~~ Cernd1
SAY ~Oh, I... I see. Perhaps I have delved too deeply into your personal matters, <CHARNAME>. Pretend I had not said anything...~
IF ~~ EXIT
END

IF ~~ Cernd2
SAY ~I do wonder... he always seems so wise and distant. 'Tis strange to think there is a more... human side to him.~
IF ~~ EXIT
END

// Captain Cernick

IF WEIGHT #-1 ~Global("C0SireneRECernick","GLOBAL",1)~ Cernick
SAY ~I do not mean to pry, <CHARNAME>, but... did you realize that the captain had eyes for you?~ [C0BLANK]
++ ~You knew what his intentions were?~ + Cernick1
++ ~Yes. I did.~ + Cernick2
++ ~No, I didn't. Did he really?~ + Cernick2
++ ~I don't want to talk about it.~ EXIT
END

IF ~~ Cernick1
SAY ~I... I did, aye. There was a certain longing in his look... I know it well.~
IF ~~ + Cernick2
END

IF ~~ Cernick2
SAY ~'Tis not my place to ask what words you shared with him, but if he was brave enough to say his true feelings, then... I admire him for it. I doubt I could do the same as easily...~
IF ~~ EXIT
END

END