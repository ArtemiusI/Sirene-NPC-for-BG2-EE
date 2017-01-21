BEGIN C0TSAMON

CHAIN IF WEIGHT #-1
~Global("C0SireneTsamon","GLOBAL",0)~ THEN C0TSAMON C0SireneTsamon1
~Well, well... so you came after all. I wondered if you had the courage, Sirene of Ilmater.~
DO ~SetGlobal("C0SireneTsamon","GLOBAL",1)~
== C0SIRE2J ~I have come as you bid me, Talonite. Now I will have answers from you.~
== C0TSAMON ~Do you now? And what if those answers are not what you wished, then? If I were to list each of your crimes committed, the deaths that were the price of your existence?~
== C0SIRE2J ~Who... who are you?~
== C0TSAMON ~My name is T'samon De'bryll Thornhaven... but I presume that name means nothing to you.~
== C0SIRE2J ~T'samon...? You speak as if you know of me, yet neither your name nor your face is familiar. What have I done to earn your hatred?~
== C0TSAMON ~I know much of you, Sirene. After all... we share the same blood, you and I.~
== C0SIRE2J ~You-?! You are...~
== C0TSAMON ~Aye. I am T'samon, son of Lena of the noble house De'Bryll. Our mother.~
== C0SIRE2J ~If what you say is the truth, then why have you called me here? Even if we are siblings, I am a servant of Ilmater, and you of Talona. We are enemies by our faiths alone.~
== C0TSAMON ~Perhaps. But know that I sought you my own purposes, not my patron's. You were a fool to come, but I thank you for it... for my vengeance is soon to come to fruition.~
== C0SIRE2J ~'Your vengeance'...? Of what do you speak?~
== C0TSAMON ~You do not know? What of your companion, then? Does <PRO_HESHE> know the extent of your sins? Well, <CHARNAME>, child of Bhaal? Speak for yourself.~
END
++ ~I don't know what you're babbling about, but if you have a problem with Sirene, you have a problem with me.~ EXTERN C0TSAMON tsa1.1
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~Sirene is my beloved, and I will not stand for your slander.~ EXTERN C0TSAMON tsa1.2
++ ~Whatever Sirene might have done in the past, she is a valuable companion to me, and nothing you say will change that.~ EXTERN C0TSAMON tsa1.1
++ ~Enough words. If you intend to fight us, then get on with it.~ EXTERN C0TSAMON tsa1.3

CHAIN C0TSAMON tsa1.1
~It matters not. I may have granted you a chance to back out of this family reunion, but it seems you have no intention of such. Pity. You will die for my sister's crimes.~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.2
~You claim to *love* her? O, ignorant fool...~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.3
~As you wish. You will suffer alongside my sister for her crimes!~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.4
~The time for talk is over. I will have my vengeance now, Sirene!~
== C0SIRE2J ~Wait, T'samon! There is no cause to do this! Why do you so desperately seek my death?~
== C0TSAMON ~Seek your answers in the grave with our mother. You will be joining her soon enough. Now taste of the unholy miasma of Talona, and may your souls writhe in the Abyss!~
END
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0tsamo2")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0SireneTsamon","GLOBAL",1) Global("Defeat","LOCALS",1)~ THEN C0TSAMON C0SireneTsamon2
~Heh, impressive... it seems I have underestimated you after all, sister. Very well, then. I will not beg - send me to join our mother in the afterlife, if you have the stomach for it.~
DO ~SetGlobal("C0SireneTsamon","GLOBAL",2)~
== C0SIRE2J ~...~
== C0TSAMON ~Too cowardly to deal the finishing blow, are you? You consider yourself a follower of Ilmater? Then put an end to my misery.~
== C0SIRE2J ~I do not understand. If you are truly my brother, then why... why did you do any of this?~
== C0TSAMON ~Why? Because I desired vengeance. Vengeance for the day our parents died so that you could live.~
== C0SIRE2J ~What are you talking about? Why did they die? Tell me!~
== C0TSAMON ~You were my greatest mistake, Sirene. I should have saved mother, before the flames consumed her that day from those ignorant, *wretched* humans...~
== C0TSAMON ~The villagers of our home never trusted our mother nor I, who had the blood of Baator in our noble bloodline. When you were born, and your visible heritage known... the worst of the swine, in their prejudice and fear, put our home to the torch... I heard mother's anguished *screams*... my last memory as I fled with you, only an infant, in tow.~
== C0TSAMON ~I could have saved them both, and punished the scum that wronged us... but they died to give you to me. I brought you to the Marsh of Chelimber, where I should have killed you... but my weakness overtook me.~
== C0SIRE2J ~This is...~
== C0TSAMON ~I believed you dead. I enacted my revenge upon the monsters who killed our parents, and for years I enjoyed a fragile illusion of peace until Talona informed me of your survival. You are a living reminder of my failure... one which I could not allow to continue existing.~
== C0SIRE2J ~No... *this* is why you hold such hatred for me?~
== C0TSAMON ~...Enough of this. I no longer have the power to stand against you, Sirene. And with my betrayal of Talona's commands, she will no longer favor me... death will be a blessing. I do not want your pity, sister. Kill me quickly, and perhaps this hatred shall finally die with me.~
== C0SIRE2J ~I...~
== IMOEN2J IF ~InParty("Imoen2")~ THEN ~C'mon, Sirene, just look at him. Do you really think he deserves it?~
== AERIEJ IF ~InParty("Aerie")~ THEN ~H-he looks so pitiful... but he also worships an evil goddess. I can't tell what's the right thing to do...~
== KORGANJ IF ~InParty("Korgan")~ THEN ~Hnh. What's so hard 'bout this, eh? I killed me father with nae a regret. Gut 'im an' be done with it.~
== VICONIJ IF ~InParty("Viconia")~ THEN ~Does the fool truly think his blood ties shall save him? Fratricide is commonplace in drow society. Finish him, jalil, if you do not wish to appear weak.~
== RASAADJ IF ~InParty("Rasaad")~ THEN ~I know what it is like to kill my own kin. You may not know him, but his blood will stain your conscience forever, Sirene.~
== NEERAJ IF ~InParty("Neera")~ THEN ~Geez, I know he almost tried to kill us, but he just looks so depressing. I'm not sure I'd be able to do it if I were you.~
== KELDORJ IF ~InParty("Keldorn")~ THEN ~Remember the tenets of your faith, Sirene. Though he may worship Talona, his heart is not entirely impure. If you truly believe he deserves mercy, then spare him.~
== MAZZYJ IF ~InParty("Mazzy")~ THEN ~Think carefully, my friend. There is a difference between defeating an enemy and executing a helpless man.~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",5)~ EXTERN C0SIRE2J a1.1
IF ~!GlobalGT("C0SireneFaith","GLOBAL",5) !GlobalLT("C0SireneFaith","GLOBAL",-5)~ EXTERN C0SIRE2J a1.2
IF ~GlobalLT("C0SireneFaith","GLOBAL",-5)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.1
~I will not kill a helpless man, much less my own kin. Ilmater would never forgive me if I did so. Though I do not know you, I will not strike you down, brother.~
== C0TSAMON ~No! Damn you, Sirene! Your mercy is the greatest cruelty that you can inflict!~
== C0SIRE2J ~Perhaps you may believe that, but... I pray that this will one day cure your heart of hatred. But if you come to me with the goal of vengeance a second time... then I will satiate your desire for death.~
== C0SIRE2J ~Farewell, T'samon. I hope that when we meet again, I may truly call you brother.~
== C0TSAMON ~Heh, I see... that's how it's going to be. Very well, then... farewell, sister. Perhaps we *will* meet again.~
DO ~ActionOverride("C0TSAMON",ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN C0SIRE2J a1.2
~What... what should I do, <CHARNAME>?~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J a1.4
IF ~GlobalLT("C0SireneFaith","GLOBAL",0)~ EXTERN C0SIRE2J a1.5

CHAIN C0SIRE2J a1.3
~If you seek death so desperately, T'samon... then I will not deny you. Your crimes as a follower of Talona, and your attempt on my life, are enough to condemn you.~
= ~Ilmater is a merciful god, and will not forgive me for this. But... 'tis time for me to decide what is right... with my own hands.~
= ~Farewell, brother.~
== C0TSAMON ~Heh... so this is how it ends...~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0tsamo3")~ EXIT

CHAIN C0SIRE2J a1.4
~Knowing his reasons for all of this, I... I cannot bring myself to hate him. If I were to strike him down, I would be betraying the teachings of Ilmater...~
= ~But... I am conflicted. A part of me truly believes he deserves death, and I should end his life here and now. What... what is the right decision?~
END
++ ~I can't make this choice for you, Sirene.~ EXTERN C0SIRE2J a1.6
++ ~You said it yourself. If you truly don't believe he deserves death, then you should let him go. I doubt he's a threat to anyone now.~ EXTERN C0SIRE2J a1.7
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,17,INT)
CheckStatGT(Player1,17,WIS)
CheckStatGT(Player1,17,CHR)~ + ~I think you should execute him. Not only is he a Talonite, but he just tried to kill us. Who's to say he won't try it again?~ EXTERN C0SIRE2J a1.8
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,18,INT)
CheckStatLT(Player1,18,WIS)
CheckStatLT(Player1,18,CHR)~ + ~I think you should execute him. Not only is he a Talonite, but he just tried to kill us. Who's to say he won't try it again?~ EXTERN C0SIRE2J a1.9
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,14,INT)
CheckStatGT(Player1,14,WIS)
CheckStatGT(Player1,14,CHR)~ + ~I think you should execute him. Not only is he a Talonite, but he just tried to kill us. Who's to say he won't try it again?~ EXTERN C0SIRE2J a1.8
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,15,INT)
CheckStatLT(Player1,15,WIS)
CheckStatLT(Player1,15,CHR)~ + ~I think you should execute him. Not only is he a Talonite, but he just tried to kill us. Who's to say he won't try it again?~ EXTERN C0SIRE2J a1.9

CHAIN C0SIRE2J a1.5
~I believe he deserves death for what he has done. He has been wholly consumed by vengeance, and as a Talonite, he deserves death for his crimes.~
= ~But... Ilmater will not take kindly if I choose to forsake mercy. I doubt I can redeem myself in his eyes if I were to kill my own kin.~
END
++ ~I can't make this choice for you, Sirene.~ EXTERN C0SIRE2J a1.6
++ ~You mean you'll forsake your paladinhood if you choose to kill him?~ EXTERN C0SIRE2J a1.12
++ ~You're right. He deserves to die for trying to kill us. Finish him, Sirene.~ EXTERN C0SIRE2J a1.7
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,13,WIS)
CheckStatGT(Player1,13,CHR)~ + ~No, Sirene. Don't do this. I was forced to kill my brother as well, and it brought me no peace in the end. The cost is too great... you'll regret this for life.~ EXTERN C0SIRE2J a1.10
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,14,INT)
CheckStatLT(Player1,14,WIS)
CheckStatLT(Player1,14,CHR)~ + ~No, Sirene. Don't do this. I was forced to kill my brother as well, and it brought me no peace in the end. The cost is too great... you'll regret this for life.~ EXTERN C0SIRE2J a1.11
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~No, Sirene. Don't do this. I was forced to kill my brother as well, and it brought me no peace in the end. The cost is too great... you'll regret this for life.~ EXTERN C0SIRE2J a1.10

CHAIN C0SIRE2J a1.6
~Then... I will trust in my own decision, and do what I believe is right.~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-4)~ EXTERN C0SIRE2J a1.1
IF ~GlobalLT("C0SireneFaith","GLOBAL",-3)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.7
~Aye... there is truth in your words. I know what I must do...~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J a1.1
IF ~GlobalLT("C0SireneFaith","GLOBAL",0)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.8
~Perhaps... perhaps you are right.~
EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.9
~...No, <CHARNAME>. I will not betray Ilmater's teachings, despite my doubts.~
EXTERN C0SIRE2J a1.1

CHAIN C0SIRE2J a1.10
~But... no, you are right. I allowed my judgment to be clouded by my feelings. I should not turn my back on Ilmater for this.~
EXTERN C0SIRE2J a1.1

CHAIN C0SIRE2J a1.11
~Aye, but 'twas it not you whom taught me to make my own choices? I know it in my heart... I cannot allow this man to live.~
EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.12
~I... I am certain it will. Though this man is far from innocent, he is helpless... and the suffering in his heart cannot be healed with death. If I were to strike him down now... I would commit a great sin in Ilmater's eyes.~
= ~Knowing that, I cannot help but hesitate. I have followed Ilmater's teachings my whole life... but this time, my own wishes clash with that of my faith.~
END
++ ~I see... then I cannot tell you what to do. You must make this decision yourself.~ EXTERN C0SIRE2J a1.6
++ ~Then kill him. If you truly believe that is the right thing to do, then do it.~ EXTERN C0SIRE2J a1.7
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~No, Sirene. Don't do this. I was forced to kill my brother as well, and it brought me no peace in the end. The cost is too great... you'll regret this for life.~ EXTERN C0SIRE2J a1.10
+ ~CheckStatLT(Player1,16,INT)
CheckStatLT(Player1,16,WIS)
CheckStatLT(Player1,16,CHR)~ + ~No, Sirene. Don't do this. I was forced to kill my brother as well, and it brought me no peace in the end. The cost is too great... you'll regret this for life.~ EXTERN C0SIRE2J a1.11