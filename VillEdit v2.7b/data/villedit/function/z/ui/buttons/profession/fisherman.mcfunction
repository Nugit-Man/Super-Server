data modify storage ve:temp profession set value "minecraft:fisherman"
data merge entity @s {data:{Profession:"Fisherman"}}

item replace block ~ ~ ~ container.11 with barrel[custom_name={text:"Cycle Profession","color":"aqua",italic:false},lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Fisherman","color":"blue",italic:false}]],custom_data={ve_ui:1b}]