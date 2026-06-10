execute as @a[scores={MAIN_Game=7}] at @s run execute if block ~ ~-2 ~ obsidian run tag @s add RIC_Reset


execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=1}] -19.5 -36.00 26.5 315 45
execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=2}] -51.5 -38 30.5 135 0
execute in ric:lobby run tp @a[tag=RIC_Reset,scores={MAIN_Game=7,pt_checkpoints=3}] -46.5 -39 -11.5 -135 0
tag @a remove RIC_Reset
