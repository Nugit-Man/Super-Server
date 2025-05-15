data modify storage ve:temp profession set value "minecraft:armorer"
data merge entity @s {data:{Profession:"Armorer"}}

item replace block ~ ~ ~ container.11 with blast_furnace[custom_name='{text:"Cycle Profession","color":"aqua",italic:false}',lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Armorer","color":"blue",italic:false}]],custom_data={ve_ui:1b}]