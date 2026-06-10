#reset the $'s
scoreboard players set $ AS_Spread 0
scoreboard players set $$ AS_Spread 0
scoreboard players set $$$ AS_Spread 0

$scoreboard players set @a[scores={AS_Map=$(map_parse),MAIN_Game=1,AS_Mode=1,AS_Gamemode=100}] AS_Mode 2

#Get Spread and Winning
$scoreboard players operation $ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] $(map_name)
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] run scoreboard players operation @s AS_Spread = @s $(map_name)
$scoreboard players operation @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] AS_Spread -= $ AS_Spread
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] run execute if score @s AS_Spread matches 0 run tag @s add AS_Winning
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] run execute unless score @s AS_Spread matches 0 run tag @s remove AS_Winning
$scoreboard players operation $$ AS_Spread > @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=!AS_Winning] $(map_name)
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread = @s $(map_name)
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=AS_Winning] run scoreboard players operation @s AS_Spread -= $$ AS_Spread





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

#actionbar
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] run title @s actionbar [{text:"Score: "},{score:{"objective":"$(map_name)","name":"@s"}},{text:"/"},{score:{objective:$(map_name),name:"$Par"}},{text:", Spread: "},{score:{"objective":"AS_Spread","name":"@s"}},{text:", Winning: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=AS_Winning]"}]
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=3}] run title @s actionbar [{text:"Red score: "},{score:{"objective":"$(map_name)","name":"$Red"}},{text:" Blue score: "},{score:{objective:$(map_name),name:"$Blue"}}]

#Actionbar but for cursed crossbow
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1,AS_Gamemode=3}] run title @s actionbar [{text:"Players left: "},{score:{objective:"AS_Spread","name":"$$$"}},{text:", Time Left: "},{score:{objective:"$(map_name)",name:"$Time"}},{text:", Cursed: "},{selector:"@a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=AS_Curse]"}]

#actionbar but for singpleplayer
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2}] run title @s actionbar [{text:"Score: "},{score:{"objective":"AS_Score_Singleplayer","name":"@s"}},{text:"/20, Time: "},{score:{"objective":"$(map_name)","name":"$Time_min"}},{text:":"},{score:{"objective":"$(map_name)","name":"$Time_sec"}},{text:"."},{score:{"objective":"$(map_name)","name":"$Time_10s"}}]



#Cehck for a Winner
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] if score @s $(map_name) >= $Par $(map_name) run tag @s add AS_Winner
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=AS_Winner] run tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse)},tag=!AS_Winner] add AS_Loser
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1},tag=AS_Winner] run function ascendance:gaming/end/gameend


#Creeper Cleanup
execute at @a[scores={MAIN_Game=1,AS_Mode=1}] run kill @e[type=creeper,distance=..250]



#Manage timer
$execute if score MAIN_2t MAIN_Time matches 1 run scoreboard players add $Time_10s $(map_name) 1
$execute if score $Time_10s $(map_name) matches 10 run scoreboard players add $Time_sec $(map_name) 1
$execute if score $Time_10s $(map_name) matches 10 run scoreboard players set $Time_10s $(map_name) 0
$execute if score $Time_sec $(map_name) matches 60 run scoreboard players add $Time_min $(map_name) 1
$execute if score $Time_sec $(map_name) matches 60 run scoreboard players set $Time_sec $(map_name) 0
$execute if score $Time_min $(map_name) matches 10 run tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2}] add AS_GoHome
$execute if score $Time_min $(map_name) matches 10 run function ascendance:gaming/end/go_home



#Spawn points
$execute at @e[type=marker,limit=1,sort=random,tag=$(map_spawn)] run spawnpoint @r[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1..}]


#Winner but for singplayer
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2,AS_Score_Singleplayer=20}] run tellraw @s [{text:"Training complete, Time: ",italic:false},{score:{"objective":"$(map_name)","name":"$Time_min"}},{text:":"},{score:{"objective":"$(map_name)","name":"$Time_sec"}},{text:"."},{score:{"objective":"$(map_name)","name":"$Time_10s"}}]
$tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2,AS_Score_Singleplayer=20}] add AS_GoHome
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2,AS_Score_Singleplayer=20}] run function ascendance:gaming/par
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2,AS_Score_Singleplayer=20}] run function ascendance:gaming/end/go_home
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=2,AS_Score_Singleplayer=20}] run scoreboard objectives remove $(map_name)




#Check if map is on kings crown
$scoreboard players set $Crowncheck $(map_name) 0
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Gamemode=2,AS_Mode=1},tag=AS_Crown] run scoreboard players set $Crowncheck $(map_name) 1
#Give a player the crown
$execute if score $Crowncheck $(map_name) matches 0 run tag @r[scores={MAIN_Game=1,AS_Mode=1,AS_Gamemode=2,AS_Map=$(map_parse)}] add AS_Crown_Gain
$execute if score $Crowncheck $(map_name) matches 2.. run tag @r[scores={MAIN_Game=1,AS_Mode=1,AS_Gamemode=2,AS_Map=$(map_parse)},tag=AS_Crown] add AS_Crown_Lose

#Deal with crown
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] run tag @a[limit=1,tag=!AS_Crown,scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1,AS_Gamemode=2,AS_Kills=1..}] add AS_Crown_Gain
$tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1,AS_Gamemode=2,AS_Deaths=1..},tag=AS_Crown] add AS_Crown_Lose



#exit if there is jsut 1 or aero players (singple player is counted as 2 players)
scoreboard players set $$$ AS_Spread 0
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Gamemode=1..3}] run scoreboard players add $$$ AS_Spread 1
$execute as @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Gamemode=100}] run scoreboard players add $$$ AS_Spread 2
$execute if score $$$ AS_Spread matches 0..1 run tellraw @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] {text:"Game was canceled because there was only one player",italic:false}
$execute if score $$$ AS_Spread matches 0..1 run scoreboard objectives remove $(map_name)
$execute if score $$$ AS_Spread matches 0..1 run tag @a[scores={MAIN_Game=1,AS_Map=$(map_parse),AS_Mode=1}] add AS_GoHome
execute if score $$$ AS_Spread matches 0..1 run function ascendance:gaming/end/go_home


