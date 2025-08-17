kill @e[tag=Red_Flag_Tracker]
execute if score $Map Mode matches 1 run setblock 1012 0 42 minecraft:red_banner[rotation=4]
execute if score $Map Mode matches 3 run setblock 3091 11 73 minecraft:red_banner[rotation=12]
execute if score $Map Mode matches 7 run setblock 7201 41 8 minecraft:red_banner
execute if score $Map Mode matches 8 run setblock 8019 5 40 minecraft:red_banner[rotation=12]
execute if score $Map Mode matches 9 run setblock 9015 10 34 minecraft:red_banner[rotation=14]
execute if score $Map Mode matches 11 run setblock 11018 5 10 minecraft:red_banner
execute if score $Map Mode matches 12 run setblock 12035 7 106 minecraft:red_banner[rotation=8]


execute if score $Map Mode matches 1 run summon armor_stand 1012 0 42 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 3 run summon armor_stand 3091 11 73 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 7 run summon armor_stand 7201 41 8 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 8 run summon armor_stand 8019 5 40 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 9 run summon armor_stand 9015 10 34 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 11 run summon armor_stand 11018 5 10 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}
execute if score $Map Mode matches 12 run summon armor_stand 12035 7 106 {ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Marker"]}


execute if score $Map Mode matches 1 run summon armor_stand 1012 10 42 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 3 run summon armor_stand 3091 21 73 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 7 run summon armor_stand 7201 51 8 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 8 run summon armor_stand 8019 15 40 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 9 run summon armor_stand 9015 20 34 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 11 run summon armor_stand 11018 15 10 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}
execute if score $Map Mode matches 12 run summon armor_stand 12035 17 106 {ShowArms:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,NoAI:1b,Tags:["Red_Flag_Tracker"]}