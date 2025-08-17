#Get the generators up and running
function final_island:spawn_items/dirt
function final_island:spawn_items/oak_planks
function final_island:spawn_items/birch_planks
function final_island:spawn_items/acacia_planks
function final_island:spawn_items/graveyard
function final_island:spawn_items/jungle
function final_island:spawn_items/sand
function final_island:spawn_items/cactus
function final_island:spawn_items/sugar_cane
function final_island:spawn_items/stones
function final_island:spawn_items/farm
function final_island:spawn_items/farm2
function final_island:spawn_items/animals

#spawn cave gens
function final_island:spawn_items/caves/coal
function final_island:spawn_items/caves/copper
function final_island:spawn_items/caves/crystal
function final_island:spawn_items/caves/diamond
function final_island:spawn_items/caves/emerald
function final_island:spawn_items/caves/gold
function final_island:spawn_items/caves/iron
function final_island:spawn_items/caves/lapis
function final_island:spawn_items/caves/obsidian
function final_island:spawn_items/caves/redstone
function final_island:spawn_items/caves/sculk

#spawn the zombies
function final_island:spawn_items/zombies/coal
function final_island:spawn_items/zombies/copper
function final_island:spawn_items/zombies/gold
function final_island:spawn_items/zombies/iron
function final_island:spawn_items/zombies/deepslate
function final_island:spawn_items/zombies/bedrock

#Spawn stuff for spider caves
function final_island:spawn_items/spider_caves/spider
function final_island:spawn_items/spider_caves/skeletons
function final_island:spawn_items/spider_caves/moss
function final_island:spawn_items/spider_caves/tuff
function final_island:spawn_items/spider_caves/gravel
function final_island:spawn_items/spider_caves/dripstone

#Scoreboards for the spawners
scoreboard objectives add FI_Random dummy
scoreboard objectives add FI_Item_Cap dummy
scoreboard objectives add FI_Item_Counter dummy

#check to see if a player is wearing an armor set
scoreboard objectives add FI_Armor_Set_Check dummy
function final_island:check_armor

#Mana System
function final_island:mana_restore
scoreboard objectives add FI_Mana dummy
scoreboard objectives add FI_Mana_Cooldown dummy
scoreboard objectives add FI_Mana_Cooldown_deep_sword dummy
scoreboard objectives add FI_Mana_Cooldown_diamond_axe dummy
scoreboard objectives add FI_Mana_Cooldown_flint_sword dummy
scoreboard objectives add FI_Mana_Cooldown_iron_sword dummy
scoreboard objectives add FI_Mana_Cooldown_stone_axe dummy
scoreboard objectives add FI_Mana_Cooldown_stone_sword dummy
scoreboard objectives add FI_Mana_Cooldown_Crystal_Gray dummy
scoreboard objectives add FI_Mana_Cooldown_Crystal_Red dummy
scoreboard objectives add FI_Mana_Max dummy
scoreboard objectives add FI_Mana_Regen dummy
#Mana Bonus is used to calculate how much extra mana a player gets for the wizzard armor sets
scoreboard objectives add FI_Mana_Bonus dummy


#Abilities (Cuurently Used for the iron blocks and for checking if the player has iron for the flint ability)
scoreboard objectives add FI_Abilities dummy


#Armor Set System
function final_island:check_armor
scoreboard objectives add FI_Armor_Set_Check dummy
scoreboard objectives add FI_Armor_Set_Diamond dummy
scoreboard objectives add FI_Armor_Set_Iron dummy
scoreboard objectives add FI_Armor_Set_Stone dummy
scoreboard objectives add FI_Armor_Set_Gold dummy
scoreboard objectives add FI_Armor_Set_Copper dummy
scoreboard objectives add FI_Armor_Set_Tuff dummy

#Scoreboards that are copies of MAIN_------
scoreboard objectives add FI_Sneak_Time dummy
scoreboard objectives add FI_Health dummy

#boss scoreboard
scoreboard objectives add FI_Boss_Check dummy
bossbar add fi_zombie_king "Zombie King"


#This scoreboard is used for misc stuff current things include:
scoreboard objectives add FI_Misc dummy
#FI_Zombie_Armor_Check: Used to see if a player is in the mines to armor up zombies
#FI_Zombie_Boss_Windcharge: Used to randomly teleport the thing to make windcharges happen
#FI_Zombie_Bossbar: used for the bossbar regarding the zombie king
#FI_Emerald: Used as a failsafe to emeralds not working
#
#
#

scoreboard objectives add FI_Check_Deaths dummy


#These are the scoreboards used for the milestones that will be always adding
scoreboard objectives add FI_Milestone_Deaths dummy
scoreboard objectives add FI_Milestone_Kills_Mobs dummy
scoreboard objectives add FI_Milestone_Fishing dummy
scoreboard objectives add FI_Milestone_Jumps dummy


#Boss system
function final_island:boss/boss
scoreboard objectives add FI_Boss_Music dummy

#achivement scoreboards (Not milestones)
scoreboard objectives add FI_Stylish dummy
scoreboard objectives add FI_gray_crystal_check dummy

#Barrel
scoreboard objectives add FI_Barrel_Pos dummy
scoreboard objectives add FI_Barrel_Check dummy