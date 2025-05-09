#prep the scoreaboard (Make sure to add this inbetween every set since it resets the checker back to 0)
scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0


#diamond armor checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Diamond_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Diamond
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Diamond
scoreboard players set @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] FI_Armor_Set_Diamond 0


scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0


#iron armor checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Iron_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Iron_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Iron_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Iron_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Iron
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Iron
scoreboard players set @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] FI_Armor_Set_Iron 0


scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0



#Lapis checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] run attribute @s fall_damage_multiplier base set 0
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] run attribute @s fall_damage_multiplier base reset




#Amethyst checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

scoreboard players add @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4},tag=!FI_Armor_Set_Amethyst] FI_Mana_Max 100
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Amethyst
scoreboard players remove @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3},tag=FI_Armor_Set_Amethyst] FI_Mana_Max 100
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Amethyst



scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0


#Emerald checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Emerald_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Emerald_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Emerald_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Emerald_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

scoreboard players add @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4},tag=!FI_Armor_Set_Emerald] FI_Mana_Regen 1
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Emerald
scoreboard players remove @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3},tag=FI_Armor_Set_Emerald] FI_Mana_Regen 1
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Emerald

















schedule function final_island:check_armor 5t