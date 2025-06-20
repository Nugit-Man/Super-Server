execute as @a[scores={Killstreak=3..}] run execute store result score @s Num run random value 1..20
execute if score U_Chaos Unlocks matches 2 run scoreboard players set @a[tag=player,scores={Killmessages=1..}] Killstreak 3

give @a[scores={Num=1,Killstreak=3..},tag=killstreak-shotgun] crossbow[custom_name='{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"Super Shotgun","underlined":false}',rarity="uncommon",damage=464,enchantments={levels:{"minecraft:multishot":1}},charged_projectiles=[{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",has_trail:true,colors:[I;16711680],fade_colors:[I;0]}]}}}]] 1
tag @a[scores={Num=1,Killstreak=3..},tag=killstreak-shotgun] add weapon_get
give @a[scores={Num=2,Killstreak=3..},tag=killstreak-chaingun] crossbow[custom_name='{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"Chaingun","underlined":false}',enchantments={levels:{infinity:1,quick_charge:7}},damage=455]
tag @a[scores={Num=2,Killstreak=3..},tag=killstreak-chaingun] add weapon_get
give @a[scores={Num=3,Killstreak=3..},tag=killstreak-cocaine] sugar[item_name='"Cocaine"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:.1,effects:[{effect:{id:"minecraft:speed",amplifier:9,duration:300,show_particles:0b,show_icon:1b,ambient:0b},probability:1}]}] 1
tag @a[scores={Num=3,Killstreak=3..},tag=killstreak-cocaine] add weapon_get
give @a[scores={Num=4,Killstreak=3..},tag=killstreak-flashbang] snowball[custom_name='["",{"text":"Flashbang","italic":false}]']
tag @a[scores={Num=4,Killstreak=3..},tag=killstreak-flashbang] add weapon_get
give @a[scores={Num=5,Killstreak=3..},tag=killstreak-frog_legs] leather_boots[custom_name='"Frog Legs"',dyed_color=65280] 1
tag @a[scores={Num=5,Killstreak=3..},tag=killstreak-frog_legs] add weapon_get
give @a[scores={Num=6,Killstreak=3..},tag=killstreak-shank] iron_axe[custom_name='{"italic":false,"text":"Shank"}',unbreakable={}] 1
tag @a[scores={Num=6,Killstreak=3..},tag=killstreak-shank] add weapon_get
give @a[scores={Num=7,Killstreak=3..},tag=killstreak-tnt] tnt[custom_name='{"italic":false,"text":"Very Delayed Explosives"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000}] 1
tag @a[scores={Num=7,Killstreak=3..},tag=killstreak-tnt] add weapon_get
give @a[scores={Num=8,Killstreak=3..},tag=killstreak-land_mine] minecraft:bamboo_hanging_sign[custom_name='{"italic":false,"text":"Land Mine"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000001}] 1
tag @a[scores={Num=8,Killstreak=3..},tag=killstreak-land_mine] add weapon_get
give @a[scores={Num=9,Killstreak=3..},tag=killstreak-wii_crash] minecraft:baked_potato[custom_name='{"italic":false,"text":"Wii Crash"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000002}] 1
tag @a[scores={Num=9,Killstreak=3..},tag=killstreak-wii_crash] add weapon_get
give @a[scores={Num=10,Killstreak=3..},tag=killstreak-leap_pearl] minecraft:egg[custom_name='{"italic":false,"text":"Leap Pearl"}'] 1
tag @a[scores={Num=10,Killstreak=3..},tag=killstreak-leap_pearl] add weapon_get
give @a[scores={Num=11,Killstreak=3..},tag=killstreak-fireball] minecraft:fire_charge[custom_name='{"italic":false,"text":"Fireball"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000006}] 1
tag @a[scores={Num=11,Killstreak=3..},tag=killstreak-fireball] add weapon_get
give @a[scores={Num=12,Killstreak=3..},tag=killstreak-lightning] minecraft:lightning_rod[custom_name='{"italic":false,"text":"Lightning Spell"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000005}] 1
tag @a[scores={Num=12,Killstreak=3..},tag=killstreak-lightning] add weapon_get
give @a[scores={Num=13,Killstreak=3..},tag=killstreak-death_coin] minecraft:bamboo_sign[custom_name='{"italic":false,"text":"Death Coin"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000004}] 1
tag @a[scores={Num=13,Killstreak=3..},tag=killstreak-death_coin] add weapon_get
give @a[scores={Num=14,Killstreak=3..},tag=killstreak-piss] minecraft:honey_bottle[custom_name='{"italic":false,"text":"Super Laser Piss"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000003}] 1
tag @a[scores={Num=14,Killstreak=3..},tag=killstreak-piss] add weapon_get
give @a[scores={Num=15,Killstreak=3..},tag=killstreak-invis] glass_pane[custom_name='["",{"text":"Invisability","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000010}]
tag @a[scores={Num=15,Killstreak=3..},tag=killstreak-invis] add weapon_get
give @a[scores={Num=16,Killstreak=3..},tag=killstreak-pants] leather_leggings[custom_name='["",{"text":"Sneaky Sliders","italic":false}]',enchantments={levels:{swift_sneak:3},show_in_tooltip:false},unbreakable={}]
tag @a[scores={Num=16,Killstreak=3..},tag=killstreak-pants] add weapon_get
give @a[scores={Num=17,Killstreak=3..},tag=killstreak-curry] minecraft:rabbit_stew[custom_name='{"italic":false,"text":"Curry"}',food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000007}]
tag @a[scores={Num=17,Killstreak=3..},tag=killstreak-curry] add weapon_get
give @a[scores={Num=18,Killstreak=3..},tag=killstreak-cactus] leather_helmet[dyed_color={rgb:6192150},custom_name='["",{"text":"Cactus Helmet","italic":false}]',enchantments={levels:{thorns:20},show_in_tooltip:false}]
tag @a[scores={Num=18,Killstreak=3..},tag=killstreak-cactus] add weapon_get
give @a[scores={Num=19,Killstreak=3..},tag=killstreak-gravity] beef[custom_name='["",{"text":"Gravity Gun","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000008}]
tag @a[scores={Num=19,Killstreak=3..},tag=killstreak-gravity] add weapon_get
give @a[scores={Num=20,Killstreak=3..},tag=killstreak-star] cooked_beef[custom_name='["",{"text":"Star","italic":false}]',food={nutrition:0,saturation:0,can_always_eat:1b,eat_seconds:1000009}]
tag @a[scores={Num=20,Killstreak=3..},tag=killstreak-star] add weapon_get


scoreboard players remove @a[tag=weapon_get] Killstreak 3
tag @a remove weapon_get

execute as @a[scores={Killstreak=3..}] run schedule function ascendance:multiplayer/killstreak 1t