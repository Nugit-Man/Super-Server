
#Display mana and restore it at spawn
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5] FI_Mana 100
execute in final_island:game at @e[tag=FI_Mana_Restore] run scoreboard players set @a[distance=..5] FI_Mana_Cooldown 0
execute as @a[scores={MAIN_Game=1}] run title @s actionbar ["Mana: ",{score:{objective:"FI_Mana",name:"@s"}},"/100"]


#Mana Cooldown
scoreboard players remove @a[scores={FI_Mana_Cooldown=1..,MAIN_Game=1}] FI_Mana_Cooldown 1


#Iron Curtain (blocks)
scoreboard players add @e[type=block_display,tag=FI_Ability_Iron_Curtain] FI_Abilities 1
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=10..}] run execute at @s run tp @s ~ ~-0.4 ~
execute as @e[type=block_display,tag=FI_Ability_Iron_Curtain] at @e[type=block_display,tag=FI_Ability_Iron_Curtain] run damage @e[distance=..1,limit=1,sort=nearest,tag=!FI_Ability_Iron_Curtain] 16
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 normal
execute at @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}] run playsound block.anvil.land block @a ~ ~ ~
kill @e[type=block_display,tag=FI_Ability_Iron_Curtain,scores={FI_Abilities=20}]

#Iron Curtain (Player)
tag @a[scores={FI_Mana_Cooldown=90}] remove FI_Iron_Curtain
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
execute as @a[tag=FI_Sonic_Blast,scores={FI_Mana_Cooldown=275}] run execute at @s anchored eyes run summon marker ^ ^ ^2 {Tags:[FI_Sonic_Blast_Marker]}
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