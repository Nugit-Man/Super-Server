execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s cake 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/cake
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s golden_apple 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/golden_apple
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s blaze_powder 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/blazes
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s ochre_froglight 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/froglight
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s turtle_helmet 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/turtel_shell
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s bamboo 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/bamboo
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s wither_rose 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/wither_roses
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s prismarine_shard 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/monument
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s bundle 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/bundle
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s iron_block 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/iron_block
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s mangrove_propagule 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/mangrove_sappling
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s end_crystal 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/end_crystal
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s respawn_anchor 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/anchor
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s trident 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/trident
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s powered_rail 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/powered_rail
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute at @e[type=pig] run advancement grant @a[distance=..15,scores={MAIN_Game=5}] only super_server:skyblock/pigs
execute at @e[type=villager] run advancement grant @a[distance=..15,scores={MAIN_Game=5}] only super_server:skyblock/villager
advancement grant @a[nbt={Dimension:"minecraft:the_nether"}] only super_server:skyblock/nether

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s diamond_helmet 0
tag @a[scores={MAIN_Game=5,SKY_Advancement=1..}] add SKY_Diamond_Helmet
execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s diamond_chestplate 0
tag @a[scores={MAIN_Game=5,SKY_Advancement=1..}] add SKY_Diamond_Chestplate
execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s diamond_leggings 0
tag @a[scores={MAIN_Game=5,SKY_Advancement=1..}] add SKY_Diamond_Leggings
execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s diamond_boots 0
tag @a[scores={MAIN_Game=5,SKY_Advancement=1..}] add SKY_Diamond_Boots
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0
scoreboard players add @a[scores={MAIN_Game=5},tag=SKY_Diamond_Boots] SKY_Advancement 1
scoreboard players add @a[scores={MAIN_Game=5},tag=SKY_Diamond_Helmet] SKY_Advancement 1
scoreboard players add @a[scores={MAIN_Game=5},tag=SKY_Diamond_Chestplate] SKY_Advancement 1
scoreboard players add @a[scores={MAIN_Game=5},tag=SKY_Diamond_Leggings] SKY_Advancement 1

advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=4}] only super_server:skyblock/diamond_armor
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

tag @a remove SKY_Diamond_Boots
tag @a remove SKY_Diamond_Leggings
tag @a remove SKY_Diamond_Chestplate
tag @a remove SKY_Diamond_Helmet



execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s dead_brain_coral_fan 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/coral
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s dead_bubble_coral_fan 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/coral
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s dead_fire_coral_fan 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/coral
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s dead_horn_coral_fan 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/coral
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0

execute as @a[scores={MAIN_Game=5}] run execute store result score @s SKY_Advancement run clear @s dead_tube_coral_fan 0
advancement grant @a[scores={MAIN_Game=5,SKY_Advancement=1..}] only super_server:skyblock/coral
scoreboard players set @a[scores={MAIN_Game=5}] SKY_Advancement 0