#slot 0
execute if score $Gamemode Mode matches 0 run item replace entity @a[tag=!busy] hotbar.0 with air
execute if score $Gamemode Mode matches 1 run item replace entity @a[tag=!busy] hotbar.0 with acacia_door[custom_name='["",{"text":"Deathmatch","italic":false}]']
execute if score $Gamemode Mode matches 2 run item replace entity @a[tag=!busy] hotbar.0 with acacia_hanging_sign[custom_name='["",{"text":"Kings Crown","italic":false}]']
execute if score $Gamemode Mode matches 3 run item replace entity @a[tag=!busy,tag=!Advancement-large_incline] hotbar.0 with armor_stand[custom_name='["",{"text":"King Of The Hill","italic":false}]']
execute if score $Gamemode Mode matches 3 run item replace entity @a[tag=!busy,tag=Advancement-large_incline] hotbar.0 with armadillo_scute[custom_name='["",{"text":"King Of The Hill","italic":false}]']
execute if score $Gamemode Mode matches 4 run item replace entity @a[tag=!busy] hotbar.0 with acacia_door[custom_name='["",{"text":"Team Deathmatch","italic":false}]']
execute if score $Gamemode Mode matches 5 run item replace entity @a[tag=!busy] hotbar.0 with red_banner[custom_name='["",{"text":"Capture The Flag","italic":false}]']
execute if score $Gamemode Mode matches 6 run item replace entity @a[tag=!busy] hotbar.0 with red_dye[custom_name='["",{"text":"Lives","italic":false}]']

#slot 1
execute if score $Gamemode Mode matches 0 run item replace entity @a[tag=!busy] hotbar.1 with air
execute if score $Config Mode matches 0 run execute if score $Gamemode Mode matches 1 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 5","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"gray","bold":true}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 1 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 10","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"bold":true,"color":"gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 1 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 25","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"gray","bold":true}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 1 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 40","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"bold":true,"color":"gray"}]']]

execute if score $Config Mode matches 0 run execute if score $Gamemode Mode matches 2..3 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Score: 25","italic":false}]',lore=['["",{"text":"[25]","italic":false,"color":"gray","bold":true}]','["",{"text":"[50]","italic":false,"color":"dark_gray"}]','["",{"text":"[100]","italic":false,"color":"dark_gray"}]','["",{"text":"[150]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 2..3 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Score: 50","italic":false}]',lore=['["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[50]","italic":false,"bold":true,"color":"gray"}]','["",{"text":"[100]","italic":false,"color":"dark_gray"}]','["",{"text":"[150]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 2..3 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Score: 100","italic":false}]',lore=['["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[50]","italic":false,"color":"dark_gray"}]','["",{"text":"[100]","italic":false,"color":"gray","bold":true}]','["",{"text":"[150]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 2..3 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Score: 150","italic":false}]',lore=['["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[50]","italic":false,"color":"dark_gray"}]','["",{"text":"[100]","italic":false,"color":"dark_gray"}]','["",{"text":"[150]","italic":false,"bold":true,"color":"gray"}]']]

execute if score $Config Mode matches 0 run execute if score $Gamemode Mode matches 4 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 5","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"gray","bold":true}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 4 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 10","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"bold":true,"color":"gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 4 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 25","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"gray","bold":true}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 4 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Kills: 40","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"bold":true,"color":"gray"}]']]

execute if score $Config Mode matches 0 run execute if score $Gamemode Mode matches 5 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Captures: 1","italic":false}]',lore=['["",{"text":"[1]","italic":false,"color":"gray","bold":true}]','["",{"text":"[2]","italic":false,"color":"dark_gray"}]','["",{"text":"[3]","italic":false,"color":"dark_gray"}]','["",{"text":"[5]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 5 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Captures: 2","italic":false}]',lore=['["",{"text":"[1]","italic":false,"color":"dark_gray"}]','["",{"text":"[2]","italic":false,"bold":true,"color":"gray"}]','["",{"text":"[3]","italic":false,"color":"dark_gray"}]','["",{"text":"[5]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 5 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Captures: 3","italic":false}]',lore=['["",{"text":"[1]","italic":false,"color":"dark_gray"}]','["",{"text":"[2]","italic":false,"color":"dark_gray"}]','["",{"text":"[3]","italic":false,"color":"gray","bold":true}]','["",{"text":"[5]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 5 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Captures: 5","italic":false}]',lore=['["",{"text":"[1]","italic":false,"color":"dark_gray"}]','["",{"text":"[2]","italic":false,"color":"dark_gray"}]','["",{"text":"[3]","italic":false,"color":"dark_gray"}]','["",{"text":"[5]","italic":false,"bold":true,"color":"gray"}]']]

execute if score $Config Mode matches 0 run execute if score $Gamemode Mode matches 6 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Lives: 5","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"gray","bold":true}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 1 run execute if score $Gamemode Mode matches 6 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Lives: 10","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"bold":true,"color":"gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 2 run execute if score $Gamemode Mode matches 6 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Lives: 25","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"gray","bold":true}]','["",{"text":"[40]","italic":false,"color":"dark_gray"}]']]
execute if score $Config Mode matches 3 run execute if score $Gamemode Mode matches 6 run item replace entity @a[tag=!busy] hotbar.1 with minecraft:phantom_membrane[custom_name='["",{"text":"Lives: 40","italic":false}]',lore=['["",{"text":"[5]","italic":false,"color":"dark_gray"}]','["",{"text":"[10]","italic":false,"color":"dark_gray"}]','["",{"text":"[25]","italic":false,"color":"dark_gray"}]','["",{"text":"[40]","italic":false,"bold":true,"color":"gray"}]']]


#slot 2
execute if score $Map Mode matches 0 run item replace entity @a[tag=!busy] hotbar.2 with air
execute if score $Map Mode matches 1 run item replace entity @a[tag=!busy] hotbar.2 with minecraft:sandstone[custom_name='["",{"text":"Desert Tomb","italic":false}]']
execute if score $Map Mode matches 2 run item replace entity @a[tag=!busy] hotbar.2 with minecraft:acacia_chest_boat[custom_name='["",{"text":"Tabletop","italic":false}]']
execute if score $Map Mode matches 3 run item replace entity @a[tag=!busy] hotbar.2 with minecraft:polished_andesite[custom_name='["",{"text":"Brutalism","italic":false}]']
execute if score $Map Mode matches 4 run item replace entity @a[tag=!busy] hotbar.2 with minecraft:stripped_birch_log[custom_name='["",{"text":"Colosseum","italic":false}]']
execute if score $Map Mode matches 5 run item replace entity @a[tag=!busy] hotbar.2 with minecraft:netherite_block[custom_name='["",{"text":"The Club","italic":false}]']
execute if score $Map Mode matches 6 run item replace entity @a[tag=!busy] hotbar.2 with green_terracotta[custom_name='["",{"text":"Shipment","italic":false}]']
execute if score $Map Mode matches 7 run item replace entity @a[tag=!busy] hotbar.2 with grass_block[custom_name='["",{"text":"Final Island","italic":false}]']
execute if score $Map Mode matches 8 run item replace entity @a[tag=!busy] hotbar.2 with stone[custom_name='["",{"text":"Caves","italic":false}]']
execute if score $Map Mode matches 9 run item replace entity @a[tag=!busy] hotbar.2 with cobblestone[custom_name='["",{"text":"Ravine","italic":false}]']
execute if score $Map Mode matches 10 run item replace entity @a[tag=!busy] hotbar.2 with white_concrete[custom_name='["",{"text":"The Cube","italic":false}]']
execute if score $Map Mode matches 11 run item replace entity @a[tag=!busy] hotbar.2 with blue_ice[custom_name='["",{"text":"Ice Spikes","italic":false}]']
execute if score $Map Mode matches 12 run item replace entity @a[tag=!busy] hotbar.2 with jungle_log[custom_name='["",{"text":"Jungle Pikes","italic":false}]']


#slot 3
item replace entity @a[tag=!busy] hotbar.3 with air

#slot 4


#slot 5


#slot 6


#slot 7
execute if score $Start Mode matches 1.. run execute if score $Team Mode matches 2 run item replace entity @a[tag=!busy] hotbar.7 with diamond_helmet[custom_name='["",{"text":"Right Click To Join","italic":false}]']

#slot 8
execute if score $Start Mode matches 1.. run item replace entity @a[tag=!busy] hotbar.8 with leather_helmet[dyed_color={rgb:16711680},custom_name='["",{"text":"Right Click To Join","italic":false}]']