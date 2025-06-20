#Modifyer Menu
item replace entity @a inventory.18 with minecraft:air
item replace entity @a inventory.19 with minecraft:air
item replace entity @a inventory.20 with minecraft:air
item replace entity @a inventory.21 with minecraft:air
item replace entity @a inventory.23 with minecraft:air
item replace entity @a inventory.24 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
item replace entity @a inventory.26 with minecraft:air

scoreboard players set @a[tag=!select] Mode 1
tag @a remove select



execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s sugar 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Speed Unlocks 1
execute if score U_Speed Unlocks matches 3 run scoreboard players set U_Speed Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s rabbit_foot 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Jump_boost Unlocks 1
execute if score U_Jump_boost Unlocks matches 3 run scoreboard players set U_Jump_boost Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s shield 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Shield Unlocks 1
execute if score U_Shield Unlocks matches 3 run scoreboard players set U_Shield Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s iron_sword 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Chaos Unlocks 1
execute if score U_Chaos Unlocks matches 3 run scoreboard players set U_Chaos Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s anvil 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Fall Unlocks 1
execute if score U_Fall Unlocks matches 3 run scoreboard players set U_Fall Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s pufferfish 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Nausia Unlocks 1
execute if score U_Nausia Unlocks matches 3 run scoreboard players set U_Nausia Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s sculk 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Darkness Unlocks 1
execute if score U_Darkness Unlocks matches 3 run scoreboard players set U_Darkness Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

#execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s iron_horse_armor 0
#execute as @a[scores={Mode=2}] run scoreboard players add U_Horse Unlocks 1
#execute if score U_Horse Unlocks matches 3 run scoreboard players set U_Horse Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

#---------------------------------------------------------------------------------------------------------------------------------
execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s arrow 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Ammo Unlocks 1
execute if score U_Ammo Unlocks matches 3 run scoreboard players set U_Ammo Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s tinted_glass 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Blindness Unlocks 1
execute if score U_Blindness Unlocks matches 3 run scoreboard players set U_Blindness Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s shulker_box 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Levitation Unlocks 1
execute if score U_Levitation Unlocks matches 3 run scoreboard players set U_Levitation Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s tnt 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Combustion Unlocks 1
execute if score U_Combustion Unlocks matches 3 run scoreboard players set U_Combustion Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bow 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Team_Attack Unlocks 1
execute if score U_Team_Attack Unlocks matches 3 run scoreboard players set U_Team_Attack Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s glowstone 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Glowing Unlocks 1
execute if score U_Glowing Unlocks matches 3 run scoreboard players set U_Glowing Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s glass 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Invisability Unlocks 1
execute if score U_Invisability Unlocks matches 3 run scoreboard players set U_Invisability Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s cobweb 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Slowness Unlocks 1
execute if score U_Slowness Unlocks matches 3 run scoreboard players set U_Slowness Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s feather 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Slowfall Unlocks 1
execute if score U_Slowfall Unlocks matches 3 run scoreboard players set U_Slowfall Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s diamond_sword 0
execute as @a[scores={Mode=2}] run scoreboard players add U_Mayhem Unlocks 1
execute if score U_Mayhem Unlocks matches 3 run scoreboard players set U_Mayhem Unlocks 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1



item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']


execute if score U_Speed Unlocks matches 0 run item replace entity @a inventory.10 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Speed Unlocks matches 1 run item replace entity @a inventory.10 with minecraft:sugar[custom_name='["",{"text":"Speed: Disabled","italic":false}]']
execute if score U_Speed Unlocks matches 2 run item replace entity @a inventory.10 with minecraft:sugar[custom_name='["",{"text":"Speed: Enabled","italic":false}]']
execute if score U_Jump_boost Unlocks matches 0 run item replace entity @a inventory.11 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Jump_boost Unlocks matches 1 run item replace entity @a inventory.11 with minecraft:rabbit_foot[custom_name='{"italic":false,"text":"Jump Boost: Disabled"}'] 1
execute if score U_Jump_boost Unlocks matches 2 run item replace entity @a inventory.11 with minecraft:rabbit_foot[custom_name='{"italic":false,"text":"Jump Boost: Enabled"}'] 1
execute if score U_Fall Unlocks matches 0 run item replace entity @a inventory.12 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Fall Unlocks matches 1 run item replace entity @a inventory.12 with minecraft:anvil[custom_name='{"italic":false,"text":"Fall Damage: Disabled"}'] 1
execute if score U_Fall Unlocks matches 2 run item replace entity @a inventory.12 with minecraft:anvil[custom_name='{"italic":false,"text":"Fall Damage: Enabled"}'] 1
execute if score U_Horse Unlocks matches 0 run item replace entity @a inventory.14 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Horse Unlocks matches 1 run item replace entity @a inventory.14 with minecraft:iron_horse_armor[custom_name='{"italic":false,"text":"Horse: Disabled"}'] 1
execute if score U_Horse Unlocks matches 2 run item replace entity @a inventory.14 with minecraft:iron_horse_armor[custom_name='{"italic":false,"text":"Horse: Enabled"}'] 1
execute if score U_Shield Unlocks matches 0 run item replace entity @a inventory.9 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Shield Unlocks matches 1 run item replace entity @a inventory.9 with minecraft:shield[custom_name='{"italic":false,"text":"Shield: Disabled"}'] 1
execute if score U_Shield Unlocks matches 2 run item replace entity @a inventory.9 with minecraft:shield[custom_name='{"italic":false,"text":"Shield: Enabled"}'] 1
execute if score U_Nausia Unlocks matches 0 run item replace entity @a inventory.15 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Nausia Unlocks matches 1 run item replace entity @a inventory.15 with minecraft:pufferfish[custom_name='{"italic":false,"text":"Nausia: Disabled"}'] 1
execute if score U_Nausia Unlocks matches 2 run item replace entity @a inventory.15 with minecraft:pufferfish[custom_name='{"italic":false,"text":"Nausia: Enabled"}'] 1
execute if score U_Darkness Unlocks matches 0 run item replace entity @a inventory.16 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Darkness Unlocks matches 1 run item replace entity @a inventory.16 with minecraft:sculk[custom_name='{"italic":false,"text":"Darkness: Disabled"}'] 1
execute if score U_Darkness Unlocks matches 2 run item replace entity @a inventory.16 with minecraft:sculk[custom_name='{"italic":false,"text":"Darkness: Enabled"}'] 1
execute if score U_Chaos Unlocks matches 0 run item replace entity @a inventory.17 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Chaos Unlocks matches 1 run item replace entity @a inventory.17 with minecraft:iron_sword[custom_name='{"italic":false,"text":"Chaos: Disabled"}'] 1
execute if score U_Chaos Unlocks matches 2 run item replace entity @a inventory.17 with minecraft:iron_sword[custom_name='{"italic":false,"text":"Chaos: Enabled"}'] 1
execute if score U_Ammo Unlocks matches 0 run item replace entity @a inventory.0 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Ammo Unlocks matches 1 run item replace entity @a inventory.0 with minecraft:arrow[custom_name='{"italic":false,"text":"Ammo: Disabled"}'] 1
execute if score U_Ammo Unlocks matches 2 run item replace entity @a inventory.0 with minecraft:arrow[custom_name='{"italic":false,"text":"Ammo: Enabled"}'] 1
execute if score U_Blindness Unlocks matches 0 run item replace entity @a inventory.1 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Blindness Unlocks matches 1 run item replace entity @a inventory.1 with minecraft:tinted_glass[custom_name='{"italic":false,"text":"Blindness: Disabled"}'] 1
execute if score U_Blindness Unlocks matches 2 run item replace entity @a inventory.1 with minecraft:tinted_glass[custom_name='{"italic":false,"text":"Blindness: Enabled"}'] 1
execute if score U_Levitation Unlocks matches 0 run item replace entity @a inventory.2 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Levitation Unlocks matches 1 run item replace entity @a inventory.2 with minecraft:shulker_box[custom_name='{"italic":false,"text":"Spontainious Levatation: Disabled"}'] 1
execute if score U_Levitation Unlocks matches 2 run item replace entity @a inventory.2 with minecraft:shulker_box[custom_name='{"italic":false,"text":"Spontainious Levitation: Enabled"}'] 1
execute if score U_Combustion Unlocks matches 0 run item replace entity @a inventory.3 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Combustion Unlocks matches 1 run item replace entity @a inventory.3 with minecraft:tnt[custom_name='{"italic":false,"text":"Spontainious Combustion: Disabled"}'] 1
execute if score U_Combustion Unlocks matches 2 run item replace entity @a inventory.3 with minecraft:tnt[custom_name='{"italic":false,"text":"Spontainious Combusion: Enabled"}'] 1
execute if score U_Team_Attack Unlocks matches 0 run item replace entity @a inventory.4 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Team_Attack Unlocks matches 1 run item replace entity @a inventory.4 with minecraft:bow[custom_name='{"italic":false,"text":"Team Attack: Disabled"}'] 1
execute if score U_Team_Attack Unlocks matches 2 run item replace entity @a inventory.4 with minecraft:bow[custom_name='{"italic":false,"text":"Team Attack: Enabled"}'] 1
execute if score U_Glowing Unlocks matches 0 run item replace entity @a inventory.5 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Glowing Unlocks matches 1 run item replace entity @a inventory.5 with minecraft:glowstone[custom_name='{"italic":false,"text":"Glowing: Disabled"}'] 1
execute if score U_Glowing Unlocks matches 2 run item replace entity @a inventory.5 with minecraft:glowstone[custom_name='{"italic":false,"text":"Glowing: Enabled"}'] 1
execute if score U_Invisability Unlocks matches 0 run item replace entity @a inventory.6 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Invisability Unlocks matches 1 run item replace entity @a inventory.6 with minecraft:glass[custom_name='{"italic":false,"text":"Invisability: Disabled"}'] 1
execute if score U_Invisability Unlocks matches 2 run item replace entity @a inventory.6 with minecraft:glass[custom_name='{"italic":false,"text":"Invisability: Enabled"}'] 1
execute if score U_Slowness Unlocks matches 0 run item replace entity @a inventory.7 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Slowness Unlocks matches 1 run item replace entity @a inventory.7 with minecraft:cobweb[custom_name='{"italic":false,"text":"Slowness: Disabled"}'] 1
execute if score U_Slowness Unlocks matches 2 run item replace entity @a inventory.7 with minecraft:cobweb[custom_name='{"italic":false,"text":"Slowness: Enabled"}'] 1
execute if score U_Slowfall Unlocks matches 0 run item replace entity @a inventory.8 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Slowfall Unlocks matches 1 run item replace entity @a inventory.8 with minecraft:feather[custom_name='{"italic":false,"text":"Slowfall: Disabled"}'] 1
execute if score U_Slowfall Unlocks matches 2 run item replace entity @a inventory.8 with minecraft:feather[custom_name='{"italic":false,"text":"Slowfall: Enabled"}'] 1
execute if score U_Mayhem Unlocks matches 0 run item replace entity @a inventory.13 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
execute if score U_Mayhem Unlocks matches 1 run item replace entity @a inventory.13 with minecraft:diamond_sword[custom_name='{"italic":false,"text":"Mayhem: Disabled"}'] 1
execute if score U_Mayhem Unlocks matches 2 run item replace entity @a inventory.13 with minecraft:diamond_sword[custom_name='{"italic":false,"text":"Mayhem: Enabled"}'] 1