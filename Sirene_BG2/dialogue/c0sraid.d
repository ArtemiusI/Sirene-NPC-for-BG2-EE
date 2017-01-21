BEGIN C0SRAID

CHAIN IF WEIGHT #-1 ~Global("C0SireneZalorne","GLOBAL",0)~ THEN C0SRAID a1
~So, that dusty old book's what's been hidden under those glyphs, then? Hand it over, woman.~
DO ~SetGlobal("C0SireneZalorne","GLOBAL",1)~
== C0SIR25J ~Were you the ones who destroyed this chapel?~
== C0SRAID ~That's none of your concern. Suffice to say that we have observed these ruins from the shadows for many a night waiting for someone with the ability to retrieve whatever was hidden there. Hand it over, or we will take it from you.~
== C0SIR25J ~You intend to claim an Ilmatari holy artifact? You have no right to it.~
== C0SRAID ~We have the advantage in numbers, woman. You cannot hope to protect it from us. The enchantments protecting this place from us broke when you unlocked that altar. You have nowhere to hide.~
== C0SIR25J ~Do what you must. You will not have this book.~
== C0SRAID ~Fool. Time to pay the price for your arrogance, then!~
DO ~Enemy()
ActionOverride("C0SRAID1",Enemy())
ActionOverride("C0SRAID2",Enemy())
ActionOverride("C0SRAID3",Enemy())
ActionOverride("C0SRAID4",Enemy())
ActionOverride("C0SRAID5",Enemy())
ActionOverride("C0SRAID6",Enemy())
ActionOverride("C0SRAID7",Enemy())
ActionOverride("C0SRAID8",Enemy())
ActionOverride("C0SRAID9",Enemy())~ EXIT