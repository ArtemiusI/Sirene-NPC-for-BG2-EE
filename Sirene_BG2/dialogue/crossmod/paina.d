CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina1","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina1
~We are both outcasts in the world, Pai'Na.~
DO ~SetGlobal("C0SirenePaina1","GLOBAL",1)~
== BC0Paina ~If you think to find common ground between us, paladin, prepare to be sorely disappointed.~
== BC0SIRE2 ~I know that you see us as opposites. But truly, I have no emnity towards you. I know that you suffer from loneliness behind your exterior.~
== BC0Paina ~I've never felt lonely. My spiders are all the friends I need.~
== BC0SIRE2 ~Pai'Na... I know what 'tis like to be alone. Hiding it will only bring you further suffering.~
== BC0Paina ~Why would you care?~
== BC0SIRE2 ~Because I am a servant of Ilmater, but moreso, because I truly wish to be your friend, Pai'Na. I see a loneliness similar to my own in your eyes, masked by your pride...~
== BC0Paina ~Oh, shut up and leave me be! I... I don't want to listen to your drivel.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina2","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina2
~Your stance is off.~
DO ~SetGlobal("C0SirenePaina2","GLOBAL",1)~
== BC0Paina ~What?~
== BC0SIRE2 ~When you swing your staff, you risk losing balance from its weight in your stance. Lend me your staff and I will show you.~
== BC0Paina ~I don't want your instruction.~
== BC0SIRE2 ~I have trained a little with the staff in the past. Let me teach you.~
== BC0Paina ~No. I do not care to be taught. I have my spiders and my magic to protect me. If I have to swing this shaft of wood in battle, then it means you have failed in your role.~
== BC0SIRE2 ~Perhaps you are right, what shall you do if I truly fall in battle?~
== BC0Paina ~I'll survive. I'm very good at surviving.~
== BC0SIRE2 ~There is no need to be so stubborn. I will simply teach you some basic techniques. I only wish to aid, nothing else.~
== BC0Paina ~I told you I don't want... (sigh) Fine. Show me how it's done.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina3","GLOBAL",0)
AreaType(FOREST)~ THEN BC0SIRE2 C0SirenePaina2
~Look at the sun behind the trees, Pai'Na. The light is so warm and welcoming.~
DO ~SetGlobal("C0SirenePaina3","GLOBAL",1)~
== BC0Paina ~Hmph.~
== BC0SIRE2 ~Do you not appreciate the beauty of nature, Pai'Na? I thought that you would be happier away from cities.~
== BC0Paina ~I prefer the form of arachnids. These woods are... preferable to the filth of civilization, but it is too... too bright and colorful.~
== BC0SIRE2 ~Is it because of your drow heritage, or because of your upbringing?~
== BC0Paina ~I don't know, and I don't care. If you value your safety and comfort, *do not* call me drow.~
== BC0SIRE2 ~I... forgive me. I did not mean to offend... if it changes anything, Pai'Na, I know what 'tis like.~
== BC0Paina ~...~
== BC0Paina ~Bah. I've heard such things too much to be angered. Just don't mention it again.~
EXIT
