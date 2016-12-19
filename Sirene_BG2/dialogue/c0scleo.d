BEGIN C0SCLEO

CHAIN IF ~!See("C0Sirene")~ THEN C0SCLEO a0
~I'm... afraid I don't know you, my <PRO_LORDLADY>. I am no one to you... please leave me to my prayers.~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMeetsAunt","GLOBAL",0)~ THEN C0SCLEO a1
~Lena...? No, surely this cannot be. Has your spirit come to collect me? I-I am not ready yet.~
DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",1)~
== C0SIR25J ~I... I fear you have mistaken me with another, good woman. I know not of what you speak...~
== C0SCLEO ~Not Lena? No, I see now. You are younger, but, how closely you resemble her... ah!~
== C0SIR25J ~W-what is it?~
== C0SCLEO ~You... you're Lena's daughter. By the gods, you look so much like her!~
== C0SIR25J ~Lena...? Who are you?~
== C0SCLEO ~I'm Cleo, my dear... your aunt.~
== C0SIR25J ~You're... my mother's sister?~
== C0SCLEO ~Your father's, dear, but Lena was like a sister to me. I can't believe it you're alive!~
== C0SCLEO ~Come here. Let me look at you.~
== C0SIR25J ~I cannot believe it. You truly are... my family?~
== C0SCLEO ~That's right, dear. Goodness, I still remember holding you, when you were still a babe. It was the day before I left your village.~
== C0SCLEO ~When I remember hearing that your home was burned to the ground, I thought I would die as well... I couldn't go on. And now you're here...~
== C0SIR25J ~You truly are, then... please, auntie, tell me of my family!~
== C0SCLEO ~Al-alright, dear, just give me a moment to calm down. This is all such a shock... sit here with me for a while, and I'll tell you about my dear brother, Edric. As long as you have the time, I'll talk for as long as you like.~
== C0SIR25J ~<CHARNAME>, I- I would like some time to spend with my aunt. I must know more about my family... will you give me a day?~
END
++ ~Of course. Take all the time you need.~ EXTERN C0SIR25J a1.1
++ ~We'll come back for you in a day.~ EXTERN C0SIR25J a1.1
++ ~I still need your help, Sirene.~ EXTERN C0SIR25J a1.2

CHAIN C0SIR25J a1.1
~Thank you. One day, that is all I ask.~
DO ~LeaveParty() ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobalTimer("C0SireneAuntTimer","GLOBAL",ONE_DAY)
MoveToPoint([446.279]) Wait(1) FaceObject("C0SCLEO")~ EXIT 

CHAIN C0SIR25J a1.2
~I am sorry to leave you now, <CHARNAME>, but... I need this time. Please, one day is all I ask for.~
DO ~LeaveParty() ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobalTimer("C0SireneAuntTimer","GLOBAL",ONE_DAY)
MoveToPoint([446.279]) Wait(1) FaceObject("C0SCLEO")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",0) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b0
~The priests named you Sirene, but you don't know the name your parents gave you, do you, dear?~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~No, I... I do not.~
== C0SCLEO ~They named you Rainee, child, after the mother of Edric and myself. But I know it must be uncomfortable for me to call you that.~
== C0SIR25P ~I do not mind, auntie. Not from you, at least. I know that name must mean a lot to you.~
== C0SCLEO ~Whatever you like, dear.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",1) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b1
~...and when your mother opened the door, there was Edric, holding a rabbit in each hand!~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~(laugh) What happened then? Was mother still upset?~
== C0SCLEO ~Oh, she made quite an effort to pretend to be angry, but really, she was just as soft-hearted as you, dear. She'd already forgiven him. He knew that.~
== C0SIR25P ~She sounds like a wonderful person...~
== C0SCLEO ~She was, my dear. Now, let me tell you another story...~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",2) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b2
~You know, you really are the spitting image of your mother, dearie. You gave me quite the shock when I first saw you.~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~I- I am sorry, auntie Cleo.~
== C0SCLEO ~No, no. It's quite alright. I'm happier than ever now that I've found you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",3) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b3
~Your father, Edric, well... his popularity as the village ranger took a hit when he married your mother. Some of the superstitious lot worried she had enchanted him.~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~What about you, auntie? Did you feel the same way?~
== C0SCLEO ~Me? No, gods no. If you saw the way they argued on some nights, you wouldn't have thought that.~
== C0SIR25P ~They... argued? Were they not happy together?~
== C0SCLEO ~I suppose running away wasn't the fairy tale Lena expected. They loved each other very much though, I promise you that. *sigh* If only they lived to see you all grown up...~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",4) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b4
~Your mother and father would be proud of you, dear. They're surely smiling on you from above.~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~How exactly did they meet, auntie? I do not believe you have told me that tale yet.~
== C0SCLEO ~Well, your mother was being trained to be a mage, you see. She said she hated it, and when she pretended to be training in private, she would lock her door, jump out the window and go hide in the woods.~
== C0SCLEO ~Your father met her during one of those moments. He saved her from wolves, or was it bandits? I can't remember, dear, I'm sorry. But either way, I assume they fell in love eventually.~
== C0SIR25P ~I suppose mother had more than one reason to escape to the woods after that.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",5) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b6
~Your half-brother didn't visit very often. He left the village before you were born, to study at some mage's tower.~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~His father was... a noble, was he not?~
== C0SCLEO ~That's right. Lena was married to some noble before she ran away with your father, you see. She wasn't as close to him as she was to Edric, but she still cared for him, she said. I wonder if she would have agreed to run away if that man still lived...~
== C0SIR25P ~And... my brother, T'samon? Did he not like my father?~
== C0SCLEO ~Oh, they would argue lots whenever he came by, certainly. I believe he still respected your father, though. If he could stand life in the country, I'm sure he would've stayed.~
== C0SCLEO ~Whatever happened to that boy, I wonder?~
== C0SIR25P IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~I am certain he is still out there... somewhere.~
== C0SIR25P IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~He... died, auntie Cleo.~
== C0SCLEO IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~*sigh* The good ones always die young.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",6) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b7
~What happened to your parents is... too heartbreaking. I still dream about it to this day. Lena and my brother...~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~T'samon claimed... he claimed that they were murdered by the other villagers. That they started the fire.~
== C0SCLEO ~It was an accident, my dear. A tragic accident, but an accident nonetheless. No one was to blame for what happened that day.~
== C0SIR25P ~So... the people did not truly hate my mother?~
== C0SCLEO ~Oh, they were wary, for sure, but the villagers still loved Edric. But the drought that struck the village during that time... it scared people.~
== C0SCLEO ~They blamed your brother for it first, you see. Then, after he left to go back to his studies, they turned their attention onto your mother.~
== C0SCLEO ~But I know they would have never let Edric suffer, no matter how desperate they were.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",7) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b8
~Do you think you'll come and see me some day, dear? I have family close to Waterdeep, not far from where you were raised. We'd be happy to accept you.~
== C0SIR25P ~I- I would love to, auntie Cleo, but I have a duty to <CHARNAME> to fulfill first.~
== C0SCLEO ~I understand, dear. But you should stop by to say hello some time.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO c1
~Now, I think that's all I've got to say. Your friend's here to take you back, and I really should carry on my journey up north.~
DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",2)~
== C0SIR25P ~Auntie Cleo, I...~
== C0SCLEO ~Now, dear... please, don't cry.~
== C0SCLEO ~If things were different, I'd love nothing more than the chance to sit and talk with you for as long as a week, to see how much you've grown, but you have a grave task ahead of you right now, no? I understand.~
== C0SCLEO ~Here, child. This ring belonged to your mother. I've held on to it since Lena died, but it belongs to you. Consider it a gift to make up for the years missed since we lost you.~
DO ~GiveItemCreate("c0sring","C0Sirene",1,1,0)~
== C0SIR25P ~T-thank you, auntie... and farewell. I will miss you dearly.~
DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",0) JoinParty()~
== C0SCLEO ~Farewell, dearie. May the gods watch over you.~
EXIT