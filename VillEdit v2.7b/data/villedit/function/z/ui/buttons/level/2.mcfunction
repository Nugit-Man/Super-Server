data modify storage ve:temp level set value 2
data merge entity @s {data:{Level:"Apprentice"}}

item replace block ~ ~ ~ container.13 with iron_ingot[custom_name='{text:"Cycle Level","color":"aqua",italic:false}',lore=[[{text:"Current Level: ","color":"green",italic:false},{text: "Apprentice","color":"blue",italic:false}]],custom_data={ve_ui:1b}]