scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 1200
scoreboard players set $strength player_motion.api.launch 18000

function player_motion:api/launch_looking

scoreboard players remove @s MM_Test_Dash 100
scoreboard players set @s MM_Test_Dash2 30


scoreboard players add @s MM_Test_Dash4 150