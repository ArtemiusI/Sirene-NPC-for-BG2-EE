BEGIN C0SIRENG

IF ~Global("C0SireneLoveDream","GLOBAL",1)~ a1
SAY ~Is't truly you, <CHARNAME>? Have... have you come to join me, here in the afterlife?~
= ~No... no, that is not possible. You would never come here. This... this is nothing more than a dream.~
+ ~OR(2) Class(Player1,CLERIC_ALL) CheckStatGT(Player1,14,INT)~ + ~This... is the Fugue Plane, isn't it?~ + a1.1
+ ~CheckStatLT(Player1,15,INT) !Class(Player1,CLERIC_ALL)~ + ~Wh-what is this place?~ + a1.2
++ ~Is it mine, or is it yours?~ + a1.3
++ ~What... what's happened to you, Sirene?~ + a1.4
END

IF ~~ a1.1
SAY ~Aye... this is where the spirits of the dead gather, waiting for Kelemvor's judgment. Though... I have waited here for long past my time.~
IF ~~ + a1.5
END

IF ~~ a1.2
SAY ~This is the Fugue Plane, <CHARNAME>... this is where the spirits of the dead gather, waiting for Kelemvor's judgment. Though... I have waited here for long past my time.~
IF ~~ + a1.5
END

IF ~~ a1.3
SAY ~Who knows? In this realm, I cannot even tell my own dreams from reality. Perhaps we are both dreaming right now, while our spirits are worlds apart.~
IF ~~ + a1.5
END

IF ~~ a1.4
SAY ~I... I would have thought it obvious, <CHARNAME>. I passed on to this realm when I ended my life in that graveyard. This... form is all of me that exists.~
IF ~~ + a1.5
END

IF ~~ a1.5
SAY ~If you are still alive, then... you must have defeated Bodhi. I am glad of that, at least...~
= ~I have waited here for what seems to have been an eternity. For what reason, I do not know. Not my judgment, of that I am certain. Perhaps... I knew you would come.~
= ~But... whatever your reasons for being here, <CHARNAME>, and whether 'tis reality or simply my delusions, I am glad to see you once more, so you may bid me farewell before I pass on to Martyrdom.~
++ ~'Bid you farewell'? What are you talking about?~ + a1.6
++ ~No... you're not talking about passing on, are you?~ + a1.6
++ ~I don't know how I got here, but since I found you, I'm bringing you back, Sirene.~ + a1.7
END

IF ~~ a1.6
SAY ~During my time spent awaiting judgment, I have come to terms with my fate. My sacrifice ensured I cannot return to the living world... I knew that when I made the choice.~
= ~'Twas the most difficult sacrifice I have ever made, yet... I do not regret it at all. Not if it meant I did not raise a hand against you... my love.~
++ ~I regret it. I would have saved you, Sirene. You know that.~ + a1.8
++ ~You... can't come back? There's no chance at all?~ + a1.9
++ ~I'm not having that nonsense. We promised to spend our lives together, and I'm holding you to that promise.~ + a1.9
END

IF ~~ a1.7
SAY ~Bring me back? If only you could...~
IF ~~ + a1.6
END

IF ~~ a1.8
SAY ~Aye, perhaps, but 'twas not a risk I wished to take... I would have made the same choice a thousand times over, if the alternative meant possibly killing you and spending an eternity as Bodhi's thrall.~
IF ~~ + a1.9
END

IF ~~ a1.9
SAY ~...~
= ~(Amidst the distorted form of Sirene's spirit, you see a hint of something glistening that you believe to be tears.)~
= ~I... I have forestalled my judgment too long, <CHARNAME>. Ilmater came to me, while I awaited here, and gave me time to let go of my grief... but that time is running out.~
= ~This is not how I wished it, <CHARNAME>. I wish I could have been at your side until we were old, and looked into your eyes before I died, but... our fate is rarely what we wish it to be.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.10
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.11
END

IF ~~ a1.10
SAY ~I surrendered myself to my fate the day I swore my vows to Ilmater. Despite knowing one day, my duty would cross with what I truly wanted. But... I was a faithful servant to Ilmater in life, and I will continue to be in death.~
IF ~~ + a1.12
END

IF ~~ a1.11
SAY ~I believed that changing my fate with my own hands and making my own path would change things, yet... I was not strong enough. Felled before I had a chance to change...~
IF ~~ + a1.12
END

IF ~~ a1.12
SAY ~I love you, <CHARNAME>. I will continue to love you even in death, but now that we must be apart... I beg you to succeed without me. I do not want my sacrifice to have been for naught. If you can achieve victory, then... that will be of some comfort to me.~
++ ~So you're just giving up? Even after saying that you love me?~ + a1.13
++ ~Please... you can't go. I still need you.~ + a1.13
++ ~This... this is all a bad dream. This can't actually be happening.~ + a1.13
++ ~If you truly have to go, then I can't stop you. The question is, do you really?~ + a1.14
END

IF ~~ a1.13
SAY ~We... we should put an end to this, <CHARNAME>. Every second we spend in this nightmare only makes the parting more difficult.~
++ ~You say we have to part here, but... what if that isn't true?~ + a1.14
END

IF ~~ a1.14
SAY ~Wh-what do you mean, <CHARNAME>?~
++ ~You said you thought Ilmater let you wait for me. Maybe... he wanted me to stop you.~ + a1.15
++ ~I don't know. But I know now that I'm here, I'm taking you back where you belong, even if I have to drag you kicking and screaming.~ + a1.16
END

IF ~~ a1.15
SAY ~That... that is optimistic thinking. Yet I wonder if that is the actual truth...~
IF ~~ + a1.17
END

IF ~~ a1.16
SAY ~...(She laughs reluctantly)~
= ~You have such conviction, <CHARNAME>. Perhaps that was why I fell for you, since the moment we met. You were a true friend to me, then more than a friend...~
IF ~~ + a1.17
END

IF ~~ a1.17
SAY ~'Tis strange... I have had all the time since my death to come to terms with this... yet in the few moments I have spoken with you, 'tis as though all of that has been shattered in an instant.~
= ~Perhaps... I have not severed my ties as well as I thought.~
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~You don't have to. I know you can come back. Ilmater would surely grant you that.~ + a1.18
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~You don't have to. I know you can come back. Ilmater would surely grant you that.~ + a1.19
++ ~If you have no choice to go, then that's that. But you don't have to be so resigned to the fact.~ + a1.20
++ ~Will you change your mind now?~ + a1.21
END

IF ~~ a1.18
SAY ~Aye, perhaps he will... Ilmater is a merciful patron. Perhaps, if I prayed for him now, here in this place... then my words will reach him.~
= ~...(She closes her ghostly eyes, kneeling and muttering words you cannot hear.)~
= ~I know not if this will change my fate. But... just the attempt gives me faith.~
IF ~~ + a1.24
END

IF ~~ a1.19
SAY ~Will he? I have forsaken my duties as a paladin in order to pursue my own way in life. I may still pay worship to Ilmater, but will he still listen to his wayward servant?~
= ~No... if I still have any faith in Ilmater, then I cannot doubt his mercy. I will try, if it means I can return to you.~
IF ~~ + a1.24
END

IF ~~ a1.20
SAY ~Yes... yes, you are right.~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.22
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.23
END

IF ~~ a1.21
SAY ~I... I do not know. Perhaps...~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.22
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + a1.23
END

IF ~~ a1.22
SAY ~I will believe in Ilmater's mercy. Perhaps, if I prayed for him now, here in this place... then my words will reach him.~
= ~...(She closes her ghostly eyes, kneeling and muttering words you cannot hear.)~
= ~I know not if this will change my fate. But... just the attempt gives me faith.~
IF ~~ + a1.24
END

IF ~~ a1.23
SAY ~The only one who can save me now is Ilmater... but I have forsaken my duties as a paladin in order to pursue my own way in life. Even if I pray, will he still listen to his wayward servant?~
= ~No... if I still have any faith in Ilmater, then I cannot doubt his mercy. I will try, if it means I can return to you.~
IF ~~ + a1.24
END

IF ~~ a1.24
SAY ~Thank you, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C0SireneLoveDream","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ILM04")~ EXIT
END

IF ~Global("C0SireneLoveDream","GLOBAL",2)~ a2
SAY ~(She raises a hand to your chest and lays her fingers on your skin; all you feel is a strange warmth.)~
= ~(With a faint smile, she turns and takes a few steps away from you as her ghostly form begins to emit a holy glow.)~
IF ~~ DO ~SetGlobal("C0SireneLoveDream","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ILM05")~ EXIT
END