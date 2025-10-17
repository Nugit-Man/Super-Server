give @s gold_nugget[custom_model_data={strings:['GB_Star']},custom_name=[{"text":"Star","italic":false}],food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:0.05,has_consume_particles:0b},use_cooldown={seconds:60}]
execute as @a[scores={GB_Mode=1}] at @s run playsound minecraft:gorbino.star
effect give @s resistance 12 4 true