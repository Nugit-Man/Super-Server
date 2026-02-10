

effect give @s resistance 10 2 true
effect give @s slowness 10 1 true

tellraw @s [{text:"Iron Clad Activated",color:"gray"}]
scoreboard players set @s FI_Mana_Cooldown_Gem_Iron 200
scoreboard players remove @s FI_Mana 10

attribute @s knockback_resistance base set 5


