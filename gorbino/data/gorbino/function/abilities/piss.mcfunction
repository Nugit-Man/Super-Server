give @a[scores={GB_Mode=1,MAIN_Game=3},tag=GB_Piss] honey_bottle[custom_name=[{"text":"Super Laser Piss","italic":false,"color":"white"}],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.05,animation:"spear",sound:"block.honey_block.fall",has_consume_particles:0b},use_cooldown={seconds:20}]


summon armor_stand ^ ^ ^1.2 {Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["GB_piss"]}


execute at @e[type=minecraft:armor_stand,tag=piss] run particle minecraft:dripping_honey ~ ~1 ~ 0.3 0.3 0.3 1 100 force
effect give @a[tag=pee] poison 2 4 true