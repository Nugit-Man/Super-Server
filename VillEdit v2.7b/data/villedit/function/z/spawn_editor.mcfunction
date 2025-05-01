# Remove this villager
tp @s ~ ~-1000 ~

# Summon the editor
function villedit:z/reset_barrel
summon marker ~ ~ ~ {Tags:["ve.editor","ve.editor.menu"]}

summon villager ~ ~1 ~ {NoAI:1b,Tags:["ve.editing"],CustomName:{text: "Custom Villager",color:"light_purple"},CustomNameVisible:true,Invulnerable:true}

execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.ai 0
execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.silent 1
execute positioned ~ ~1 ~ run scoreboard players set @e[type=villager,limit=1,sort=nearest,tag=ve.editing] ve.glow 0

data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.Profession set value "Nitwit"
data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.Biome set value "Plains"
data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.Level set value "Novice"
data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.AI set value "Yes"
data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.Silent set value "Yes"
data modify entity @e[type=marker,tag=ve.editor,limit=1,sort=nearest] data.Glow set value "No"