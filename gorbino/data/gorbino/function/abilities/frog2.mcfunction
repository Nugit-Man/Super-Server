execute at @e[tag=Frog] run particle minecraft:glow ~ ~ ~ 0 0 0 0.1 10000
execute at @e[tag=Frog] run particle minecraft:white_smoke ~ ~ ~ 0.4 0.4 0.4 0.01 10000
execute at @e[tag=Frog] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.4 0.4 0.4 0.5 10000
execute at @e[tag=Frog] run summon frog ~ ~ ~ {Invulnerable:1b}
kill @e[tag=Frog]