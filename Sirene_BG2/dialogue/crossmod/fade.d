// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade1","GLOBAL",0)~ THEN BE3Fade C0SireneFade1
~...*stare*~
DO ~SetGlobal("C0SireneFade1","GLOBAL",1)~
== BC0Siren ~Is there a reason you have been watching me, Fade? If you have something to say, go ahead and say it.~
== BE3Fade ~I wish I could. But to be totally honest - I don't trust you yet.~
== BC0Siren ~I... I see. Can I do anything to gain that trust?~
== BE3Fade ~Maybe, I'll admit it, you've got a convincing image going on. I've seen my share of frauds out there, but your faith looks to be the real deal. Still... I'm not entirely convinced. Your scent makes it difficult to trust you.~
== BC0Siren ~My... scent?~
== BE3Fade ~Yeah. You've got the scent of the Nine Hells in you. I suppose that must be your blood.~
== BC0Siren ~I do not understand. Aye, I have the blood of the Lower Planes, but... is that your sole reason to distrust me?~
== BE3Fade ~Nothing against you personally... yet. But it's in my blood to dislike you just like devils and demons despise each other. You might prove trustworthy yet... but I'll be watching you.~
EXIT

CHAIN
IF ~InParty("BE3Fade")
See("BE3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade2","GLOBAL",0)~ THEN BC0Siren C0SireneFade2
~I know you are still watching me, Fade. Could we perhaps talk face to face instead, as allies should?~
DO ~SetGlobal("C0SireneFade2","GLOBAL",1)~
== BE3Fade ~...I guess. What do you want?~
== BC0Siren ~I only wish to understand you. What drives you to watch me so vigilantly, Fade? Even if I were not what I claim to be, you should know I am no threat to you.~
== BE3Fade ~Sure. Not to me, but...~
== BC0Siren ~Do you fear that I am a threat to <CHARNAME>?~
== BE3Fade ~Not directly. I'm almost convinced you really are a holy paladin, but I know from experience that ties to the Lower Planes catch up to you eventually. You're still a risk even if you don't intend to be.~
== BC0Siren ~Infernal blood may run in my veins, Fade, but I was a Prime born and raised. What ties might I have?~
== BE3Fade ~You never know. I watch my back countless times every day. I suggest you do the same thing.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade3","GLOBAL",0)~ THEN BE3Fade C0SireneFade3
~Those cuts... you have so many of them. They remind me so much of... torture. Were you a slave once?~
DO ~SetGlobal("C0SireneFade3","GLOBAL",1)~
== BC0Siren ~A slave? No... I have endured many struggles, but that is not one of them, mercifully. My scars were earned in battle to protect others.~
== BE3Fade ~You say that with so much pride, I can believe you... maybe you really are what you seem to be.~
== BC0Siren ~Thank you. But what brought this up, Fade? Do have you faced similar trials?~
== BE3Fade ~No. My scars were earned through my defiance and will to survive. I can't say I've saved many people in my lifetime.~
== BC0Siren ~'Tis never too late to begin, Fade. I can tell you have compassion, even as you attempt to hide it. Is that not why you chose to join <CHARNAME>?~
== BE3Fade ~*shrug* It was orders. But maybe you're not entirely wrong.~
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade4","GLOBAL",0)~ THEN BC0Siren C0SireneFade4
~Your markings are beautiful.~
DO ~SetGlobal("C0SireneFade4","GLOBAL",1)~
== BE3Fade ~Huh? You mean these?~
== BC0Siren ~Aye, those. 'Tis as though they were drawn with the careful strokes of an artist.~
== BE3Fade ~Well... I don't know what to say to that. I'm flattered, I guess. But you should know... I'm not interested in... you know.~
== BC0Siren ~I do know. I was simply complimenting you, since you still seem uncomfortable in my presence. I hope I did not achieve the opposite.~
== BE3Fade ~No, it's alright. I've noticed your markings too. The one on your back is quite pretty.~
== BC0Siren ~Wh- *blush* what? How did you know about that one?~
== BE3Fade ~*wink* Did you forget my profession? It's my job to know about things.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade5","GLOBAL",0)~ THEN BE3Fade C0SireneFade5
~I hope you don't take it the wrong way, but I think it's incredible you managed to become a paladin.~
DO ~SetGlobal("C0SireneFade5","GLOBAL",1)~
== BC0Siren ~Is't truly so strange to you? After all, I was nurtured into such a role.~
== BE3Fade ~You were raised into it? I guess it's not so strange then. I just can't imagine myself... like you. Some follower of faith.~
== BC0Siren ~Do you have no faith, Fade?~
== BE3Fade ~...~
== BC0Siren ~F-forgive me. I did not mean to sound patronizing.~
== BE3Fade ~...where I grew up, faith wasn't a concept that existed. Power and decadence were the only constants in the Abyss.~
== BC0Siren ~I... I see. But is't not better for you now?~
== BE3Fade ~I... don't know. I've never really thought about it.~
== BE3Fade ~I mean, I appreciate everything the guild has done for me. I have a place I can call home, and people I can call friends, though I trust them as far as I can throw them. Still... sometimes I feel like I'm still being used, just like when I was nothing more than a slave.~
== BC0Siren ~Do you believe that faith in a god is the same thing? That you are simply a tool to be used?~
== BE3Fade ~I've had enough experience of people controlling me for several lifetimes. I'm not about to add more to the load.~
EXIT

// ToB

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFadeToB","GLOBAL",0)~ THEN BC0Sir25 C0SireneFadeToB
~That last battle left quite an impression, I think.~
DO ~SetGlobal("C0SireneFadeToB","GLOBAL",1)~
== BE3Fad25 ~Yeah. It did.~
== BC0Siren ~You fought well, Fade. 'Tis good to know that I have you to watch my back in battle.~
== BE3Fad25 ~Thanks. You're... not so bad, yourself. And you helped me out when I was surrounded, even though it endangered you. I appreciate that.~
== BC0Siren ~I only did what I would do for any friend.~
== BE3Fad25 ~Friend, huh? Well... I wasn't exactly the friendliest to you at first. Do you really consider me a friend?~
== BC0Siren ~Of course. I know your blood draws you to dislike me, Fade, but I do not hold that against you.~
== BE3Fad25 ~No, I don't feel like that anymore. I'd like us to be friends. But... you sure it's okay? After all, I'm a thief, and you're a paladin. We're haven't exactly got friendly relations by default.~
== BC0Siren ~You may be a thief, but you have a good heart, Fade, as you have proven time and time again. I have no reservations against having your friendship.~
== BE3Fad25 ~Well, as long as you don't regret anything, I'm all for it.~
EXIT