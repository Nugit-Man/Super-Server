data modify storage ve:temp profession set value "minecraft:cleric"
data merge entity @s {data:{Profession:"Cleric"}}

item replace block ~ ~ ~ container.11 with brewing_stand[custom_name='{text:"Cycle Profession","color":"aqua",italic:false}',lore=[[{text:"Current Profession: ","color":"green",italic:false},{text: "Cleric","color":"blue",italic:false}]],custom_data={ve_ui:1b}]