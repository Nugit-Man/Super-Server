#execute if score $Game Mode matches 1 run function ascendance:lobby/tick
#execute if score $Game Mode matches 2 run function ascendance:multiplayer/tick
#function ascendance:lobby/forcelobby
#kill @e[type=chest_boat]
#kill @e[type=boat]
effect give @a[scores={MAIN_Game=1}] saturation infinite 0 true
kill @a


##Barrels
#item replace block 13 21 16 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 4 22 51 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 39 37 36 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 61 22 60 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 24 31 71 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 1020 0 49 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 3040 20 51 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 2063 25 50 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 4108 -3 99 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 5022 5 17 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]



#item replace block 39 14 35 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 11019 2 87 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 12011 14 42 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 8012 15 27 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 8072 15 50 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 6001 13 1 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7103 40 34 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7089 28 35 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7074 28 0 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 6986 52 74 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7066 56 110 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7046 29 108 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]
#item replace block 7139 17 92 container.13 with minecraft:bamboo_chest_raft[custom_name='["",{"text":"A Secret","italic":false}]',lore=['["",{"text":"What Could","italic":false}]','["",{"text":"This Be?","italic":false}]']]



#execute as @a run execute store result score @s Num run clear @s bamboo_chest_raft
#execute at @e[tag=Hidden_Barrel] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/the_secret_barrel
#execute at @e[tag=Hidden_Barrel_A] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_a
#execute at @e[tag=Hidden_Barrel_B] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_b
#execute at @e[tag=Hidden_Barrel_C] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_c
#execute at @e[tag=Hidden_Barrel_D] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_d
#execute at @e[tag=Hidden_Barrel_Desert_Tomb] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_desert_tomb
#execute at @e[tag=Hidden_Barrel_Tabletop] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_tabletop
#execute at @e[tag=Hidden_Barrel_Brutalism] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_brutalism
#execute at @e[tag=Hidden_Barrel_Colosium] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_colosseum
#execute at @e[tag=Hidden_Barrel_The_Club] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_berrel_the_club



#execute at @e[tag=Hidden_Barrel_E] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_e
#execute at @e[tag=Hidden_Barrel_Ice_Spikes] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_ice_spikes
#execute at @e[tag=Hidden_Barrel_Jungle_Pikes] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_jungle_pikes
#execute at @e[tag=Hidden_Barrel_Cave_A] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_cave_a
#execute at @e[tag=Hidden_Barrel_Cave_B] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_cave_b
#execute at @e[tag=Hidden_Barrel_Shipment] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_shipment
#execute at @e[tag=Hidden_Barrel_Final_Island_A] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_a
#execute at @e[tag=Hidden_Barrel_Final_Island_B] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_b
#execute at @e[tag=Hidden_Barrel_Final_Island_C] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_c
#execute at @e[tag=Hidden_Barrel_Final_Island_D] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_d
#execute at @e[tag=Hidden_Barrel_Final_Island_E] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_e
#execute at @e[tag=Hidden_Barrel_Final_Island_F] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_f
#execute at @e[tag=Hidden_Barrel_Final_Island_G] run advancement grant @a[distance=..10,scores={Num=1}] only ascendance:berrel/secret_barrel_final_island_g



##tnt killstreak failsafe
#scoreboard players add @e[type=tnt] Num 1
#execute at @e[type=tnt,scores={Num=399..}] run particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 50 10 force
#execute as @e[type=tnt,scores={Num=399..}] run playsound minecraft:entity.generic.explode block @a ~ ~ ~
#execute at @e[type=tnt,scores={Num=399..}] run kill @a[distance=..5]
#kill @e[type=tnt,scores={Num=399..}]



##Star
#execute as @a[tag=star,scores={Star=20}] run attribute @s generic.armor base set 20
#execute as @a[tag=star,scores={Star=19}] run attribute @s generic.armor base set 19
#execute as @a[tag=star,scores={Star=18}] run attribute @s generic.armor base set 18
#execute as @a[tag=star,scores={Star=17}] run attribute @s generic.armor base set 17
#execute as @a[tag=star,scores={Star=16}] run attribute @s generic.armor base set 16
#execute as @a[tag=star,scores={Star=15}] run attribute @s generic.armor base set 15
#execute as @a[tag=star,scores={Star=14}] run attribute @s generic.armor base set 14
#execute as @a[tag=star,scores={Star=13}] run attribute @s generic.armor base set 13
#execute as @a[tag=star,scores={Star=12}] run attribute @s generic.armor base set 12
#execute as @a[tag=star,scores={Star=11}] run attribute @s generic.armor base set 11
#execute as @a[tag=star,scores={Star=10}] run attribute @s generic.armor base set 10
#execute as @a[tag=star,scores={Star=9}] run attribute @s generic.armor base set 9
#execute as @a[tag=star,scores={Star=8}] run attribute @s generic.armor base set 8
#execute as @a[tag=star,scores={Star=7}] run attribute @s generic.armor base set 7
#execute as @a[tag=star,scores={Star=6}] run attribute @s generic.armor base set 6
#execute as @a[tag=star,scores={Star=5}] run attribute @s generic.armor base set 5
#execute as @a[tag=star,scores={Star=4}] run attribute @s generic.armor base set 4
#execute as @a[tag=star,scores={Star=3}] run attribute @s generic.armor base set 3
#execute as @a[tag=star,scores={Star=2}] run attribute @s generic.armor base set 2
#execute as @a[tag=star,scores={Star=1}] run attribute @s generic.armor base set 1
#execute as @a[tag=star,scores={Star=0}] run attribute @s generic.armor base set 0
#execute as @a[tag=star,scores={Star=0}] run tag @s remove immune
#execute as @a[tag=star,scores={Star=0}] run tag @s remove star
#scoreboard players remove @a[tag=star] Star 1
