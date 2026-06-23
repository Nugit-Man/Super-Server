execute as @a[distance=..3] run scoreboard players operation @s FI_Mana = @s FI_Mana_Max
scoreboard players set @a[distance=..3] FI_Mana_Regen 1
tag @a[distance=..3] remove FI_Armor_Set_Emerald
scoreboard players set @a[distance=..3,scores={FI_Mana_Max=0}] FI_Mana_Max 100
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_deep_sword 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_diamond_axe 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_flint_sword 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_iron_sword 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_stone_axe 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_iron_axe 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_stone_sword 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Crystal_Gray 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Crystal_Red 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Stone 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Copper 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Gold 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Iron 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Diamond 0
scoreboard players set @a[distance=..3] FI_Armor_Set_Tuff 0
scoreboard players set @a[distance=..3] FI_Boss_Music 0
scoreboard players set @a[distance=..3] FI_Villager_Talk 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Gem_Stone 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Gem_Copper 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Gem_Iron 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Gem_Diamond 0
scoreboard players set @a[distance=..3] FI_Mana_Cooldown_Gem_Tuff 0