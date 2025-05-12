give @p writable_book[custom_name={text: "Rename Villager",color: "gold",italic: false},custom_data={ve_rename:1b}]
item replace block ~ ~ ~ container.15 with name_tag[custom_name={text:"Change Custom Name",color:"aqua",italic:false},custom_data={ve_ui:1b}]
tellraw @p ["",{"text":"[","color":"dark_green"},{"text":"VE","color":"aqua"},{"text":"]","color":"dark_green"},{"text":" Enter the name in the book. You can use JSON too. Then, press ","color":"yellow"},{"text":"Done","bold":true,"color":"green"},{"text":".","color":"yellow"}]
clear @a name_tag[custom_data~{ve_ui:1b}]