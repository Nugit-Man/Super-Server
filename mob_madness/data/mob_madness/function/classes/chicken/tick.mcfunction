scoreboard players remove @a[scores={MM_Chicken_Song=1..},tag=MM_Class_Chicken] MM_Chicken_Song 1
scoreboard players add @a[scores={MM_Chicken_Song_Bar=..299,MM_Chicken_Song_Bar_Cooldown=0},tag=MM_Class_Chicken] MM_Chicken_Song_Bar 3
scoreboard players set @a[scores={MM_Chicken_Song_Bar=301..},tag=MM_Class_Chicken] MM_Chicken_Song_Bar 300
scoreboard players remove @a[scores={MM_Chicken_Song_Bar_Cooldown=1..},tag=MM_Class_Chicken] MM_Chicken_Song_Bar_Cooldown 1
scoreboard players remove @a[scores={MM_Chicken_Main_Cooldown=1..},tag=MM_Class_Chicken] MM_Chicken_Main_Cooldown 1

execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken2
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken3
execute as @s[scores={MM_Chicken_Song=0},tag=MM_Class_Chicken] run stopsound @a master mob_madness.lava_chicken4
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a speed
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a strength
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a regeneration
execute as @s[scores={MM_Chicken_Song=1},tag=MM_Class_Chicken] run effect clear @a resistance


#Chicken Buffs




#Speed
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..}] run scoreboard players set @s MM_Chicken_Song_Bar_Cooldown 2
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..}] run scoreboard players remove @s MM_Chicken_Song_Bar 2


execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0,MM_Chicken_Song_Type=2}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken
execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier add mob_madness:chicken 0.030 add_value
execute as @a[tag=!MM_Class_Chicken,tag=MM_Red] unless entity @a[tag=MM_Red,distance=..5,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken

execute at @a[tag=MM_Blue,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0,MM_Chicken_Song_Type=2}] as @a[tag=MM_Blue,distance=..5] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken
execute at @a[tag=MM_Blue,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] as @a[tag=MM_Blue,distance=..5] run attribute @s minecraft:movement_speed modifier add mob_madness:chicken 0.030 add_value
execute as @a[tag=!MM_Class_Chicken,tag=MM_Blue] unless entity @a[tag=MM_Blue,distance=..5,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken


tag @a[tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0}] remove MM_Chicken_Song_Speed










#hotbar
item replace entity @s[scores={MM_Chicken_Song_Bar=0..9}] hotbar.4 with coal[custom_model_data={strings:[bar300]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=10..19}] hotbar.4 with coal[custom_model_data={strings:[bar301]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=20..29}] hotbar.4 with coal[custom_model_data={strings:[bar302]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=30..39}] hotbar.4 with coal[custom_model_data={strings:[bar303]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=40..49}] hotbar.4 with coal[custom_model_data={strings:[bar304]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=50..59}] hotbar.4 with coal[custom_model_data={strings:[bar305]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=60..69}] hotbar.4 with coal[custom_model_data={strings:[bar306]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=70..79}] hotbar.4 with coal[custom_model_data={strings:[bar307]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=80..89}] hotbar.4 with coal[custom_model_data={strings:[bar308]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=90..99}] hotbar.4 with coal[custom_model_data={strings:[bar309]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=100..109}] hotbar.4 with coal[custom_model_data={strings:[bar310]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=110..119}] hotbar.4 with coal[custom_model_data={strings:[bar311]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=120..129}] hotbar.4 with coal[custom_model_data={strings:[bar312]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=130..139}] hotbar.4 with coal[custom_model_data={strings:[bar313]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=140..149}] hotbar.4 with coal[custom_model_data={strings:[bar314]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=150..159}] hotbar.4 with coal[custom_model_data={strings:[bar315]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=160..169}] hotbar.4 with coal[custom_model_data={strings:[bar316]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=170..179}] hotbar.4 with coal[custom_model_data={strings:[bar317]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=180..189}] hotbar.4 with coal[custom_model_data={strings:[bar318]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=190..199}] hotbar.4 with coal[custom_model_data={strings:[bar319]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=200..209}] hotbar.4 with coal[custom_model_data={strings:[bar320]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=210..219}] hotbar.4 with coal[custom_model_data={strings:[bar321]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=220..229}] hotbar.4 with coal[custom_model_data={strings:[bar322]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=230..239}] hotbar.4 with coal[custom_model_data={strings:[bar323]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=240..249}] hotbar.4 with coal[custom_model_data={strings:[bar324]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=250..259}] hotbar.4 with coal[custom_model_data={strings:[bar325]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=260..269}] hotbar.4 with coal[custom_model_data={strings:[bar326]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=270..279}] hotbar.4 with coal[custom_model_data={strings:[bar327]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=280..289}] hotbar.4 with coal[custom_model_data={strings:[bar328]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=290..299}] hotbar.4 with coal[custom_model_data={strings:[bar329]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=300}] hotbar.4 with coal[custom_model_data={strings:[bar330]}]