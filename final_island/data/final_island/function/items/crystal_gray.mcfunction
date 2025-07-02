scoreboard players add @s FI_Mana 50
execute as @a[scores={MAIN_Game=2}] if score @s FI_Mana > @s FI_Mana_Max run scoreboard players operation @s FI_Mana = @s FI_Mana_Max
scoreboard players set @s FI_Mana_Cooldown_Crystal_Gray 600