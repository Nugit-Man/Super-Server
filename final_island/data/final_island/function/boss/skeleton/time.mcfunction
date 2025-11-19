execute in final_island:game run tp @a[tag=FI_Boss_2,scores={MAIN_Game=2}] 69013 16 32
tellraw @a[tag=FI_Boss_2,scores={MAIN_Game=2}] "Out of time"

tag @a[tag=FI_Boss_2,scores={MAIN_Game=2}] remove FI_Boss_2
kill @e[type=spider,tag=FI_Spider_Boss]
kill @e[type=skeleton,tag=FI_Skeleton_Boss]