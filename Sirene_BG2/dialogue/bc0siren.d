BEGIN BC0SIREN 

// Aerie

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie1","GLOBAL",0)~ THEN BC0SIREN C0SireneAerie1
~You winced when you looked at me, Aerie. Is something the matter?~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie1","GLOBAL",1)~
== BAERIE ~N-no. It's nothing.~
== BC0SIREN ~Forgive me, does my presence... cause you discomfort?~
== BAERIE ~No! Not at all. I'm not afraid- I mean, uncomfortable with you.~
== BC0SIREN ~There is no need to lie around me, Aerie, though I appreciate that you care for my feelings. Truly, I am familiar with your reaction, and it does not upset me. Not anymore.~
== BAERIE ~I guess I'm a little nervous... I know you mean well, but you always look so sad and solemn... and when you're like that, your eyes...~
== BC0SIREN ~I understand, Aerie. You are not the first. If I frighten you, then I will try to remain out of your way. Excuse me...~
== BAERIE ~Wait, I didn't mean it like that... *sigh*~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie2","GLOBAL",0)~ THEN BC0SIREN C0SireneAerie2
~By the gods, armor is such a tiresome thing to adjust... if only I had some assistance...~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie2","GLOBAL",1)~
== BAERIE ~*gasp!*~
== BC0SIREN ~Wha- Aerie? What is it, my friend?~
== BAERIE ~N-nothing! I'm so sorry for staring!~
== BC0SIREN ~Oh, my... you saw the scars, did you not? Forgive me. They are hideous, I know.~
== BAERIE ~I... I'm sorry. I shouldn't have looked. It's just that they reminded me so much of my... my...~
== BC0SIREN ~Your own scars? ...Forgive me, I should not have brought that up. 'Twas callous.~
== BAERIE ~N-no. I know I need to get used to it. I'll never fly again... but that doesn't mean I should hide from the truth.~
== BAERIE ~Do... do they hurt? Yours, I mean. Some of them look... painful.~
== BC0SIREN ~These? No, I have not felt them for a long time. Perhaps 'tis my tolerance for pain that has increased. But each has a story to tell, of a battle fought.~
== BAERIE ~Oh... good stories, I presume?~
== BC0SIREN ~(smile) Some. But many are remnants of my failures. People I have failed to save, to protect...~
== BAERIE ~Oh. I'm sorry. B-but to be honest, it makes me rather jealous...~
== BC0SIREN ~Why so, Aerie?~
== BAERIE ~I- I shouldn't say. It's wrong for me to think this way.~
== BC0SIREN ~Perhaps, but there is no harm in telling regardless.~
== BAERIE ~Alright, it's just that... at least you can at least be a little proud of your scars. When I look at mine, all I can think of is how weak, how fragile I am... unable to protect something that mattered so much to me. They bring me so much shame...~
== BC0SIREN ~Aerie... no. Do not think of yourself that way.~
== BC0SIREN ~You are stronger than you think. You have lost something more important than I can imagine, but 'tis a testiment to your strength that you can continue, and still be able to smile, and care for others as you do. I have much to admire about you, and I do not think any less of you for your scars.~
== BAERIE ~Haha! When you say that, I can almost believe it. Thank you, Sirene.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie3","GLOBAL",0)
HPPercentLT("C0Sirene",75)~ THEN BAERIE C0SireneAerie3
~Sirene? Um... I'm sorry.~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie3","GLOBAL",1)~
== BC0SIREN ~What are you apologizing for, Aerie? You have done nothing to offend me.~
== BAERIE ~But I did! You got hurt again protecting me.~
== BC0SIREN ~Aye, and I did so gladly. You need not worry about me. I am used to doing such things.~
== BAERIE ~I'm sorry! I-it's just that, I feel so useless, and I keep thinking... what if someone else gets hurt because you needed to save me? What if you die because of me? I can't keep counting on you to keep me safe!~
== BC0SIREN ~You are anything but useless. These wounds on my flesh, painful as they may be, do not concern me. I bear them with pride, for if they were inflicted upon you instead... I would feel infinitely worse.~
== BAERIE ~Ooh... don't say that! I'm not nearly as valuable as you say I am...~
== BC0SIREN ~Truly, you are, Aerie. Do not fear for me, because I swear to you that I shall continue to live, so that I may protect you.~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie1","GLOBAL",1)
Global("C0SireneAerie2","GLOBAL",1)
Global("C0SireneAerie3","GLOBAL",1)
Global("C0SireneAerie4","GLOBAL",0)~ THEN BC0SIREN C0SireneAerie3
~You are carrying too much, Aerie. Give me some of your load.~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie4","GLOBAL",1)~
== BAERIE ~Um... alright.~
== BC0SIREN ~If you need water or rations, do not hesitate to ask.~
== BAERIE ~Sirene?~
== BC0SIREN ~Yes, Aerie?~
== BAERIE ~Why are you, um, so nice to me? I- I mean, I'm not saying you aren't nice to others too, but you look out for me so much, in particular. Can I ask why?~
== BC0SIREN ~I... you should not overthink matters, my friend. 'Tis only my task to bear the burdens of others. You especially.~
== BAERIE ~I... I appreciate it, but I can pull my own weight, really. Even if it's difficult, I need to prove myself. I can't do that if you're doing the work for me.~
== BC0SIREN ~Truly, I understand. But I fear you may be overcompensating. I do not wish for you to harm yourself.~
== BAERIE ~O-okay, but you're still avoiding my question.~
== BC0SIREN ~Question?~
== BAERIE ~Why are you so kind to me, in particular? <CHARNAME>'s the leader, after all... we need <PRO_HIMHER> more than me...~
== BC0SIREN ~Aye, but 'tis for my own sake as much as that of <CHARNAME>... and of yours. I am not so selfless as you say I am.~
== BAERIE ~What... do you mean by that?~
== BC0SIREN ~Helping others is... a distraction, so that I do not think about myself. It allows me to... forget, I suppose, at least for the moment, everything that troubles me.~
== BAERIE ~Oh. That's...~
== BC0SIREN ~I am truly a selfish person when you think about it, am I not?~
== BAERIE ~N-no. I don't think that's selfish at all. I think that's really admirable... and I wish I could forget my own troubles so easily. But... I don't think forgetting is the right way.~
== BAERIE ~I think... what we really need is someone to talk to, or a shoulder to lean on. I- I know I'm still weak and ignorant, but I think this much, I can give you... my friend.~
== BC0SIREN ~Aerie... I would ask for nothing more... and you can always count on me, as well.~
EXIT

// Anomen

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen1","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen2
~I tell you again, <CHARNAME>, I like it not.~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen1","GLOBAL",1)~
== BANOMEN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I am aware she is your former comrade, but...~
== BC0SIREN ~If you would say such things, Anomen, I would prefer you speak to me, not of me.~
== BANOMEN ~Very well. In that case, I will speak my mind. I do not trust you.~
== BC0SIREN ~That much is clear. Anything else?~
== BANOMEN ~You claim yourself to be a holy champion of the Crying God, yet you have nothing beyond your word to support that. Your fell heritage, on the other hand, is clear to me.~
== BC0SIREN ~I have never made such an audacious claim, Anomen, you are putting words into my mouth. I am but a follower of Ilmater, nothing more.~
== BC0SIREN ~'Tis true that I have nothing more than my word to assure you, but I promise you that my blood does not define who I am.~
== BANOMEN ~Hmph. You say so, yet I do not trust you anymore for it. Watch yourself, tiefling. If I sense any treachery, may Helm be merciful upon you.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen2","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen2
~Fellbl- Ilmatari, if that is what you truly are. I pose a question to you, and of your faith. Do you truly believe every man deserves compassion?~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen2","GLOBAL",1)~
== BC0SIREN ~Deserve...? Not every man, no. But those who truly wish to walk back into the light, and redeem themselves... yes, I believe they deserve it.~
== BANOMEN ~Hmph. Your order is far too forgiving, if I might say so. Even if one makes the choice to return to the righteous path, their past actions must still be judged.~
== BC0SIREN ~What is there to gain to condemn a man for what is already done? Is there no cause to forgive, and guide them to a better path?~
== BANOMEN ~Forgive? How can you forgive those who have committed crimes against humanity?~
== BC0SIREN ~Not every man whom commits evils does so willingly, Anomen. Many do so with a heavy heart.~
== BANOMEN ~Then I ask you this; do you truly believe one who changes their ways truly wishes to atone?~
== BANOMEN ~No. They do not. They turn from their old ways only because it is more convenient for them to do so, rather than face their sins. They do it for purely selfish reasons. What reason is there to show compassion for such curs?~
== BC0SIREN ~You have a cynical view on the ways of men, Anomen. I cannot agree with it.~
== BANOMEN ~Only a realistic one. Your faith is grounded on naivete and ignorance. If all believed as you do, then the forces of evil would triumph within an instant. Evil must be punished where it rears its head, without a second thought.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen3","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen3
~I ask you, er, Sirene. Have you fought in many skirmishes? Crusades against the forces of evil?~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen3","GLOBAL",1)~
== BC0SIREN ~I have fought and defeated evil men before, but... nothing that sounds as grand as you say.~
== BANOMEN ~Hmm. How disappointing.~
== BC0SIREN ~And what of you, Anomen? Have you much experience in facing evil?~
== BANOMEN ~Naturally. Crusades against the hill giants, beasts of the Troll Mountains, invasions from the Sythillisian empire... if the Order was called upon for a mission, I was always amongst the first to accept.~
== BC0SIREN ~It does sound very impressive.~
== BANOMEN ~Indeed. I have proven myself time and time again to those above me for many years. As you can see, I am no less worthy than anyone.~
== BC0SIREN ~Do you truly mean anyone, or do you mean me?~
== BANOMEN ~Hmph. You are free to take it as you will.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("KillSaerk","GLOBAL",2)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen1","GLOBAL",1)
Global("C0SireneAnomen2","GLOBAL",1)
Global("C0SireneAnomen3","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIREN C0SireneAnomen4
~Are you all right, Anomen?~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~What is it to you?~
== BC0SIREN ~I was concerned for your well being. Your father's venom was... difficult to swallow, even for me to listen to. I cannot imagine how it felt to you.~
== BANOMEN ~It is a bitterness you would not understand. Let us leave it at that.~
== BC0SIREN ~No... I suppose I would not. I have never known my family.~
== BANOMEN ~I... I see.~
== BANOMEN ~I am surprised that you would show such concern, given the way I have treated you. I am... unused to such compassion, even from my fellows in the Order. Does your faith demand that of you?~
== BC0SIREN ~Somewhat... though my concern for you is more than that. When I saw your face when you left your family's manor... it made me most uncomfortable. I needed to make sure you were fine.~
== BANOMEN ~Perhaps... perhaps I have misjudged you, Ilmatari.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIREN C0SireneAnomen5
~I think congratulations are in order, Anomen... nay, Sir Anomen.~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~I thank you, my lady. 'Tis a wonderful feeling, at last, to have achieved the goal I have desired for so many years, and more so, to know that I have earned it.~
== BC0SIREN ~Indeed you have, my friend.~
== BANOMEN ~Verily, it... it is a new experience, and has given me a different perspective of things. I understand I have not been the wisest of men in the past, and I think the things I said to you in the past were hurtful, and unworthy of me. I truly beg your pardon.~
== BC0SIREN ~You have nothing to apologize for, Sir Anomen. 'Twas nothing I have not heard before, and I have already forgiven you for them.~
== BANOMEN ~You are too kind. I... I am glad, truth be told. I had feared you would be... envious.~
== BC0SIREN ~Envious? Why would you think so?~
== BANOMEN ~I... I feel I must apologize once more, this time in advance, for what I am about to insinuate. I know that you, too, desire the same honors that have been bequeathed upon me.~
== BANOMEN ~You, milady, are the epitome of what it means to be a true knight, yet it is I, the brash, arrogant youth once trapped in my delusions, who received the anointment. Even now, I wonder if I am truly worthy...~
== BC0SIREN ~Ah... that is what you mean. No, I do not feel envious, my friend. But I am truly grateful that you think of me as such. I am not nearly as perfect as you say I am...~
== BANOMEN ~True, no one is without their flaws. But I would serve as an example in the future, that even a man as flawed as myself can achieve his dreams. Do not lose heart, my friend.~
== BC0SIREN ~You have become wise, Anomen. Perhaps one day, I too...~
== BANOMEN ~I'm certain that your day will come, milady.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIREN C0SireneAnomen5
~...~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~Your arrogant glances have not gone unnoticed, wench! Have you scorn or mocking words for me as the rest do? Say them, then!~
== BC0SIREN ~I doubt you would care for anything I had to say, not after what you have done.~
== BANOMEN ~What I have done? Do you presume to judge me?~
== BC0SIREN ~No more than you should judge yourself, and why you have lost what you held dear.~
== BANOMEN ~Everything I held dear was lost to me when the Order, the traitorous dogs, turned their back to me.~
== BC0SIREN ~It is not the Order, Anomen, but you who betrayed yourself, and what you once stood for. How far you have fallen, to not see the truth for what it is...~
== BANOMEN ~What would you know of truth, Ilmatari? Is this part of your precious 'duty', then, to heckle a fallen man? Laugh, if it satisfies you, damned hypocrite!~
== BC0SIREN ~I will do no such thing, Anomen. It is not too late for you, if you would only see the light again.~
== BANOMEN ~Choke on your words, fiend. I will have no more of them!~
== BC0SIREN ~You are acting as though a child. Have you considered what your sister would say, if she saw you thus?~
== BANOMEN ~Enough! Silence, damn you!~
EXIT

// Cernd

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0SireneCernd1","GLOBAL",0)~ THEN BC0SIREN C0SireneCernd1
~*a-ah-achoo!*~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd1","GLOBAL",1)~
== BCERND ~Is something the matter, Sirene? Are you allergic to any plants, by any chance?~
== BC0SIREN ~No, 'tis nothing. Something in the wind, perhaps, and 'twas all.~
== BCERND ~Yes, it is the time for the pollen to fly and for new buds to grow. In but a few months, new flowers will bloom where the old ones perish, and the cycle will continue. Such is the harmony of nature.~
== BC0SIREN ~Tis certainly beautiful, Cernd, though I do not have the same fascination with it as you do.~
== BCERND ~A pity. One such as you could do well with some harmony, I think.~
== BC0SIREN ~I am not sure I appreciate what you are implying... if you mean to bring up my blood, Cernd, then I suggest that we end this conversation now.~
== BCERND ~I do not speak of your heritage, in fact. You may not be part of the natural cycle, but that is not my meaning. The imbalance I speak of is in your heart. You are wavering, as though wondering if your path ahead is clear or murky, whether you do enough for those around you...~
== BCERND ~But most of all, you wonder if you are worthy of your role. As long as such thoughts plague your mind, harmony cannot exist. You must work on that.~
== BC0SIREN ~I...~
== BCERND ~Am I wrong?~
== BC0SIREN ~No... you are not, Cernd. Forgive me. I clearly underestimated your wisdom.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneCernd2","GLOBAL",0)~ THEN BCERND C0SireneCernd2
~The harmony of nature is a beautiful thing, indeed. Would that more could fully appreciate it.~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd2","GLOBAL",1)~
== BC0SIREN ~You speak of harmony often, Cernd, but I do not truly understand it as you do. How do you achieve your level of tranquility?~
== BCERND ~Oh, it is far simpler than it appears. When you truly experience the entirely of nature, from the beauty to the very fragrance around you, you achieve a certain aura of... calm, that you bring with you wherever you go.~
== BC0SIREN ~I would... like to try and develop such a thing, if you can teach me.~
== BCERND ~Certainly. While the road is far from an optimal place to learn, there are still possible venues to take. Why don't you begin with meditation?~
== BC0SIREN ~Meditation?~
== BCERND ~It is much like praying, which I realize is something you are already familiar with. You must learn to relax your mind, and empty yourself of thought. It may feel difficult at first, but it will become natural to you soon enough.~
== BC0SIREN ~I see... I will do my best.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneCernd2","GLOBAL",1)~ THEN BCERND C0SireneCernd3
~So? How did your sessions fare?~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd2","GLOBAL",2)~
== BC0SIREN ~I... I could not do it, Cernd. I tried, truly, but I cannot empty myself of thoughts and emotions, no matter how much I wish to.~
== BCERND ~Hmm.~
== BC0SIREN ~Perhaps 'tis because of my blood. Imbalance is in my very being. I doubt I will ever succeed. Forgive me. I feel as though I have failed you, Cernd.~
== BCERND ~No, no. Perhaps that is for the best.~
== BC0SIREN ~Excuse me?~
== BCERND ~I simply meant what I said. Tranquility is for some, and not for others. It seems you fit within the latter. There is nothing wrong with that.~
== BC0SIREN ~But, I-~
== BCERND ~Ah, but there is one more thing I wish to say. I do not believe your blood has anything to do with it.~
== BCERND ~Rather, I suspect my methods are failing because there are thoughts, perhaps memories, within you that you do not with to forget, whether consciously or subconsciously. But you cannot bring these thoughts forwards, can you?~
== BC0SIREN ~No... no, I cannot. I often try, but... 'tis as though my mind refuses to acknowledge them. It worries me.~
== BCERND ~I would encourage you, then, not to force yourself to empty your mind after all. Instead, I suggest put your efforts into bringing these subconscious thoughts into focus. I will provide some aromatic incense from my grove in order to help, if that is what you desire.~
== BC0SIREN ~You are very generous, Cernd. Perhaps I will take you up on that offer.~
EXIT

// Edwin

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin1","GLOBAL",0)~ THEN BC0SIREN C0SireneEdwin1
~Fate truly has a cruel sense of humor. Of all the faces that I have parted ways with, yours was among the last I hoped to see again.~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin1","GLOBAL",1)~
== BEDWIN ~I assure you, the feeling is mutual. (The only thought I could possibly share with this wench...)~
== BC0SIREN ~We are allies for the time being, but I will watch you closely. The circumstances in which you joined leaves little room for trust. I warn you, wizard, if you harbor any thoughts of treachery, you will regret it.~
== BEDWIN ~Hmph, as if I care for your scrutiny. Have you forgotten so quickly that I have previously sworn my allegiance to <CHARNAME>? So long as I am well compensated, you have little need to fear... for now.~
== BC0SIREN ~Then we have nothing more to discuss.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin2","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin2
~Hmm. Disappointing, truly disappointing. I must say, fiendling, you have not met up to my expectations of you, as low as they are. How you are still alive is a mystery for the ages.~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin2","GLOBAL",1)~
== BC0SIREN ~I do not care for your condescending tone, Edwin, especially without context. Have I offended you?~
== BEDWIN ~You offend me in many ways, but that is irrelevant. I was simply curious as to whether your fell blood had bequeathed any powers upon you that makes you of more use than the rest of the simians <CHARNAME> surrounds <PRO_HIMHER>self with.~
== BEDWIN ~As it stands, I am sorely disappointed. You have exhibited no special ability. Not even the mildest of infernal powers. Are you certain you were born of fiends, and not simply a hapless victim of a transmutation spell gone awry?~
== BC0SIREN ~Your words are bordering upon insult, but I have come to expect such things from you. I shall tolerate it.~
== BEDWIN ~(Blast! I thought that would provoke a reaction for sure.) I am only interested in this: Do you truly have no powers of note stemming from your heritage?~
== BC0SIREN ~That is not for you to know, Edwin. I have no desire to use what powers lie within my blood. I have the gifts bestowed upon me by Ilmater, and that is enough.~
== BEDWIN ~(Hmm, not quite an affimative, but as close to it as I shall get for now. I shall continue to observe.)~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin3","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin3
~So, fiendling, have you considered our discussion? There must be some power in your blood that is worth the effort to draw out. I am even willing to offer some of my valuable time to assist. (Though there had best be compensation, and if this is indeed a fruitless endeavour...)~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin3","GLOBAL",1)~
== BC0SIREN ~...~
== BEDWIN ~Well? A 'yes' or 'no' would suffice, and should not exceed your limited mental capacity. Answer and be done with it.~
== BC0SIREN ~You are a dangerous man, Edwin.~
== BEDWIN ~Eh? Yes, yes. I am fully aware of that. ('Tis high time she noticed!) But at the moment, I am more interested in seeing what untapped potential there is within your heritage. (Maybe even enough for me to take advantage of, hmm...)~
== BC0SIREN ~Your words are poisonous... I have heard such things before, though only within my own thoughts. This desire that you are attempting to spark within me, to acknowledge my power... I have once known it, and abused it. I would not have it back for anything.~
== BEDWIN ~Your own childish beliefs are irrelevant in this. Power is everything, as well as a strong will to control it. (I am a living example.)~
== BC0SIREN ~I have been tempted with power before, Edwin. I will not fall prey to it again.~
== BEDWIN ~Regrettable.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin4","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin4
~Gyaaahhh! Failure once again! This wretched form resists every attempt to dispel it!~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin4","GLOBAL",1)~
== BC0SIREN ~...~
== BEDWIN ~What?! What is it, fiendling? Must I suffer the indignity of your glances as well?~
== BC0SIREN ~W- was I staring again, Edwin? I, er, apologize. Your current... situation is merely of curiosity to me.~
== BEDWIN ~Hmph. Yes, yes, I shall overlook it this once, now leave me be... wait! Did you say 'again'?! Have you been watching me this entire time, woman?~
== BC0SIREN ~I would advise you to lower your voice. 'Tis not the words I would wish for others to hear bellowed into the open.~
== BEDWIN ~Bah! That I must suffer this curse is shame enough, what is a little more?~
EXIT

// HaerDalis

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis1
~What do you know of the planes, my horned goshawk?~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis1","GLOBAL",1)~
== BC0SIREN ~Very little, I fear. Despite the blood in my veins, I am very much a Prime, by birth and upbringing.~
== BHAERDA ~As you say. I was merely curious, however, as I can clearly sense the touch of Baator upon you.~
== BC0SIREN ~Baator, the Nine Hells... I was told that my bloodline could be traced there. The thought brings me no comfort.~
== BHAERDA ~'Tis a pity that you would think so. Baator is not such an unaccomodating place, so long as you have a mind for the political intrigue, and serve to be sufficiently entertaining to the fiendish patrons.~
== BC0SIREN ~You have performed in Baator, Haer'Dalis? Truly?~
== BHAERDA ~(laugh) May the Lady of Pain strike me down if I lie. Aye, the devils of Baator enjoy our satirization of their rivals. 'Tis dangerous, of course, but there is excitement to be found in danger. One mishap on stage, or a dissatisfied audience, would lead to a swift meeting into lady Entropy.~
== BC0SIREN ~You are such a strange person, Haer'Dalis. The way you reminisce over such things, I am not sure of whether to take you seriously. But... (laugh) I confess, there is a certain charm to you.~
== BHAERDA ~(bows) I live to please... until the day oblivion claims us all, that is.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis2","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis2
~Sirene, my brave goshawk, your expression is as grim as oblivion itself. Shall I play you a song?~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis2","GLOBAL",1)~
== BC0SIREN ~'Twould be a pleasant diversion, certainly. But what shall you perform today, I wonder?~
== BHAERDA ~I shall play something to your liking, of course. Ah, but do not tell me, I wish to guess.~
== BC0SIREN ~As you wish, though I fear this will be a difficult game.~
== BHAERDA ~Hmm, perhaps a song from your native land, then? Your lovely features are distinctly Cormyrean, so perhaps this one...?~
== BC0SIREN ~...No, I am afraid 'tis not familiar. I was orphaned at a young age and raised in the north, so I know little of Cormyrean culture.~
== BHAERDA ~A small hint, then, for yon hapless bard?~
== BC0SIREN ~Very well. I was raised in a village in northern Faerun, past Baldur's Gate, but not as far as Waterdeep. Is that enough for you?~
== BHAERDA ~Hmm, tricky, but if I am not mistaken, You must certainly know this one... 'hmm-hm-hm-hmm'... (whistles)~
== BC0SIREN ~...ah! That song...~
== BHAERDA ~(laugh) A grand success!  Did this little tune strike a familiar chord?~
== BC0SIREN ~My caretaker... Sister Camilla of the church sang that lullaby to me, when I was little. I still remember some of the lines...~
== BHAERDA ~In that case, perhaps you would like to finish the song, aye?~
== BC0SIREN ~Aye, I shall. (smile) Thank you, Haer'Dalis.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis3","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis3
~So, my dear, how did you enjoy my performance?~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis3","GLOBAL",1)~
== BC0SIREN ~Your music is lovely, Haer'Dalis, but there is something... disconcerting about it.~
== BHAERDA ~Oh? Pray, do tell.~
== BC0SIREN ~You sing so often of entropy, tragedy and the inevitable end, but do you truly not believe in a brighter future?~
== BHAERDA ~Aye, you idealist Primes appear to prefer a happy ending well enough, but can you deny that the multiverse, boundless as it may seem, is destined for oblivion?~
== BC0SIREN ~I cannot, but neither can I comprehend things the way you do.~
== BHAERDA ~Very well then, a simple analogy shall do. Picture a married couple, saying their vows and promising each other eternal joy. But are their lives not destined to end, their bodies destined to age and wither away?~
== BC0SIREN ~Aye... they do. But you appear to let the thought of that end consume you. Is there no joy to be had in the meantime?~
== BHAERDA ~Certainly there is. But you Primes appear to struggle against the thought of entering oblivion with all your might. I embrace it.~
== BC0SIREN ~'Tis your right, but to rejoice in the thought of destruction is... unsettling.~
== BHAERDA ~You may think so now, but I have no doubt that when your end comes, you shall accept it with grace.~
== BC0SIREN ~Perhaps, but for now... I would prefer to find meaning in my life. I hope I will have your friendship in the meantime, even if we cannot understand each other.~
== BHAERDA ~Friendship dies just as everything else, but... indeed, why not?~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BC0SIREN C0SireneImoen1
~I am sorry for the suffering that you must have gone through, Imoen. If there is anything I can do for you, I will.~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen1","GLOBAL",1)~
== BIMOEN2 ~Thanks. I'm fine now, though... well, not fine, but you get what I mean.~
== BC0SIREN ~Aye. To tell the truth, I had missed your mischievous antics since we parted. It pains me greatly to see you like this.~
== BIMOEN2 ~It's okay. Give me some time, and I'll be back to my good old self again. I promise.~
== BC0SIREN ~I hope so. We will restore you, Imoen. I promise.~
== BIMOEN2 ~I missed you too, you know. You were always easy to talk to... I always felt like a great load was taken off my shoulders, every time I told you something that bothered me...~
== BC0SIREN ~Aye, I remember those times fondly. I greatly missed you as well... your brightness gave me much needed support in the past.~
== BIMOEN2 ~D'you mind if we go back to stuff like that? I think I might need it more that ever.~
== BC0SIREN ~(smile) Of course, Imoen.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen2","GLOBAL",0)~ THEN BIMOEN2 C0SireneImoen2
~Hey. Whatchu doing?~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen2","GLOBAL",1)~
== BC0SIREN ~Wh- oh, Imoen. Nothing.~
== BIMOEN2 ~Really? You're hiding something behind your back. C'mon, you know I get curious. What've you got? Show me, show me!~
== BC0SIREN ~'Tis nothing. Just... something silly.~
== BIMOEN2 ~Aw, but you know I love silly stuff! C'mon, sister. Give me a look!~
== BC0SIREN ~*blush* No, truly, Imoen, I think 'twould be best if you did not pry. As a favor to me.~
== BIMOEN2 ~*Pooh!* Fine! Spoilsport.~
== BC0SIREN ~Thank you, Imoen.~
== BIMOEN2 ~Yoink!~
== BC0SIREN ~Wh- no!~
== BIMOEN2 ~Ha! Gotcha. Now let's see what we have here... huh? A book?~
== BIMOEN2 ~Wait, this... this is a romance novel! And... yep, it's one of those really mushy ones. Heehee, I didn't know you were into that sort of thing.~
== BIMOEN2 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~Ooh, maybe it's because of you and <CHARNAME>...~
== BC0SIREN ~*sigh* Truly, Imoen, you are impossible. Now that you have had your laugh, may I have it back?~
== BIMOEN2 ~Alright, alright. I've had my fun... for now.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen3","GLOBAL",0)~ THEN BIMOEN2 C0SireneImoen3
~Hey there, Sirene. I haven't seen you read for a while now. What's up?~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen3","GLOBAL",1)~
== BC0SIREN ~*sigh* What for, Imoen? My secret is out. You would just tease me to no end.~
== BIMOEN2 ~Aw, d'you think I'd really do that?~
== BC0SIREN ~...Yes.~
== BIMOEN2 ~*sigh* Alright, you got me. But... really. I'm sorry. I just wanted to tease you a little. That's all.~
== BC0SIREN IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~No, Imoen, do not apologize. In truth, I am glad. I have not seen you so exuberant.~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~No, Imoen, do not apologize. In truth, I am glad. I have greatly missed this side of you.~
== BIMOEN2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Hee, yeah, I guess. Funny, I used to be like this all the time. It's strange to realize how much I've changed.~
== BIMOEN2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Hee, yeah, I guess. It's just like old times, huh?~
== BC0SIREN ~It makes me happy to see you so cheerful. I would give anything for you to remain this way, even if you must make light of me.~
== BIMOEN2 ~Aw, thanks. But, I promise I won't make fun of you liking romance books again, promise.~
== BIMOEN2 ~On one condition.~
== BC0SIREN ~Yes?~
== BIMOEN2 ~You have to read to me at bedtime. Like a big sister would.~
== BC0SIREN ~...~
== BIMOEN2 ~What?~
== BC0SIREN ~...As I thought. You like romance novels as well, do you not?~
== BIMOEN2 ~*blush* N-nope! Wh-why would you think so? Just... ol' Puffguts used to read bedtime stories to me, back in Candlekeep. I miss those days.~
== BC0SIREN ~(laugh) You cannot fool me, Imoen. Now I know your secret. But yes, I would be happy to.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen4","GLOBAL",0)
HPPercentLT("Imoen2",75)~ THEN BIMOEN2 C0SireneImoen4
~Ow! Last time I try- *ow!* pulling a stunt like that... ow-ow-ow, that stings! Stop!~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen4","GLOBAL",1)~
== BC0SIREN ~'Tis just the salve, Imoen. You will have to bear with it a bit longer, then I can apply the bandages.~
== BC0SIREN ~But I must ask what you were thinking, trying to engage the enemy like that? You could have been killed.~
== BIMOEN2 ~Oh, well... I was trying to fight more like you, I guess.~
== BC0SIREN ~'Tis not amusing, Imoen. You cannot ever be so reckless in combat. <CHARNAME> and I... we would be shattered if we lost you.~
== BIMOEN2 ~*pout* Hypocrite.~
== BC0SIREN ~What was that?~
== BIMOEN2 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~Sorry. I guess I went a bit far. But you do the same thing, don't you? And I know, if you died then <CHARNAME> and I, especially <CHARNAME>, would...~
== BIMOEN2 IF ~!Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~Sorry. I guess I went a bit far. But you do the same thing, don't you? And I know, if you died then I would...~
== BC0SIREN ~That is enough, Imoen. I want you to promise, never to do such a thing again. And in return, I will promise to you, neither of us will die, so please stop talking about such things.~
== BIMOEN2 ~Alright, I get it. But you won't die on me? Promise?~
== BC0SIREN ~Promise.~
EXIT

// Jaheira

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneJaheira1","GLOBAL",0)~ THEN BJAHEIR C0SireneJaheira1
~It is good to see you are well, Sirene. Given your tendency for taking risks, I feared we had seen the last of you at Baldur's Gate.~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira1","GLOBAL",1)~
== BC0SIREN ~Aye, though I wish the circumstances were different... I had hoped to see Khalid once more.~
== BJAHEIR ~I miss him, but I do not wish to bring up painful memories constantly. I can only find solace in praying that he is in peace.~
== BC0SIREN ~He is, Jaheira, I am sure of it. I will also pray to Ilmater for his well-being.~
== BJAHEIR ~I appreciate it, but this is something I would rather do alone. I mean no offense, of course.~
== BC0SIREN ~If that is what you prefer. But I am always here, if you need my company.~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheira2","GLOBAL",0)~ THEN BC0SIREN C0SireneJaheira2
~Gods, my head...~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira2","GLOBAL",1)~
== BJAHEIR ~What is it, Sirene? You look unwell. Are you injured anywhere?~
== BC0SIREN ~No... at least, no wound that I know of. But my head is aching, and I feel as though I did not sleep at all last night.~
== BJAHEIR ~Hold still a moment. Ah... I think I know the cause. Have you had nightmares lately?~
== BC0SIREN ~Yes... more often than normal, as of late.~
== BJAHEIR ~I fear you are starting to feel the strain of combat upon your psyche. These things take time to heal, but I can alleviate the pain a little. Take this.~
== BC0SIREN ~Are these herbs? Such a powerful scent... oh! I already feel the pain subsiding.~
== BJAHEIR ~Place the pouch beneath your head when you rest. If it does not help, come back to me.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheira2","GLOBAL",1)~ THEN BJAHEIR C0SireneJaheira3
~Your face is full of color today, Sirene. Did you sleep well?~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira2","GLOBAL",2)~
== BC0SIREN ~Aye. I had a most wonderful dream last night. Thank you for the herbs, Jaheira.~
== BJAHEIR ~Remember to use them in the correct dosage. In excess, they can cause the reverse effect, or worse, put you in an endless sleep.~
== BC0SIREN ~Yes...~
== BJAHEIR ~Your mind is drifting. If the herbs are making you lax, then I will have to take them back.~
== BC0SIREN ~I am sorry, Jaheira. 'Tis just that...~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I dreamt of our adventures, at the Sword Coast. 'Tis strange, how pleasant those memories are now.~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~And yet... when I think back, 'twas the same then as now, was it not? We were killing each day, just as we do now. I think of those that we have slain each night, haunting me...~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I see. That was the source of your nightmares, yes?~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Aye. I close my eyes, and all I see are blood and corpses. I had thought that defeating Sarevok would put an end to it, but...~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I feel pathetic, Jaheira. I had thought, after so much bloodshed, that 'twould become easier. But it does not. I fear that my weakness makes me unworthy of being Ilmater's champion.~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~...~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Sirene.~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Yes?~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~You are not alone in having such thoughts. Khalid was in many ways the same, when I first met him. He was... affected each time he was forced to kill.~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~He confided in me often, and I would scold him, to the point where learned to hide it from me, but I doubt the thoughts ever left his mind.~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Truly? I would never have suspected. I had never seen Khalid falter in combat, despite his distaste for battle. 'Twas inspiring.~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I speak the truth. If you think that having a conscience makes you a weaker person, then I would suggest you consult your common sense before coming back to me.~
== BC0SIREN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I understand. Thank you, Jaheira.~
== BC0SIREN IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~I wonder if 'tis right for me to use this. Before, I dreamt of the men I have slain, and now that those dreams are gone, I wonder if I am betraying Ilmater's teachings, by removing the pain for selfish purposes.~
== BC0SIREN IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~Perhaps I should return these herbs after all.~
== BJAHEIR IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~That is ridiculous. What would you do in the day if your rest was hampered by nightmares? Is it a selfish act to keep yourself healthy so that you can protect your allies?~
== BC0SIREN IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~'Tis true, I suppose. Forgive me for having such thoughts.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneJaheira4","GLOBAL",2)
HPPercentLT("C0Sirene",50)~ THEN BJAHEIR C0SireneJaheira4
~Once again, you have flirted recklessly with death far more than 'tis necessary. Are you so eager to die, that you would throw yourself at our foes without regard for your life?~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira4","GLOBAL",3)~
== BC0SIREN ~I do not wish to die, Jaheira, but I would sooner give up my life than to allow another to fall by my cowardice.~
== BJAHEIR ~A foolish thought. How are you to defend anyone, were you to fall by your own recklessness?~
== BC0SIREN ~I would not allow that to happen.~
== BJAHEIR ~Yes, but what if?~
== BC0SIREN ~...~
== BJAHEIR ~Well?~
== BC0SIREN ~I... do not know. But I do know that hesitation has cost others greatly, and the fault is mine for failing them. I cannot allow the same to happen again.~
== BJAHEIR ~And what if your actions lead to your untimely death?~
== BC0SIREN ~If it comes to that, then... I will have done my duty.~
== BJAHEIR ~*sigh* You seem determined to be stubborn. So be it. You are still young. Perhaps with time, you will learn that your life is as valuable as anyone else's.~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("JaheiraNotHarper","GLOBAL",1)
Global("C0SireneJaheira5","GLOBAL",0)~ THEN BC0SIREN C0SireneJaheira5
~Jaheira, I... I know not what to say. To think you would forsake your place among the Harpers for <CHARNAME>'s... our sakes. I am lost for words.~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira5","GLOBAL",1)~
== BJAHEIR ~There is no need to mince words on this matter, Sirene. If you disapprove of my actions, you may say it out loud for all to hear, if it pleases you.~
== BC0SIREN ~No, I- I did not mean that. In truth, I admired your decision. I know 'twas likely not an easy one to make.~
== BJAHEIR ~That is where you are wrong. Though I may have hesitated when making my choice, it was the only right one. I would do the same thing again if need be.~
== BC0SIREN ~Then... you do not regret abandoning the Harpers?~
== BJAHEIR ~I did not abandon my fellows, Sirene, not truly. Though I renounced my place amongst them, I did so only because that is the true way of the Harpers. Perhaps you have yet to understand this, but in time, you will.~
== BC0SIREN IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~Yes... perhaps you are right.~
== BC0SIREN IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~I believe I understand it more than you might think, Jaheira... and I believe what you did was right.~
EXIT

// Jan

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJan1","GLOBAL",0)~ THEN BJAN C0SireneJan1
~So, you've got a spot of devil blood in you, eh, lass? That reminds me of my third cousin on my mother's side, Lanbar.~ [C0BLANK]
DO ~SetGlobal("C0SireneJan1","GLOBAL",1)~
== BC0SIREN ~Does your cousin have a fiendish ancestor, then?~
== BJAN ~No, not quite. My cousin Lanbar was a mage of reputable power, you see. He felt that magic was good for the family business, and sure enough, his turnip gardens were the finest you've ever seen. The turnips he grew were larger than my head. He was the richest Jansen you could find in any corner of Faerun, and that was a fact.~
== BC0SIREN ~I do not see how this has to do with... anything.~
== BJAN ~Just you wait and see. 'Tis a terrible tragedy, what happened to Lanbar. Most of his competitors were very jealous of him, and he knew it. So, to prevent them from pulling foul play on his precious livelihood, he summoned a pit fiend for a thousand year contract to protect his guardens from any would-be saboteurs. The fiend was furious, of course, when he found out that he was guarding a turnip field. But when you sign a devil's contract, there's no getting out of it for either party.~
== BC0SIREN ~Oh. Oh dear. That could not have ended well.~
== BJAN ~Quite. It just so happens that Lanbar's wife, a lovely flower by the name of Milly Jansen, took a liking to the pit fiend that her husband summoned. First it was just nice long talks at the turnip garden. Then she suddenly grew a belly, and Lanbar was heartbroken. He banished the fiend back to the Nine Hells, burned his turnip garden to the ground, then disappeared. No one in the family has a clue what happened to him, but it was a great loss to the family.~
= ~As for Milly, her cambion son was born with red skin and little horns out of the top of his head. I suppose the lad would be around your age now, if he's still alive.~
== BC0SIREN ~Jan, that is... quite disturbing. Please forgive me if I try to forget this tale as quickly as possible.~
EXIT

// Keldorn

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)
!Global("DomainPaladinBattle","GLOBAL",2)~ THEN BC0SIREN C0SireneKeldorn1
~'Tis a pleasure to finally meet you, sir Keldorn. Ajantis spoke most highly of you.~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn1","GLOBAL",1)~
== BKELDOR ~You must be Sirene, then. The pleasure is mine, young lady. Ajantis was particularly zealous with his commendations to you. Rarely have I ever seen him praise another so highly, especially in writing.~
= ~Truth be told, I am quite impressed that one as young as yourself has embarked upon the paladin's path, and held to it with such dedication.~
== BC0SIREN ~'Tis hardly as impressive as you make it sound, sir. Though my heritage makes things... more difficult, I suppose.~
== BKELDOR ~I must confess, when I had received Ajantis's missive detailing the success of his journeys across the Sword Coast, I was surprised when he mentioned your description.~
= ~Many of my fellows believed it was his attempt at humor, but I knew him well. 'Twould seem that he was very concerned about your reception should you arrive to the Order one day.~
== BC0SIREN ~(smile) I am truly grateful to him. How is Ajantis, my lord? I have not seen him for many months, and 'twas unfortunate that he had left Athkatla before I arrived to the Order.~
== BKELDOR ~Alas, I have not seen the lad since he passed his test and went his own way. I hope he has not let knighthood get to his head. The lad was always impatient.~
== BC0SIREN ~(laugh) 'Twould seem that he has changed little, then. I do miss him.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn2","GLOBAL",0)~ THEN BKELDOR C0SireneKeldorn2
~I admit I know little of the Holy Warriors of Suffering. What can you tell me of your order, Sirene?~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn2","GLOBAL",1)~
== BC0SIREN ~There is little I can tell you beyond my own years of service, Sir Keldorn. I have never met another of my order.~
== BKELDOR ~Truly? I recall you mentioned that you lived among the followers of Ilmater in your youth. Were there no other paladins?~
== BC0SIREN ~Nay, sir. Though paladins are among Ilmater's faithful, they are rare, for we are for the most part a pacifistic order. I was... an exceptional case.~
== BKELDOR ~What made you such an exception?~
== BC0SIREN ~I was a hot-tempered youth, sir. My blood estranged me from the other children, and they antagonized me because of it.~
== BKELDOR ~Children can be cruel at times. My daughters have faced the same treatment, as sad as it is.~
== BC0SIREN ~'Twas too much for me eventually, and there was a fight. I am not proud of it.~
== BKELDOR ~But the priests felt a martial calling would discipline you. A wise choice.~
== BC0SIREN ~I do not always feel the same, sir. I oft feel that I am unworthy of serving Ilmater in this capacity.~
== BKELDOR ~Do not doubt yourself, child. Leave the past as it is, and let your future actions decide your worthiness.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn3","GLOBAL",0)~ THEN BKELDOR C0SireneKeldorn3
~How long have you served in Ilmater's clergy?~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn3","GLOBAL",1)~
== BC0SIREN ~Eight years now, by my memory. A mere pittance compared to your decades of service, sir.~
== BKELDOR ~Aye, but it is dedication, not time, that determines a knight's worth, Sirene.~
== BC0SIREN ~If it is dedication we speak of, Sir Keldorn, then I could not hope to contest you.~
== BKELDOR ~Ha! You give me more praise than I deserve, child. There must surely be tales in your past that you can speak of with pride.~
== BC0SIREN ~*sigh* There is one tale, sir, but pride is not what I feel when I think of it. Do you know of the Iron Tyrant?~
== BKELDOR ~Aye, the infamous slave lord of the Coast Way Road. Asador was his name, if I recall. His reign of terror ended in the prior year with his death, did it not?~
== BC0SIREN IF ~OR(2) PartyHasItem("c0sw2h") PartyHasItem("c0sw2h2")~ THEN ~It did. Because I slew him. This blade... belonged to him.~
== BC0SIREN IF ~!PartyHasItem("c0sw2h") !PartyHasItem("c0sw2h2")~ THEN ~It did. Because I slew him.~
== BKELDOR ~Truly? If that is so, then you are surely worthy of praise. Few can hope to achieve so much at a young age.~
== BC0SIREN ~Nay, sir. 'Twas not my skill that won the day, but luck, as well as his arrogance, that saved my life.~
== BKELDOR ~What do you mean?~
== BC0SIREN ~I... do not wish to speak of it, sir. Suffice to say that 'twas not my proudest moment, and the scars from that battle remain to this day.~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn4","GLOBAL",0)
Global("LadyMaria","GLOBAL",5)~ THEN BC0SIREN C0SireneKeldorn4b
~You appear to be in a happier mood than ever, sir Keldorn.~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn4","GLOBAL",1)~
== BKELDOR ~And why would I not be? My heart feels lighter than ever before, as though a heavy load has been lifted.~
== BC0SIREN ~Nay, I do not doubt that. 'Tis just that... I have never seen you so... satisfied.~
== BKELDOR ~Aye, that may be the truth. There are precious few things to be satisfied about in our line of work. But since Maria and I reconciled, our troubles have felt distant. I have not felt as such for the longest time.~
== BC0SIREN ~I hope that, if I had a family one day... I will be able to feel the same.~
== BKELDOR ~Do not worry, Sirene. You are still young, with a full life ahead of you. And knowing not to repeat my mistakes... you will come to know the same joy far sooner than this foolish dotard.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn5","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("DomainPaladinBattle","GLOBAL",2)~ THEN BKELDOR C0SireneKeldorn5
~You appear exhausted, Sirene. Did you not rest well?~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn5","GLOBAL",1)~
== BC0SIREN ~I could not sleep, sir Keldorn. I close my eyes, and I see Ajantis, my friend, dead on the ground. 'Tis a great sin that was committed.~
== BKELDOR ~Aye, a sin it was, but not ours, child. The fault lies with the evil that deceived us all.~
== BC0SIREN ~Perhaps, but 'twas still my blade that led to his end, sir. How can I not think of him?~
== BKELDOR IF ~!Dead("Firkra02")~ THEN ~We shall bring the evil that caused his unjust death to justice, Sirene. You need not feel responsible for Ajantis's death.~
== BKELDOR IF ~Dead("Firkra02")~ THEN ~The foul wyrm whom instigated Ajantis's death has fallen, Sirene, and those unjustly slain have been avenged. You need not feel guilt for what has passed.~
== BC0SIREN ~It... is not enough, sir. But I appreciate your assurance nonetheless.~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn6","GLOBAL",0)
!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN BC0SIREN C0SireneKeldorn6
~I have not heard your thoughts, sir Keldorn... have my actions caused you such great offense?~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn6","GLOBAL",1)~
== BKELDOR ~Not as such. I... will not blame you for your decisions, although I cannot agree with them. To serve your deity should be considered a sacred honor, not to be discarded easily.~
== BC0SIREN ~'Twas not an easy decision to make, sir, but... despite my regrets, I believe in the path that I now take.~
== BKELDOR ~If you have no doubts, then I shall judge you no more. But I would still impart upon you some sound advice, for your own good.~
== BC0SIREN ~I am listening, sir.~
== BKELDOR ~There... are many means of walking the righteous path. I am not so blind as to deny that. But a good heart must be tempered with faith and loyalty to a cause. To stray from that, and believe only in one's perception of what is right is to become a tyrant.~
== BKELDOR ~You are still young... and arrogance has not grown in you yet. I advise you heed my words, so that they never do.~
== BC0SIREN ~I... see. I will, sir. There is only one thing I must ask of you - despite my actions, will I still have your friendship?~
== BKELDOR ~Aye... I only hope that you will carefully consider what your choice has meant for you.~
EXIT

// Korgan

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKorgan1","GLOBAL",0)~ THEN BC0SIREN C0SireneKorgan1
~Do you find pleasure in anything other than killing, Korgan?~ [C0BLANK]
DO ~SetGlobal("C0SireneKorgan1","GLOBAL",1)~
== BKORGAN ~What kind o' daft question be that, eh, woman? O' course I do!~
== BC0SIREN ~I speak not of superficial things. I have seen your indulgences first-hand, albeit reluctantly, but when you are on the battlefield... 'tis different. 'Tis as though you lose your humanity in battle.~
== BKORGAN ~Eh, heh heh, ye may be right on that, woman, an' that's first. Fine ale, wenches an' gold be well an' good, but a bloodied axe be me true love, first an' foremost.~
== BC0SIREN ~You can speak so casually of such a thing, Korgan? Does your conscience never affect you?~
== BKORGAN ~Nae.~
== BC0SIREN ~Truly?~
== BKORGAN ~Ye be a killer yerself, woman, an' don't ye be denyin' it. Korgan nae have any remorse for the fools that dare cross his axe. Even if there be a little voice in me head tellin' me elsewise, it be drowned out amidst the screamin' of me foes and me axe splitting their bones.~
== BKORGAN ~Ah, to see the red mist in the battlefield... that be what I live for. This be the way of life, lass, and ye'd best enjoy it while ye can, har har!~
== BC0SIREN ~You are truly a revolting being, Korgan. We have spoken enough.~
EXIT

// Mazzy

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy1","GLOBAL",0)~ THEN BC0SIREN C0SireneMazzy1
~How do you fare, Lady Mazzy?~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy1","GLOBAL",1)~
== BMAZZY ~Please, Sirene, there is no need for such a formality. I am simply Mazzy.~
== BC0SIREN ~But...~
== BMAZZY ~No, please. I know you mean well, but it makes me uncomfortable to be referred to as such. I am no true knight, and do not deserve such an epithet.~
== BC0SIREN ~If... if you wish it. I am sorry for offending you.~
== BMAZZY ~You did nothing of the sort. But, if there is nothing else of importance, perhaps we should both focus on the road.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy2","GLOBAL",0)~ THEN BC0SIREN C0SireneMazzy2
~(whisper) 'From sacrifice comes pain. From pain, endurance. From endurance, strength. May Ilmater grant me the courage to lay down my life for those I hold dear, and the strength to endure.'~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy2","GLOBAL",1)~
== BMAZZY ~Praying again, Sirene? I must say, I admire your devotion.~
== BC0SIREN ~Oh, hello, lady Mazzy. I hope I was not disturbing you.~
== BMAZZY ~Certainly not. And as I said before, there was no need to refer to me so formally.~
== BC0SIREN ~Forgive me. 'Tis just that... I feel unworthy when speaking to you.~
== BMAZZY ~Unworthy? Please, Sirene, there is no need to think so. You are no less respectable of a knight than I am.~
== BC0SIREN ~Aye, and yet...~
== BMAZZY ~No, do not continue. I admit, I had my misgivings, but witnessing your dedication to your god has erased any traces of doubt I may have had. I do not begrudge you for having rightfully earned your paladinhood, and I would prefer that we treat each other as equals.~
== BC0SIREN ~That means much to me, lady- I mean, Mazzy. I hope we can come to depend on each other in the future.~
== BMAZZY ~Indeed. I had thought to say my own prayers to Arvoreen, for my lost friends. Would you care to sit with me a while?~
== BC0SIREN ~'Twould be my pleasure.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy3","GLOBAL",0)~ THEN BMAZZY C0SireneMazzy3
~My friend, I have a question that has been on my mind since our first battle. I have observed you in combat, and you are a fighter of finesse similar to myself. Have you ever been trained in archery?~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy3","GLOBAL",1)~
== BC0SIREN ~Aye... briefly in my youth. I could not maintain it.~
== BMAZZY ~Whyever not? Unless I am greatly mistaken, you have the aptitude for it. After all my years in training with the bow, I believe I know better than most.~
== BMAZZY ~The technique is difficult, but I feel you have the makings of a natural. I am eager to teach you, if you so desire.~
== BC0SIREN ~No, Mazzy... perhaps I should explain.~
== BC0SIREN ~In my youth, I did indeed train with a bow. I even became experienced enough to hunt, on occasion. But 'twas before I began my training as a follower of Ilmater.~
== BC0SIREN ~Ever since I accepted the faith's dogma of sacrifice and martyrdom... I believed that to truly protect others, I must become their unyielding bulwark. And so, I resolved to never wield a bow again.~
== BMAZZY ~Ah... I believe I understand now. Forgive me, my friend, for being so insistent, without fully understanding your motivations. Your reasons for your choice of arms is admirable.~
== BC0SIREN ~Do not apologize, Mazzy. I know you only had my best interests at heart. And, truth be told, I doubt I could ever match your skill with a bow regardless.~
== BMAZZY ~Haha! You give me too much credit.~
== BC0SIREN ~Truly, however, I believe this to be for the best. Our fighting styles match each other perfectly. We make a formidable pair on the battlefield.~
== BMAZZY ~That we do, my friend. That we do.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy4","GLOBAL",0)~ THEN BMAZZY C0SireneMazzy4
~Has it been difficult for you, my friend?~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy4","GLOBAL",1)~
== BC0SIREN ~What do you mean, Mazzy?~
== BMAZZY ~I meant your role as Ilmater's champion. I cannot imagine it has been an easy life for you, if you'll forgive me for saying so.~
== BC0SIREN ~No... no, it has not. I have experienced much distrust and prejudice, 'tis true.~
== BMAZZY ~You have given me some perspective on my own situation... despite every patronizing comment on my race that I have faced in the past, I am still... accepted, for lack of a better term, and there has been nobody foolish enough to continue after I have proven myself through sword and bow. But... I cannot imagine what it is like for you.~
== BC0SIREN ~Aye, It may be that the world may never accept me... but good men and women have. There is <CHARNAME>, and there is you... my friend.~
== BMAZZY ~I am certain that there will be many more. But come, that is enough brooding for the both of us. Let us talk of happier things.~
== BC0SIREN ~Perhaps 'twould be for the best.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
InParty("Valygar")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy6","GLOBAL",0)~ THEN BC0SIREN C0SireneMazzy5
~Mazzy... is there trouble between you and Valygar?~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy6","GLOBAL",1)~
== BMAZZY ~Pardon? I am not sure what you are suggesting, Sirene.~
== BC0SIREN ~You have focused much of your attention on him lately. 'Tis not my place to pry, but I have heard him grumbling on occasion, when you are out of earshot.~
== BMAZZY ~He has been grumbling? Hmm... perhaps I have asked a bit much of him lately. I am still unaccustomed to having a squire, and he never complains to me directly.~
== BC0SIREN ~Valygar, a squire? Truly?~
== BMAZZY ~Well... I had thought that he was perfect material. He's skilled, responsible, trustworthy... and I felt he needed some company. 'Twas a good way to strengthen bonds between companions, or so I thought.~
== BC0SIREN ~(smile) You may be right, but I fear he may only be humoring you, or trying to avoid disappointing you. You can be quite... insistent at times.~
== BMAZZY ~Surely not! ...Do you truly think so? I never considered that, actually... but I cannot simply ask him, 'twould not be right.~
== BC0SIREN ~Perhaps I should speak to him, then... and I will assure him of your well intentions.~
== BMAZZY ~That would be most appreciated.~
EXIT

// Minsc

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BMINSC C0SireneMinsc1
~Ah, it is always a joyous day to be reunited with a comrade-in-arms, Sirene! Look at Boo's excitement at the prospect of fighting at your side once more!~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc1","GLOBAL",1)~
== BC0SIREN ~Aye, and 'tis a pleasure to see you once more as well, Minsc. I have greatly missed your companionship.~
== BMINSC ~It brings a tear to Minsc's eye, and Boo's as well, though we may not see it. Boo says that he was afraid that Sirene would be lonely after leaving us, but no longer!~
== BC0SIREN ~Truly, I am happy to be among friends again. I only wish... Dynaheir was with us.~
== BMINSC ~Yes... Dynaheir's death is my greatest shame. I am disgraced by my failure.~
== BC0SIREN ~I understand, Minsc, truly. I have failed to protect others as well. Sometimes I wish that... that I had fallen instead.~
== BMINSC ~Minsc knows such a feeling well. I would have proudly given my life in Dynaheir's place, but...~
== BC0SIREN ~No, do not continue, my friend. What is done is done. Now, all that is left is to protect those that yet live.~
== BMINSC ~And vengeance! Minsc shall not rest until we see Dynaheir avenged!~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc2","GLOBAL",0)
HPPercentLT("Minsc",75)~ THEN BMINSC C0SireneMinsc2
~Ach, Minsc bleeds! But these wounds shall form scars, and they bring pride! We have triumphed once again, my friend!~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc2","GLOBAL",1)~
== BC0SIREN ~Aye, Minsc. You have fought well, as always. With you at my side in the battlefield, I feel I am inspired to fight harder as well.~
== BMINSC ~Boo says that Sirene has many scars as well. You must have faced many battles, as Minsc has.~
== BC0SIREN ~I am not so different from you, Minsc. I take pride in bleeding for the others' sake, so that they may be spared the pain.~
== BMINSC ~A worthy goal! But... Minsc worries that it may be too much for little Sirene to bear.~
== BC0SIREN ~Perhaps it may be. I have no doubt that one day I shall fall in the name of duty. But... on such a day, my only regret would be that I could not have saved more. My life may have been cursed from birth, but I shall persevere, to see if it is worth anything.~
== BMINSC ~Such words could only be said by a true hero! Remember them well, Boo. It is Minsc's greatest pleasure to fight at your side, my friend!~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc3","GLOBAL",0)~ THEN BMINSC C0SireneMinsc3
~Minsc has a question for our friend Sirene.~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc3","GLOBAL",1)~
== BC0SIREN ~What is it, Minsc?~
== BMINSC ~Boo says that Sirene is hurting greatly. But Minsc cannot see any injury on our friend. I am greatly confused why Boo says you are hurting.~
== BC0SIREN ~...~
== BC0SIREN ~What else has Boo said to you, my friend?~
== BMINSC ~Nothing more, but he did tell Minsc that he should have a nice and long, 'hard'- no, it is 'heart', thank you, Boo- heartfelt talk with you about why you are wounded.~
== BC0SIREN ~I see... so that is what this is about. No, Minsc, I am not wounded, but thank you for your concern. 'Tis true that there is pain, but that pain is within.~
== BMINSC ~The wound is inside? Now Minsc is completely confused.~
== BC0SIREN ~No, Minsc, the pain is not a true thing. 'Tis nothing more than a feeling, similar to your own loss... that is what I feel.~
== BMINSC ~Minsc is very sad about losing Dynaheir. Are you saying that you are sad all the time? Oh, no! That is a terrible thing! Minsc is sometimes so sad he wishes he could rip his own heart out to make the sadness go away. He cannot have his friends feel the same!~
== BC0SIREN ~Worry not, Minsc. Talking makes it... better. Perhaps that is why Boo told you to speak with me. Thank you for this.~
== BMINSC ~It was Boo's idea. So Minsc thinks you should thank him.~
== BC0SIREN ~(laugh) Very well. Thank you, Boo.~
EXIT

// Nalia

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNalia1","GLOBAL",0)~ THEN BNALIA C0SireneNalia1
~Sirene, you're a follower of Ilmater. Have you helped many of the less fortunate?~ [C0BLANK]
DO ~SetGlobal("C0SireneNalia1","GLOBAL",1)~
== BC0SIREN ~I help all whom I can, Nalia. Though... 'tis true that many are those who live in poverty.~
== BNALIA ~I've spoken a lot with the priests of Ilmater in the city. I'm not a part of the faith, but I can respect its followers. But... I didn't realize the Ilmatari had paladins. What use does your faith have for warriors?~
== BC0SIREN ~Very little, in truth. Ilmater's clergy, for the most part, abhors violence. However... sometimes it is something that cannot be avoided.~
== BNALIA ~I can understand that. But your faith doesn't resort to it very often, right? Don't you seek compassion for others, first and foremost?~
== BC0SIREN ~Aye, we believe that all men are capable of redemption, if they truly wished it. It is rarely easy, but those who can truly feel remorse for their actions may be absolved of their sins.~
== BNALIA ~*sigh* You make it sound so easy. But I'd never believe that, given the people I know...~
== BC0SIREN ~Nalia?~
== BNALIA ~What? Oh, nevermind. Maybe we can finish this talk some other time.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNalia2","GLOBAL",0)~ THEN BC0SIREN C0SireneNalia2
~I have thought much since we last spoke, Nalia. Do you believe there are those truly incapable of goodness?~ [C0BLANK]
DO ~SetGlobal("C0SireneNalia2","GLOBAL",1)~
== BNALIA ~*sigh* Honestly? I haven't thought about it. Your words from before gave me pause, but... my experience says there are.~
== BC0SIREN ~Truly? Would you tell me of one?~
== BNALIA IF ~!Global("RoenalConvict","GLOBAL",1)~ THEN ~Well, take my... ugh, 'fiance', Isaea. Not only is he a pampered brat, but I just know he's done horrible things in the past. And there's people worse than him.~
== BNALIA IF ~Global("RoenalConvict","GLOBAL",1)~ THEN ~Well, you've met Isaea. You also know everything he's done, but I know there are others just as bad, if not worse.~
== BC0SIREN ~Worse? I- I can scarcely imagine it.~
== BNALIA ~Neither could I, at first. Father didn't like to talk about it, especially in front of me, but I've heard things behind closed doors. Nobles in society who are no better than criminals, filling their pockets with the labors of the common folk. It's sick.~
== BNALIA ~They don't see anything wrong with it, either. If anything, they're *proud* of it. The way they act high and mighty in public, boasting about their wealth and influence... I can't even imagine them ever doing a single good act.~
== BC0SIREN ~'Tis truly awful, Nalia, I agree. But what can either of us do?~
== BNALIA ~*sigh* Nothing, I suppose. But maybe one day...~
EXIT

// Valygar

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar1","GLOBAL",0)~ THEN BVALYGA C0SireneValygar1
~Wherever we go, magic hounds us like a pestilence. Does it not concern you?~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar1","GLOBAL",1)~
== BC0SIREN ~You speak often of the evils of magic, Valygar. Do you not believe it is those of evil intent that abuse magic?~
== BVALYGA ~I do not believe there is a difference.~
== BC0SIREN ~But surely you believe that mages of good intent exist in the world?~
== BVALYGA ~Perhaps. But who is to say when their search for more power corrupts them?~
== BC0SIREN ~I can tell that you are speaking from experience, my friend. Did you know of such a man?~
== BVALYGA ~My mother was a mage. I loved her as any boy could love his mother, but her only real love was of magic. It warped her to the point that I could not recognize her anymore.~
== BC0SIREN ~I am sorry. Where is she now?~
== BVALYGA ~Both she and my father became foul beings of undeath. I was left to end their misery and lay their bodies to rest. The memory of it haunts me still.~
== BC0SIREN ~That is horrible... I cannot imagine how much you must suffer to have been forced to do such a thing.~
== BVALYGA ~This is the curse of my family, Sirene. Magic has brought my life nothing but grief. What else but a force of evil would create such madness in so many men?~
== BC0SIREN ~I... do not know. I still cannot entirely agree with your view, but I understand your point.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar2","GLOBAL",0)
HPPercentLT("Valygar",50)~ THEN BC0SIREN C0SireneValygar2
~Valygar, you are wounded!~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar2","GLOBAL",1)~
== BVALYGA ~I've noticed.~
== BC0SIREN ~This is no joking matter. Why did you not come to me immediately?~
== BVALYGA ~I can treat my own wounds, Sirene. I'm a ranger, not a helpless child. Your skills are better spent on others.~
== BC0SIREN ~My duty is to all who suffer, and that includes you, my friend. I insist you remain still and allow me to treat you.~
== BVALYGA ~(sigh) As you wish.~
== BC0SIREN ~'Tis more grievous of an injury than I expected... forgive me, Valygar, but this may sting.~
== BVALYGA ~*grunt*~
DO ~ForceSpell("Valygar",PALADIN_LAY_ON_HANDS)~
== BC0SIREN ~And... done. That should do for now. Your tolerance is incredible... most would have screamed from the pain.~
== BVALYGA ~I've suffered worse.~
== BC0SIREN ~I can believe that, after seeing the old wounds that plague your body. I cannot believe you would hide such horrible injuries. When we make camp, I will treat them properly.~
== BVALYGA ~But... (sigh) you won't take no for an answer, will you? Fine... I look forward to it.~
== BVALYGA ~And... thank you.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar3","GLOBAL",0)~ THEN BC0SIREN C0SireneValygar3
~May I ask a favor of you, Valygar?~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar3","GLOBAL",1)~
== BVALYGA ~What is it?~
== BC0SIREN ~I would spar with you, if you allow it. Your swordsmanship is second to none I have ever seen, and I feel I can learn from your technique.~
== BVALYGA ~...~
== BVALYGA ~...No.~
== BC0SIREN ~But-~
== BVALYGA ~I'm no teacher. My blade has always struck to kill. I have never trained another in my life.~
== BC0SIREN ~Is there no way I can convince you otherwise?~
== BVALYGA ~Only if you are prepared to put your life on the line. Think on that carefully before you ask me again.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar3","GLOBAL",1)~ THEN BC0SIREN C0SireneValygar4
~I have made up my mind, Valygar.~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar3","GLOBAL",2)~
== BVALYGA ~What do you want now, Sirene?~
== BC0SIREN ~I have thought carefully on what you said to me, and despite... no, because of your words, I ask you again - train me.~
== BVALYGA ~Do you truly hold your life in so little regard? Even if you do not, I would still refuse. I have no desire to harm you.~
== BC0SIREN ~No, 'tis the opposite. Your words from before led me to reconsider why I wished to learn from you, and I would not have returned without an answer.~
== BVALYGA ~...I'm listening.~
== BC0SIREN ~I know I ask for much, and risk much. But I need you to fight me with the intent to kill, so that I may use my full power to protect. Only then may I become stronger.~
== BVALYGA ~That makes sense, I suppose, but what if you fail? The price would be death. What of those that you must protect then?~
== BC0SIREN ~That is a risk I must take. I have been too... hesitant, in the past. As I am now, I cannot save all whom I wish to save. I hope you may help me in this regard, my friend.~
== BVALYGA ~Hmm.~
DO ~SetGlobalTimer("C0SireneValygarTimer","GLOBAL",ONE_WEEK)~
== BVALYGA ~Fine. You win, Sirene. But don't say that I didn't warn you. I won't be holding back.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar4","GLOBAL",0)
Alignment("C0Sirene",LAWFUL_GOOD)~ THEN BVALYGA C0SireneValygar5
~Among all of us, you are someone that I can respect, Sirene.~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar4","GLOBAL",1)~
== BC0SIREN ~Thank you, Valygar, but for what cause do you have to respect me? I neither have your skill in battle, nor your dedication to your cause.~
== BVALYGA ~You have a dark power in your heritage, but like me, you refuse to use it, no matter how much it may tempt you. We are similar in that regard.~
== BC0SIREN ~I see... so you believe my defiance towards my infernal blood makes me worthy of respect, my friend? That is comforting to know.~
== BVALYGA ~I have known too many mages that discovered a spark of power and lost themselves in an effort to develop it. But we both were born with that spark, and neither of us chose to nurture it. I think we can take pride in that.~
== BC0SIREN ~Perhaps we may, at that.~
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneViconia","GLOBAL",0)~ THEN BC0SIREN C0SireneViconia1
~To have been almost burned alive... Viconia, despite our enmity, I am still sorry for what happened.~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia","GLOBAL",1)~
== BVICONI ~Is this your attempt at mockery, jalil? I do not want your pity. Do us both a favor and simper to someone else.~
== BC0SIREN ~'Tis not pity I offer, Viconia.~
== BVICONI ~No? As I recall, Sirene, you despise me. You would not extend your so-called compassion to me, nor do I want it.~
== BC0SIREN ~Viconia-~
== BVICONI ~There is no point in keeping up this farce. I have no interest in your nonsense, fellblood. Leave me be.~
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",0)~ THEN BC0SIREN C0SireneViconia3
~Do you trust me, Viconia?~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",1)
RealSetGlobalTimer("C0SireneViconiaRestTimer","GLOBAL",2700)~
== BVICONI ~What? What nonsense are you babbling about now, jalil?~
== BC0SIREN ~'Tis simply what I said: do you trust me, not as a friend, but as a companion, to aid you when you need me?~
== BVICONI ~Need you? I have no need for a self-righteous one such as yourself. We are allies of convenience, while it lasts.~
== BC0SIREN ~Have you never trusted anyone in life, Viconia? Not even <CHARNAME>?~
== BVICONI ~You should remember this lesson, jalil: there is no word for trust in the drow tongue. To trust is to show weakness to others, and with weakness soon comes death.~
== BC0SIREN ~Not if those that you trust are willing to protect you.~
== BVICONI ~As I have said before, trust is for the foolish, and the dead. And understand this: I will become neither.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",2)~ THEN BVICONI C0SireneViconia4
~What do you think you are doing?~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",3)~
== BC0SIREN ~What are you talking about, Viconia?~
== BVICONI ~You know perfectly well. That blow you took in the last fight was meant for me. You could have let me die.~
== BC0SIREN ~I would not have. 'Tis my duty to protect those who stand beside me.~
== BVICONI ~Despite all the insults I threw your way when we last spoke? I distinctly remember that you claimed to do me 'no more favors'.~
== BC0SIREN ~If you think I would be so petty to let you die for a mere squabble, Viconia, I fear you have misunderstood me.~
== BVICONI ~Clearly I have. You are a strange one.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",3)~ THEN BVICONI C0SireneViconia5
~Jal- I mean, Sirene. I would speak with you.~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",4)~
== BC0SIREN ~You, choosing to speak to me, Viconia? I am listening.~
== BVICONI ~I concede to you. I believed your behavior towards me to be nothing more than condescending pity. That... has changed.~
== BC0SIREN ~So, you finally understand that I do not pity you?~
== BVICONI ~Do not mistake my words for an apology. My opinion of you has not changed. Your so-called virtues will be the death of you one day. But... I am not too proud to admit where I was wrong.~
== BVICONI ~You and I have been through similar experiences. And while you may be a reckless, naive fool, you are not a hypocrite. We are not so different, I think.~
== BC0SIREN ~Think of me what you will, Viconia. We are allies, and I will treat you as such, for as long as it lasts.~
EXIT

// Yoshimo

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo1","GLOBAL",0)~ THEN BC0SIREN C0SireneYoshimo1
~You have come a long way from home, Yoshimo. What cause have you to travel so far?~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo1","GLOBAL",1)~
== BYOSHIM ~Adventure, of course. Fame, fortune and glory. What else is needed?~
== BC0SIREN ~Is that truly all? It seems so strange to come to lands so foreign, without any special purpose.~
== BYOSHIM ~I am an adventurous soul, dear Sirene. Some experiences cannot be done justice within the safety of books and stories. They must be seen for themselves!~
== BC0SIREN ~Aye... I know that well enough.~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo2","GLOBAL",0)~ THEN BC0SIREN C0SireneYoshimo2
~Tell me more of Kara-Tur. It sounds like a land of beauty.~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo2","GLOBAL",1)~
== BYOSHIM ~Words, I fear, would not suffice to describe the wonders of my homeland, but I shall endeavour to do so regardless, my friend. What do you wish to know?~
== BC0SIREN ~Whatever you are willing to tell me. I know only a little of Kara-Tur, from the history books. It sounds almost... too mystical to be real.~
== BYOSHIM ~Yes, the tales of Kara-Tur are more romanticized in these lands. There is truth, however. The beauty, for instance, is all too real.~
== BC0SIREN ~All of it? Even the cherry trees?~
== BYOSHIM ~Especially the cherry trees.~
== BC0SIREN ~I have only seen drawings... I wish I could see them for myself.~
== BYOSHIM ~Heh. Then you had best make haste, Sirene, for the trees bloom but once every year, and the season will be upon us soon. Ah, my only regret is that I shall not see the beautiful pink blossoms for myself.~
== BC0SIREN ~(laugh) You terrible man, Yoshimo. You have filled my mind with wild fantasies. I fear I shall imagine your homeland in my dreams soon.~
== BYOSHIM ~But aren't such dreams the best ones? (wink)~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo3","GLOBAL",0)~ THEN BC0SIREN C0SireneYoshimo3
~Do you think you will ever return home, Yoshimo?~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo3","GLOBAL",1)~
== BYOSHIM ~But of course! I would not even dream of death before seeing Kara-Tur one more time.~
== BC0SIREN ~You say that with such certainty. I am envious...~
== BYOSHIM ~What of you, my friend? Do you wish to see your home once more?~
== BC0SIREN ~I... do not know, in truth. I have certainly thought of it, but...~
== BYOSHIM ~Ah, you need not continue. I suspect your memories are not fully pleasant, yes?~
== BC0SIREN ~Some. But 'tis not that. Even if I were to return home, 'tis unlikely that anyone will be waiting.~
== BYOSHIM ~Perhaps, but they do say that home is where the heart is. Perhaps you have simply yet to find yours, my friend.~
== BC0SIREN ~You may be right. Regardless, thank you for humoring me, Yoshimo.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo1","GLOBAL",1)
Global("C0SireneYoshimo2","GLOBAL",1)
Global("C0SireneYoshimo3","GLOBAL",1)
Global("C0SireneYoshimo4","GLOBAL",0)~ THEN BYOSHIM C0SireneYoshimo4
~I have told you much of my homeland, Sirene. Perhaps you could do the honor by telling a tale of your own?~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo4","GLOBAL",1)~
== BC0SIREN ~There is little in my past worthy of telling, Yoshimo.~
== BYOSHIM ~Nothing at all? Surely that cannot be. Even the most common man must have an interesting tale to share.~
== BC0SIREN ~Truly, there is very little. I suppose... I could tell you of my faith, if that does not bore you.~
== BYOSHIM ~Certainly. The clergy of Ilmater is of particular interest with me.~
== BC0SIREN ~Very well. When we have the chance, I shall tell you everything I can.~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo4","GLOBAL",1)
Global("C0SireneYoshimo5","GLOBAL",0)~ THEN BC0SIREN C0SireneYoshimo5
~Yoshimo...~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo5","GLOBAL",1)~
== BYOSHIM ~Ah, you have found my backpack, my friend Sirene. My gratitude to you.~
== BC0SIREN ~Aye, about that... forgive me, Yoshimo, but when I picked it up, I was careless, and the contents spilled out. I'm sorry.~
== BYOSHIM ~Hmm, it is not the safety of my belonging that concerns you, but something that you discovered, yes?~
== BC0SIREN ~Aye... 'tis about that pendant.~
== BYOSHIM ~Yes... I suppose you, of all people, would recognize it.~
== BC0SIREN ~I had no idea that you petitioned Ilmater, Yoshimo. Why did you not tell me?~
== BYOSHIM ~Ah, do not be mistaken, my friend. The pendant is not my own, truth be told, but that of a friendly acquaintance, from my homeland. It is a good luck charm, of sorts. I offer the occasional prayer, of course, but I am no true faithful of the Crying God.~
== BC0SIREN ~Truly? 'Tis strange that you should carry such a keepsake at all, then. It is not like you.~
== BYOSHIM ~Why, I am shocked, Sirene! Do you not believe that even a rogue such as myself, may carry a few burdens?~
== BC0SIREN ~Nay, 'twas not my meaning at all. Only that... you do not seem the type to suffer.~
== BYOSHIM ~I have many secrets, my dear, and few do I wear upon my sleeve. Perhaps... perhaps one day you will discover more.~
EXIT