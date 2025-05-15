data modify storage ve:temp level set value 3
data merge entity @s {data:{Level:"Journeyman"}}

item replace block ~ ~ ~ container.13 with gold_ingot[custom_name='{text:"Cycle Level","color":"aqua",italic:false}',lore=[[{text:"Current Level: ","color":"green",italic:false},{text: "Journeyman","color":"blue",italic:false}]],custom_data={ve_ui:1b}]