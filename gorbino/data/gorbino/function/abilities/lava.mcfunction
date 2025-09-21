summon marker ~ ~ ~ {Tags:[GB_Lava]}
scoreboard players set @e[limit=1,tag=GB_Lava,sort=nearest] GB_velocity 0
tp @e[limit=1,tag=GB_Lava,sort=nearest] ^ ^-1 ^5
give @s magma_block[custom_name=[{"text":"Lava","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.75,animation:block,sound:"entity.generic.burn",has_consume_particles:0b},use_cooldown={seconds:10}]