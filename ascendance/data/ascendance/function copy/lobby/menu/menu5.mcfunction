#Killstreak Menu
item replace entity @a inventory.19 with minecraft:air
item replace entity @a inventory.20 with minecraft:air
item replace entity @a inventory.21 with minecraft:air
item replace entity @a inventory.23 with minecraft:air
item replace entity @a inventory.24 with minecraft:air
item replace entity @a inventory.25 with minecraft:air
scoreboard players set @a[tag=!select] Mode 1
tag @a remove select

#Killstreak shotgun
execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s firework_rocket 0
execute as @a[scores={Mode=2},tag=killstreak-shotgun] run tag @a[scores={Mode=2},tag=killstreak-shotgun] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-shotgun
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-shotgun
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s crossbow 0
execute as @a[scores={Mode=2},tag=killstreak-chaingun] run tag @a[scores={Mode=2},tag=killstreak-chaingun] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-chaingun
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-chaingun
tag @a remove x
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s leather_boots 0
execute as @a[scores={Mode=2},tag=killstreak-frog_legs] run tag @a[scores={Mode=2},tag=killstreak-frog_legs] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-frog_legs
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-frog_legs
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s snowball 0
execute as @a[scores={Mode=2},tag=killstreak-flashbang] run tag @a[scores={Mode=2},tag=killstreak-flashbang] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-flashbang
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-flashbang
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s sugar 0
execute as @a[scores={Mode=2},tag=killstreak-cocaine] run tag @a[scores={Mode=2},tag=killstreak-cocaine] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-cocaine
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-cocaine
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s tnt 0
execute as @a[scores={Mode=2},tag=killstreak-tnt] run tag @a[scores={Mode=2},tag=killstreak-tnt] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-tnt
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-tnt
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s iron_axe 0
execute as @a[scores={Mode=2},tag=killstreak-shank] run tag @a[scores={Mode=2},tag=killstreak-shank] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-shank
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-shank
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bamboo_hanging_sign 0
execute as @a[scores={Mode=2},tag=killstreak-land_mine] run tag @a[scores={Mode=2},tag=killstreak-land_mine] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-land_mine
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-land_mine
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s baked_potato 0
execute as @a[scores={Mode=2},tag=killstreak-wii_crash] run tag @a[scores={Mode=2},tag=killstreak-wii_crash] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-wii_crash
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-wii_crash
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

#New Stuff
execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s fire_charge 0
execute as @a[scores={Mode=2},tag=killstreak-fireball] run tag @a[scores={Mode=2},tag=killstreak-fireball] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-fireball
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-fireball
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s lightning_rod 0
execute as @a[scores={Mode=2},tag=killstreak-lightning] run tag @a[scores={Mode=2},tag=killstreak-lightning] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-lightning
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-lightning
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s bamboo_sign 0
execute as @a[scores={Mode=2},tag=killstreak-death_coin] run tag @a[scores={Mode=2},tag=killstreak-death_coin] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-death_coin
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-death_coin
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s egg 0
execute as @a[scores={Mode=2},tag=killstreak-leap_pearl] run tag @a[scores={Mode=2},tag=killstreak-leap_pearl] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-leap_pearl
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-leap_pearl
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s honey_bottle 0
execute as @a[scores={Mode=2},tag=killstreak-piss] run tag @a[scores={Mode=2},tag=killstreak-piss] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-piss
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-piss
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s leather_helmet 0
execute as @a[scores={Mode=2},tag=killstreak-cactus] run tag @a[scores={Mode=2},tag=killstreak-cactus] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-cactus
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-cactus
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s leather_leggings 0
execute as @a[scores={Mode=2},tag=killstreak-pants] run tag @a[scores={Mode=2},tag=killstreak-pants] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-pants
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-pants
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s beef 0
execute as @a[scores={Mode=2},tag=killstreak-gravity] run tag @a[scores={Mode=2},tag=killstreak-gravity] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-gravity
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-gravity
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s cooked_beef 0
execute as @a[scores={Mode=2},tag=killstreak-star] run tag @a[scores={Mode=2},tag=killstreak-star] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-star
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-star
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s glass_pane 0
execute as @a[scores={Mode=2},tag=killstreak-invis] run tag @a[scores={Mode=2},tag=killstreak-invis] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-invis
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-invis
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s rabbit_stew 0
execute as @a[scores={Mode=2},tag=killstreak-curry] run tag @a[scores={Mode=2},tag=killstreak-curry] add x
execute as @a[scores={Mode=2},tag=x] run tag @a[scores={Mode=2},tag=x] remove killstreak-curry
execute as @a[scores={Mode=2},tag=!x] run tag @a[scores={Mode=2},tag=!x] add killstreak-curry
tag @a remove x
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1
scoreboard players set @a[scores={Mode=0}] Mode 1

execute as @a[scores={Mode=1}] run execute store result score @s Mode run clear @s acacia_sign 0
execute as @a[scores={Mode=2}] run scoreboard players set $Menu Mode 1
tag @a[scores={Mode=2}] add select
scoreboard players set @a[scores={Mode=2}] Mode -1



item replace entity @a inventory.22 with minecraft:acacia_sign[custom_name='["",{"text":"Back","italic":false}]']

#killstreak stuff
item replace entity @a[tag=!killstreak-shotgun] inventory.9 with minecraft:firework_rocket[custom_name='["",{"text":"Super Shotgun: Disabled","italic":false}]']
item replace entity @a[tag=killstreak-shotgun] inventory.9 with minecraft:firework_rocket[custom_name='["",{"text":"Super Shotgun: Enabled","italic":false}]']

item replace entity @a[tag=Advancement-off_with_his_head] inventory.10 with minecraft:crossbow[custom_name='["",{"text":"Chaingun: Disabled","italic":false}]']
item replace entity @a[tag=killstreak-chaingun] inventory.10 with minecraft:crossbow[custom_name='["",{"text":"Chaingun: Enabled","italic":false}]']

item replace entity @a[tag=Advancement-rock_bottom] inventory.11 with minecraft:sugar[custom_name='["",{"text":"Cocaine: Disabled","italic":false}]']
item replace entity @a[tag=killstreak-cocaine] inventory.11 with minecraft:sugar[custom_name='["",{"text":"Cocaine: Enabled","italic":false}]']

item replace entity @a[tag=Advancement-secret_barrel_b] inventory.12 with minecraft:leather_boots[custom_name='["",{"text":"Frog Legs: Disabled","italic":false}]',dyed_color=65280]
item replace entity @a[tag=killstreak-frog_legs] inventory.12 with minecraft:leather_boots[custom_name='["",{"text":"Frog Legs: Enabled","italic":false}]',dyed_color=65280]

item replace entity @a[tag=Advancement-not_that_kind_of_deathmatch] inventory.14 with minecraft:snowball[custom_name='["",{"text":"Flashbang: Disabled","italic":false}]']
item replace entity @a[tag=killstreak-flashbang] inventory.14 with minecraft:snowball[custom_name='["",{"text":"Flashbang: Enabled","italic":false}]']

item replace entity @a[tag=Advancement-secret_barrel_desert_tomb] inventory.15 with minecraft:iron_axe[custom_name='{"italic":false,"text":"Shank: Disabled"}',unbreakable={}] 1
item replace entity @a[tag=killstreak-shank] inventory.15 with minecraft:iron_axe[custom_name='{"italic":false,"text":"Shank: Enabled"}',unbreakable={}] 1

item replace entity @a[tag=Advancement-secret_barrel_colosseum] inventory.16 with minecraft:tnt[custom_name='{"italic":false,"text":"Very Delayed Explosives: Disabled"}'] 1
item replace entity @a[tag=killstreak-tnt] inventory.16 with minecraft:tnt[custom_name='{"italic":false,"text":"Very Delayed Explosives: Enabled"}'] 1

item replace entity @a[tag=Advancement-secret_barrel_Tabletop] inventory.17 with minecraft:bamboo_hanging_sign[custom_name='{"italic":false,"text":"Land Mine: Disabled"}'] 1
item replace entity @a[tag=killstreak-land_mine] inventory.17 with minecraft:bamboo_hanging_sign[custom_name='{"italic":false,"text":"Land Mine: Enabled"}'] 1

item replace entity @a[tag=Advancement-secret_barrel_c] inventory.13 with minecraft:baked_potato[custom_name='{"italic":false,"text":"Wii Crash: Disabled"}'] 1
item replace entity @a[tag=killstreak-wii_crash] inventory.13 with minecraft:baked_potato[custom_name='{"italic":false,"text":"Wii Crash: Enabled"}'] 1

item replace entity @a[tag=Advancement-crackhead] inventory.2 with minecraft:lightning_rod[custom_name='{"italic":false,"text":"Lightning Bolt: Disabled"}'] 1
item replace entity @a[tag=killstreak-lightning] inventory.2 with minecraft:lightning_rod[custom_name='{"italic":false,"text":"Lightning Bolt: Enabled"}'] 1

item replace entity @a[tag=Advancement-gamblers_philosophy] inventory.4 with minecraft:bamboo_sign[custom_name='{"italic":false,"text":"Death Coin: Disabled"}'] 1
item replace entity @a[tag=killstreak-death_coin] inventory.4 with minecraft:bamboo_sign[custom_name='{"italic":false,"text":"Death Coin: Enabled"}'] 1

item replace entity @a[tag=Advancement-death_club] inventory.3 with minecraft:fire_charge[custom_name='{"italic":false,"text":"Fireball: Disabled"}'] 1
item replace entity @a[tag=killstreak-fireball] inventory.3 with minecraft:fire_charge[custom_name='{"italic":false,"text":"Fireball: Enabled"}'] 1

item replace entity @a[tag=Advancement-you_cant_do_that] inventory.5 with minecraft:egg[custom_name='{"italic":false,"text":"Leap Pearl: Disabled"}'] 1
item replace entity @a[tag=killstreak-leap_pearl] inventory.5 with minecraft:egg[custom_name='{"italic":false,"text":"Leap Pearl: Enabled"}'] 1

item replace entity @a[tag=Advancement-colosiom_champion] inventory.6 with minecraft:honey_bottle[custom_name='{"italic":false,"text":"Super Laser Piss: Disabled"}'] 1
item replace entity @a[tag=killstreak-piss] inventory.6 with minecraft:honey_bottle[custom_name='{"italic":false,"text":"Super Laser Piss: Enabled"}'] 1


item replace entity @a[tag=Advancement-secret_barrel_jugle_pikes] inventory.0 with leather_helmet[dyed_color={rgb:6192150},custom_name='["",{"text":"Cactus Helmet: Disabled","italic":false}]',enchantments={levels:{thorns:20},show_in_tooltip:false}]
item replace entity @a[tag=killstreak-cactus] inventory.0 with leather_helmet[dyed_color={rgb:6192150},custom_name='["",{"text":"Cactus Helmet: Enabled","italic":false}]',enchantments={levels:{thorns:20},show_in_tooltip:false}]

item replace entity @a[tag=Advancement-secret_barrel_final_island_e] inventory.1 with minecraft:rabbit_stew[custom_name='{"italic":false,"text":"Curry: Disabled"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000007}]
item replace entity @a[tag=killstreak-curry] inventory.1 with minecraft:rabbit_stew[custom_name='{"italic":false,"text":"Curry: Enabled"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000007}]

item replace entity @a[tag=Advancement-nice_job_team] inventory.7 with beef[custom_name='["",{"text":"Gravity Gun: Disabeld","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000008}]
item replace entity @a[tag=killstreak-gravity] inventory.7 with beef[custom_name='["",{"text":"Gravity Gun: Enabled","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000008}]

item replace entity @a[tag=Advancement-secret_barrel_final_island_d] inventory.8 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders: Disabled","italic":false}]',enchantments={levels:{swift_sneak:3},show_in_tooltip:false},unbreakable={}]
item replace entity @a[tag=killstreak-pants] inventory.8 with leather_leggings[custom_name='["",{"text":"Sneaky Sliders: Enabled","italic":false}]',enchantments={levels:{swift_sneak:3},show_in_tooltip:false},unbreakable={}]

item replace entity @a[tag=Advancement-secret_barrel_final_island_g] inventory.18 with glass_pane[custom_name='["",{"text":"Invisibility: Disabled","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000010}]
item replace entity @a[tag=killstreak-invis] inventory.18 with glass_pane[custom_name='["",{"text":"Invisibility: Enableld","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000010}]

item replace entity @a[tag=Advancement-secret_barrel_a] inventory.26 with cooked_beef[custom_name='["",{"text":"Star: Disabled","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000009}]
item replace entity @a[tag=killstreak-star] inventory.26 with cooked_beef[custom_name='["",{"text":"Star: Enabled","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000009}]

#Do the thing where it re-locks it if a person does not have the acivment unlocked
item replace entity @a[tag=!Advancement-off_with_his_head] inventory.10 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-rock_bottom] inventory.11 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_b] inventory.12 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-not_that_kind_of_deathmatch] inventory.14 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_desert_tomb] inventory.15 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_colosseum] inventory.16 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_Tabletop] inventory.17 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_c] inventory.13 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-crackhead] inventory.2 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-death_club] inventory.3 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-gamblers_philosophy] inventory.4 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-you_cant_do_that] inventory.5 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-colosiom_champion] inventory.6 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-nice_job_team] inventory.7 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_final_island_e] inventory.1 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_final_island_g] inventory.18 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_jugle_pikes] inventory.0 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_final_island_a] inventory.26 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']
item replace entity @a[tag=!Advancement-secret_barrel_final_island_d] inventory.8 with minecraft:barrier[custom_name='["",{"text":"Locked","italic":false,"bold":true,"color":"red"}]']