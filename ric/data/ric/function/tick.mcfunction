scoreboard players set @a[scores={MAIN_Game=7},tag=!RIC_Welcome] RIC_Menu 0
tag @a[scores={MAIN_Game=7}] add RIC_Welcome

scoreboard players set @a[scores={MAIN_Game=7},nbt={Dimension:"ric:lobby"}] RIC_Main 0
execute as @a[scores={MAIN_Game=7,RIC_Menu=0,RIC_Main=0}] run function ric:menu/menu0
execute as @a[scores={MAIN_Game=7,RIC_Menu=1,RIC_Main=0}] run function ric:menu/menu1




#See how many players are where
scoreboard players set $In_Que RIC_Main 0
execute store result score $In_Que RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=0,RIC_Menu=1}]

scoreboard players set $In_Game RIC_Main 0
execute store result score $In_Game RIC_Main if entity @a[scores={MAIN_Game=7,RIC_Main=1}]



#Countdown for when the game is starting
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. run scoreboard players add $Countdown RIC_Main 1
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 2.. if score $Countdown RIC_Main matches 1 run tellraw @a[scores={MAIN_Game=7}] "Game Starting in 30 seconds!"


execute if score $In_Que RIC_Main matches ..1 run scoreboard players set $Countdown RIC_Main 0
execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches ..1 if score $Countdown RIC_Main matches 1.. run tellraw @a[scores={MAIN_Game=7}] "Game canceled"

execute if score $In_Game RIC_Main matches 0 if score $In_Que RIC_Main matches 0.. if score $Countdown RIC_Main matches 600.. run function ric:gamestart




execute if score $In_Game RIC_Main matches 1 run title @a[scores={MAIN_Game=7}] title "WINEER"
execute if score $In_Game RIC_Main matches 1 run damage @a[limit=1,scores={RIC_Main=1}] 1 generic_kill



scoreboard players set @a[scores={MAIN_Game=7,RIC_Deaths=1,RIC_Main=1}] RIC_Main 0

execute if score MAIN_10s MAIN_Time matches 1 run execute store result score $Random RIC_Main run random value 1..4
execute if score MAIN_10s MAIN_Time matches 1 if score $Random RIC_Main matches 1 run function ric:random

effect give @a[scores={MAIN_Game=7,RIC_Main=1}] saturation infinite 0 true
effect give @a[scores={MAIN_Game=7,RIC_Main=1}] regeneration infinite 0 true

execute at @a[scores={MAIN_Game=7}] run execute as @e[type=item,nbt={PickupDelay:40s}] at @s run data modify entity @s Owner set from entity @p UUID
