summon marker ~ ~ ~ {Tags:[Freeze],Invisible:1b}
scoreboard players set @e[tag=Freeze,limit=1,sort=nearest,distance=..3] velocity 0
execute anchored eyes run tp @e[tag=Freeze,limit=1,sort=nearest,distance=..3] ^ ^ ^2 ~ ~
give @p minecraft:breeze_rod[custom_name=[{text:"Freeze Bolt",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:.2,animation:spear,sound:"entity.player.hurt_freeze",has_consume_particles:0b},use_cooldown={seconds:7.5}]