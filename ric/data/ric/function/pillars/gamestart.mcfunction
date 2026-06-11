
scoreboard players set @a[scores={MAIN_Game=7,RIC_Menu=2}] RIC_Main 4
scoreboard players set @a[scores={MAIN_Game=7,RIC_Menu=2}] RIC_Menu 0
clear @a[scores={MAIN_Game=7,RIC_Main=4}]

tag @a[scores={MAIN_Game=7,RIC_Main=4}] add RIC_Pillar_Spawn

tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] 20 201 0
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] -20 201 0
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] 0 201 20
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] 0 201 -20
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] 14 201 14
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] -14 201 -14
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] -14 201 14
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning


tag @r[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Pillar_Spawn] add RIC_Spawning
execute in ric:pillars run tp @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] 14 201 -14
tag @a[scores={MAIN_Game=7,RIC_Main=4},tag=RIC_Spawning] remove RIC_Pillar_Spawn
tag @a remove RIC_Spawning

schedule function ric:pillars/reset 2s

