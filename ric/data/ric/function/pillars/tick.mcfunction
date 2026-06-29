#See how many players are where
scoreboard players set $In_Que RIC_Pillars 0
execute as @a[scores={MAIN_Game=7,RIC_Main=0,RIC_Menu=2}] run scoreboard players add $In_Que RIC_Pillars 1
execute as @a[scores={MAIN_Game=7,RIC_Main=2,RIC_Menu=2}] run scoreboard players add $In_Que RIC_Pillars 1

scoreboard players set $In_Game RIC_Pillars 0
execute store result score $In_Game RIC_Pillars if entity @a[scores={MAIN_Game=7,RIC_Main=4}]



#Countdown for when the game is starting
execute if score $In_Game RIC_Pillars matches 0 if score $In_Que RIC_Pillars matches 2.. run scoreboard players add $Countdown RIC_Pillars 1
execute if score $In_Game RIC_Pillars matches 0 if score $In_Que RIC_Pillars matches 2.. if score $Countdown RIC_Pillars matches 1 run tellraw @a[scores={MAIN_Game=7}] "RIC Pillars Starting in 30 seconds!"


execute if score $In_Que RIC_Pillars matches ..1 run scoreboard players set $Countdown RIC_Pillars 0
execute if score $In_Game RIC_Pillars matches 0 if score $In_Que RIC_Pillars matches ..1 if score $Countdown RIC_Pillars matches 1.. run tellraw @a[scores={MAIN_Game=7}] "Game canceled"

execute if score $In_Game RIC_Pillars matches 0 if score $In_Que RIC_Pillars matches 0.. if score $Countdown RIC_Pillars matches 600.. run function ric:pillars/gamestart
execute if score $In_Game RIC_Pillars matches 0 if score $In_Que RIC_Pillars matches 0.. if score $Countdown RIC_Pillars matches 540.. run effect give @a[scores={MAIN_Game=7,RIC_Menu=2}] slowness 5 255 true
execute if score $In_Game RIC_Pillars matches 1 run title @a[scores={MAIN_Game=7,RIC_Main=4}] title "WINNER"
execute if score $In_Game RIC_Pillars matches 1 run advancement grant @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_WnoW] only ric:afk
execute if score $In_Game RIC_Pillars matches 1 run damage @a[limit=1,scores={MAIN_Game=7,RIC_Main=4}] 1 generic_kill
execute if score $In_Game RIC_Pillars matches 1 if score MAIN_5s MAIN_Time matches 1 run function ric:pillars/reset
#up thier winstreak
execute if score $In_Game RIC_Main matches 1 run scoreboard players add @a[scores={MAIN_Game=7,RIC_Main=4},tag=!RIC_Win] RIC_Winstreak_Pillars 1
execute if score $In_Game RIC_Main matches 1 run advancement grant @a[scores={MAIN_Game=7,RIC_Main=4,RIC_Winstreak=3},tag=!RIC_Win] only ric:3wins
execute if score $In_Game RIC_Main matches 1 run tag @a[scores={MAIN_Game=7,RIC_Main=4}] add RIC_Win



execute as @a[scores={RIC_Main=0},nbt={Dimension:"ric:pillars"}] in ric:lobby run tp @s -30.5 -31.00 8.5 -90.00 0.00
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=4}] RIC_Winstreak_Pillars 0
scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=4}] RIC_Main 0
clear @a[scores={MAIN_Game=7,RIC_Deaths=1}]


execute if score MAIN_10s MAIN_Time matches 1 run function ric:pillars/random


#RIC Version of WnoW
tag @a[scores={MAIN_Game=7,RIC_Main=4},predicate=super_server:backward] remove RIC_WnoW
tag @a[scores={MAIN_Game=7,RIC_Main=4},predicate=super_server:forward] remove RIC_WnoW
tag @a[scores={MAIN_Game=7,RIC_Main=4},predicate=super_server:left] remove RIC_WnoW
tag @a[scores={MAIN_Game=7,RIC_Main=4},predicate=super_server:right] remove RIC_WnoW


#deal with spectators
execute if score $In_Game RIC_Pillars matches 0 run scoreboard players set @a[scores={MAIN_Game=7,RIC_Main=5}] RIC_Main 0
