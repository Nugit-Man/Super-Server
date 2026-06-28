#Deal with players logging on
tag @a[scores={MAIN_Leave=1..}] remove MAIN_log
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run tp @s 8 -59 -10 0 0
execute as @a[tag=!MAIN_log] run execute in super_server:lobby run spawnpoint @s 8 -59 -10 0 0
execute as @a[tag=!MAIN_log] run scoreboard players set @s MAIN_Menu 0
#reset attribute
execute as @a[scores={MAIN_Game=0}] run attribute @s armor base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s armor_toughness base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_damage base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_knockback base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s attack_speed base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s block_break_speed base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s block_interaction_range base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s entity_interaction_range base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s fall_damage_multiplier base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s gravity base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s jump_strength base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s knockback_resistance base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s luck base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s max_health base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s step_height base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s scale base reset
execute as @a[scores={MAIN_Game=0}] run attribute @s movement_speed base reset
#Finish login
tag @a[tag=!MAIN_log] add MAIN_log
scoreboard players set @a[scores={MAIN_Leave=1..}] MAIN_Leave 0
