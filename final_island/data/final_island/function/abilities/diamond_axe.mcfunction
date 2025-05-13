tag @s add FI_Ability_Diamond_Axe

effect give @a[distance=..5,tag=!FI_Ability_Diamond_Axe] levitation 3 4
effect give @e[distance=..5,type=zombie] levitation 3 4
effect give @e[distance=..5,type=skeleton] levitation 3 4
effect give @e[distance=..5,type=spider] levitation 3 4

tag @s remove FI_Ability_Diamond_Axe

scoreboard players remove @s FI_Mana 75
scoreboard players set @s FI_Mana_Cooldown 80