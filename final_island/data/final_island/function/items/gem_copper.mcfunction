effect give @s speed 15 4 true
tellraw @s [{text:"Run Away Activated",color:"gray"}]
scoreboard players remove @s FI_Mana 40
scoreboard players set @s FI_Mana_Cooldown_Gem_Copper 500