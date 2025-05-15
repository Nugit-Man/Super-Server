data modify storage ve:temp profession set value "minecraft:fletcher"
data merge entity @s {data:{Profession:"Fletcher"}}

item replace block ~ ~ ~ container.11 with fletching_table[custom_name={text:"Cycle Profession","color":"aqua",italic:false},lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Fletcher","color":"blue",italic:false}]],custom_data={ve_ui:1b}]