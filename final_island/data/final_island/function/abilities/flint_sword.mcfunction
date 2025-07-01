#Check for Iron
execute store result score @s FI_Abilities run clear @s iron_ingot 1


#Do cooldown depending on if the player has iron
scoreboard players remove @s[scores={FI_Abilities=1}] FI_Mana 10
scoreboard players set @s[scores={FI_Abilities=1}] FI_Mana_Cooldown_flint_sword 160
scoreboard players remove @s[scores={FI_Abilities=0}] FI_Mana 1
scoreboard players set @s[scores={FI_Abilities=0}] FI_Mana_Cooldown_flint_sword 5

tellraw @s[scores={FI_Abilities=0}] [{text:"You do not have any Iron",color:"red"}]
tellraw @s[scores={FI_Abilities=1}] [{text:"Explosive hit enabled",color:"gray"}]
tag @s[scores={FI_Abilities=1}] add FI_Explosive_Hit