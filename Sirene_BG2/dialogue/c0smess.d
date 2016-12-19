BEGIN C0SMESS

CHAIN IF WEIGHT #-1
~Global("C0SireneMessenger","GLOBAL",1)~ THEN C0SMESS C0SireneMessenger
~Excuse me... may I have a moment of your time?~
DO ~SetGlobal("C0SireneMessenger","GLOBAL",2)~
END
++ ~Of course. What do you need?~ EXTERN C0SMESS C0SireneMessenger1
++ ~Speak, but make it quick.~ EXTERN C0SMESS C0SireneMessenger1

CHAIN C0SMESS C0SireneMessenger1
~I have in my possession a message meant for someone bearing the description of one of your companions. Which of you is lady Sirene of the Holy Warriors of Suffering?~
== C0SirenJ ~That would be me, sir.~
== C0SMESS ~Well met to you then, m'lady. I am Theodore, an acolyte of the church of Ilmater, and squire of the Holy Warriors of Suffering, situated in Castle Dasaajk of Tethyr. 'Tis an honor to meet you.~
== C0SirenJ ~There is no need for such formality, squire Theodore. What brings you to Amn?~
== C0SMESS ~Here, m'lady. This letter was given to me by a man claiming to be an acquaintance of yours.~
== C0SirenJ ~Truly? That is strange... though I am of the order, I confess I know almost nothing of my fellows in Tethyr. Who was this man?~
== C0SMESS ~I know not, lady Sirene. He would not say his name, but he wore the colors of our faith. The only thing he told me was that he encountered you during his pilgrimage in the north.~
== C0SirenJ ~The north...? No, it could not be...~
== C0SMESS ~There was more, m'lady. Though he hid his face behind his cowl, I caught a brief glimpse of him when he handed me the letter. His forehead was adorned with ritual scars and a pair of horns. This is all speculation... but I believe he is connected to you somehow.~
== C0SirenJ ~I... I see. I believe I know of whom you speak...~
== C0SMESS ~That is all I know, m'lady. He commanded me to inform you to meet him at the location drawn on the letter.~
== C0SirenJ ~Very well. Thank you for your hard work, brother Theodore.~
== C0SMESS ~You are most welcome, champion of Ilmater. With that, I must take my leave. Farewell.~
END
IF ~~ DO ~SetGlobalTimer("C0SireneMessengerTimer","GLOBAL",3) GiveItem("c0snote","C0Sirene") EscapeArea()~ EXIT