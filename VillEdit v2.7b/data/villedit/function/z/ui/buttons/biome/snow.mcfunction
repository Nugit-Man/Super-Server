data modify storage ve:temp type set value "minecraft:snow"
data merge entity @s {data:{Biome:"Snowy"}}

item replace block ~ ~ ~ container.12 with snowball[custom_name={text:"Cycle Biome","color":"aqua",italic:false},lore=[[{text:"Current Biome: ","color":"green",italic:false},{text: "Snowy","color":"blue",italic:false}]],custom_data={ve_ui:1b}]