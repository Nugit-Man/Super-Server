
#Countdown for cursed crossbow
$execute if score MAIN_1s MAIN_Time matches 1 run scoreboard players remove $Time $(map_name) 1
$execute if score $Time $(map_name) matches 0 run gamemode spectator @a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=AS_Curse]
$execute if score $Time $(map_name) matches 0 run scoreboard players set @a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=AS_Curse] AS_Mode 0
#$execute if score $Time $(map_name) matches 0 run scoreboard players set @a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=AS_Curse] AS_Gamemode 0
scoreboard players set $$$$ AS_Spread 0
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] run scoreboard players add $$$$ AS_Spread 1
$execute if score $$$$ AS_Spread matches 1 if score $Time $(map_name) matches 0 run tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Gamemode=3,AS_Mode=1}] add AS_Winner
$execute if score $$$$ AS_Spread matches 1 if score $Time $(map_name) matches 0 run tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Gamemode=3,AS_Mode=0}] add AS_Loser
$execute if score $$$$ AS_Spread matches 1 if score $Time $(map_name) matches 0 run function ascendance:gaming/end/gameend

#Remove the crossbow from players in spectator
tag @a[gamemode=spectator] remove AS_Curse

#Cursed crossbow loop and start
$execute if score $Time $(map_name) matches ..-1 run scoreboard players set $Time $(map_name) 64
$execute if score $Time $(map_name) matches 60 if score MAIN_1s MAIN_Time matches 1 run tag @r[scores={MAIN_Game=1,AS_Map=$(map_parse)},gamemode=adventure] add AS_Curse_Get

#Give the curse
clear @a[scores={MAIN_Game=1},tag=AS_Curse_Get] bow
give @a[scores={MAIN_Game=1},tag=AS_Curse_Get] crossbow[custom_name=[{"text":"Cursed Crossbow","italic":false}],lore=[[{"text":"Reading this is probably not","italic":false}],[{"text":"the best use of your time","italic":false}],[{"text":"you should probably get","italic":false}],[{"text":"rid of this thing.","italic":false}]],enchantment_glint_override=false,enchantments={infinity:1,quick_charge:5},unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]
tag @a[scores={MAIN_Game=1},tag=AS_Curse_Get] add AS_Curse
tag @a remove AS_Curse_Get

#clear the curse
clear @a[scores={MAIN_Game=1},tag=AS_Curse_Remove] crossbow
give @a[scores={MAIN_Game=1},tag=AS_Curse_Remove] bow[enchantment_glint_override=false,enchantments={infinity:1},unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]
tag @a[scores={MAIN_Game=1},tag=AS_Curse_Remove] remove AS_Curse
tag @a remove AS_Curse_Remove



#remove and pass the curse
$execute as @a[scores={MAIN_Game=1,AS_Kills=1,AS_Map=$(map_parse),AS_Gamemode=3},tag=AS_Curse] run tag @a[scores={MAIN_Game=1,AS_Deaths=1,AS_Map=$(map_parse),AS_Gamemode=3}] add AS_Curse_Get
$tag @a[scores={MAIN_Game=1,AS_Kills=1,AS_Map=$(map_parse),AS_Gamemode=3},tag=AS_Curse] add AS_Curse_Remove


#Actionbar but for cursed crossbow
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1,AS_Gamemode=3}] run title @s actionbar [{text:"Players left: "},{score:{objective:"AS_Spread","name":"$$$"}},{text:", Time Left: "},{score:{objective:"$(map_name)",name:"$Time"}},{text:", Cursed: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=AS_Curse]"}]
