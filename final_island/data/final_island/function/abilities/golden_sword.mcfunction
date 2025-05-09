scoreboard players add @s[tag=!FI_Armor_Set_Emerald] FI_Mana 10
scoreboard players add @s[tag=FI_Armor_Set_Emerald] FI_Mana 20
execute if score @s FI_Mana > @s FI_Mana_Max run scoreboard players operation @s FI_Mana = @s FI_Mana_Max