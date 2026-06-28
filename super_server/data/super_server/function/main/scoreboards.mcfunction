
#Pass the MAIN_------ scoreboards into the game specific ones
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Kills = @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Singleplayer_Kills = @s MAIN_Total_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Deaths += @s MAIN_Deaths
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Kills += @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=1}] run scoreboard players operation @s AS_Milestone_Shots += @s MAIN_Bow_Used

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sneak_Time = @s MAIN_Sneak_Time
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Health = @s MAIN_Health
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Deaths += @s MAIN_Deaths
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Kills_Mobs += @s MAIN_Total_Kills
execute as @a[scores={MAIN_Game=2,MAIN_Total_Kills=1..}] run scoreboard players operation @s FI_Milestone_Kills_Mobs -= @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Fishing += @s MAIN_Fish_Caught
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Milestone_Jumps += @s MAIN_Jumps
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Check_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sword_Break_Wood = @s MAIN_break_wood_sword
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sword_Break_Gold = @s MAIN_break_gold_sword
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Fish_Check = @s MAIN_Fish_Caught
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Sugar_Cane += @s MAIN_obtain_sugar_cane


execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=3}] run scoreboard players operation @s GB_Shotgun = @s MAIN_Crossbow_Used

execute as @a[scores={MAIN_Game=7}] run scoreboard players operation @s RIC_Deaths = @s MAIN_Deaths
execute as @a[scores={MAIN_Game=7}] run scoreboard players operation @s RIC_Kills = @s MAIN_Player_Kills
execute as @a[scores={MAIN_Game=7}] run scoreboard players operation @s RIC_Enchantment = @s MAIN_Enchanting


#Reset things like sneak time
scoreboard players set @a MAIN_Sneak_Time 0
scoreboard players set @a MAIN_Deaths 0
scoreboard players set @a MAIN_Crossbow_Used 0
scoreboard players set @a MAIN_Total_Kills 0
scoreboard players set @a MAIN_Player_Kills 0
scoreboard players set @a MAIN_Jumps 0
scoreboard players set @a MAIN_Fish_Caught 0
scoreboard players set @a MAIN_Bow_Used 0
scoreboard players set @a MAIN_break_gold_sword 0
scoreboard players set @a MAIN_break_wood_sword 0
scoreboard players set @a MAIN_obtain_sugar_cane 0
scoreboard players set @a MAIN_Enchanting 0
