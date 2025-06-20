clear @a[scores={Mode=-1},tag=!busy]
spawnpoint @a 38 25 37
attribute @r generic.attack_damage base set -8
attribute @r generic.attack_speed base set 3.3
attribute @r generic.step_height base set 0.6
gamerule fallDamage false
tp @a[tag=player] 38 25 37
tag @a remove player


tag @a[tag=busy] add select
execute if score $Menu Mode matches 0 run function ascendance:lobby/menu/menu0
execute if score $Menu Mode matches 1 run function ascendance:lobby/menu/menu1
execute if score $Menu Mode matches 2 run function ascendance:lobby/menu/menu2
execute if score $Menu Mode matches 3 run function ascendance:lobby/menu/menu3
execute if score $Menu Mode matches 4 run function ascendance:lobby/menu/menu4
execute if score $Menu Mode matches 5 run function ascendance:lobby/menu/menu5
execute if score $Menu Mode matches 6 run function ascendance:lobby/menu/menu6
execute if score $Menu Mode matches 7 run function ascendance:lobby/menu/menu7
execute if score $Menu Mode matches 8 run function ascendance:lobby/menu/menu8
execute if score $Menu Mode matches 9 run function ascendance:lobby/menu/menu9
execute if score $Menu Mode matches 10 run function ascendance:lobby/menu/menu10
execute if score $Menu Mode matches 11 run function ascendance:lobby/menu/menu11
execute if score $Menu Mode matches 12 run function ascendance:lobby/menu/menu12
execute if score $Menu Mode matches 13 run function ascendance:lobby/menu/menu13

function ascendance:lobby/hotbar
data modify entity @e[type=item,limit=1,sort=random] PickupDelay set value 0


kill @a[nbt={HurtTime:9s, Dimension:"minecraft:overworld"},tag=!immune]

#unlock stuff
execute as @a[tag=Advancement-secret_barrel_a] if score U_Dota Unlocks matches 0 run scoreboard players set U_Dota Unlocks 1
execute as @a[tag=Advancement-speed_deamon] if score U_Speed Unlocks matches 0 run scoreboard players set U_Speed Unlocks 1
execute as @a[tag=Advancement-sequence_break] if score U_Jump_boost Unlocks matches 0 run scoreboard players set U_Jump_boost Unlocks 1
execute as @a[tag=Advancement-secret_barrel_brutalism] if score U_Shield Unlocks matches 0 run scoreboard players set U_Shield Unlocks 1
execute as @a[tag=Advancement-chicken_dinner] if score U_Chaos Unlocks matches 0 run scoreboard players set U_Chaos Unlocks 1
execute as @a[tag=Advancement-secret_barrel_The_Club] if score U_Nausia Unlocks matches 0 run scoreboard players set U_Nausia Unlocks 1
execute as @a[tag=Advancement-secret_barrel_d] if score U_Darkness Unlocks matches 0 run scoreboard players set U_Darkness Unlocks 1
execute as @a[tag=Advancement-where_are_you_going] if score U_Fall Unlocks matches 0 run scoreboard players set U_Fall Unlocks 1
execute as @a[tag=Advancement-there_is_no_up_here] if score U_Horse Unlocks matches 0 run scoreboard players set U_Horse Unlocks 1
execute as @a[tag=Advancement-dethroner] if score U_Shipment Unlocks matches 0 run scoreboard players set U_Shipment Unlocks 1


execute as @a[tag=Advancement-nice_shot_mate] if score U_Ammo Unlocks matches 0 run scoreboard players set U_Ammo Unlocks 1
execute as @a[tag=Advancement-secret_barrel_the_cave_b] if score U_Blindness Unlocks matches 0 run scoreboard players set U_Blindness Unlocks 1
execute as @a[tag=Advancement-secret_barrel_final_island_c] if score U_Levitation Unlocks matches 0 run scoreboard players set U_Levitation Unlocks 1
execute as @a[tag=Advancement-does_this_count] if score U_Combustion Unlocks matches 0 run scoreboard players set U_Combustion Unlocks 1
execute as @a[tag=Advancement-wheres_my_team] if score U_Team_Attack Unlocks matches 0 run scoreboard players set U_Team_Attack Unlocks 1
execute as @a[tag=Advancement-not_bad_right] if score U_Glowing Unlocks matches 0 run scoreboard players set U_Glowing Unlocks 1
execute as @a[tag=Advancement-secret_barrel_final_island_d] if score U_Invisability Unlocks matches 0 run scoreboard players set U_Invisability Unlocks 1
execute as @a[tag=Advancement-secret_barrel_ice_spikes] if score U_Slowness Unlocks matches 0 run scoreboard players set U_Slowness Unlocks 1
execute as @a[tag=Advancement-secret_barrel_shipment] if score U_Slowfall Unlocks matches 0 run scoreboard players set U_Slowfall Unlocks 1
execute as @a[tag=Advancement-secret_barrel_the_cave_a] if score U_Mayhem Unlocks matches 0 run scoreboard players set U_Mayhem Unlocks 1

execute as @a[tag=Advancement-good_job] if score U_Cube Unlocks matches 0 run scoreboard players set U_Cube Unlocks 1
execute as @a[tag=Advancement-secret_barrel_e] if score U_Final_Island Unlocks matches 0 run scoreboard players set U_Final_Island Unlocks 1
execute as @a[tag=Advancement-dude_stop] if score U_The_Caves Unlocks matches 0 run scoreboard players set U_The_Caves Unlocks 1
execute as @a[tag=Advancement-crazy_fast] if score U_Ice_Spikes Unlocks matches 0 run scoreboard players set U_Ice_Spikes Unlocks 1
execute as @a[tag=Advancement-bro] if score U_Jungle_Pikes Unlocks matches 0 run scoreboard players set U_Jungle_Pikes Unlocks 1

execute as @a[tag=Advancement-inch_by_inch] if score U_Tf2 Unlocks matches 0 run scoreboard players set U_TF2 Unlocks 1
execute as @a[tag=Advancement-did_i_win] if score U_Lives Unlocks matches 0 run scoreboard players set U_Lives Unlocks 1


#advancements
advancement grant @a[scores={Rock_Deaths=5}] only ascendance:ascendance/rock_bottom


