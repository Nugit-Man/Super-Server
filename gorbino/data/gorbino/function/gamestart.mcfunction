scoreboard players set @a[scores={GB_Mode=2,MAIN_Game=3}] GB_Mode 1
execute store result score GB_Map GB_Select run random value 0..19
scoreboard players set 2 GB_Select 0

#move border
execute in gorbino:game run execute if score GB_Map GB_Select matches 0 run worldborder center 0.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 1 run worldborder center 1000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 2 run worldborder center 2000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 3 run worldborder center 3000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 4 run worldborder center 4000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 5 run worldborder center 5000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 6 run worldborder center 6000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 7 run worldborder center 7000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 8 run worldborder center 8000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 9 run worldborder center 9000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 10 run worldborder center 10000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 11 run worldborder center 11000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 12 run worldborder center 12000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 13 run worldborder center 13000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 14 run worldborder center 14000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 15 run worldborder center 15000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 16 run worldborder center 16000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 17 run worldborder center 17000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 18 run worldborder center 18000.5 0.5
execute in gorbino:game run execute if score GB_Map GB_Select matches 19 run worldborder center 19000.5 0.5

#teleport players
execute in gorbino:game run execute if score GB_Map GB_Select matches 0 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 0 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 1 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 1000 6 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 2 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 2000 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 3 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 3000 9 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 4 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 4000 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 5 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 5000 2 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 6 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 6000 2 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 7 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 7000 5 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 8 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 8000 4 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 9 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 9000 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 10 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 10000 5 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 11 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 11000 4 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 12 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 12000 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 13 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 13000 5 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 14 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 14000 4 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 15 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 15000 1 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 16 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 16000 3 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 17 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 17000 5 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 18 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 18000 9 0
execute in gorbino:game run execute if score GB_Map GB_Select matches 19 run tp @a[scores={GB_Mode=1..,MAIN_Game=3}] 19000 1 0

#more border
execute in gorbino:game run worldborder set 100
execute in gorbino:game run worldborder set 33 180
schedule clear gorbino:border/sudden_death
schedule clear gorbino:border/border2
schedule function gorbino:border/border2 180s

#clear everything
#MOVE ARROW TO CLEANUP!!!!!!!!!!!!!!!!
#
#
#
#
#
#
#
#
#
#
#
#
execute at @a[scores={MAIN_Game=3}] run kill @e[type=arrow,distance=..50]
kill @e[type=arrow]
#kill @e[type=ravager]
#kill @e[type=frog]
effect clear @a[scores={MAIN_Game=3}]
effect give @a[scores={MAIN_Game=3}] instant_health 1 255
effect give @a[scores={MAIN_Game=3}] saturation 3 255
effect give @a[scores={MAIN_Game=3}] resistance 3 255
effect give @a[scores={MAIN_Game=3}] regeneration 3 7
clear @a[scores={GB_Mode=1,MAIN_Game=3}]
scoreboard players set @a[scores={GB_Mode=1,MAIN_Game=3}] GB_velocity 0
tag @a remove GB_cancerkill
#kill @e[tag=GB_spinner]
#kill @e[tag=GB_Spin1]
#kill @e[tag=GB_Spin2]
schedule clear gorbino:abilities/cancer2
schedule function gorbino:border/clear 3s
scoreboard players set @a GB_Shotgun 0
scoreboard players set @a GB_Dash_Check 0


item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_simple_armor] armor.chest with minecraft:leather_chestplate[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_simple_armor] armor.legs with minecraft:leather_leggings[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_simple_armor] armor.feet with minecraft:leather_boots[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
#item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_sneak] armor.legs with minecraft:leather_leggings[unbreakable={show_in_tooltip:false},enchantments={swift_sneak:3}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_chain_armor] armor.chest with minecraft:chainmail_chestplate[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_chain_armor] armor.legs with minecraft:chainmail_leggings[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_chain_armor] armor.feet with minecraft:chainmail_boots[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
#item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_sneak] armor.legs with minecraft:chainmail_leggings[unbreakable={show_in_tooltip:false},enchantments={swift_sneak:3}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_heavy_armor] armor.chest with minecraft:iron_chestplate[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_heavy_armor] armor.legs with minecraft:iron_leggings[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_heavy_armor] armor.feet with minecraft:iron_boots[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
#execute as @a[tag=GB_heavy_armor] run item replace entity @s[scores={GB_Mode=1,MAIN_Game=3},tag=GB_sneak] armor.legs with minecraft:iron_leggings[unbreakable={show_in_tooltip:false},enchantments={swift_sneak:3}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_knight] iron_sword[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_lumberjack] iron_axe[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_archer] bow[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_archer] arrow 8
scoreboard players set @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_archer] GB_Arrow 0
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_knight] weapon.offhand with minecraft:shield[unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_knockback] stick[custom_name=[{text:"Knockback Stick",italic: false}],enchantments={knockback:3}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_dash] sugar[custom_name=[{text:"Dash",italic:false,color:"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:2}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_burst_charm] nether_star[custom_name=[{"text":"Burst Charm","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:1,animation:brush,sound:"block.amethyst_block.resonate",has_consume_particles:0b},use_cooldown={seconds:10}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_freeze_bolt] breeze_rod[custom_name=[{"text":"Freeze Bolt","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.2,animation:spear,sound:"entity.player.hurt_freeze",has_consume_particles:0b},use_cooldown={seconds:7.5}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_builder] minecraft:oak_planks[custom_name=[{text:"Builder",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0.5,animation:block,sound:"entity.horse.step_wood",has_consume_particles:0b},use_cooldown={seconds:7.5}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_fireball] fire_charge[custom_name=[{"text":"Fireball","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.2,animation:spear,sound:"entity.ghast.shoot",has_consume_particles:0b},use_cooldown={seconds:5}]
#give @a[tag=GB_frog,scores={GB_Mode=1,MAIN_Game=3}] minecraft:ochre_froglight[custom_name=[{text:"Frog",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.frog.ambient",has_consume_particles:0b},use_cooldown={seconds:10}]
give @a[tag=GB_dripstone,scores={GB_Mode=1,MAIN_Game=3}] dripstone_block[custom_name=[{"text":"Dripstone","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.2,animation:spear,sound:"block.pointed_dripstone.place",has_consume_particles:0b},use_cooldown={seconds:6}]
give @a[tag=GB_ground_slam,scores={GB_Mode=1,MAIN_Game=3}] dirt[custom_name=[{"text":"Ground Slam","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,animation:spear,sound:"entity.generic.explode",has_consume_particles:0b},use_cooldown={seconds:5}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_mace_master] mace[unbreakable={show_in_tooltip:false}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_wind_waker] wind_charge 64
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_cancer] prismarine_crystals[custom_name=[{"text":"Cancer","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,animation:block,sound:"entity.generic.extinguish_fire",has_consume_particles:0b}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_lava] magma_block[custom_name=[{"text":"Lava","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.75,animation:block,sound:"entity.generic.burn",has_consume_particles:0b},use_cooldown={seconds:10}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_chad] minecraft:diamond[custom_name=[{text:"Chad",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:10,animation:block,sound:"entity.experience_orb.pickup",has_consume_particles:0b},use_cooldown={seconds:24}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_lightning_bolt] minecraft:lightning_rod[custom_name=[{text:"Lightning Bolt",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:.2,animation:spyglass,sound:"entity.lightning_bolt.thunder",has_consume_particles:0b},use_cooldown={seconds:6}]
item replace entity @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_elytra] armor.head with end_rod[glider={},equippable={slot:head}]
#effect give @a[tag=GB_lightweight,scores={GB_Mode=1,MAIN_Game=3}] slow_falling infinite 0 true
#effect give @a[tag=GB_lightweight,scores={GB_Mode=1,MAIN_Game=3}] jump_boost infinite 2 true
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_leap_pearl] snowball 16
#execute as @a[tag=GB_spin] run summon marker ~ ~ ~ {Tags:[GB_spinner]}
#execute as @a[tag=GB_spin] run summon marker ~ ~ ~ {Tags:[GB_Spin1]}
#execute as @a[tag=GB_spin] run summon marker ~ ~ ~ {Tags:[GB_Spin2]}
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_bomber] minecraft:tnt[custom_name=[{text:"Bomber",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,animation:block,sound:"entity.generic.explode",has_consume_particles:0b},use_cooldown={seconds:10}]
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run attribute @s scale base set 3
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run attribute @s jump_strength base set 1
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run attribute @s entity_interaction_range base set 10
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run attribute @s minecraft:max_health base set 40
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run attribute @s minecraft:step_height base set 1
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shrink] run attribute @s scale base set 0.6
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shrink] run attribute @s jump_strength base set 0.4
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shrink] run attribute @s entity_interaction_range base set 2
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shrink] run attribute @s minecraft:max_health base set 14
effect give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shrink] speed infinite 4 true
execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_grow] run advancement grant @s[tag=GB_shrink] only gorbino:size
#shotgun and super shotgun code need fixing
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_shotgun] crossbow[charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}}}],unbreakable={},tooltip_display={hide_tooltip:true}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_heal] red_dye[food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:3,animation:brush,sound:"block.beacon.activate",has_consume_particles:0b},use_cooldown={seconds:30}]
#execute as @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_super_shotgun] run attribute @s max_health base set 2
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_super_shotgun] crossbow[custom_name=[{text: "Shotgun","bold": true,italic:false,"color":"red"}],enchantments={levels:{"minecraft:multishot":1}},unbreakable={show_in_tooltip:false}] 1
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_super_shotgun] firework_rocket[fireworks={flight_duration:1,explosions:[ ... truncated for brevity ... ]}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_invis] glass_pane[custom_name=[{"text":"InvisIbility","italic":false}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,sound:"entity.enderman.teleport",has_consume_particles:0b},use_cooldown={seconds:25}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_laser] minecraft:honey_bottle[custom_name=[{text:"Super Laser Piss",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"block.beacon.activate",has_consume_particles:0b},use_cooldown={seconds:12}]
#give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_crack] minecraft:ghast_tear[custom_name=[{text:"Cocaine",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.generic.eat",has_consume_particles:0b},use_cooldown={seconds:17}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_curry] bowl[custom_name=[{"text":"Curry","italic":false}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,sound:"entity.generic.eat",has_consume_particles:0b},use_cooldown={seconds:0.2}]
give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_star] gold_nugget[custom_model_data={strings:['GB_Star']},custom_name=[{"text":"Star","italic":false}],food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:0.05,has_consume_particles:0b},use_cooldown={seconds:60}]