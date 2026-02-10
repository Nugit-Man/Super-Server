effect give @s strength 5 2 true
tellraw @s [{text:"Rock Hard Activated",color:"gray"}]
scoreboard players remove @s FI_Mana 50
scoreboard players set @s FI_Mana_Cooldown_Gem_Stone 100