execute as @a[scores={MAIN_Game=7,RIC_Main=1}] run execute store result score @s RIC_Random run random value 2..1507
tellraw @a[scores={MAIN_Game=7,RIC_Main=1}] {text:"New Item Drop",color:yellow,italic:false}

execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=1..229}] run function ric:random/1
execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=230..514}] run function ric:random/2
execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=515..799}] run function ric:random/3
execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=800..1084}] run function ric:random/4
execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=1085..1369}] run function ric:random/5
execute as @a[scores={MAIN_Game=7,RIC_Main=1,RIC_Random=1370..1507}] run function ric:random/6