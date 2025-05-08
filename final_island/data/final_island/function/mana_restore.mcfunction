execute as @a[scores={MAIN_Game=2}] if score @s FI_Mana < @s FI_Mana_Max run scoreboard players operation @s FI_Mana += @s FI_Mana_Regen
execute as @a[scores={MAIN_Game=2}] if score @s FI_Mana > @s FI_Mana_Max run scoreboard players operation @s FI_Mana = @s FI_Mana_Max
schedule function final_island:mana_restore 1s