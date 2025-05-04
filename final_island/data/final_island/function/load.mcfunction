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

#Scoreboards for the spawners
scoreboard objectives add FI_Random dummy
scoreboard objectives add FI_Item_Cap dummy
scoreboard objectives add FI_Item_Counter dummy



#Mana System
function final_island:mana_restore
scoreboard objectives add FI_Mana dummy
scoreboard objectives add FI_Mana_Cooldown dummy


#Abilities (Cuurently Used for the iron blocks and for checking if the player has iron for the flint ability)
scoreboard objectives add FI_Abilities dummy