summon marker ~ ~ ~ {Tags:[Lava]}
scoreboard players set @e[limit=1,tag=Lava,sort=nearest] velocity 0
tp @e[limit=1,tag=Lava,sort=nearest] ^ ^-1 ^5
give @s minecraft:magma_block[custom_name=[{text:"Lava",italic:false}],consumable={nutrition:0,saturation:0,can_always_eat:1b,consume_seconds:0.5,animation:block,sound:"entity.generic.burn",has_consume_particles:0b},use_cooldown={seconds:10}]