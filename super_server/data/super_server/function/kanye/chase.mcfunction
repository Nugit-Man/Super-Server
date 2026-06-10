tag @a remove Kanye_Chase
execute at @e[type=item_display,tag=Kanye] run tag @p[nbt={Dimension:"super_server:kanye"}] add Kanye_Chase
execute store result storage super_server:kanye X int 1 run data get entity @a[tag=Kanye_Chase,limit=1] Pos[0]
execute store result storage super_server:kanye Y int 1 run data get entity @a[tag=Kanye_Chase,limit=1] Pos[1]
execute store result storage super_server:kanye Z int 1 run data get entity @a[tag=Kanye_Chase,limit=1] Pos[2]

function super_server:kanye/macro with storage super_server:kanye