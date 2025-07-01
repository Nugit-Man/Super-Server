scoreboard players remove @s FI_Mana 20
scoreboard players set @s FI_Mana_Cooldown_iron_sword 120
tag @s add FI_Iron_Curtain


summon block_display ^1 ^3 ^3 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
summon block_display ^ ^3 ^3 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}
summon block_display ^-1 ^3 ^3 {block_state:{Name:iron_block},Tags:[FI_Ability_Iron_Curtain]}