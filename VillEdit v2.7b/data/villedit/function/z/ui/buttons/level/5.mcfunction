data modify storage ve:temp level set value 5
data merge entity @s {data:{Level:"Master"}}

item replace block ~ ~ ~ container.13 with diamond[custom_name='{text:"Cycle Level","color":"aqua",italic:false}',lore=[[{text:"Current Level: ","color":"green",italic:false},{text: "Master","color":"blue",italic:false}]],custom_data={ve_ui:1b}]