APPEND C0SIRENJ

IF WEIGHT #-1 ~Global("C0SireneDGBeggar","GLOBAL",1)~ beggar
SAY ~How horrible... I know there was little we could have done, but to have been driven to madness out of desperation...~ [C0BLANK]
= ~If you would... go on without me for a moment, <CHARNAME>. I wish to say a prayer for this poor man's soul.~
IF ~~ DO ~SetGlobal("C0SireneDGBeggar","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~Global("C0SireneDeepGardens","GLOBAL",2)~ dg1
SAY ~This is such a strange world... nothing here is the same as the world that we know. Almost like a dream.~ [C0BLANK]
++ ~Well, it might very well be a dream.~ + dg1.1
++ ~I know. It's frightening, but also fascinating.~ + dg1.2
++ ~We have to get out of here.~ + dg1.3
END

IF ~~ dg1.1
SAY ~Perhaps... though I believe 'tis truly more than that.~
IF ~~ + dg1.4
END

IF ~~ dg1.2
SAY ~Aye, that is how I feel as well... if I did not see it for myself, I would never have imagined that such a colorful world could possibly exist.~
IF ~~ + dg1.4
END

IF ~~ dg1.3
SAY ~I know. Escape should be on our minds, yet... I cannot help but be curious of this place.~
IF ~~ + dg1.4
END

IF ~~ dg1.4
SAY ~'Tis as though a dream has been made a reality. These surreal colors, as though painted on a canvas, that sustain these strange people, mold them... there is a strange harmony to it.~
= ~And yet... I feel a complete stranger here, as though I do not belong. 'Tis as though every action we make changes everything about this place, like a new color on a painting...~
++ ~You're starting to talk like these people.~ + dg1.5
++ ~I know what you mean.~ + dg1.5
++ ~Maybe you're overthinking it.~ + dg1.5
END

IF ~~ dg1.5
SAY ~Perhaps I am starting to understand the way of this world. It is beautiful, but fragile. I think neither us nor this place will be the same, even if we should return into our world.~
= ~But I have pondered this long enough. Our escape should be of utmost importance. Lead on... I will be right behind you.~
IF ~~ DO ~SetGlobal("C0SireneDeepGardens","GLOBAL",3)~ EXIT
END

END