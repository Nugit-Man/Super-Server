tellraw @s [{text:"Tuff Guy Activated",color:"gray"}]

scoreboard players set @s FI_Mana_Cooldown_Gem_Tuff 600
scoreboard players remove @s FI_Mana 40

attribute @s knockback_resistance base set 10
attribute @s armor base set 5
