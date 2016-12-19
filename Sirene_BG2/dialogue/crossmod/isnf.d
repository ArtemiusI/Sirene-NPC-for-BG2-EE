I_C_T ISNFXOR 19 C0SireneISNFXOR19
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I... I feel as though we have intruded upon something private, <CHARNAME>.~
END

I_C_T ISNFXOR 121 C0SireneISNFXOR121
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No... master Orion, you cannot say such a thing...!~
END

I_C_T ISNFXEN 0 C0SireneISNFXEN0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Gods, what a horrifying creature. And yet its form reminds me of the avatar of lord Ilmater's avatar in a way, tortured and in suffering. Perhaps 'tis more than a mere undead beast.~
END

APPEND C0SIRENJ

IF WEIGHT #-1 ~Global("C0SireneISNFIncomplete","GLOBAL",1)~ a1
SAY ~I know there was no other choice, yet... I cannot help but feel shame at ending this man's life.~ [C0BLANK]
= ~Even as he was, there was no malice in his heart, only sorrow and pain. This man sacrificed everything he was for the sake of Orion and his wife. Was... was what we did right?~
++ ~You saw what he had become, Sirene. This was the most merciful thing we could have done.~ + a2
++ ~I didn't want to kill him either.~ + a3
++ ~We could've avoided this, if only he just handed over his research.~ + a4
++ ~I don't know.~ + a5
END

IF ~~ a2
SAY ~Aye... perhaps this is what he sought all along.~
IF ~~ + a5
END

IF ~~ a3
SAY ~Yet... what else could we have done? How much must one suffer, so that death becomes the only recourse?~
IF ~~ + a5
END

IF ~~ a4
SAY ~But was it worth it, <CHARNAME>? Perhaps... perhaps there are lines that mortals were never meant to cross. This... this man is proof of that.~
IF ~~ + a5
END

IF ~~ a5
SAY ~Condemned to being lost and forgotten for all of eternity, with only death by another's hand as a chance for release... may Ilmater forgive me, but I hope I will never have to sacrifice myself in such a manner.~
= ~I would like nothing more than to forget about all this horror, <CHARNAME>, but I doubt 'twill ever happen. Let us be gone from here, quickly, and desecrate his resting ground no longer.~
IF ~~ DO ~SetGlobal("C0SireneISNFIncomplete","GLOBAL",2)~ EXIT
END
END
