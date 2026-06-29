#What different values of RIC_Main represent
#0 - Lobby
#1 - In Game
#2 - Lobby PVP
#3 - Spectating
#4 - Pillars
#5 - Spectating Pillar

#Add kills and reset them when you die
execute as @a[scores={MAIN_Game=7}] run scoreboard players operation @s RIC_Kill_count += @s RIC_Kills
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1..}] RIC_Kill_count 0
advancement grant @a[scores={MAIN_Game=7,RIC_Main=2,RIC_Kill_count=5..}] only ric:lobby_kill

#Remove tags if in lobby
tag @a[scores={MAIN_Game=7,RIC_Main=0}] remove RIC_No_Water
tag @a[scores={MAIN_Game=7,RIC_Main=0}] remove RIC_Underdog
tag @a[scores={MAIN_Game=7,RIC_Main=0}] remove RIC_WnoW

#remove nowater tag in they go into water
execute as @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_No_Water] at @s if block ~ ~ ~ water run tag @s remove RIC_No_Water


#enchanting advancements
advancement grant @a[scores={MAIN_Game=7,RIC_Main=1..4,RIC_Enchantment=1..}] only ric:enchant

scoreboard players set @a[scores={MAIN_Game=7,RIC_Main=0}] RIC_Last_Item 0

scoreboard players set @a[scores={MAIN_Game=7},tag=!RIC_Welcome] RIC_Menu 0
tag @a[scores={MAIN_Game=7}] add RIC_Welcome

#Clear players at spawn
execute if score MAIN_1s MAIN_Time matches 1 at @e[type=marker,tag=RIC_Reset] run clear @a[distance=..4]


scoreboard players set @a[scores={MAIN_Game=7},nbt={Dimension:"ric:lobby"}] RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Menu=0,RIC_Main=0}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1,RIC_Main=0}] run function ric:menu/menu1
execute as @a[scores={MAIN_Game=7,RIC_Menu=2,RIC_Main=0}] run function ric:menu/menu2

execute as @a[scores={MAIN_Game=7,RIC_Menu=0,RIC_Main=2}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1,RIC_Main=2}] run function ric:menu/menu1
execute as @a[scores={MAIN_Game=7,RIC_Menu=2,RIC_Main=2}] run function ric:menu/menu2


#See how many players are where
scoreboard players set $In_Que RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Main=0,RIC_Menu=1}] run scoreboard players add $In_Que RIC_Main 1
execute as @a[scores={MAIN_Game=7,RIC_Main=2,RIC_Menu=1}] run scoreboard players add $In_Que RIC_Main 1

scoreboard players set $In_Game RIC_Main 0
execute store result score $In_Game RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=1}]



#Countdown for when the game is starting
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. run scoreboard players add $Countdown RIC_Main 1
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. if score $Countdown RIC_Main matches 1 run tellraw @a[scores={MAIN_Game=7}] "Game Starting in 30 seconds!"


execute if score $In_Que RIC_Main matches ..1 run scoreboard players set $Countdown RIC_Main 0
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches ..1 if score $Countdown RIC_Main matches 1.. run tellraw @a[scores={MAIN_Game=7}] "Game canceled"

execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 0.. if score $Countdown RIC_Main matches 600.. run function ric:gamestart


execute if score $In_Game RIC_Main matches 0 run scoreboard players set @a[scores={MAIN_Game=7,RIC_Main=3}] RIC_Main 0



#Tell the winner that they won
execute if score $In_Game RIC_Main matches 1 run title @a[scores={MAIN_Game=7,RIC_Main=1}] title "WINNER"
execute if score $In_Game RIC_Main matches 1 run execute as @a[scores={MAIN_Game=7,RIC_Main=1}] if score @s RIC_Kill_count = $Ace RIC_Main run advancement grant @s only ric:ace
execute if score $In_Game RIC_Main matches 1 run damage @a[limit=1,scores={MAIN_Game=7,RIC_Main=1}] 1 generic_kill
#up thier winstreak
execute if score $In_Game RIC_Main matches 1 run scoreboard players add @a[scores={MAIN_Game=7,RIC_Main=1},tag=!RIC_Win] RIC_Winstreak 1
execute if score $In_Game RIC_Main matches 1 run advancement grant @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Winstreak=3},tag=!RIC_Win] only ric:3wins
execute if score $In_Game RIC_Main matches 1 run tag @a[scores={MAIN_Game=7,RIC_Main=1}] add RIC_Win
#remove win tag
tag @a[scores={MAIN_Game=7,RIC_Main=0}] remove RIC_Win

#Kick out players who have died and got back via bed
execute as @a[scores={RIC_Main=0},nbt={Dimension:"ric:game"}] in ric:lobby run tp @s -30.5 -31.00 8.5 -90.00 0.00


#remove and clear players who have died
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=1}] RIC_Winstreak 0
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=1}] RIC_Main 0
clear @a[scores={MAIN_Game=7,RIC_Deaths=1}]


#Every 10 seconds have a 1/4 chance to call the random function
execute if score MAIN_10s MAIN_Time matches 1 run execute store result score $Random RIC_Main run random value 1..4
execute if score MAIN_10s MAIN_Time matches 1 if score $Random RIC_Main matches 1 run function ric:random

#Give players regen and saturation for everything
effect give @a[scores={MAIN_Game=7,RIC_Main=0..4}] saturation infinite 0 true
effect give @a[scores={MAIN_Game=7,RIC_Main=0..4}] regeneration infinite 0 true


#Make it so only you can pick up your own items
execute at @a[scores={MAIN_Game=7}] run execute as @e[type=item,nbt={PickupDelay:40s},distance=..10] at @s run data modify entity @s Owner set from entity @p UUID






function ric:main/parkoure
function ric:main/pvp
function ric:main/barrels
function ric:pillars/tick