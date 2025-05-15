data modify storage ve:temp profession set value "minecraft:shepherd"
data merge entity @s {data:{Profession:"Shepherd"}}

item replace block ~ ~ ~ container.11 with loom[custom_name='{text:"Cycle Profession","color":"aqua",italic:false}',lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Shepherd","color":"blue",italic:false}]],custom_data={ve_ui:1b}]