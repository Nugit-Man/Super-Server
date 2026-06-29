scoreboard players remove @a[scores={MM_Chicken_Song=1..},tag=MM_Class_Chicken] MM_Chicken_Song 1
scoreboard players add @a[scores={MM_Chicken_Song_Bar=..599,MM_Chicken_Song_Bar_Cooldown=0},tag=MM_Class_Chicken] MM_Chicken_Song_Bar 5
scoreboard players set @a[scores={MM_Chicken_Song_Bar=601..},tag=MM_Class_Chicken] MM_Chicken_Song_Bar 600
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
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..}] run scoreboard players set @s MM_Chicken_Song_Bar_Cooldown 2

#heal
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..,MM_Chicken_Song_Type=3}] run scoreboard players remove @s MM_Chicken_Song_Bar 1

#Speed
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] run scoreboard players remove @s MM_Chicken_Song_Bar 2

execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0,MM_Chicken_Song_Type=2}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken
execute at @a[tag=MM_Red,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] as @a[tag=MM_Red,distance=..5] run attribute @s minecraft:movement_speed modifier add mob_madness:chicken 0.045 add_value
execute as @a[tag=!MM_Class_Chicken,tag=MM_Red] unless entity @a[tag=MM_Red,distance=..5,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken

execute at @a[tag=MM_Blue,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0,MM_Chicken_Song_Type=2}] as @a[tag=MM_Blue,distance=..5] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken
execute at @a[tag=MM_Blue,tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] as @a[tag=MM_Blue,distance=..5] run attribute @s minecraft:movement_speed modifier add mob_madness:chicken 0.045 add_value
execute as @a[tag=!MM_Class_Chicken,tag=MM_Blue] unless entity @a[tag=MM_Blue,distance=..5,scores={MM_Chicken_Song=1..,MM_Chicken_Song_Type=2}] run attribute @s minecraft:movement_speed modifier remove mob_madness:chicken


tag @a[tag=MM_Class_Chicken,tag=MM_Chicken_Song_Speed,scores={MM_Chicken_Song=0}] remove MM_Chicken_Song_Speed




#Defense
execute as @s[scores={MM_Chicken_Song=2,MM_Chicken_Song=1..,MM_Chicken_Song_Type=1}] run scoreboard players remove @s MM_Chicken_Song_Bar 4





#hotbar
item replace entity @s[scores={MM_Chicken_Song_Bar=0..19}] hotbar.4 with coal[custom_model_data={strings:[bar300]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=20..39}] hotbar.4 with coal[custom_model_data={strings:[bar301]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=40..59}] hotbar.4 with coal[custom_model_data={strings:[bar302]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=60..79}] hotbar.4 with coal[custom_model_data={strings:[bar303]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=80..99}] hotbar.4 with coal[custom_model_data={strings:[bar304]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=100..119}] hotbar.4 with coal[custom_model_data={strings:[bar305]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=120..139}] hotbar.4 with coal[custom_model_data={strings:[bar306]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=140..159}] hotbar.4 with coal[custom_model_data={strings:[bar307]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=160..179}] hotbar.4 with coal[custom_model_data={strings:[bar308]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=180..199}] hotbar.4 with coal[custom_model_data={strings:[bar309]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=200..219}] hotbar.4 with coal[custom_model_data={strings:[bar310]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=220..239}] hotbar.4 with coal[custom_model_data={strings:[bar311]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=240..259}] hotbar.4 with coal[custom_model_data={strings:[bar312]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=260..279}] hotbar.4 with coal[custom_model_data={strings:[bar313]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=280..299}] hotbar.4 with coal[custom_model_data={strings:[bar314]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=300..319}] hotbar.4 with coal[custom_model_data={strings:[bar315]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=320..339}] hotbar.4 with coal[custom_model_data={strings:[bar316]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=340..359}] hotbar.4 with coal[custom_model_data={strings:[bar317]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=360..379}] hotbar.4 with coal[custom_model_data={strings:[bar318]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=380..399}] hotbar.4 with coal[custom_model_data={strings:[bar319]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=400..419}] hotbar.4 with coal[custom_model_data={strings:[bar320]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=420..439}] hotbar.4 with coal[custom_model_data={strings:[bar321]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=440..459}] hotbar.4 with coal[custom_model_data={strings:[bar322]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=460..479}] hotbar.4 with coal[custom_model_data={strings:[bar323]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=480..499}] hotbar.4 with coal[custom_model_data={strings:[bar324]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=500..519}] hotbar.4 with coal[custom_model_data={strings:[bar325]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=520..539}] hotbar.4 with coal[custom_model_data={strings:[bar326]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=540..559}] hotbar.4 with coal[custom_model_data={strings:[bar327]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=560..579}] hotbar.4 with coal[custom_model_data={strings:[bar328]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=580..599}] hotbar.4 with coal[custom_model_data={strings:[bar329]}]
item replace entity @s[scores={MM_Chicken_Song_Bar=600}] hotbar.4 with coal[custom_model_data={strings:[bar330]}]

item replace entity @s hotbar.7 with coal[custom_model_data={strings:[chicken]}]

item replace entity @s[scores={MM_Chicken_Heal=0}] hotbar.8 with coal[custom_model_data={strings:[count00]}]
item replace entity @s[scores={MM_Chicken_Heal=1..10}] hotbar.8 with coal[custom_model_data={strings:[count01]}]
item replace entity @s[scores={MM_Chicken_Heal=11..20}] hotbar.8 with coal[custom_model_data={strings:[count02]}]
item replace entity @s[scores={MM_Chicken_Heal=21..30}] hotbar.8 with coal[custom_model_data={strings:[count03]}]
item replace entity @s[scores={MM_Chicken_Heal=31..40}] hotbar.8 with coal[custom_model_data={strings:[count04]}]
item replace entity @s[scores={MM_Chicken_Heal=41..50}] hotbar.8 with coal[custom_model_data={strings:[count05]}]
item replace entity @s[scores={MM_Chicken_Heal=51..60}] hotbar.8 with coal[custom_model_data={strings:[count06]}]
item replace entity @s[scores={MM_Chicken_Heal=61..70}] hotbar.8 with coal[custom_model_data={strings:[count07]}]
item replace entity @s[scores={MM_Chicken_Heal=71..80}] hotbar.8 with coal[custom_model_data={strings:[count08]}]
item replace entity @s[scores={MM_Chicken_Heal=81..90}] hotbar.8 with coal[custom_model_data={strings:[count09]}]
item replace entity @s[scores={MM_Chicken_Heal=91..}] hotbar.8 with coal[custom_model_data={strings:[count10]}]



#song particles
execute if score MAIN_2t MAIN_Time matches 1 store result score @s MM_Misc run random value 1..8
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=1,MM_Chicken_Song=1..}] run particle note ~ ~1.6 ~5 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=2,MM_Chicken_Song=1..}] run particle note ~5 ~1.6 ~ 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=3,MM_Chicken_Song=1..}] run particle note ~ ~1.6 ~-5 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=4,MM_Chicken_Song=1..}] run particle note ~-5 ~1.6 ~ 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=5,MM_Chicken_Song=1..}] run particle note ~4.5 ~1.6 ~4.5 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=6,MM_Chicken_Song=1..}] run particle note ~-4.5 ~1.6 ~4.5 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=7,MM_Chicken_Song=1..}] run particle note ~-4.5 ~1.6 ~-4.5 0.2 0.2 0.2 1 10 normal
execute if score MAIN_2t MAIN_Time matches 1 run execute at @s[scores={MM_Misc=8,MM_Chicken_Song=1..}] run particle note ~4.5 ~1.6 ~-4.5 0.2 0.2 0.2 1 10 normal