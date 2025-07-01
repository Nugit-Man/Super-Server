schedule function final_island:boss/boss_windcharge 5s

execute store result score FI_Boss_Zombie_Windcharge FI_Misc run random value 1..5
execute if score FI_Boss_Zombie_Windcharge FI_Misc matches 1 run tp @e[type=marker,tag=FI_Zombie_Boss_Windcharge] @e[limit=1,type=zombie,tag=FI_Zombie_Boss]

execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[1,0,0]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[1,0,1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[0,0,1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[-1,0,1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[-1,0,0]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[-1,0,-1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[0,0,-1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~ ~ {Motion:[1,0,-1]}
execute at @e[type=marker,tag=FI_Zombie_Boss_Windcharge] run execute at @e[type=zombie,tag=FI_Zombie_Boss,distance=..1] run summon wind_charge ~ ~1 ~ {Motion:[0,-1,0]}
tp @e[type=marker,tag=FI_Zombie_Boss_Windcharge] @e[limit=1,type=zombie,tag=FI_Zombie_Boss]