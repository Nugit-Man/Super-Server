#prep the scoreaboard (Make sure to add this inbetween every set since it resets the checker back to 0)
scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0

#Physical Armor Sets
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


#Gold Armor
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Gold_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Gold_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Gold_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Gold_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Gold
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Gold


scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0
#Tuff Armor
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Tuff_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Tuff_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Tuff_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Tuff_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Tuff
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Tuff


scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0




#Magical Armor Sets
scoreboard players set @a[scores={MAIN_Game=2}] FI_Mana_Bonus 100
#Lapis checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Lapis_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] run attribute @s fall_damage_multiplier base set 0
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] run attribute @s fall_damage_multiplier base reset

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Armor_Set_Check *= 3 MAIN_Num
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Mana_Bonus += @s FI_Armor_Set_Check

scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0

#Amethyst checker
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Amethyst_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Amethyst
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Amethyst

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Armor_Set_Check *= 5 MAIN_Num
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Mana_Bonus += @s FI_Armor_Set_Check


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

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Armor_Set_Check *= 8 MAIN_Num
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Mana_Bonus += @s FI_Armor_Set_Check

scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0

#Lush Armor
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Lush_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Lush_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Lush_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Lush_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=0}] run attribute @s max_health base set 20
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=1}] run attribute @s max_health base set 24
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=2}] run attribute @s max_health base set 28
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=3}] run attribute @s max_health base set 32
execute as @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] run attribute @s max_health base set 40

execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Armor_Set_Check *= 10 MAIN_Num
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Mana_Bonus += @s FI_Armor_Set_Check

scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0

#Basic Armor Sets
#stone
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Stone_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Stone_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Stone_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Stone_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Stone
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Stone


scoreboard players set @a[scores={MAIN_Game=2}] FI_Armor_Set_Check 0
#Copper
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.head *[custom_data~{FI_Copper_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.chest *[custom_data~{FI_Copper_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.legs *[custom_data~{FI_Copper_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1
execute as @a[scores={MAIN_Game=2}] if items entity @s armor.feet *[custom_data~{FI_Copper_Armor:1b}] run scoreboard players add @s FI_Armor_Set_Check 1

tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=4}] add FI_Armor_Set_Copper
tag @a[scores={MAIN_Game=2,FI_Armor_Set_Check=..3}] remove FI_Armor_Set_Copper

effect give @a[tag=FI_Armor_Set_Copper,scores={MAIN_Game=2,FI_Health=..4}] speed 1 6 true



#Get the updated max Mana from the mana bonus
execute as @a[scores={MAIN_Game=2}] run scoreboard players operation @s FI_Mana_Max = @s FI_Mana_Bonus

schedule function final_island:check_armor 5t