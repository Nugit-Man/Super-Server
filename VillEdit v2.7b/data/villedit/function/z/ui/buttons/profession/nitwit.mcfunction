data modify storage ve:temp profession set value "minecraft:nitwit"
data merge entity @s {data:{Profession:"Nitwit"}}

item replace block ~ ~ ~ container.11 with barrier[custom_name={text:"Cycle Profession","color":"aqua",italic:false},lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Nitwit","color":"blue",italic:false}]],custom_data={ve_ui:1b}]