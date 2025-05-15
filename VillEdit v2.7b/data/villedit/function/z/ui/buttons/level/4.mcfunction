data modify storage ve:temp level set value 4
data merge entity @s {data:{Level:"Expert"}}

item replace block ~ ~ ~ container.13 with emerald[custom_name={text:"Cycle Level","color":"aqua",italic:false},lore=[[{text:"Current Level: ","color":"green",italic:false},{text: "Expert","color":"blue",italic:false}]],custom_data={ve_ui:1b}]