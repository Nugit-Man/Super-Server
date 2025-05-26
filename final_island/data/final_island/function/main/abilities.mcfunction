
#Swords
#Iron Curtain (blocks)
scoreboard players add @e[type=block_display,tag=FI_Ability_Iron_Curtain] FI_Abilities 1
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=10..}] run execute at @s run tp @s ~ ~-0.4 ~
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain] at @e[type=block_display,tag=FI_Ability_Iron_Curtain] run damage @e[distance=..1,limit=1,sort=nearest,tag=!FI_Ability_Iron_Curtain] 16 falling_anvil
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 normal
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run playsound block.anvil.land block @a ~ ~ ~
kill @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}]

#Iron Curtain (Player)
tag @a[scores={FI_Mana_Cooldown=80}] remove FI_Iron_Curtain
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=118}] run summon block_display ^1 ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=118}] run summon block_display ^ ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=118}] run summon block_display ^-1 ^3 ^4 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}

execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=116}] run summon block_display ^1 ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=116}] run summon block_display ^ ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=116}] run summon block_display ^-1 ^3 ^5 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}

execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=114}] run summon block_display ^1 ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=114}] run summon block_display ^ ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
execute at @a[tag=FI_Iron_Curtain,scores={FI_Mana_Cooldown=114}] run summon block_display ^-1 ^3 ^6 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}


#Sonic Blast
tag @a[scores={FI_Mana_Cooldown=250}] remove FI_Sonic_Blast
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^16 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^3 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^4 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^5 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^6 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^7 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^8 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^9 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^10 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^11 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^12 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^13 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^14 {Tags:[FI_Sonic_Blast_Marker]}
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^15 {Tags:[FI_Sonic_Blast_Marker]}

execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run damage @e[tag=!FI_Sonic_Blast_Marker,limit=1,sort=nearest,distance=..2] 24 sonic_boom
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run particle minecraft:sonic_boom ~ ~ ~ 0.3 0.3 0.3 1 10 force
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=274}] run execute at @e[tag=FI_Sonic_Blast_Marker] run particle minecraft:sonic_boom ~ ~ ~ 0.3 0.3 0.3 1 1 normal
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=260}] run kill @e[type=marker,tag=FI_Sonic_Blast_Marker]
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=274}] run execute at @s run playsound entity.warden.sonic_boom player

#dripstone sword extra reach
execute as @a if items entity @s weapon.mainhand *[custom_data~{FI_Dripstone_Sword:1b}] run attribute @s entity_interaction_range base set 4
execute as @a unless items entity @s weapon.mainhand *[custom_data~{FI_Dripstone_Sword:1b}] run attribute @s entity_interaction_range base set 3

#flint sword explosive hit
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run summon marker ~ ~ ~ {Tags:["FI_Ability_Flint_Sword"]}
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run execute at @e[tag=FI_Ability_Flint_Sword] run execute as @e[distance=..4,tag=!FI_Explosive_Hit] run damage @s 6 fireworks
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run kill @e[tag=FI_Ability_Flint_Sword]
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run playsound entity.generic.explode player @a ~ ~ ~
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] at @s on attacker if entity @s[tag=FI_Explosive_Hit] run particle explosion ~ ~1 ~ 1 1 1 1 100 normal @a
#remove the tag once hit
execute at @a[tag=FI_Explosive_Hit] run execute as @e[distance=..7] run execute as @s at @s on attacker if entity @s[tag=FI_Explosive_Hit] run tag @s remove FI_Explosive_Hit
#remove the tag if it takes too long
tellraw @a[scores={FI_Mana_Cooldown=100},tag=FI_Explosive_Hit] [{text:"Explosive Hit Wore Off",color:"gray"}]
give @a[scores={FI_Mana_Cooldown=100},tag=FI_Explosive_Hit] iron_ingot
tag @a[scores={FI_Mana_Cooldown=100}] remove FI_Explosive_Hit







#Axes
#Emerald axe heal
effect give @a[tag=FI_Ability_Health_Of_Wealth] regeneration 1 255 true
effect clear @a[tag=!FI_Ability_Health_Of_Wealth] regeneration
tag @a remove FI_Ability_Health_Of_Wealth

#Stone Axe Attack Speed
execute as @a[scores={MAIN_Game=2,FI_Mana_Cooldown=400},tag=FI_Ability_Speed_Slice] run attribute @s attack_speed base reset
tag @a[scores={MAIN_Game=2,FI_Mana_Cooldown=400},tag=FI_Ability_Speed_Slice] remove FI_Ability_Speed_Slice

