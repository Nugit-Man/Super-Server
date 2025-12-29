tag @r add MAIN_Team
data modify storage super_server:team uuid set string entity @a[tag=MAIN_Team,limit=1] UUID[0]


execute as @a[tag=MAIN_Team,limit=1,tag=!MAIN_Team] run function super_server:team/macro with storage super_server:team

execute as @a[tag=MAIN_Team,limit=1] run function super_server:team/sufix/macro with storage super_server:team
tag @a remove MAIN_Team
