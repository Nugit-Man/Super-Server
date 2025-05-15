data modify storage ve:temp type set value "minecraft:savanna"
data merge entity @s {data:{Biome:"Savanna"}}

item replace block ~ ~ ~ container.12 with dead_bush[custom_name='{text:"Cycle Biome","color":"aqua",italic:false}',lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Savanna","color":"blue",italic:false}]],custom_data={ve_ui:1b}]