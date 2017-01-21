APPEND C0SIRE2J

IF WEIGHT #-1 ~Global("C0SireneInnershade","GLOBAL",1)~ a1
SAY ~This village may be small, yet there is a certain beauty to it. It reminds me greatly of my home village, even if it looks completely different.~ [C0BLANK]
++ ~Feeling homesick, are we?~ DO ~SetGlobal("C0SireneInnershade","GLOBAL",2)~ + a1.1
++ ~How does this place compare to your home?~ DO ~SetGlobal("C0SireneInnershade","GLOBAL",2)~ + a1.2
++ ~I can't see anything pleasant about this dump.~ DO ~SetGlobal("C0SireneInnershade","GLOBAL",2)~ + a1.3
++ ~We have no time for your daydreaming. Let's get moving.~ DO ~SetGlobal("C0SireneInnershade","GLOBAL",2)~ + a1.0
END

IF ~~ a1.0
SAY ~Aye... of course.~
IF ~~ EXIT
END

IF ~~ a1.1
SAY ~I did not think that I would, but... aye, I suppose I am.~
IF ~~ + a1.3
END

IF ~~ a1.2
SAY ~Aye, that it is... I had never appreciated the beauty of my home village, but... now I am reminded of it.~
IF ~~ + a1.3
END

IF ~~ a1.3
SAY ~I suppose growing up in a place as large and sheltered as Candlekeep is a different experience altogether. But... I think such a place has its charm.~
IF ~~ + a1.4
END

IF ~~ a1.4
SAY ~My childhood was not a particularly exciting one, for I spent most of my days closed in the temple's small library reading fairytales...~
= ~I still remember those times, when I would look out the window and watch the other children, my fellow wards, playing at war and catching frogs by the pond. I was lonely then, but my memories of those times are still... nostalgic, despite that.~
++ ~You sound happy to be here. Do you really like this place so much?~ + a1.5
++ ~Why didn't you ever join them?~ + a1.6
++ ~If you want, we could go frog-catching right now. I'm sure there's a pond somewhere.~ + a1.7
++ ~That's enough reminiscing for one day.~ + a1.0
END

IF ~~ a1.5
SAY ~It does, but at the same time, I have a strange sadness by being here, as it makes me wonder whether or not I wasted my childhood as a shut-in.~
= ~I fear my childhood has not done wonders for my confidence. Perhaps if I had not allowed my heritage to make me feel different, I would have become a stronger person than I am now.~
IF ~~ + a1.8
END

IF ~~ a1.6
SAY ~I could have, I suppose, but I was always afraid to. Save for the priests that raised me, everyone around me was at least a little unnerved by my appearance... the children even more so.~
= ~Perhaps if I were more confident, it would not have mattered, but I suppose such things did not matter to me as a child. I was content with losing myself in books and praying.~
IF ~~ + a1.8
END

IF ~~ a1.7
SAY ~*laugh* I think I will pass. Though the prospect is tempting, I fear I would not be any good at it... and I feel 'twould be too childish of us.~
= ~But I appreciate that you would consider my feelings to suggest such a thing. Perhaps if I had a friend such as you in my youth, I could have learned to be more confident and become a stronger person than I am now.~
IF ~~ + a1.8
END

IF ~~ a1.8
SAY ~Gods, I think we have spent enough time talking here. We should be taking the time to appreciate this place, not talking about something as silly as my childhood.~
= ~Lead on, my friend. I am right behind you.~
IF ~~ EXIT
END

IF WEIGHT #-1 ~Global("C0SireneInnershade2","GLOBAL",1)~ b1
SAY ~To think that... memory was languishing in that realm, that darkness... all this time. Alone and forgotten... 'tis no wonder it almost descended to madness.~ [C0BLANK]
IF ~Global("ISHxMain","GLOBAL",40)~ DO ~SetGlobal("C0SireneInnershade2","GLOBAL",2)~ + b1.1
IF ~Global("ISHxMain","GLOBAL",30)~ DO ~SetGlobal("C0SireneInnershade2","GLOBAL",2)~ + b1.2
END

IF ~~ b1.1
SAY ~And now it is within you. How do you feel, <CHARNAME>?~
++ ~It's so strange. There's a feeling of sorrow and regret, but... not my own. It's difficult to explain.~ + b1.3
++ ~I feel fine. Did you expect otherwise?~ + b1.4
++ ~This really isn't worth talking about.~ + b1.5
END

IF ~~ b1.2
SAY ~And now it is dead. I know it had to be done for the villagers, yet... I cannot say I feel any satisfaction for it. 'Twas horrible to see it plead for death, as though its very existence was pain. I have seen many men suffer in my life, yet none came close to that...~
= ~I doubt I will sleep well in the near future after witnessing such horrors.~
IF ~~ EXIT
END

IF ~~ b1.3
SAY ~I suppose it must be, to have the dream of another sharing your body.~
IF ~~ + b1.6
END

IF ~~ b1.4
SAY ~No, in truth I did not know what to expect at all. This is all beyond anything in my knowledge.~
IF ~~ + b1.6
END

IF ~~ b1.5
SAY ~As you wish. But... if you ever feel any pain, I am here to help... even if 'tis only to listen.~
IF ~~ + b1.6
END

IF ~~ b1.6
SAY ~For what 'tis worth, I think you made the right decision, <CHARNAME>. You have saved this village from a doomed fate, and if you can bring this dream to a proper ending, then... all the better.~
IF ~~ EXIT
END

END