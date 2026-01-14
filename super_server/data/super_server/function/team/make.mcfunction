tag @r add MAIN_UUID
data modify storage super_server:team uuid set string entity @a[tag=MAIN_UUID,limit=1] UUID[0]


execute as @a[tag=MAIN_UUID,limit=1] run function super_server:team/macro with storage super_server:team

execute as @a[tag=MAIN_UUID,limit=1] run function super_server:team/sufix/macro with storage super_server:team
tag @a remove MAIN_UUID
