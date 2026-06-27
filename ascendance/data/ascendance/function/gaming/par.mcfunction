execute as @s[scores={AS_Map=1},tag=!AS_Par_DesertTomb] if score $Time_sec AS_Map_DesertTomb matches ..44 if score $Time_min AS_Map_DesertTomb matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=1},tag=!AS_Par_DesertTomb] if score $Time_sec AS_Map_DesertTomb matches ..44 if score $Time_min AS_Map_DesertTomb matches 0 run tag @s add AS_Par_DesertTomb

execute as @s[scores={AS_Map=2},tag=!AS_Par_Tabletop] if score $Time_sec AS_Map_Tabletop matches ..39 if score $Time_min AS_Map_Tabletop matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=2},tag=!AS_Par_Tabletop] if score $Time_sec AS_Map_Tabletop matches ..39 if score $Time_min AS_Map_Tabletop matches 0 run tag @s add AS_Par_Tabletop

execute as @s[scores={AS_Map=3},tag=!AS_Par_Brutalism] if score $Time_sec AS_Map_Brutalism matches ..54 if score $Time_min AS_Map_Brutalism matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=3},tag=!AS_Par_Brutalism] if score $Time_sec AS_Map_Brutalism matches ..54 if score $Time_min AS_Map_Brutalism matches 0 run tag @s add AS_Par_Brutalism

execute as @s[scores={AS_Map=4},tag=!AS_Par_Colosseum] if score $Time_min AS_Map_Colosseum matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=4},tag=!AS_Par_Colosseum] if score $Time_min AS_Map_Colosseum matches 0 run tag @s add AS_Par_Colosseum

execute as @s[scores={AS_Map=5},tag=!AS_Par_Club] if score $Time_sec AS_Map_Club matches ..29 if score $Time_min AS_Map_Club matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=5},tag=!AS_Par_Club] if score $Time_sec AS_Map_Club matches ..29 if score $Time_min AS_Map_Club matches 0 run tag @s add AS_Par_Club

execute as @s[scores={AS_Map=10},tag=!AS_Par_Cube] if score $Time_sec AS_Map_Cube matches ..49 if score $Time_min AS_Map_Cube matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=10},tag=!AS_Par_Cube] if score $Time_sec AS_Map_Cube matches ..49 if score $Time_min AS_Map_Cube matches 0 run tag @s add AS_Par_Cube

execute as @s[scores={AS_Map=11},tag=!AS_Par_IceSpikes] if score $Time_sec AS_Map_IceSpikes matches ..44 if score $Time_min AS_Map_IceSpikes matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=11},tag=!AS_Par_IceSpikes] if score $Time_sec AS_Map_IceSpikes matches ..44 if score $Time_min AS_Map_IceSpikes matches 0 run tag @s add AS_Par_IceSpikes

execute as @s[scores={AS_Map=12},tag=!AS_Par_JunglePikes] if score $Time_min AS_Map_JunglePikes matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=12},tag=!AS_Par_JunglePikes] if score $Time_min AS_Map_JunglePikes matches 0 run tag @s add AS_Par_JunglePikes

execute as @s[scores={AS_Map=13},tag=!AS_Par_Bridge] if score $Time_sec AS_Map_Bridge matches ..49 if score $Time_min AS_Map_Bridge matches 0 run scoreboard players add @s AS_Milestone_Par 1
execute as @s[scores={AS_Map=13},tag=!AS_Par_Bridge] if score $Time_sec AS_Map_Bridge matches ..49 if score $Time_min AS_Map_Bridge matches 0 run tag @s add AS_Par_Bridge

advancement grant @s[scores={AS_Milestone_Par=1..}] only super_server:milestones/ascendance/par1
advancement grant @s[scores={AS_Milestone_Par=3..}] only super_server:milestones/ascendance/par3
advancement grant @s[scores={AS_Milestone_Par=5..}] only super_server:milestones/ascendance/par5
advancement grant @s[scores={AS_Milestone_Par=7..}] only super_server:milestones/ascendance/par7
advancement grant @s[scores={AS_Milestone_Par=9..}] only super_server:milestones/ascendance/par9

execute as @s run function ascendance:gaming/record/record_check