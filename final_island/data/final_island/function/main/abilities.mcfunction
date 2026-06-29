
#Swords
#Iron Curtain (blocks)
scoreboard players add @e[type=block_display,tag=FI_Ability_Iron_Curtain] FI_Abilities 1
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=10..}] run execute at @s run tp @s ~ ~-0.4 ~
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain] at @e[type=block_display,tag=FI_Ability_Iron_Curtain] run damage @e[distance=..1,limit=1,sort=nearest,tag=!FI_Ability_Iron_Curtain] 16 falling_anvil
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 normal
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run playsound block.anvil.land block @a ~ ~ ~
kill @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}]

#Iron Curtain (Player)
tag @a[scores={FI_Mana_Cooldown_iron_sword=8}] remove FI_Iron_Curtain
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=118}] run summon block_display ^1 ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=118}] run summon block_display ^ ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=118}] run summon block_display ^-1 ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}

execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=116}] run summon block_display ^1 ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=116}] run summon block_display ^ ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=116}] run summon block_display ^-1 ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}

execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=114}] run summon block_display ^1 ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=114}] run summon block_display ^ ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown_iron_sword=114}] run summon block_display ^-1 ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}






#Sonic Blast
tag @a[scores={FI_Mana_Cooldown_deep_sword=274}] add FI_Sonic_Immune
tag @a[scores={FI_Mana_Cooldown_deep_sword=273}] remove FI_Sonic_Immune
tag @a[scores={FI_Mana_Cooldown_deep_sword=250}] remove FI_Sonic_Blast
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=275}] at @s anchored eyes run function final_island:main/abilities/sonic_blast
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run damage @n[tag=!FI_Sonic_Blast_Immune,distance=..2,type=!item,type=!marker] 24 sonic_boom
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run particle minecraft:sonic_boom ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run particle minecraft:sonic_boom ~ ~ ~ 0.3 0.3 0.3 1 1 normal
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=260}] run kill @e[type=marker,tag=FI_Sonic_Blast_Marker]
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown_deep_sword=274}] run execute at @s run playsound entity.warden.sonic_boom player









#dripstone sword extra reach
execute as @a if items entity @s weapon.mainhand *[custom_data~{FI_Dripstone_Sword:1b}] run attribute @s[scores={MAIN_Game=2}] entity_interaction_range base set 4
execute as @a unless items entity @s weapon.mainhand *[custom_data~{FI_Dripstone_Sword:1b}] run attribute @s[scores={MAIN_Game=2}] entity_interaction_range base reset

#flint sword explosive hit
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run summon marker ~ ~ ~ {Tags:["FI_Ability_Flint_Sword"]}
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run execute at @e[tag=FI_Ability_Flint_Sword] run execute as @e[distance=..4,tag=!FI_Explosive_Hit] run damage @s 18 fireworks
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run kill @e[tag=FI_Ability_Flint_Sword]
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run playsound entity.generic.explode player @a ~ ~ ~
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run particle explosion ~ ~1 ~ 1 1 1 1 100 normal @a
#remove the tag once hit
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run execute as @s at @s on attacker if entity @s[tag=FI_Explosive_Hit] run tag @s remove FI_Explosive_Hit
#remove the tag if it takes too long
tellraw @a[scores={FI_Mana_Cooldown_flint_sword=100},tag=FI_Explosive_Hit] [{text:"Explosive Hit Wore Off",color:"gray"}]
give @a[scores={FI_Mana_Cooldown_flint_sword=100},tag=FI_Explosive_Hit] iron_ingot
tag @a[scores={FI_Mana_Cooldown_flint_sword=100}] remove FI_Explosive_Hit







#Axes
#Emerald axe heal
effect give @a[tag=FI_Ability_Health_Of_Wealth,scores={MAIN_Game=2}] regeneration 1 255 true
effect clear @a[tag=!FI_Ability_Health_Of_Wealth,scores={MAIN_Game=2}] regeneration
tag @a remove FI_Ability_Health_Of_Wealth

#Stone Axe Attack Speed
execute as @a[scores={MAIN_Game=2,FI_Mana_Cooldown_stone_axe=400},tag=FI_Ability_Speed_Slice] run attribute @s attack_speed base reset
tag @a[scores={MAIN_Game=2,FI_Mana_Cooldown_stone_axe=400},tag=FI_Ability_Speed_Slice] remove FI_Ability_Speed_Slice



#Gems
execute as @a[scores={FI_Mana_Cooldown_Gem_Iron=1,MAIN_Game=2}] run attribute @s knockback_resistance base set 0

execute as @a[scores={FI_Mana_Cooldown_Gem_Tuff=1,MAIN_Game=2}] run attribute @s knockback_resistance base set 0
execute as @a[scores={FI_Mana_Cooldown_Gem_Tuff=1,MAIN_Game=2}] run attribute @s armor base set 0