particle minecraft:smoke ~ ~1 ~ .4 .4 .4 .01 1000 normal

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 100
scoreboard players set $z player_motion.api.launch 1000
scoreboard players set $strength player_motion.api.launch 15000

function player_motion:api/launch_looking

give @s sugar[custom_name=[{"text":"Dash","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:2}]
#give @s[tag=lightweight] sugar[custom_name=[{text:"Dash",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:10}]
#give @s[tag=elytra] sugar[custom_name=[{text:"Dash",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0,sound:"entity.armadillo.brush",has_consume_particles:0b},use_cooldown={seconds:10}]

#Acdancement
scoreboard players add @s GB_Dash_Check 1
advancement grant @s[scores={GB_Dash_Check=50}] only gorbino:speed