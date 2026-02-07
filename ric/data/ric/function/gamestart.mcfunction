scoreboard players set @a[scores={MAIN_Game=7,RIC_Menu=1}] RIC_Main 1
scoreboard players set @a[scores={MAIN_Game=7,RIC_Main=1}] RIC_Menu 0
scoreboard players add $Map_Pos RIC_Main 1
execute store result storage ric:pos x int 1000 run scoreboard players get $Map_Pos RIC_Main
execute in ric:game run function ric:worldborder with storage ric:pos
effect give @a[scores={MAIN_Game=7,RIC_Main=1}] resistance 60 4 true