BEGIN BC0SIR25

CHAIN
IF ~InParty("Aerie")
See("Aerie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerieImoenToB","GLOBAL",0)~ THEN BIMOEN25 C0SireneAerieImoen
~So? What d'ya think?~ [C0BLANK]
DO ~SetGlobal("C0SireneAerieImoenToB","GLOBAL",1)~
== BAERIE25 ~I- I think it still looks ugly...~
== BIMOEN25 ~Aw, don't be like that. We can, uh... aw, Hells. Who am I kidding? You're right, this whole thing looks dreadful. What are we doing, Aerie?~
== BAERIE25 ~I don't know... I guess embroidery wasn't really for us, after all. Maybe we should just buy something nice the next time we stop by a market?~
== BIMOEN25 ~But it has to be something we make ourselves. It's not really a proper gift, a toil of love, otherwise, right?~
== BAERIE25 ~You... you're right. Heehee, you're really dedicated to this, Imoen.~
== BIMOEN25 ~Well, of course! She deserves something nice for working herself to the bone for the two of us.~
== BAERIE25 ~I know what you mean. It's almost like having a big sister.~
== BIMOEN25 ~Exactly. That's why it needs to be perfect! Come on, let's ditch this cloth and try again-~
== BC0SIR25 ~Aerie? Imoen? What is wrong?~
== BIMOEN25 ~Eek!~
== BAERIE25 ~H- Hello, Sirene...~
== BC0SIR25 ~You two are falling behind. Is there a problem?~
== BIMOEN25 ~Nope!~
== BAERIE25 ~We were just, um...~
== BC0SIR25 ~There is... something by your feet, Imoen.~
== BIMOEN25 ~Oh, this? It's just some, er...~
== BAERIE25 ~Maybe we should just be honest, Imoen. We were... trying to make something for you, Sirene.~
== BC0SIR25 ~For... for me?~
== BIMOEN25 ~Yeah. Here ya go. It's awful, though, so you should, er, throw it away as soon as possible. So we can make you a better one.~
== BC0SIR25 ~No, no, 'tis lovely. It... *sniff*~
== BAERIE25 ~Wh- why are you crying? Is it really that bad?~
== BC0SIR25 ~Forgive me, I am just... so overwhelmed. Thank you both, truly...~
== BIMOEN25 ~Aw, there, there. We just thought we'd do something nice in return for all the times you've looked out for us.~
== BC0SIR25 ~Thank you, Imoen, Aerie. I have come to care for you both... so much...~
== BIMOEN25 ~We care about you too, big sis. Wait, you don't mind if we call you that now, right?~
== BC0SIR25 ~Of course... I could not be happier.~
== BIMOEN25 ~Alright! How's that, Aerie?~
== BAERIE25 ~Heehee. Let's get going then!~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerieToB","GLOBAL",0)~ THEN BAERIE25 C0SireneAerieToB
~How are you feeling, Sirene?~ [C0BLANK]
DO ~SetGlobal("C0SireneAerieToB","GLOBAL",1)~
== BC0SIR25 ~I am well, Aerie. Is there something you require?~
== BAERIE25 ~No, no. *giggle* I've just wanted to ask you that for a while. You've been looking out for me for so long, so I wanted to help you for a change.~
== BC0SIR25 ~You have helped me... no, you have helped all of us countless times, Aerie. Even if you have not noticed, you have become strong... stronger than I am.~
== BAERIE25 ~Haha! That's impossible. You're just saying that to make me feel better.~
== BC0SIR25 ~No, 'tis true, Aerie. Our enemies grow ever stronger, and I have been on the brink of death many times, but each time, 'tis you that saved me. I think, by this point, I owe you my life many times over.~
== BAERIE25 ~I can't believe it's been that many times... when I see you hurt, I just... do everything I can. It's so strange, having this much power. And it feels... normal.~
== BC0SIR25 ~You have grown so strong, Aerie, and... I am proud of you.~
== BAERIE25 ~Thank you, Sirene. I hope... I won't have to rely on you any more, and I hope you can start relying on me. We'll support each other from now on.~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~But, there is one thing I might... need to count on you for, in the near future.~
== BC0SIR25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~What is it, Aerie?~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~I'm sure you know of me and... and <CHARNAME>. There may be a time where I need your support... can I count on you when that time comes?~
== BC0SIR25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~Of course, Aerie, but what-~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~Later. I'll tell you later... when it's just the two of us.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("C0SireneAnomenToB","GLOBAL",0)~ THEN BANOME25 C0SireneAnomenToB
~My lady... if you would sate my curiosity for but a moment?~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomenToB","GLOBAL",1)~
== BC0SIR25 ~Of course. What do you need?~
== BANOME25 ~I... hope this will not offend you, but I must ask... have you ever willingly sought the death of another?~
== BC0SIR25 ~...~
== BANOME25 ~By Helm, I should not have asked such a tactless question. 'Twas a mistake on my part, my friend. I will not bother you again.~
== BC0SIR25 ~No, Anomen... wait. I will tell you.~
== BANOME25 ~You will? I thank you for this.~
== BC0SIR25 ~I have... had the desire to kill in the past. I have felt hatred towards those who made those dear to me suffer, and others who bring injustice towards innocents. I have sought vengeance towards those that have wronged me... wronged others. I will not deny it.~
== BANOME25 ~I see. Forgive me for saying so, but 'twould seem we are not so different after all.~
== BC0SIR25 ~Perhaps. But why did you ask such a thing?~
== BANOME25 ~Ever since I was granted my knighthood, I have reflected upon my past acts... and I have come to the realization that my actions may not have been as just as I believed them to be.~
== BANOME25 ~I have always stood for showing no mercy to those of evil intent. Many men I considered the lowest of the low fell by my hand, and I had never felt the slightest guilt for it.~
== BANOME25 ~But after seeing your example... showing mercy to those that I would have deemed irredeemable, taking no satisfaction in the act of killing, no matter how evil the enemy... I feel it may have affected me. And now I wonder if I have been wrong all this time.~
== BC0SIR25 ~No, Anomen. You are not... I do not believe you are, at least. Only the gods know the truth. And Helm has shown his favor towards your actions, has he not?~
== BANOME25 ~Aye, that he has. Perhaps neither of us are in the wrong. I can only follow Helm's guidance, as you do for Ilmater. Thank you for your time, my lady.~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconiaToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneCerndToB
~I think... I dreamt again, last eve.~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaToB","GLOBAL",1)~
== BCERND25 ~Truly? Did you recall anything vividly, this time?~
== BC0SIR25 ~Some, but... forgive me, Cernd, but I can no longer bear to use this.~
== BCERND25 ~If the images have proven too overwhelming, I can always...~
== BC0SIR25 ~Nay, 'tis not that. Your incense helped bring the images into focus. I cannot see faces, but I could hear voices... ~
== BC0SIR25 ~I could not remember anything when I woke, but my face was wet with tears, and my heart was in pain. I fear that... the memories buried in the depths of my mind are something I do not wish to recall.~
== BCERND25 ~Though we may fall countless times before we first learn to walk, we never consider failure, we only try again until we succeed. Just as the instinct to walk is in all of us, the instinct to remember is within you. I still feel you are giving up too early.~
== BC0SIR25 ~I do not wish to give up, but...~
== BCERND25 ~Keep the incense. I fear that just as fledglings must one day fly from the nest, the day that we part will come soon. I would not wish for you to have any regrets, should you change your mind.~
== BC0SIR25 ~As you say, Cernd. I shall keep this gift from you.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwinToB","GLOBAL",0)~ THEN BEDWIN25 C0SireneEdwinToB
~Well, I am surprised, fiendling. Despite your apparent lack of prowess in the powers of your heritage, you seem to be worth something after all.~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwinToB","GLOBAL",1)~
== BC0SIR25 ~Your words drip with condescension, Edwin. I would rather you remained silent.~
== BEDWIN25 ~Such ungrateful impudence, I believe I had given you a compliment. (Though you are perhaps too simple-minded to realize it...) You may lack any semblance of a clear mind, but as a meat shield, you are... remarkably competent.~
== BC0SIR25 ~My body and skill were honed to defend others. My only regret is that I must waste it on one such as you.~
== BEDWIN25 ~And yet you do it regardless. Fascinating.~
== BC0SIR25 ~I assure you, that will not last. One day we may be on the opposite sides of the battlefield... and you will see a different side of me entirely.~
== BEDWIN25 ~Perhaps, though it behooves me to warn you that you will only have one chance.~
EXIT

CHAIN 
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerdalisToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneHaerdalisToB
~Haer'Dalis... I think we should talk a while, you and I.~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerdalisToB","GLOBAL",1)~
== BHAERD25 ~Certainly. Shall we practice a duet? Or will this be a mutual exchange of affections?~
== BC0SIR25 ~...~
== BHAERD25 ~Ahh... I see that grim countenance you are so fond of displaying. Perhaps a song to soothe your spirit?~
== BC0SIR25 ~No, please stop. I would have you be serious this one time.~
== BHAERD25 ~Stifle my humor? 'Tis as a barb to my heart, my lovely goshawk! What would this sparrow be without his wit?~
== BC0SIR25 ~Your wit is exactly what concerns me. We have seen too much bloodshed in this journey, yet you do not seem preturbed in the least. No... you seem to revel in it.~
== BHAERD25 ~Destruction is a beautiful thing, my dear. Terrible, yet beautiful nonetheless. As an artisan, I must know to appreciate it.~
== BC0SIR25 ~There is nothing beautiful about death, Haer'Dalis. Do you not feel anything for those that have fallen?~
== BHAERD25 ~I sympathize, but all things must ultimately return to oblivion. Should I feel sorrow for the fortunate individuals taking the journey before us?~
== BC0SIR25 ~Your resignation towards this... ideal is something I will never understand.~
== BHAERD25 ~You do not need to, Sirene. Entropy will take us all before we know it.~
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoenToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneImoenToB
~Imoen? Are you feeling unwell?~ [C0BLANK]
DO ~SetGlobal("C0SireneImoenToB","GLOBAL",1)~
== BIMOEN25 ~Hm? N-no, not at all. I'm right as rain just like usual, e-heh. Why would you think otherwise?~
== BC0SIR25 ~Perhaps I was mistaken. You just... do not seem your usual self.~
== BIMOEN25 ~Oh. Well, you know. I've just been trying to be more serious. Kind of like you, I guess.~
== BC0SIR25 ~Like me?~
== BIMOEN25 ~Yeah, you know. The whole solemn and selfless schtick. "I will protect my friends!" and all that.~
== BC0SIR25 ~Do... do I truly sound that way to you?~
== BIMOEN25 ~Hehe, just teasing. Mmm... I might've exaggerated a bit, but... I meant it when I said I was trying to copy you.~
== BC0SIR25 ~But... why? There is no need for you to change who you are.~
== BIMOEN25 ~Well, I wouldn't go that far. It's just that... you've become a role model to me now. Like a big sister.~
== BC0SIR25 ~I... I did not realize you thought of me that way, Imoen. I am flattered.~
== BIMOEN25 ~Heh heh. Now that I've said that, you'd better act the part. I expect to be spoiled!~
== BC0SIR25 ~(laugh) I will do my best.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 C0SireneJaheiraToB
~Sirene, there is a very important we must discuss, and the sooner the better.~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheiraToB","GLOBAL",1)~
== BC0SIR25 ~You have my attention, Jaheira.~
== BJAHEI25 ~I should hope so, as this is a vital matter for this whole group. You have become strong, and many of us have come to depend on you in our trials.~
== BC0SIR25 ~I- you give me too much praise. I have only done what I always have.~
== BJAHEI25 ~Therein lies the problem. You cannot continue to recklessly throw your life at risk. If we were to lose as you are now, I fear it would mean all of our doom.~
== BC0SIR25 ~Should I become lax in my duty and put <CHARNAME>, or you at risk instead, then? No, I cannot have that.~
== BJAHEI25 ~Do you think so little of us, Sirene? We are not weaklings in need of you to protect us at all times. We are a group, and must learn to depend on each other.~
== BJAHEI25 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~That aside, how do you think <CHARNAME> will react, were you to fall?~
== BJAHEI25 ~You cannot carry the weight of the world on your shoulders, Sirene, no matter how much you may try. Your friends are here to share the burden.~
== BC0SIR25 ~There is... truth in what you say, Jaheira. Forgive me, I have been most arrogant.~
== BJAHEI25 ~Thank Silvanus, you are finally starting to see sense. I hope this will be the last we must talk of this.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJanToB","GLOBAL",0)~ THEN BJAN25 C0SireneJanToB
~Sirene, my girl, have a whiff of this. I'm sure it'll fix your problems in a jiffy!~ [C0BLANK]
DO ~SetGlobal("C0SireneJanToB","GLOBAL",1)~
== BC0SIR25 ~(Ilmater preserve me...) Um, Jan... thank you, but I do not think such a condiment is for me.~
== BJAN25 ~Oh no no, this isn't for eating, lassie. Well, I suppose you could eat it, but the gas you'd get would stun an ox. No, this is my patented Jansen family recipe for anti-scarring salve. After all the battles you've been throwing yourself into, I thought you could use a lot of it. Here, have a look! It doesn't smell that bad.~
== BC0SIR25 ~I... suppose there is no harm in trying a little... (gods, 'tis so pungent!)~
== BJAN25 ~There, isn't that a pleasant feel? And for a young lass like you, it doubles as a cream for facial care! I assure you, you'll never see a shinier glow on your cheeks after a week of using this! Well, side-effects include the occasional rash and color change, but with your complexion I'm sure no one would notice.~
== BC0SIR25 ~(I... need to put this on my face?)~
== BJAN25 ~Go ahead, take it! There's plenty more where that came from. I made a whole batch from the harvest of my portable turnip farm. It'll be good to use for at least another month or two.~
== BC0SIR25 ~Th-thank you, Jan, but I fear I must pass. My scars, erm, serve a spiritual purpose, and removing them would be wrong.~
== BJAN25 ~Your loss. I suppose I'll save it for my own use then.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldornToB","GLOBAL",0)~ THEN BKELDO25 C0SireneKeldornToB
~We have come far together, have we not, Sirene? Though our battles grow ever fiercer, we persevere. And I have watched you grow stronger from the experience.~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldornToB","GLOBAL",1)~
== BC0SIR25 ~Thank you, sir, but... how about you? As you say, our foes only increase in strength and vigor. At your age, sometimes I worry...~
== BKELDO25 ~Do you fear that this one's old bones shall fall in the midst of battles? I am old, aye, but not so frail yet.~
== BC0SIR25 ~No, I did not mean to imply-~
== BKELDO25 ~Hah, worry not, child. I know you are only concerned for my health and well-being. Why, for a moment I almost believed I was speaking to my daughters.~
== BC0SIR25 ~Your daughters... do you miss them, sir Keldorn? It must be many months since you last saw them.~
== BKELDO25 ~Aye... I think of them, each day and night. If Torm is kind, then perhaps I shall live to see them once more.~
== BC0SIR25 ~You will, sir. I will make that certain. If you can see my daughters in me, then... I shall speak my mind. I have never known my father, but... I would have liked nothing more, to be raised by one such as you.~
== BKELDO25 ~Sirene... hah, you seem intent on bringing forth tears from this old fool's eyes. Thank you, child. Your words do me more honor than you know.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("C0SireneKorganToB","GLOBAL",0)~ THEN BKORGA25 C0SireneKorganToB
~Ach, I must admit, fiendling, I had thought ye a yellow-bellied wench, unfit fer the frontline, but I cannae deny that yer handy with a blade.~ [C0BLANK]
DO ~SetGlobal("C0SireneKorganToB","GLOBAL",1)~
== BC0SIR25 ~I suppose I should be grateful for the compliment, especially coming from you, Korgan, but I doubt that is the end of it.~
== BKORGA25 ~Ar, a shame yer head's too full o' rocks, or I'd find ye almost bearable.~
== BC0SIR25 ~So, in essence, your opinion of me has changed little, then?~
== BKORGA25 ~Have ye been listenin' to me, wench, or are yer ears as full as yer head? I said yer good in a fight, so yer not totally useless after all. Ye should be grateful I haven't slit yer throat while ye slept.~
== BC0SIR25 ~Aye, I have not forgotten your treatment of your former comrades. I should be glad, indeed, that you have not done the same to present company. As much as I wish to trust my companions... I cannot extend the same to you, Korgan.~
== BKORGA25 ~Hnh. Me past comrades had their fate comin'. As fer ye, so long as ye pull yer weight, skinny as ye are, yer in no danger... fer now. Heh heh.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzyToB","GLOBAL",0)~ THEN BMAZZY25 C0SireneMazzyToB
~My friend, do you have any plans for the future? Once our service to <CHARNAME> is over?~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzyToB","GLOBAL",1)~
== BC0SIR25 ~No, I... I have not thought that far ahead.~
== BMAZZY25 ~Well, you are welcome to accompany me up north. To Waterdeep, perhaps, if we make it that far.~
== BMAZZY25 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~Though I know of your feelings for <CHARNAME>, and if you would rather remain by his side, I would give you my blessing.~
== BC0SIR25 ~To the north... just the two of us?~
== BMAZZY25 ~Perhaps a small adventuring band, not so different from present company. Is that satisfactory for you?~
== BC0SIR25 ~I- I would like nothing more, Mazzy, truly... but will my presence not bring you trouble?~
== BMAZZY25 ~Of course not. I would never allow mere prejudice to impose upon our friendship. Regardless of what anyone else may think of you, it would be my highest honor to continue adventuring by your side.~
== BC0SIR25 ~No... I appreciate it, my friend, but I fear our callings are different. I must continue doing the work of my god. You are destined for greatness, Mazzy. I am not.~
== BMAZZY25 ~Do not say that, Sirene. We are comrades on equal ground, not pieces on a board.~
== BC0SIR25 ~Perhaps, but... what we seek in life are different. I do not wish for glory, or adventure as you do. We have developed a great friendship, Mazzy, and I do not wish for our separate desires to put that at risk. I hope you can understand that.~
== BMAZZY25 ~I see... nothing will change your mind, then? As you wish, but remember that my door shall always be open for you.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinscToB","GLOBAL",0)~ THEN BMINSC25 C0SireneMinscToB
~Sirene, Boo is telling Minsc that you are very lonely.~ [C0BLANK]
DO ~SetGlobal("C0SireneMinscToB","GLOBAL",1)~
== BC0SIR25 ~I... excuse me, Minsc?~
== BMINSC25 ~Boo says that Minsc should find you a companion just like him. Then you will not be lonely anymore.~
== BC0SIR25 ~Minsc... (laugh)~
== BMINSC25 ~Eh? Did Minsc say something funny?~
== BC0SIR25 ~No, I should not have laughed. Forgive me, 'tis just... I had just become jealous of your strange companionship, and suddenly you say such a thing... I could not stop myself.~
== BMINSC25 ~Minsc does not understand. Why would you be jealous of us?~
== BC0SIR25 ~Yes, Minsc, but... do not take it the wrong way. I am simply envious of your close relationship. Others may not realize it, but... having a friend at your side always is a valuable thing. That is something that I have desired for my whole life.~
== BMINSC25 ~Boo says that true friendship is a valuable thing indeed. But we are your friends, are we not?~
== BC0SIR25 ~Aye, Minsc... you certainly are.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNaliaToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneNaliaToB
~You look solemn, Nalia. Has the day been wearing you down?~ [C0BLANK]
DO ~SetGlobal("C0SireneNaliaToB","GLOBAL",1)~
== BNALIA25 ~Hmm? Oh, no. I mean, I am tired, but it's not because of what you think it is.~
== BC0SIR25 ~I understand. You have been pushing yourself day and night, reading and practicing your magic for hours on end.~
== BNALIA25 ~Noticed that, did you? I *did* try to make it subtle so the group wouldn't get worried over nothing...~
== BC0SIR25 ~'Tis far from nothing, Nalia. I can tell from the bags under your eyes that you have been deprived of sleep as of late. What has driven you to such a drastic change?~
== BNALIA25 ~I've been thinking about the future. I've gained so much power now, that I can't help but consider how I can best use it to correct everything that's gone wrong with my life. Once <CHARNAME>'s quest is over, I intend to return to my home and change everything for the better.~
== BC0SIR25 ~I see. You are committed to this, are you not? I can tell you are determined to make your ideals a reality.~
== BNALIA25 ~We once talked of the corruption in Amn's society and bureaucracy, and it was all theorizing, because I believed I lacked the power, but now... it's different. I know I can make the changes I want happen. But I need more knowledge than I have right now.~
== BNALIA25 ~Once I am ready, I intend on making changes on a greater scale, and reform my homeland from the corruption that has taken over. If such a day comes, I hope I can count on those of conviction, such as yourself, to do what I cannot.~
== BC0SIR25 ~You hardly need to ask, Nalia. Of course I will do everything in my power to assist, whenever you need me.~
== BNALIA25 ~Thank you. I ask you this because I respect you. If I am changed for the worse by the power I seek... I'll need someone of your moral fiber to set me right.~
== BC0SIR25 ~Nalia... you are better than you think you are, so I beseech you, stop this self-doubt. I know you can reach whatever goal you are aiming for.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneSarevokToB","GLOBAL",0)
Alignment("Sarevok",MASK_EVIL)~ THEN BSAREV25 C0SireneSarevokToB
~How surprising, Ilmatari. You have yet to speak a word to me since my restoration. No words of condemnation from you? I'm disappointed... I expected more from you.~ [C0BLANK]
DO ~SetGlobal("C0SireneSarevokToB","GLOBAL",1)~
== BC0SIR25 ~I have nothing to say to you, Sarevok.~
== BSAREV25 ~No? Yet you seem to look my way often enough, and always with a look of unease. Is my existence so much of an affront to you, that your glare threatens to burn into my very soul?~
== BC0SIR25 ~Perhaps I would, were I convinced that you have one. Yet even as you stand before me, I see nothing but a murderous shell, a shade of what was once a man.~
== BSAREV25 ~Is that what it is? You avoid me because I have no soul? How amusing.~
== BC0SIR25 ~I avoid you because you are an abomination, a creature without the empathy that makes a man. I have watched you, and you derive pleasure in nothing but sowing discord and murder.~
== BSAREV25 ~Ha!~
== BC0SIR25 ~Why do you laugh?~
== BSAREV25 ~The hypocrisy of this is not lost to me. If you would condemn me as a murderer, by what standards do you judge yourself? How many men have you slaughtered as <CHARNAME>'s lackey? Hundreds, thousands, more? It is so amusingly ridiculous that you believe you have any right to judge *me*!~
== BC0SIR25 ~You have had your judgment. That <CHARNAME> was willing to bring you back is a testament to <PRO_HISHER> mercy. But if you are so foolish as to repeat your mistakes, then I will end you without regret.~
== BSAREV25 ~Oh, this is simply too precious for words. Where is your precious 'mercy' now, wench?~
== BC0SIR25 ~There is mercy. But just as you know none, you shall recieve none.~
EXIT

CHAIN 
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneSarevokToB2","GLOBAL",0)
!Alignment("Sarevok",MASK_EVIL)~ THEN BC0SIR25 C0SireneSarevokToB2
~You have been quiet for some time, Sarevok. Have you grown tired of your mockery so soon? That is unlike you.~ [C0BLANK]
DO ~SetGlobal("C0SireneSarevokToB2","GLOBAL",1)~
== BSAREV25 ~I have no interest in trading barbs with you anymore, woman, though if you prod me further, that may be what you will get.~
== BC0SIR25 ~No, I... I did not mean to provoke you. Perhaps my words were impulsive. I... apologize.~
== BSAREV25 ~...~
== BC0SIR25 ~If... if that is all?~
== BSAREV25 ~You are a strange person, Ilmatari. One moment your words are dripping with hostility, the next you are apologizing with such sincerity that I almost believe it. What do you truly feel, I wonder?~
== BC0SIR25 ~Are... are you truly asking? I did not think you cared.~
== BSAREV25 ~Perhaps I do not. But <CHARNAME>'s strange desire to know those he walks with may have gotten to me. So, answer me, paladin - how much hate do you still feel towards me?~
== BC0SIR25 ~Hate is not something I feel easily. I cannot forgive the man you died as once, Sarevok, but as you are now... no, I cannot see any reason to hate you.~
== BSAREV25 ~I see. If that is so, then I am satisfied.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygarToB","GLOBAL",0)~ THEN BVALYG25 C0SireneValygarToB
~Your stance still has too many openings, Sirene. Concentrate.~ [C0BLANK]
DO ~SetGlobal("C0SireneValygarToB","GLOBAL",1)~
== BC0SIR25 ~I.. all right, give me a moment.~
== BVALYG25 ~There is no room for mistakes in battle, Sirene, and neither will your foe give you the chance to correct them. Defend yourself!~
== BC0SIR25 ~...argh!~
== BVALYG25 ~*sigh* I think we'd best leave it at that for today. Did I go too far?~
== BC0SIR25 ~No, my friend. I appreciate that you are not holding back. Even though I am still far from your level, I have learned much.~
== BVALYG25 ~There's no need to be so humble. Your skill has improved tremendously since we started sparring.~
== BC0SIR25 ~Yet... I have not beaten you once.~
== BVALYG25 ~That's only because I have trained with a blade far longer. Besides... I am not sure that skill is the issue.~
== BC0SIR25 ~What do you mean?~
== BVALYG25 ~I've noticed something about the way you fight, whether it's during training or in real battle. You're still reluctant to kill, aren't you?~
== BC0SIR25 ~...Aye, I believe I am. 'Tis a weakness that I fear I shall never correct.~
== BVALYG25 ~I don't believe that's necessarily a weakness. It holds you back, true, but if you can remain a good person because of it... I think that would be worth it.~
== BC0SIR25 ~Those are very kind words, Valygar. I appreciate it.~
== BVALYG25 ~Hmph. Don't get too used to it.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconiaToB","GLOBAL",0)~ THEN BVICON25 C0SireneViconiaToB
~I admit I am surprised, jalil. I had not thought that our alliance would last until now.~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaToB","GLOBAL",1)~
== BC0SIR25 ~What had you expected, Viconia? That I would kill you as you slept?~
== BVICON25 ~Perhaps, once, I would not have thought you above it. If you did not kill me, then you would allow me to die, or I would kill you. Such is 'companionship' as I know it.~
== BC0SIR25 ~That sounds... cruel indeed. Knowing the life you have experienced, Viconia, I... cannot bring it in myself to even blame you, much less hate you.~
== BVICON25 ~You trust far too easily, Sirene. Do you believe I am incapable of taking advantage of your trust?~
== BC0SIR25 ~If that is what must do, Viconia, I will accept it.~
== BVICON25 ~You are so very, incorrigibly foolish... abbil. I cannot understand you at all.~
== BVICON25 ~At the same time, I find your honestly oddly refreshing. Perhaps this alliance can prove to be in both our benefits.~
EXIT