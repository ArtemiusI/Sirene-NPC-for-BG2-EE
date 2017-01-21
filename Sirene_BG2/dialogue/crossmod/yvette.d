// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvette1","GLOBAL",0)~ THEN YXYVEB C0SireneYvette1
~Why do you always look so severe, lady Sirene? I think you have a beautiful smile. You should show it more often.~
DO ~SetGlobal("C0SireneYvette1","GLOBAL",1)~
== BC0SIRE2 ~I wish I could, but... there are precious few things to smile about in my life.~
== YXYVEB ~I'm sorry. I just wanted to compliment your beauty somehow. It's such a shame that you hide your face under your hood... especially your hair. Its color reminds me of lady Sune herself.~
== BC0SIRE2 ~I appreciate the thought, Yvette, but... I am no beauty. My blood is tainted. I am a monster.~
== YXYVEB ~Please, don't say that about yourself. You can't help what you are, but still became a paladin despite it. I really admire that.~
== BC0SIRE2 ~'Tis not only that. I fear the scars I have acquired in the name of duty have ruined me.~
== YXYVEB ~Scars can be beautiful too, if they were earned honorably. I think yours are proof that you're brave and selfless, so you shouldn't be ashamed of them.~
== BC0SIRE2 ~Yvette... (laugh) I have met few as optimistic as you are. Thank you, truly.~
== YXYVEB ~Hehe, now you're blushing. But I'm glad I managed to make you smile at last.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvette2","GLOBAL",0)~ THEN YXYVEB C0SireneYvette2
~You know, lady Sirene, I think you would have become a great Heartwarder of Sune, if you were raised among my clergy.~
DO ~SetGlobal("C0SireneYvette2","GLOBAL",1)~
== BC0SIRE2 ~Do you truly think so, Yvette? I fear I know little in the ways of love and beauty...~
== YXYVEB ~Hehe, that doesn't matter. I didn't remember much of my own faith either, after all. Lady Sune still accepted me, even as I am.~
== YXYVEB ~Anyway, I'm certain that your looks would make members of my church envious. They say that those born with red hair and green eyes like yours are blessed by lady Firehair.~
== BC0SIRE2 ~'Tis different, Yvette. My appearance stems from the blood of fiends, not the blessing of a goddess.~
== YXYVEB ~I think you're being too hard on yourself, my lady. No matter where your blood comes from, you can still make something beautiful out of it.~
== BC0SIRE2 ~Aye, that may be true, but... I have not even begun to consider such things.~
== YXYVEB ~I know, you're always concerned with protecting us. But if you change your mind, I'd be more than happy to help you.~
EXIT

// ToB

CHAIN
IF ~InParty("YxYve")
See("YxYve")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvetteToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneYvetteToB
~Pardon me, Yvette, but you have been acting more subdued than usual as of late. Is something bothering you?~
DO ~SetGlobal("C0SireneYvetteToB","GLOBAL",1)~
== YXYV25B ~N-no, lady Sirene. It's nothing that should concern you.~
== BC0SIR25 ~If you are troubled, Yvette, then it does concern me. We are friends, after all.~
== YXYV25B ~Thank you for reassuring me, but... it really isn't worth talking about.~
== BC0SIR25 ~You may say so, but your face tells otherwise, Yvette. 'Tis as though you are in pain. Please, tell me what is wrong.~
== YXYV25B ~It's... really nothing. I'm just feeling a little stressed. If you want to help me, then... could you pray together with me tonight? I think I'd like the company.~
== BC0SIR25 ~Of course, Yvette. Every night, if that is what you require.~
EXIT