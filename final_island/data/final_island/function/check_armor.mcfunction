#prep the scoreaboard (Make sure to add this inbetween every set since it resets the checker back to 0)
scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0


#diamond armor checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=1}] if items entity @s armor.head *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=2}] if items entity @s armor.head *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=3}] if items entity @s armor.head *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Diamond
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Diamond



















schedule function final_island:check_armor 5t