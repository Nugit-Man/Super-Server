execute as @a[scores={MAIN_Game=2}] if score @s FI_Mana < @s FI_Mana_Max run scoreboard players add @s FI_Mana 1
schedule function final_island:mana_restore 1s