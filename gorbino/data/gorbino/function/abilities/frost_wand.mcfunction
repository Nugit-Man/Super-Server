summon marker ~ ~ ~ {Tags:[Freeze],Invisible:1b}
scoreboard players set @e[tag=Freeze,limit=1,sort=nearest,distance=..3] GB_velocity 0
execute anchored eyes run tp @e[tag=Freeze,limit=1,sort=nearest,distance=..3] ^ ^ ^2 ~ ~
give @s breeze_rod[custom_name=[{"text":"Freeze Bolt","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.2,animation:spear,sound:"entity.player.hurt_freeze",has_consume_particles:0b},use_cooldown={seconds:7.5}]