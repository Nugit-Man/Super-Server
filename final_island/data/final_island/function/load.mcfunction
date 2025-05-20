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

#spawn the zombies
function final_island:spawn_items/zombies/coal
function final_island:spawn_items/zombies/copper
function final_island:spawn_items/zombies/gold
function final_island:spawn_items/zombies/iron
function final_island:spawn_items/zombies/deepslate
function final_island:spawn_items/zombies/bedrock

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

#Scoreboards that are copies of MAIN_------
scoreboard objectives add FI_Sneak_Time dummy