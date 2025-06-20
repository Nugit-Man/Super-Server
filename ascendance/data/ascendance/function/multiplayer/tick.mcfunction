#Had to put this up here because of lives
#extra
data modify entity @e[type=item,limit=1,sort=random] PickupDelay set value 0
kill @a[nbt={HurtTime:9s, Dimension:"minecraft:overworld"},tag=!immune]



#Maps
execute if score $Map Mode matches 1 run function ascendance:multiplayer/maps/desert_tomb
execute if score $Map Mode matches 2 run function ascendance:multiplayer/maps/tabletop
execute if score $Map Mode matches 3 run function ascendance:multiplayer/maps/brutalism
execute if score $Map Mode matches 4 run function ascendance:multiplayer/maps/colosium
execute if score $Map Mode matches 5 run function ascendance:multiplayer/maps/the_club
execute if score $Map Mode matches 6 run function ascendance:multiplayer/maps/shipment
execute if score $Map Mode matches 7 run function ascendance:multiplayer/maps/final_island
execute if score $Map Mode matches 8 run function ascendance:multiplayer/maps/the_cave
execute if score $Map Mode matches 9 run function ascendance:multiplayer/maps/ravine
execute if score $Map Mode matches 10 run function ascendance:multiplayer/maps/the_cube
execute if score $Map Mode matches 11 run function ascendance:multiplayer/maps/ice_spikes
execute if score $Map Mode matches 12 run function ascendance:multiplayer/maps/jungle_pikes

#Modes
execute if score $Gamemode Mode matches 1 run function ascendance:multiplayer/ffa/deathmatch
execute if score $Gamemode Mode matches 2 run function ascendance:multiplayer/ffa/kings_crown
execute if score $Gamemode Mode matches 3 run function ascendance:multiplayer/ffa/koth
execute if score $Gamemode Mode matches 4 run function ascendance:multiplayer/2team/team_deathmatch
execute if score $Gamemode Mode matches 5 run function ascendance:multiplayer/2team/ctf
execute if score $Gamemode Mode matches 6 run function ascendance:multiplayer/ffa/lives






#Gravity Gun
execute at @e[type=minecraft:armor_stand,tag=gravity] run tp @e[type=minecraft:armor_stand,tag=gravity,scores={Snowball=..10}] ^ ^1 ^2 ~ ~
execute at @e[type=minecraft:armor_stand,tag=gravity] run tp @e[type=minecraft:armor_stand,tag=gravity,scores={Snowball=11..30}] ^ ^ ^2 ~ ~
execute at @e[type=minecraft:armor_stand,tag=gravity] run tp @e[type=minecraft:armor_stand,tag=gravity,scores={Snowball=31..}] ^ ^-1 ^2 ~ ~
tp @a[tag=thrown] @e[tag=gravity,limit=1]
scoreboard players add @e[tag=gravity] Snowball 1
execute as @e[tag=gravity,scores={Snowball=50..}] run tag @a remove thrown
kill @e[tag=gravity,scores={Snowball=50..}]
tag @a[scores={Deathmessages=1..}] remove thrown


#King's crown stuff and dethroner
execute if score @a[scores={Killmessages=1..},limit=1,sort=random] Killmessages matches 1.. run execute as @a[tag=Crown] run execute if score @s Deathmessages matches 1 run tag @a[scores={Killmessages=1..}] add Crown
execute as @a[tag=Crown] run execute if score @s Deathmessages matches 1 run scoreboard players add @a[scores={Killmessages=1..}] Dethrones 1
execute as @a[tag=Crown] run execute if score @s Deathmessages matches 1 run tag @s remove Crown
scoreboard players set $Count Mode 0
execute as @a[tag=Crown] run scoreboard players set $Count Mode 1
execute if score $Count Mode matches 0 run tag @r[tag=player] add Crown
advancement grant @a[scores={Dethrones=20..}] only ascendance:ascendance/dethroner


#killstreak items
function ascendance:multiplayer/killstreak

execute as @a run execute if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run effect give @s jump_boost 15 4 true
execute as @a run execute if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run item replace entity @s armor.feet with air

#Flashbang
scoreboard players add @e[type=minecraft:snowball] Snowball 1
execute at @e[type=minecraft:snowball,scores={Snowball=7..}] run particle minecraft:flash ~ ~ ~ 2 2 2 0 100 force
execute at @e[tag=Snowball,scores={Snowball=7..}] run execute as @e[tag=Snowball,scores={Snowball=7..}] run effect give @a[distance=..7] minecraft:blindness 5 255
execute at @e[tag=Snowball] run execute as @e[tag=Snowball] run stopsound @a[distance=..7] player minecraft:block.anvil.use
execute at @e[tag=Snowball] run execute as @e[tag=Snowball] run playsound minecraft:block.anvil.use player @a[distance=..7]
execute at @e[tag=Snowball] run particle minecraft:explosion ~ ~ ~ 2 2 2 0 100 force
execute at @e[type=minecraft:snowball,scores={Snowball=1}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["Snowball"]}
scoreboard players add @e[tag=Snowball] Snowball 1
kill @e[tag=Snowball,scores={Snowball=100..}]
execute at @e[tag=Snowball] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace suspicious_sand
tp @e[tag=Snowball] @e[limit=1,sort=random,type=minecraft:snowball]


#lose stuff when you die
clear @a[scores={Deathmessages=1..}] crossbow
clear @a[scores={Deathmessages=1..}] leather_boots
clear @a[scores={Deathmessages=1..}] sugar
clear @a[scores={Deathmessages=1..}] snowball
clear @a[scores={Deathmessages=1..}] bamboo_hanging_sign
clear @a[scores={Deathmessages=1..}] tnt
clear @a[scores={Deathmessages=1..}] iron_axe
clear @a[scores={Deathmessages=1..}] baked_potato
clear @a[scores={Deathmessages=1..}] fire_charge
clear @a[scores={Deathmessages=1..}] egg
clear @a[scores={Deathmessages=1..}] lightning_rod
clear @a[scores={Deathmessages=1..}] bamboo_sign
clear @a[scores={Deathmessages=1..}] honey_bottle
clear @a[scores={Deathmessages=1..}] leather_helmet
clear @a[scores={Deathmessages=1..}] leather_leggings
clear @a[scores={Deathmessages=1..}] rabbit_stew
clear @a[scores={Deathmessages=1..}] glass_pane
clear @a[scores={Deathmessages=1..}] beef
clear @a[scores={Deathmessages=1..}] cooked_beef
clear @a[scores={Deathmessages=1..}] red_banner
clear @a[scores={Deathmessages=1..}] blue_banner



#Bonus xp + Dota anouncer
execute as @a run scoreboard players operation @s Multikill += @s Killmessages
execute as @a[scores={Deathmessages=1..}] run scoreboard players set D_Timer Multikill 60
execute if score D_Timer Multikill matches 0 run scoreboard players set @a Multikill 0
execute if score D_Timer Multikill matches 1.. run scoreboard players remove D_Timer Multikill 1
function ascendance:multiplayer/dota

#shank stuff
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] Shank 1
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}] Shank 0
attribute @r[scores={Shank=100..}] generic.attack_damage base set 1
attribute @r[scores={Shank=..99}] generic.attack_damage base set -8
scoreboard players set @a[scores={Killmessages=1..}] Shank 0

#track special kills and deaths
execute as @a[scores={Deathmessages=1..},tag=player] run tellraw @a ["",{"selector":"@s"}," <------ ",{"selector":"@r[scores={Killmessages=1..}]"}]
scoreboard players set @a[scores={Deathmessages=1..}] Killstreak 0
scoreboard players set @a[scores={Deathmessages=1..}] Dotakills 0
scoreboard players set @a Deathmessages 0
scoreboard players set @a Killmessages 0


#Give out advancements
advancement grant @a[scores={Total_Kills=1..}] only ascendance:ascendance/first_blood
advancement grant @a[scores={Total_Kills=250..}] only ascendance:milestones/killing_spree
advancement grant @a[scores={Total_Kills=500..}] only ascendance:milestones/mass_murder
advancement grant @a[scores={Total_Deaths=250..}] only ascendance:milestones/philip_moment
advancement grant @a[scores={Total_Deaths=500..}] only ascendance:milestones/osmar_moment
advancement grant @a[scores={Total_Deaths=1000..}] only ascendance:milestones/classic_even
execute if score $Map Mode matches 5 run advancement grant @a[tag=player,scores={Deaths=100..}] only ascendance:ascendance/death_club
execute if score $Map Mode matches 4 run advancement grant @a[tag=player,scores={Jumps=250..}] only ascendance:ascendance/there_is_no_up_here

execute as @a[tag=player] run execute store result score @s Num run clear @s sugar 0
advancement grant @a[tag=player,scores={Num=3..}] only ascendance:ascendance/crackhead


#Land Mines
scoreboard players add @e[type=armor_stand,tag=land_mine] Num 1
execute at @e[tag=land_mine,scores={Num=100..}] run tag @a[distance=..3] add Stepped_on_land_mine
execute at @a[tag=Stepped_on_land_mine] run tag @e[type=armor_stand,tag=land_mine,scores={Num=100..},distance=..4] add Stepped_on_land_mine
kill @e[tag=Stepped_on_land_mine]
execute at @a[tag=Stepped_on_land_mine] run playsound entity.generic.explode block @a[tag=Stepped_on_land_mine]
tag @a remove Stepped_on_land_mine


#One player check
execute as @a[tag=player] run scoreboard players add $Count Mode 1
execute if score $Count Mode matches 0..1 run function ascendance:multiplayer/ffa/end

#modifyers
execute if score U_Speed Unlocks matches 2 run effect give @a[tag=player] speed 10 1 true
execute if score U_Jump_boost Unlocks matches 2 run effect give @a[tag=player] jump_boost 10 1 true
execute if score U_Nausia Unlocks matches 2 run effect give @a[tag=player] nausea 10 255 true
execute if score U_Darkness Unlocks matches 2 run effect give @a[tag=player] darkness 10 1 true
execute if score U_Horse Unlocks matches 2 run attribute @r[tag=player] minecraft:generic.step_height base set 1
execute if score U_Blindness Unlocks matches 2 run effect give @a[tag=player] blindness 10 1 true
execute if score U_Slowness Unlocks matches 2 run effect give @a[tag=player] minecraft:slowness 10 1 true
execute if score U_Slowfall Unlocks matches 2 run effect give @a[tag=player] slow_falling 10 1 true
execute if score U_Glowing Unlocks matches 2 run effect give @a[tag=player] glowing 10 1 true
execute if score U_Invisability Unlocks matches 2 run effect give @a[tag=player] invisibility 10 1 true


#leap pearl code
execute as @e[type=egg,tag=!leap] at @e[type=egg,tag=!leap] run ride @p mount @s
tag @e[type=egg] add leap

#Curry
execute at @a[tag=Curry,limit=1,sort=random] run tp @e[tag=fire] ^ ^1 ^1.5
scoreboard players add @a[tag=Curry] Curry 1
tag @a[scores={Curry=400}] remove Curry
scoreboard players add @e[tag=fire] Curry 1
kill @e[tag=fire,scores={Curry=400}]
scoreboard players set @a[scores={Curry=400}] Curry 0
tp @e[tag=fire] @a[tag=curry,limit=1,sort=random]
execute at @e[tag=fire] run particle minecraft:flame ~ ~ ~ .2 .1 .2 0.02 7
execute at @e[tag=fire] run kill @a[distance=..1,tag=!Curry]
execute at @e[tag=fire] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace frosted_ice


#spontainious levitation
execute if score U_Levitation Unlocks matches 2 run execute as @a store result score @s Mode run random value 1..200
effect give @a[scores={Mode=7}] levitation 3 0 true


#spontainious combustion
execute if score U_Combustion Unlocks matches 2 run execute as @a store result score @s Mode run random value 1..200
kill @a[scores={Mode=7}]